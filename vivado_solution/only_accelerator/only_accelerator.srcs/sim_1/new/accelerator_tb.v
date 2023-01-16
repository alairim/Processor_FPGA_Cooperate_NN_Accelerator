`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Original file prepared by Mahdad Davari
// Modified and revised by Yuan Yao
//////////////////////////////////////////////////////////////////////////////////


module accelerator_tb # 
    (
        parameter integer INPUT_SIZE = 49,
        parameter integer RESULT_SIZE = 1,
        parameter integer WEIGHT_SIZE = INPUT_SIZE*RESULT_SIZE,
        parameter integer INPUT_ADDR_SIZE = 10, //[9:0]
        parameter integer RESULT_ADDR_SIZE = 2, //[5:0]
        parameter integer WEIGHT_ADDR_SIZE = 10, //[14:0]
        parameter integer FIXED_POINT_AMOUNT = 12, 
        parameter integer DATA_WIDTH = 32    
    )
    (

    );
    
    reg  s00_axi_aclk;
    reg  s00_axi_aresetn;

    // Ports of Axi Slave Bus Interface S00_AXIS
    wire  s00_axis_tready, valid_MAC_result;
    reg [DATA_WIDTH-1 : 0] s00_axis_tdata;
    reg [(DATA_WIDTH/8)-1 : 0] s00_axis_tstrb;
    reg  s00_axis_tlast;
    reg  s00_axis_tvalid;

    // Ports of Axi Master Bus Interface M00_AXIS
    wire  m00_axis_tvalid;
    wire [DATA_WIDTH-1 : 0] m00_axis_tdata, MAC_results;
    wire [(DATA_WIDTH/8)-1 : 0] m00_axis_tstrb;
    wire  m00_axis_tlast;
    reg  m00_axis_tready;
    
    reg sel;
    reg start;
    
    integer row;
    integer column;
    integer count;
    
    integer matRSW [0:RESULT_SIZE-1] = '{268};//, 119539, -38978, 12731, 37346}; //, 74829, 41561, -36134, -58525, -164845, 31255, -118765, -84873, -149139, -31484, 47832, -197099, 61694, 59350, -18467, 54140, -67870, 26591, -31328, 126714, -21026, 109507, -205420, -30868, 81067};
    integer matRHW [0:RESULT_SIZE-1];
    
  
	 


    
    integer image[0:INPUT_SIZE-1] = '{32770580 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40960, 32770580}; 
    integer layer_0[0:WEIGHT_SIZE-1] = '{20480  , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40960, 20480};


    
    mat_mul # (
    .INPUT_SIZE(INPUT_SIZE),
    .RESULT_SIZE (RESULT_SIZE),
    .WEIGHT_SIZE (WEIGHT_SIZE),
    .INPUT_ADDR_SIZE(INPUT_ADDR_SIZE),
    .RESULT_ADDR_SIZE(RESULT_ADDR_SIZE),
    .WEIGHT_ADDR_SIZE(WEIGHT_ADDR_SIZE),
    .FIXED_POINT_AMOUNT(FIXED_POINT_AMOUNT),
    .DATA_WIDTH(DATA_WIDTH)    
    ) accelerator (
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tlast(s00_axis_tlast),
    .s00_axis_tvalid(s00_axis_tvalid),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tstrb(m00_axis_tstrb),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tready(m00_axis_tready),
    .sel(sel),
    .start(start),
    .MAC_result(MAC_results),
    .valid_MAC_result(valid_MAC_result)
    );
    wire temporary_permanent_value;
    reg [DATA_WIDTH-1 : 0] slv_reg1;
    reg permanent_valid;
    always @ (valid_MAC_result, MAC_results, temporary_permanent_value) begin
        if (valid_MAC_result) begin
            slv_reg1 = MAC_results;
            permanent_valid <= 1; end
    end
    
    
    always
        #10 s00_axi_aclk = ~s00_axi_aclk;
        
    initial begin
        s00_axi_aclk = 1;
        s00_axi_aresetn = 0;
        s00_axis_tdata = 0;
        s00_axis_tstrb = 4'hf;
        s00_axis_tlast = 0;
        s00_axis_tvalid = 0;
        m00_axis_tready = 0;
        sel = 0;
        start = 0;
        row = 0;
        column = 0;
        count = 0;
        
        // initialise the matrices; for debug use $urandom%10 to have unsigned values less than 10;
        // $srandom(12345); // Uncomment for debug, which will always generates the same random numbers
        for (row = 0; row < RESULT_SIZE; row = row + 1) begin
                matRHW [row] = 0;
        end
        
        
        #20
        s00_axi_aresetn = 1;
        count = 0;
        
        // send the two matrices using the AXI Stream protocol
        $display ("LOADING WEIGHTS");
        #20
        s00_axis_tvalid = 1;
        for (row = 0; row < WEIGHT_SIZE; row = row + 1) begin
                // Should use non-blocking assignment here
                s00_axis_tdata <= layer_0[row];
                
                // set the last signal when sending the last data item
                if (row == WEIGHT_SIZE-1)
                    s00_axis_tlast = 1;
                #20;
                
                // wait until the slave is ready to read the data
                while (!s00_axis_tready) begin
                    #20;
                end
        end
        
        s00_axis_tlast = 0;
        s00_axis_tvalid = 0;
        
        
        //SEND INPUT
        $display ("LOADING IMAGE");
        sel = 1;

        #20
        s00_axi_aresetn = 1;
        count = 0;
        
        // send the two matrices using the AXI Stream protocol
        #20
        s00_axis_tvalid = 1;
        for (row = 0; row < INPUT_SIZE; row = row + 1) begin
            // Should use non-blocking assignment here
            s00_axis_tdata <= image[row];
            
            // set the last signal when sending the last data item
            if (row == INPUT_SIZE-1)
                s00_axis_tlast = 1;
            #20;
            
            // wait until the slave is ready to read the data
            while (!s00_axis_tready) begin
                #20;
            end
        end
        
        s00_axis_tlast = 0;
        s00_axis_tvalid = 0;
        
        
        // START the accelerator
        $display ("STARTING ACCELERATOR");
        #20
        start = 1;
        #100000
        start = 0;
        
        // wait for the reslt to arrive from the accelerator
        m00_axis_tready = 1;
        
        row = 0;
        $display("WAITING FOR ACCELERATOR TO FINISH");
        while (!m00_axis_tlast) begin // exit if last data already received
            #20;
            if (m00_axis_tvalid == 1) begin // valid data on the bus
                matRHW[row] = m00_axis_tdata;
                row = row + 1;
            end
        end
        $display("GETTING RESULT");
        
        m00_axis_tready = 0;
        count = 0;
        $display("COMPARING RESULT");
        // compare the hardware and software results
        for (row = 0; row < RESULT_SIZE; row = row + 1) begin
            $display("%d", matRHW[row]);
            $display("ROW %d", row);
            if (matRSW [row] != matRHW [row] || ^matRHW [row] === 1'bX) begin
                count = count + 1;
                $display ("HW/SW result mismatch! row=%d; res_sw=%d; res_hw=%d", row, matRSW[row], matRHW[row]);
            end
        end

       if (count == 0)
            $display ("HW/SW result match!");
       #40
       $stop;
       
    end
    
endmodule