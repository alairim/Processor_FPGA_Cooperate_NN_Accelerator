`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// mat_mul.v
//
// Uppsala University
// Yuan Yao <yuan.yao@it.uu.se>
// For the course 1DT109 Accelerating System with Programmable Logic Components
//
//////////////////////////////////////////////////////////////////////////////////


module mat_mul #
    (
        parameter integer INPUT_SIZE = 784,
        parameter integer RESULT_SIZE = 1,
        parameter integer WEIGHT_SIZE = INPUT_SIZE*RESULT_SIZE,
        parameter integer INPUT_ADDR_SIZE = 10, //[9:0]
        parameter integer RESULT_ADDR_SIZE = 2, //[5:0]
        parameter integer WEIGHT_ADDR_SIZE = 10, //[14:0]
        
        parameter integer FIXED_POINT_AMOUNT = 12, 
        parameter integer DATA_WIDTH = 32
    )
    (
        // Clock and Reset shared with the AXI-Lite Slave Port
        input wire  s00_axi_aclk,
        input wire  s00_axi_aresetn,
        
        // AXI-Stream Slave
        output wire  s00_axis_tready,
        input  wire  [DATA_WIDTH-1 : 0] s00_axis_tdata,
        input  wire  s00_axis_tlast,
        input  wire  s00_axis_tvalid,
        
        // AXI-Stream Master
        output wire  m00_axis_tvalid,
        (* mark_debug = "true", keep = "true" *) output wire  [DATA_WIDTH-1 : 0] m00_axis_tdata,
        output wire  [(DATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
        output wire  m00_axis_tlast,
        input  wire  m00_axis_tready,
        
        // Matrix-select and Start signals coming from the AXI-Lite Slave Port
        input wire sel,
        input wire start,
        output wire [DATA_WIDTH-1 : 0] MAC_result,
        output wire valid_MAC_result
    ); 
    assign m00_axis_tstrb = 4'hf;   // always f; byte-enable signal;
  
    wire [DATA_WIDTH-1:0] data_out_mat_INPUT;
    wire [DATA_WIDTH-1:0] data_out_mat_WEIGHTS;
    (* mark_debug = "true", keep = "true" *) wire [DATA_WIDTH-1:0] data_in_mat_RESULT;
    
    wire en_INPUT, rw_INPUT;
    wire en_WEIGHTS, rw_WEIGHTS;
    wire en_RESULT, rw_RESULT;
    
    wire clear;
    
    (* mark_debug = "true", keep = "true" *) wire [INPUT_ADDR_SIZE-1 : 0] addr_INPUT;
    (* mark_debug = "true", keep = "true" *) wire [WEIGHT_ADDR_SIZE-1 : 0] addr_WEIGHTS;
    (* mark_debug = "true", keep = "true" *) wire [RESULT_ADDR_SIZE-1 : 0] addr_RESULT;
    
    reg en_R_pipe_1;
    reg rw_R_pipe_1;
    reg en_R_pipe_2;
    reg rw_R_pipe_2;
    reg [RESULT_ADDR_SIZE-1 : 0] addr_R_pipe_1;
    reg [RESULT_ADDR_SIZE-1 : 0] addr_R_pipe_2;
    (* mark_debug = "true", keep = "true" *) wire m00_axis_tready_from_agu;
    reg m00_axis_tready_pipe_1;
    reg m00_axis_tready_pipe_2;
    reg m00_axis_tready_pipe_3;
    
    (* mark_debug = "true", keep = "true" *) wire m00_axis_tlast_from_agu;
    reg m00_axis_tlast_pipe_1;
    reg m00_axis_tlast_pipe_2;
    reg m00_axis_tlast_pipe_3;
    
    assign m00_axis_tvalid = m00_axis_tready_pipe_3;
    assign m00_axis_tlast = m00_axis_tlast_pipe_3;
    assign MAC_result = data_in_mat_RESULT;
    assign valid_MAC_result = rw_R_pipe_2;
    assign clear = en_R_pipe_2 & rw_R_pipe_2;
    wire en_A, en_B, en_R, rw_A, rw_B, rw_R;    
    AGU # (INPUT_SIZE, RESULT_SIZE, WEIGHT_SIZE, INPUT_ADDR_SIZE, RESULT_ADDR_SIZE,  WEIGHT_ADDR_SIZE, DATA_WIDTH) agu(s00_axi_aclk,
                                                         s00_axi_aresetn,
                                                         s00_axis_tready,           // output
                                                         s00_axis_tlast,            // input
                                                         s00_axis_tvalid,           // input
                                                         m00_axis_tready_from_agu,  // output
                                                         m00_axis_tlast_from_agu,   // output
                                                         m00_axis_tready,           // input
                                                         sel,
                                                         start,
                                                         en_A,
                                                         en_B,
                                                         en_R,
                                                         rw_A,
                                                         rw_B,
                                                         rw_R,
                                                         addr_INPUT,
                                                         addr_WEIGHTS,
                                                         addr_RESULT
                                                         );
                                                         
                                                         
    //A = WEIGHTS
    //B = INPUT
        
                                                     
    weight_storage # (INPUT_SIZE, RESULT_SIZE, WEIGHT_SIZE, WEIGHT_ADDR_SIZE, DATA_WIDTH) weights (s00_axi_aclk, s00_axi_aresetn, en_A, rw_A, addr_WEIGHTS, s00_axis_tdata, data_out_mat_WEIGHTS);
       
    vector_storage # (INPUT_SIZE, INPUT_ADDR_SIZE , DATA_WIDTH) inputs (s00_axi_aclk, s00_axi_aresetn, en_B, rw_B, addr_INPUT, s00_axis_tdata, data_out_mat_INPUT);
    
    MAC # (INPUT_SIZE, RESULT_SIZE, WEIGHT_SIZE, INPUT_ADDR_SIZE, RESULT_ADDR_SIZE,  WEIGHT_ADDR_SIZE, DATA_WIDTH, FIXED_POINT_AMOUNT) alu (s00_axi_aclk, s00_axi_aresetn, clear, data_out_mat_WEIGHTS, data_out_mat_INPUT, data_in_mat_RESULT);
    
    vector_storage # (RESULT_SIZE, RESULT_ADDR_SIZE , DATA_WIDTH) results (s00_axi_aclk, s00_axi_aresetn, en_R_pipe_2, rw_R_pipe_2, addr_R_pipe_2, data_in_mat_RESULT, m00_axis_tdata);
    
    // Glue logic: Align the control signal for matR by inserting FFs
        
    always @ (posedge s00_axi_aclk)
        if(!s00_axi_aresetn) begin
            en_R_pipe_1 <= 1'b0;
            en_R_pipe_2 <= 1'b0;
            rw_R_pipe_1 <= 1'b0;
            rw_R_pipe_2 <= 1'b0;
            addr_R_pipe_1 <= 'b0;
            addr_R_pipe_2 <= 'b0;
            m00_axis_tready_pipe_1 <= 1'b0;
            m00_axis_tready_pipe_2 <= 1'b0;
            m00_axis_tready_pipe_3 <= 1'b0;
            m00_axis_tlast_pipe_1 <= 1'b0;
            m00_axis_tlast_pipe_2 <= 1'b0;
            m00_axis_tlast_pipe_3 <= 1'b0;
        end else begin
            en_R_pipe_1 <= en_R;
            en_R_pipe_2 <= en_R_pipe_1;
            rw_R_pipe_1 <= rw_R;
            rw_R_pipe_2 <= rw_R_pipe_1;
            addr_R_pipe_1 <= addr_RESULT;
            addr_R_pipe_2 <= addr_R_pipe_1;
            m00_axis_tready_pipe_1 <= m00_axis_tready_from_agu;
            m00_axis_tready_pipe_2 <= m00_axis_tready_pipe_1;
            m00_axis_tready_pipe_3 <= m00_axis_tready_pipe_2;
            m00_axis_tlast_pipe_1 <= m00_axis_tlast_from_agu;
            m00_axis_tlast_pipe_2 <= m00_axis_tlast_pipe_1;
            m00_axis_tlast_pipe_3 <= m00_axis_tlast_pipe_2;
        end
        
endmodule

module weight_storage #
    (
        parameter integer INPUT_SIZE = 784,
        parameter integer RESULT_SIZE = 1,
        parameter integer WEIGHT_SIZE = INPUT_SIZE*RESULT_SIZE,
        parameter integer WEIGHT_ADDR_SIZE = 10, //[14:0]     
        parameter integer DATA_WIDTH = 32
    )
    (
        input wire s00_axi_aclk,
        input wire s00_axi_aresetn,  
        input wire en,
        input wire rw,
        input wire [WEIGHT_ADDR_SIZE-1 : 0] addr,
        input wire [DATA_WIDTH-1 : 0] data_in,
        output reg [DATA_WIDTH-1 : 0] data_out
    );

    reg [DATA_WIDTH-1 : 0] mem [0 : WEIGHT_SIZE-1]; // BRAM for matrix A
    always @ (posedge s00_axi_aclk)
        if(!s00_axi_aresetn) begin: bram_init
            integer row;
            integer column;
            data_out <= 'b0;
            for (row = 0; row < WEIGHT_SIZE; row = row + 1)
                mem[row] <= 'b0;
        end else if (en)
                if (rw)
                    mem[addr] <= data_in;
                else
                    data_out <= mem[addr];
        else
            data_out <= 'b0;
endmodule

module vector_storage #
    (
        parameter integer RESULT_SIZE = 1,
        parameter integer RESULT_ADDR_SIZE = 2, //[5:0]
        parameter integer DATA_WIDTH = 32
    )
    (
        input wire s00_axi_aclk,
        input wire s00_axi_aresetn,  
        input wire en,
        input wire rw,
        input wire [RESULT_ADDR_SIZE-1 : 0] addr,
        input wire [DATA_WIDTH-1 : 0] data_in,
        output reg [DATA_WIDTH-1 : 0] data_out
    );

    (* mark_debug = "true", keep = "true" *) reg [DATA_WIDTH-1 : 0] mem [0 : RESULT_SIZE-1]; // BRAM for matrix A
    always @ (posedge s00_axi_aclk)
        if(!s00_axi_aresetn) begin: bram_init
            integer i;
            data_out <= 'b0;
            for (i = 0; i < RESULT_SIZE; i = i + 1)
                mem[i] <= 'b0;
        end else if (en)
            if (rw)
                mem[addr] <= data_in;
            else if (addr < RESULT_SIZE)
                data_out <= mem[addr];
            else
                data_out <= 'b0;
        else
            data_out <= 'b0;
endmodule

module MAC #
    (
        parameter integer INPUT_SIZE = 784,
        parameter integer RESULT_SIZE = 1,
        parameter integer WEIGHT_SIZE = INPUT_SIZE*RESULT_SIZE,
        parameter integer INPUT_ADDR_SIZE = 10, //[9:0]
        parameter integer RESULT_ADDR_SIZE = 2, //[5:0]
        parameter integer WEIGHT_ADDR_SIZE = 10, //[14:0]
        parameter integer DATA_WIDTH = 32,
        parameter integer FIXED_POINT_AMOUNT = 12
    )
    (
        input wire s00_axi_aclk,
        input wire s00_axi_aresetn,
        input wire clear, 
        input wire [DATA_WIDTH-1 : 0] data_WEIGHTS,
        input wire [DATA_WIDTH-1 : 0] data_INPUT,
        output wire [DATA_WIDTH-1 : 0] data_RESULT
    );
    (* mark_debug = "true", keep = "true" *) reg [DATA_WIDTH*2-1 : 0] reg_INPUT, reg_WEIGHTS;
    (* mark_debug = "true", keep = "true" *) reg [DATA_WIDTH*2-1 : 0] pre_result, cur_result;
    assign data_RESULT = cur_result[DATA_WIDTH-1 : 0];

    always @ (posedge s00_axi_aclk) begin
        if (!s00_axi_aresetn) begin
            reg_INPUT <= 'b0;
            reg_WEIGHTS <= 'b0;
        end else begin
            reg_INPUT <= { {DATA_WIDTH{data_INPUT[DATA_WIDTH-1]}}, data_INPUT[DATA_WIDTH-1:0] };
            reg_WEIGHTS <= { {DATA_WIDTH{data_WEIGHTS[DATA_WIDTH-1]}}, data_WEIGHTS[DATA_WIDTH-1:0] };
            //reg_INPUT <= data_INPUT;
            //reg_WEIGHTS <= data_WEIGHTS;
            
        end
    end

    always @ (reg_INPUT, reg_WEIGHTS, pre_result) begin
        cur_result = ( (reg_INPUT * reg_WEIGHTS) >> FIXED_POINT_AMOUNT )+ pre_result;
    end
        
    always @ (posedge s00_axi_aclk) begin
        if (!s00_axi_aresetn || clear) begin
            pre_result <= 'b0;
        end else begin
            pre_result <= cur_result;
        end
    end

endmodule

module AGU #
    (
        parameter integer INPUT_SIZE = 784,
        parameter integer RESULT_SIZE = 1,
        parameter integer WEIGHT_SIZE = INPUT_SIZE*RESULT_SIZE,
        parameter integer INPUT_ADDR_SIZE = 10, //[9:0]
        parameter integer RESULT_ADDR_SIZE = 2, //[5:0]
        parameter integer WEIGHT_ADDR_SIZE = 10, //[14:0]
        parameter integer DATA_WIDTH = 32
    )
    (
        input wire  s00_axi_aclk,
        input wire  s00_axi_aresetn,
        
        // AXI-Stream Slave
        output reg  s00_axis_tready,
        input wire  s00_axis_tlast,
        input wire  s00_axis_tvalid,
            
        // AXI-Stream Master
        output reg  m00_axis_tvalid,
        output reg  m00_axis_tlast,
        input wire  m00_axis_tready,
        
        input wire sel,
        input wire start,
        
        output reg en_A, //A = WEIGHTS
        output reg en_B, //B = INPUT
        output reg en_R,
        output reg rw_A,
        output reg rw_B,
        output reg rw_R,
        output reg [INPUT_ADDR_SIZE-1 : 0] addr_INPUT,
        output reg [WEIGHT_ADDR_SIZE-1 : 0] addr_WEIGHTS,
        output reg [RESULT_ADDR_SIZE-1 : 0] addr_RESULT
    );

    localparam
        S_IDLE =        5'b00001, // 1
        S_LOAD_A =      5'b00010, // 2
        S_LOAD_B =      5'b00100, // 4
        S_CALCULATE =   5'b01000, // 8
        S_OUTPUT =      5'b10000; // 16
    
    (* mark_debug = "true", keep = "true" *) reg [4:0] cur_state;
    reg [4:0] next_state;

    reg [INPUT_ADDR_SIZE-1 : 0] addr_INPUT_in;
    reg [WEIGHT_ADDR_SIZE-1 : 0] addr_WEIGHTS_in; // reg [SIZE_LOG-1 : 0] addr_stream_in;
    reg [RESULT_ADDR_SIZE-1 : 0] output_neuron_cnt;    // row counter; indicates the row of the multiplication
    reg [INPUT_ADDR_SIZE-1 : 0] input_cnt;    // column counter; indicates the column of the multiplication
    integer counter;
    always@(cur_state, 
            s00_axis_tvalid,
            s00_axis_tlast,
            sel,
            start,
            output_neuron_cnt,
            m00_axis_tready,
            counter
            ) begin
        next_state = cur_state;
        case(cur_state) 
            S_IDLE: begin
                if (s00_axis_tvalid)
                    if (!sel)
                        next_state = S_LOAD_A;
                    else
                        next_state = S_LOAD_B;
                if (start)
                    next_state = S_CALCULATE;
                if (m00_axis_tready) // TODO
                    next_state = S_OUTPUT;
            end
            S_LOAD_A: begin
                if (s00_axis_tlast)
                    next_state = S_IDLE;
            end
            S_LOAD_B: begin
                if (s00_axis_tlast)
                    next_state = S_IDLE;
            end
            S_CALCULATE: begin
                if (counter == INPUT_SIZE - 1 )
                    next_state = S_IDLE;
            end
            S_OUTPUT: begin
                if (output_neuron_cnt == RESULT_SIZE - 1 + 3)
                    next_state = S_IDLE;
            end
        endcase
        
    end

    always@(posedge s00_axi_aclk) begin
        if (!s00_axi_aresetn) begin
            cur_state <= S_IDLE;
        end else begin
            cur_state <= next_state;
        end
    end

    always@(posedge s00_axi_aclk) begin // address generator
        if (!s00_axi_aresetn) begin
            //addr_stream_in <= 'b0;
            addr_INPUT_in <= 'b0;
            addr_WEIGHTS_in <= 'b0; // reg [SIZE_LOG-1 : 0] addr_stream_in;
            output_neuron_cnt <= 'b0;
            input_cnt <= 'b0;
            counter <= 0;
        end else begin
            case(cur_state)
                S_IDLE: begin
                    //addr_stream_in <= 0;
                    addr_INPUT_in <= 'b0;
                    addr_WEIGHTS_in <= 'b0; // reg [SIZE_LOG-1 : 0] addr_stream_in;
                    output_neuron_cnt <= 'b0;
                    input_cnt <= 'b0;
                    counter <= 0;
                end
                S_LOAD_A: begin 
                    addr_WEIGHTS_in <= addr_WEIGHTS_in + 1;
                end
                S_LOAD_B: begin
                    addr_INPUT_in <= addr_INPUT_in + 1;
                end
                S_CALCULATE: begin
                    counter <= counter + 1;
                    input_cnt <= input_cnt+1;
                    if (input_cnt == INPUT_SIZE-1) begin
                        output_neuron_cnt <= output_neuron_cnt + 1;
                        input_cnt <= 0;
                    end
                end
                S_OUTPUT: begin
                    output_neuron_cnt <= output_neuron_cnt + 1;
                end
            endcase
        end
    end

    always@(posedge s00_axi_aclk) begin // output generator
        if (!s00_axi_aresetn) begin
            {en_A, en_B, en_R} <= {1'b0, 1'b0, 1'b0};
            {rw_A, rw_B, rw_R} <= {1'b0, 1'b0, 1'b0};
            //addr_A <= 'b0;
            //addr_B <= 'b0;
            //addr_R <= 'b0;
            addr_INPUT <= 'b0;
            addr_WEIGHTS <= 'b0;
            addr_RESULT <= 'b0;
            {s00_axis_tready, m00_axis_tvalid, m00_axis_tlast} <= {1'b0, 1'b0, 1'b0};
        end else begin
            case(cur_state)
                S_IDLE: begin
                    {en_A, en_B, en_R} <= {1'b0, 1'b0, 1'b0}; // A= WEIGHTS
                    {rw_A, rw_B, rw_R} <= {1'b0, 1'b0, 1'b0}; // B= INPUT
                    addr_INPUT <= 'b0;
                    addr_WEIGHTS <= 'b0;
                    addr_RESULT <= 'b0;
                    {s00_axis_tready, m00_axis_tvalid, m00_axis_tlast} <= {1'b0, 1'b0, 1'b0};
                end
                S_LOAD_A: begin 
                    {en_A, en_B, en_R} <= {1'b1, 1'b0, 1'b0};
                    {rw_A, rw_B, rw_R} <= {1'b1, 1'b0, 1'b0};
                    addr_WEIGHTS <= addr_WEIGHTS_in;
                    addr_INPUT <= 'b0;
                    addr_RESULT <= 'b0;
                    {s00_axis_tready, m00_axis_tvalid, m00_axis_tlast} <= {1'b1, 1'b0, 1'b0};
                end
                S_LOAD_B: begin
                    {en_A, en_B, en_R} <= {1'b0, 1'b1, 1'b0};
                    {rw_A, rw_B, rw_R} <= {1'b0, 1'b1, 1'b0};
                    addr_WEIGHTS <= 'b0;
                    addr_INPUT <= addr_INPUT_in;
                    addr_RESULT <= 'b0;
                    {s00_axis_tready, m00_axis_tvalid, m00_axis_tlast} <= {1'b1, 1'b0, 1'b0};
                end
                S_CALCULATE: begin
                    {en_A, en_B} <= {1'b1, 1'b1};
                    {rw_A, rw_B} <= {1'b0, 1'b0};
                    /*
                        temp_weight = weights[(hidden_neuron*size_of_input) + col];
                        temp_input = input_vector[col];
                        if (temp_input){
                            xil_printf("");
                        }
                        temp_tensor = (temp_weight * temp_input) >> FIXED_POINT_PRECISION_LEN;
                    */
                    //output_neuron_cnt <= 'b0;
                    //input_cnt <= 'b0;
                    addr_WEIGHTS <= input_cnt;
                    addr_INPUT <= input_cnt;
                    if(input_cnt == INPUT_SIZE-1) begin
                        {en_R, rw_R} <= {1'b1, 1'b1};
                        addr_RESULT <= output_neuron_cnt;
                    end else begin
                        {en_R, rw_R} <= {1'b0, 1'b0};
                        addr_RESULT <= 'b0;
                    end
                    {s00_axis_tready, m00_axis_tvalid, m00_axis_tlast} <= {1'b0, 1'b0, 1'b0};
                end
                S_OUTPUT: begin
                    {en_A, en_B, en_R} <= {1'b0, 1'b0, 1'b1};
                    {rw_A, rw_B, rw_R} <= {1'b0, 1'b0, 1'b0};
                    addr_WEIGHTS <= 'b0;
                    addr_INPUT <= 'b0;
                    addr_RESULT <= output_neuron_cnt;
                    {s00_axis_tready, m00_axis_tvalid} <= {1'b0, 1'b1};
                    
                    if(output_neuron_cnt == RESULT_SIZE-1) begin
                        m00_axis_tlast <= 1'b1;
                    end else begin
                        m00_axis_tlast <= 1'b0;
                    end                
                end
            endcase
        end
    end
 
endmodule