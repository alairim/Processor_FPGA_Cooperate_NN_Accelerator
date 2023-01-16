// ==============================================================
// File generated on Sun Dec 11 07:36:37 +0100 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      mult_accel_core_call
`define AUTOTB_DUT_INST AESL_inst_mult_accel_core_call
`define AUTOTB_TOP      apatb_mult_accel_core_call_top
`define AUTOTB_LAT_RESULT_FILE "mult_accel_core_call.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "mult_accel_core_call.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_mult_accel_core_call_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_in_stream_data_V AESL_autofifo_in_stream_data_V
`define AESL_FIFO_INST_in_stream_data_V AESL_autofifo_inst_in_stream_data_V
`define AESL_FIFO_in_stream_keep_V AESL_autofifo_in_stream_keep_V
`define AESL_FIFO_INST_in_stream_keep_V AESL_autofifo_inst_in_stream_keep_V
`define AESL_FIFO_in_stream_strb_V AESL_autofifo_in_stream_strb_V
`define AESL_FIFO_INST_in_stream_strb_V AESL_autofifo_inst_in_stream_strb_V
`define AESL_FIFO_in_stream_user_V AESL_autofifo_in_stream_user_V
`define AESL_FIFO_INST_in_stream_user_V AESL_autofifo_inst_in_stream_user_V
`define AESL_FIFO_in_stream_last_V AESL_autofifo_in_stream_last_V
`define AESL_FIFO_INST_in_stream_last_V AESL_autofifo_inst_in_stream_last_V
`define AESL_FIFO_in_stream_id_V AESL_autofifo_in_stream_id_V
`define AESL_FIFO_INST_in_stream_id_V AESL_autofifo_inst_in_stream_id_V
`define AESL_FIFO_in_stream_dest_V AESL_autofifo_in_stream_dest_V
`define AESL_FIFO_INST_in_stream_dest_V AESL_autofifo_inst_in_stream_dest_V
`define AESL_FIFO_out_stream_data_V AESL_autofifo_out_stream_data_V
`define AESL_FIFO_INST_out_stream_data_V AESL_autofifo_inst_out_stream_data_V
`define AESL_FIFO_out_stream_keep_V AESL_autofifo_out_stream_keep_V
`define AESL_FIFO_INST_out_stream_keep_V AESL_autofifo_inst_out_stream_keep_V
`define AESL_FIFO_out_stream_strb_V AESL_autofifo_out_stream_strb_V
`define AESL_FIFO_INST_out_stream_strb_V AESL_autofifo_inst_out_stream_strb_V
`define AESL_FIFO_out_stream_user_V AESL_autofifo_out_stream_user_V
`define AESL_FIFO_INST_out_stream_user_V AESL_autofifo_inst_out_stream_user_V
`define AESL_FIFO_out_stream_last_V AESL_autofifo_out_stream_last_V
`define AESL_FIFO_INST_out_stream_last_V AESL_autofifo_inst_out_stream_last_V
`define AESL_FIFO_out_stream_id_V AESL_autofifo_out_stream_id_V
`define AESL_FIFO_INST_out_stream_id_V AESL_autofifo_inst_out_stream_id_V
`define AESL_FIFO_out_stream_dest_V AESL_autofifo_out_stream_dest_V
`define AESL_FIFO_INST_out_stream_dest_V AESL_autofifo_inst_out_stream_dest_V
`define AUTOTB_TVIN_out_stream_keep_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_keep_V.dat"
`define AUTOTB_TVIN_out_stream_strb_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_strb_V.dat"
`define AUTOTB_TVIN_out_stream_user_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_user_V.dat"
`define AUTOTB_TVIN_out_stream_last_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_last_V.dat"
`define AUTOTB_TVIN_out_stream_id_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_id_V.dat"
`define AUTOTB_TVIN_out_stream_dest_V  "../tv/cdatafile/c.mult_accel_core_call.autotvin_out_stream_dest_V.dat"
`define AUTOTB_TVIN_out_stream_keep_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_keep_V.dat"
`define AUTOTB_TVIN_out_stream_strb_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_strb_V.dat"
`define AUTOTB_TVIN_out_stream_user_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_user_V.dat"
`define AUTOTB_TVIN_out_stream_last_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_last_V.dat"
`define AUTOTB_TVIN_out_stream_id_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_id_V.dat"
`define AUTOTB_TVIN_out_stream_dest_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvin_out_stream_dest_V.dat"
`define AUTOTB_TVOUT_out_stream_keep_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_keep_V.dat"
`define AUTOTB_TVOUT_out_stream_strb_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_strb_V.dat"
`define AUTOTB_TVOUT_out_stream_user_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_user_V.dat"
`define AUTOTB_TVOUT_out_stream_last_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_last_V.dat"
`define AUTOTB_TVOUT_out_stream_id_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_id_V.dat"
`define AUTOTB_TVOUT_out_stream_dest_V  "../tv/cdatafile/c.mult_accel_core_call.autotvout_out_stream_dest_V.dat"
`define AUTOTB_TVOUT_out_stream_keep_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_keep_V.dat"
`define AUTOTB_TVOUT_out_stream_strb_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_strb_V.dat"
`define AUTOTB_TVOUT_out_stream_user_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_user_V.dat"
`define AUTOTB_TVOUT_out_stream_last_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_last_V.dat"
`define AUTOTB_TVOUT_out_stream_id_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_id_V.dat"
`define AUTOTB_TVOUT_out_stream_dest_V_out_wrapc  "../tv/rtldatafile/rtl.mult_accel_core_call.autotvout_out_stream_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 1571;
parameter LENGTH_out_stream_keep_V = 1;
parameter LENGTH_out_stream_strb_V = 1;
parameter LENGTH_out_stream_user_V = 1;
parameter LENGTH_out_stream_last_V = 1;
parameter LENGTH_out_stream_id_V = 1;
parameter LENGTH_out_stream_dest_V = 1;

task read_token;
    input integer fp;
    output reg [223 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] in_stream_data_V_dout;
wire  in_stream_data_V_empty_n;
wire  in_stream_data_V_read;
wire [3 : 0] in_stream_keep_V_dout;
wire  in_stream_keep_V_empty_n;
wire  in_stream_keep_V_read;
wire [3 : 0] in_stream_strb_V_dout;
wire  in_stream_strb_V_empty_n;
wire  in_stream_strb_V_read;
wire [3 : 0] in_stream_user_V_dout;
wire  in_stream_user_V_empty_n;
wire  in_stream_user_V_read;
wire [0 : 0] in_stream_last_V_dout;
wire  in_stream_last_V_empty_n;
wire  in_stream_last_V_read;
wire [4 : 0] in_stream_id_V_dout;
wire  in_stream_id_V_empty_n;
wire  in_stream_id_V_read;
wire [4 : 0] in_stream_dest_V_dout;
wire  in_stream_dest_V_empty_n;
wire  in_stream_dest_V_read;
wire [31 : 0] out_stream_data_V_dout;
wire  out_stream_data_V_empty_n;
wire  out_stream_data_V_read;
wire [3 : 0] out_stream_keep_V_din;
wire  out_stream_keep_V_full_n;
wire  out_stream_keep_V_write;
wire [3 : 0] out_stream_strb_V_din;
wire  out_stream_strb_V_full_n;
wire  out_stream_strb_V_write;
wire [3 : 0] out_stream_user_V_din;
wire  out_stream_user_V_full_n;
wire  out_stream_user_V_write;
wire [0 : 0] out_stream_last_V_din;
wire  out_stream_last_V_full_n;
wire  out_stream_last_V_write;
wire [4 : 0] out_stream_id_V_din;
wire  out_stream_id_V_full_n;
wire  out_stream_id_V_write;
wire [4 : 0] out_stream_dest_V_din;
wire  out_stream_dest_V_full_n;
wire  out_stream_dest_V_write;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .in_stream_data_V_dout(in_stream_data_V_dout),
    .in_stream_data_V_empty_n(in_stream_data_V_empty_n),
    .in_stream_data_V_read(in_stream_data_V_read),
    .in_stream_keep_V_dout(in_stream_keep_V_dout),
    .in_stream_keep_V_empty_n(in_stream_keep_V_empty_n),
    .in_stream_keep_V_read(in_stream_keep_V_read),
    .in_stream_strb_V_dout(in_stream_strb_V_dout),
    .in_stream_strb_V_empty_n(in_stream_strb_V_empty_n),
    .in_stream_strb_V_read(in_stream_strb_V_read),
    .in_stream_user_V_dout(in_stream_user_V_dout),
    .in_stream_user_V_empty_n(in_stream_user_V_empty_n),
    .in_stream_user_V_read(in_stream_user_V_read),
    .in_stream_last_V_dout(in_stream_last_V_dout),
    .in_stream_last_V_empty_n(in_stream_last_V_empty_n),
    .in_stream_last_V_read(in_stream_last_V_read),
    .in_stream_id_V_dout(in_stream_id_V_dout),
    .in_stream_id_V_empty_n(in_stream_id_V_empty_n),
    .in_stream_id_V_read(in_stream_id_V_read),
    .in_stream_dest_V_dout(in_stream_dest_V_dout),
    .in_stream_dest_V_empty_n(in_stream_dest_V_empty_n),
    .in_stream_dest_V_read(in_stream_dest_V_read),
    .out_stream_data_V_dout(out_stream_data_V_dout),
    .out_stream_data_V_empty_n(out_stream_data_V_empty_n),
    .out_stream_data_V_read(out_stream_data_V_read),
    .out_stream_keep_V_din(out_stream_keep_V_din),
    .out_stream_keep_V_full_n(out_stream_keep_V_full_n),
    .out_stream_keep_V_write(out_stream_keep_V_write),
    .out_stream_strb_V_din(out_stream_strb_V_din),
    .out_stream_strb_V_full_n(out_stream_strb_V_full_n),
    .out_stream_strb_V_write(out_stream_strb_V_write),
    .out_stream_user_V_din(out_stream_user_V_din),
    .out_stream_user_V_full_n(out_stream_user_V_full_n),
    .out_stream_user_V_write(out_stream_user_V_write),
    .out_stream_last_V_din(out_stream_last_V_din),
    .out_stream_last_V_full_n(out_stream_last_V_full_n),
    .out_stream_last_V_write(out_stream_last_V_write),
    .out_stream_id_V_din(out_stream_id_V_din),
    .out_stream_id_V_full_n(out_stream_id_V_full_n),
    .out_stream_id_V_write(out_stream_id_V_write),
    .out_stream_dest_V_din(out_stream_dest_V_din),
    .out_stream_dest_V_full_n(out_stream_dest_V_full_n),
    .out_stream_dest_V_write(out_stream_dest_V_write));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation in_stream_data_V

wire fifoin_stream_data_V_rd;
wire [31 : 0] fifoin_stream_data_V_dout;
wire fifoin_stream_data_V_empty_n;
wire fifoin_stream_data_V_ready;
wire fifoin_stream_data_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_data_V;
reg in_stream_data_V_ready_reg;

// Assignment between dut and fifoin_stream_data_V

// Assign input of fifoin_stream_data_V
assign      fifoin_stream_data_V_rd        =   in_stream_data_V_read & in_stream_data_V_empty_n;
assign    fifoin_stream_data_V_ready   =   ready;
assign    fifoin_stream_data_V_done    =   0;
// Assign input of dut
assign      in_stream_data_V_dout       =   fifoin_stream_data_V_dout;
reg   reg_fifoin_stream_data_V_empty_n;
initial begin : gen_reg_fifoin_stream_data_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_data_V_empty_n = fifoin_stream_data_V_empty_n;
    while (1) begin
        @ (fifoin_stream_data_V_empty_n);
        reg_fifoin_stream_data_V_empty_n = fifoin_stream_data_V_empty_n;
    end
end

assign      in_stream_data_V_empty_n    =   reg_fifoin_stream_data_V_empty_n;


// Fifo Instantiation in_stream_keep_V

wire fifoin_stream_keep_V_rd;
wire [3 : 0] fifoin_stream_keep_V_dout;
wire fifoin_stream_keep_V_empty_n;
wire fifoin_stream_keep_V_ready;
wire fifoin_stream_keep_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_keep_V;
reg in_stream_keep_V_ready_reg;

// Assignment between dut and fifoin_stream_keep_V

// Assign input of fifoin_stream_keep_V
assign      fifoin_stream_keep_V_rd        =   in_stream_keep_V_read & in_stream_keep_V_empty_n;
assign    fifoin_stream_keep_V_ready   =   ready;
assign    fifoin_stream_keep_V_done    =   0;
// Assign input of dut
assign      in_stream_keep_V_dout       =   fifoin_stream_keep_V_dout;
reg   reg_fifoin_stream_keep_V_empty_n;
initial begin : gen_reg_fifoin_stream_keep_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_keep_V_empty_n = fifoin_stream_keep_V_empty_n;
    while (1) begin
        @ (fifoin_stream_keep_V_empty_n);
        reg_fifoin_stream_keep_V_empty_n = fifoin_stream_keep_V_empty_n;
    end
end

assign      in_stream_keep_V_empty_n    =   reg_fifoin_stream_keep_V_empty_n;


// Fifo Instantiation in_stream_strb_V

wire fifoin_stream_strb_V_rd;
wire [3 : 0] fifoin_stream_strb_V_dout;
wire fifoin_stream_strb_V_empty_n;
wire fifoin_stream_strb_V_ready;
wire fifoin_stream_strb_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_strb_V;
reg in_stream_strb_V_ready_reg;

// Assignment between dut and fifoin_stream_strb_V

// Assign input of fifoin_stream_strb_V
assign      fifoin_stream_strb_V_rd        =   in_stream_strb_V_read & in_stream_strb_V_empty_n;
assign    fifoin_stream_strb_V_ready   =   ready;
assign    fifoin_stream_strb_V_done    =   0;
// Assign input of dut
assign      in_stream_strb_V_dout       =   fifoin_stream_strb_V_dout;
reg   reg_fifoin_stream_strb_V_empty_n;
initial begin : gen_reg_fifoin_stream_strb_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_strb_V_empty_n = fifoin_stream_strb_V_empty_n;
    while (1) begin
        @ (fifoin_stream_strb_V_empty_n);
        reg_fifoin_stream_strb_V_empty_n = fifoin_stream_strb_V_empty_n;
    end
end

assign      in_stream_strb_V_empty_n    =   reg_fifoin_stream_strb_V_empty_n;


// Fifo Instantiation in_stream_user_V

wire fifoin_stream_user_V_rd;
wire [3 : 0] fifoin_stream_user_V_dout;
wire fifoin_stream_user_V_empty_n;
wire fifoin_stream_user_V_ready;
wire fifoin_stream_user_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_user_V;
reg in_stream_user_V_ready_reg;

// Assignment between dut and fifoin_stream_user_V

// Assign input of fifoin_stream_user_V
assign      fifoin_stream_user_V_rd        =   in_stream_user_V_read & in_stream_user_V_empty_n;
assign    fifoin_stream_user_V_ready   =   ready;
assign    fifoin_stream_user_V_done    =   0;
// Assign input of dut
assign      in_stream_user_V_dout       =   fifoin_stream_user_V_dout;
reg   reg_fifoin_stream_user_V_empty_n;
initial begin : gen_reg_fifoin_stream_user_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_user_V_empty_n = fifoin_stream_user_V_empty_n;
    while (1) begin
        @ (fifoin_stream_user_V_empty_n);
        reg_fifoin_stream_user_V_empty_n = fifoin_stream_user_V_empty_n;
    end
end

assign      in_stream_user_V_empty_n    =   reg_fifoin_stream_user_V_empty_n;


// Fifo Instantiation in_stream_last_V

wire fifoin_stream_last_V_rd;
wire [0 : 0] fifoin_stream_last_V_dout;
wire fifoin_stream_last_V_empty_n;
wire fifoin_stream_last_V_ready;
wire fifoin_stream_last_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_last_V;
reg in_stream_last_V_ready_reg;

// Assignment between dut and fifoin_stream_last_V

// Assign input of fifoin_stream_last_V
assign      fifoin_stream_last_V_rd        =   in_stream_last_V_read & in_stream_last_V_empty_n;
assign    fifoin_stream_last_V_ready   =   ready;
assign    fifoin_stream_last_V_done    =   0;
// Assign input of dut
assign      in_stream_last_V_dout       =   fifoin_stream_last_V_dout;
reg   reg_fifoin_stream_last_V_empty_n;
initial begin : gen_reg_fifoin_stream_last_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_last_V_empty_n = fifoin_stream_last_V_empty_n;
    while (1) begin
        @ (fifoin_stream_last_V_empty_n);
        reg_fifoin_stream_last_V_empty_n = fifoin_stream_last_V_empty_n;
    end
end

assign      in_stream_last_V_empty_n    =   reg_fifoin_stream_last_V_empty_n;


// Fifo Instantiation in_stream_id_V

wire fifoin_stream_id_V_rd;
wire [4 : 0] fifoin_stream_id_V_dout;
wire fifoin_stream_id_V_empty_n;
wire fifoin_stream_id_V_ready;
wire fifoin_stream_id_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_id_V;
reg in_stream_id_V_ready_reg;

// Assignment between dut and fifoin_stream_id_V

// Assign input of fifoin_stream_id_V
assign      fifoin_stream_id_V_rd        =   in_stream_id_V_read & in_stream_id_V_empty_n;
assign    fifoin_stream_id_V_ready   =   ready;
assign    fifoin_stream_id_V_done    =   0;
// Assign input of dut
assign      in_stream_id_V_dout       =   fifoin_stream_id_V_dout;
reg   reg_fifoin_stream_id_V_empty_n;
initial begin : gen_reg_fifoin_stream_id_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_id_V_empty_n = fifoin_stream_id_V_empty_n;
    while (1) begin
        @ (fifoin_stream_id_V_empty_n);
        reg_fifoin_stream_id_V_empty_n = fifoin_stream_id_V_empty_n;
    end
end

assign      in_stream_id_V_empty_n    =   reg_fifoin_stream_id_V_empty_n;


// Fifo Instantiation in_stream_dest_V

wire fifoin_stream_dest_V_rd;
wire [4 : 0] fifoin_stream_dest_V_dout;
wire fifoin_stream_dest_V_empty_n;
wire fifoin_stream_dest_V_ready;
wire fifoin_stream_dest_V_done;
reg [31:0] ap_c_n_tvin_trans_num_in_stream_dest_V;
reg in_stream_dest_V_ready_reg;

// Assignment between dut and fifoin_stream_dest_V

// Assign input of fifoin_stream_dest_V
assign      fifoin_stream_dest_V_rd        =   in_stream_dest_V_read & in_stream_dest_V_empty_n;
assign    fifoin_stream_dest_V_ready   =   ready;
assign    fifoin_stream_dest_V_done    =   0;
// Assign input of dut
assign      in_stream_dest_V_dout       =   fifoin_stream_dest_V_dout;
reg   reg_fifoin_stream_dest_V_empty_n;
initial begin : gen_reg_fifoin_stream_dest_V_empty_n_process
    integer proc_rand;
    reg_fifoin_stream_dest_V_empty_n = fifoin_stream_dest_V_empty_n;
    while (1) begin
        @ (fifoin_stream_dest_V_empty_n);
        reg_fifoin_stream_dest_V_empty_n = fifoin_stream_dest_V_empty_n;
    end
end

assign      in_stream_dest_V_empty_n    =   reg_fifoin_stream_dest_V_empty_n;


// Fifo Instantiation out_stream_data_V

wire fifoout_stream_data_V_rd;
wire [31 : 0] fifoout_stream_data_V_dout;
wire fifoout_stream_data_V_empty_n;
wire fifoout_stream_data_V_ready;
wire fifoout_stream_data_V_done;
reg [31:0] ap_c_n_tvin_trans_num_out_stream_data_V;
reg out_stream_data_V_ready_reg;

// Assignment between dut and fifoout_stream_data_V

// Assign input of fifoout_stream_data_V
assign      fifoout_stream_data_V_rd        =   out_stream_data_V_read & out_stream_data_V_empty_n;
assign    fifoout_stream_data_V_ready   =   ready;
assign    fifoout_stream_data_V_done    =   0;
// Assign input of dut
assign      out_stream_data_V_dout       =   fifoout_stream_data_V_dout;
reg   reg_fifoout_stream_data_V_empty_n;
initial begin : gen_reg_fifoout_stream_data_V_empty_n_process
    integer proc_rand;
    reg_fifoout_stream_data_V_empty_n = fifoout_stream_data_V_empty_n;
    while (1) begin
        @ (fifoout_stream_data_V_empty_n);
        reg_fifoout_stream_data_V_empty_n = fifoout_stream_data_V_empty_n;
    end
end

assign      out_stream_data_V_empty_n    =   reg_fifoout_stream_data_V_empty_n;


//------------------------Fifoout_stream_keep_V Instantiation--------------

// The input and output of fifoout_stream_keep_V
wire  fifoout_stream_keep_V_wr;
wire  [3 : 0] fifoout_stream_keep_V_din;
wire  fifoout_stream_keep_V_full_n;
wire  fifoout_stream_keep_V_ready;
wire  fifoout_stream_keep_V_done;

`AESL_FIFO_out_stream_keep_V `AESL_FIFO_INST_out_stream_keep_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_keep_V_wr),
    .if_din       (fifoout_stream_keep_V_din),
    .if_full_n    (fifoout_stream_keep_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_keep_V_ready),
    .done         (fifoout_stream_keep_V_done)
);

// Assignment between dut and fifoout_stream_keep_V

// Assign input of fifoout_stream_keep_V
assign      fifoout_stream_keep_V_wr        =   out_stream_keep_V_write & out_stream_keep_V_full_n;
assign      fifoout_stream_keep_V_din        =   out_stream_keep_V_din;
assign    fifoout_stream_keep_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_keep_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_keep_V_full_n;
initial begin : gen_reg_fifoout_stream_keep_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_keep_V_full_n = fifoout_stream_keep_V_full_n;
    while (1) begin
        @ (fifoout_stream_keep_V_full_n);
        reg_fifoout_stream_keep_V_full_n = fifoout_stream_keep_V_full_n;
    end
end

assign      out_stream_keep_V_full_n    =   reg_fifoout_stream_keep_V_full_n;


//------------------------Fifoout_stream_strb_V Instantiation--------------

// The input and output of fifoout_stream_strb_V
wire  fifoout_stream_strb_V_wr;
wire  [3 : 0] fifoout_stream_strb_V_din;
wire  fifoout_stream_strb_V_full_n;
wire  fifoout_stream_strb_V_ready;
wire  fifoout_stream_strb_V_done;

`AESL_FIFO_out_stream_strb_V `AESL_FIFO_INST_out_stream_strb_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_strb_V_wr),
    .if_din       (fifoout_stream_strb_V_din),
    .if_full_n    (fifoout_stream_strb_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_strb_V_ready),
    .done         (fifoout_stream_strb_V_done)
);

// Assignment between dut and fifoout_stream_strb_V

// Assign input of fifoout_stream_strb_V
assign      fifoout_stream_strb_V_wr        =   out_stream_strb_V_write & out_stream_strb_V_full_n;
assign      fifoout_stream_strb_V_din        =   out_stream_strb_V_din;
assign    fifoout_stream_strb_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_strb_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_strb_V_full_n;
initial begin : gen_reg_fifoout_stream_strb_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_strb_V_full_n = fifoout_stream_strb_V_full_n;
    while (1) begin
        @ (fifoout_stream_strb_V_full_n);
        reg_fifoout_stream_strb_V_full_n = fifoout_stream_strb_V_full_n;
    end
end

assign      out_stream_strb_V_full_n    =   reg_fifoout_stream_strb_V_full_n;


//------------------------Fifoout_stream_user_V Instantiation--------------

// The input and output of fifoout_stream_user_V
wire  fifoout_stream_user_V_wr;
wire  [3 : 0] fifoout_stream_user_V_din;
wire  fifoout_stream_user_V_full_n;
wire  fifoout_stream_user_V_ready;
wire  fifoout_stream_user_V_done;

`AESL_FIFO_out_stream_user_V `AESL_FIFO_INST_out_stream_user_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_user_V_wr),
    .if_din       (fifoout_stream_user_V_din),
    .if_full_n    (fifoout_stream_user_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_user_V_ready),
    .done         (fifoout_stream_user_V_done)
);

// Assignment between dut and fifoout_stream_user_V

// Assign input of fifoout_stream_user_V
assign      fifoout_stream_user_V_wr        =   out_stream_user_V_write & out_stream_user_V_full_n;
assign      fifoout_stream_user_V_din        =   out_stream_user_V_din;
assign    fifoout_stream_user_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_user_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_user_V_full_n;
initial begin : gen_reg_fifoout_stream_user_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_user_V_full_n = fifoout_stream_user_V_full_n;
    while (1) begin
        @ (fifoout_stream_user_V_full_n);
        reg_fifoout_stream_user_V_full_n = fifoout_stream_user_V_full_n;
    end
end

assign      out_stream_user_V_full_n    =   reg_fifoout_stream_user_V_full_n;


//------------------------Fifoout_stream_last_V Instantiation--------------

// The input and output of fifoout_stream_last_V
wire  fifoout_stream_last_V_wr;
wire  [0 : 0] fifoout_stream_last_V_din;
wire  fifoout_stream_last_V_full_n;
wire  fifoout_stream_last_V_ready;
wire  fifoout_stream_last_V_done;

`AESL_FIFO_out_stream_last_V `AESL_FIFO_INST_out_stream_last_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_last_V_wr),
    .if_din       (fifoout_stream_last_V_din),
    .if_full_n    (fifoout_stream_last_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_last_V_ready),
    .done         (fifoout_stream_last_V_done)
);

// Assignment between dut and fifoout_stream_last_V

// Assign input of fifoout_stream_last_V
assign      fifoout_stream_last_V_wr        =   out_stream_last_V_write & out_stream_last_V_full_n;
assign      fifoout_stream_last_V_din        =   out_stream_last_V_din;
assign    fifoout_stream_last_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_last_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_last_V_full_n;
initial begin : gen_reg_fifoout_stream_last_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_last_V_full_n = fifoout_stream_last_V_full_n;
    while (1) begin
        @ (fifoout_stream_last_V_full_n);
        reg_fifoout_stream_last_V_full_n = fifoout_stream_last_V_full_n;
    end
end

assign      out_stream_last_V_full_n    =   reg_fifoout_stream_last_V_full_n;


//------------------------Fifoout_stream_id_V Instantiation--------------

// The input and output of fifoout_stream_id_V
wire  fifoout_stream_id_V_wr;
wire  [4 : 0] fifoout_stream_id_V_din;
wire  fifoout_stream_id_V_full_n;
wire  fifoout_stream_id_V_ready;
wire  fifoout_stream_id_V_done;

`AESL_FIFO_out_stream_id_V `AESL_FIFO_INST_out_stream_id_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_id_V_wr),
    .if_din       (fifoout_stream_id_V_din),
    .if_full_n    (fifoout_stream_id_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_id_V_ready),
    .done         (fifoout_stream_id_V_done)
);

// Assignment between dut and fifoout_stream_id_V

// Assign input of fifoout_stream_id_V
assign      fifoout_stream_id_V_wr        =   out_stream_id_V_write & out_stream_id_V_full_n;
assign      fifoout_stream_id_V_din        =   out_stream_id_V_din;
assign    fifoout_stream_id_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_id_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_id_V_full_n;
initial begin : gen_reg_fifoout_stream_id_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_id_V_full_n = fifoout_stream_id_V_full_n;
    while (1) begin
        @ (fifoout_stream_id_V_full_n);
        reg_fifoout_stream_id_V_full_n = fifoout_stream_id_V_full_n;
    end
end

assign      out_stream_id_V_full_n    =   reg_fifoout_stream_id_V_full_n;


//------------------------Fifoout_stream_dest_V Instantiation--------------

// The input and output of fifoout_stream_dest_V
wire  fifoout_stream_dest_V_wr;
wire  [4 : 0] fifoout_stream_dest_V_din;
wire  fifoout_stream_dest_V_full_n;
wire  fifoout_stream_dest_V_ready;
wire  fifoout_stream_dest_V_done;

`AESL_FIFO_out_stream_dest_V `AESL_FIFO_INST_out_stream_dest_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoout_stream_dest_V_wr),
    .if_din       (fifoout_stream_dest_V_din),
    .if_full_n    (fifoout_stream_dest_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoout_stream_dest_V_ready),
    .done         (fifoout_stream_dest_V_done)
);

// Assignment between dut and fifoout_stream_dest_V

// Assign input of fifoout_stream_dest_V
assign      fifoout_stream_dest_V_wr        =   out_stream_dest_V_write & out_stream_dest_V_full_n;
assign      fifoout_stream_dest_V_din        =   out_stream_dest_V_din;
assign    fifoout_stream_dest_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoout_stream_dest_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoout_stream_dest_V_full_n;
initial begin : gen_reg_fifoout_stream_dest_V_full_n_process
    integer proc_rand;
    reg_fifoout_stream_dest_V_full_n = fifoout_stream_dest_V_full_n;
    while (1) begin
        @ (fifoout_stream_dest_V_full_n);
        reg_fifoout_stream_dest_V_full_n = fifoout_stream_dest_V_full_n;
    end
end

assign      out_stream_dest_V_full_n    =   reg_fifoout_stream_dest_V_full_n;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_out_stream_keep_V;
reg [31:0] size_out_stream_keep_V;
reg [31:0] size_out_stream_keep_V_backup;
reg end_out_stream_strb_V;
reg [31:0] size_out_stream_strb_V;
reg [31:0] size_out_stream_strb_V_backup;
reg end_out_stream_user_V;
reg [31:0] size_out_stream_user_V;
reg [31:0] size_out_stream_user_V_backup;
reg end_out_stream_last_V;
reg [31:0] size_out_stream_last_V;
reg [31:0] size_out_stream_last_V_backup;
reg end_out_stream_id_V;
reg [31:0] size_out_stream_id_V;
reg [31:0] size_out_stream_id_V_backup;
reg end_out_stream_dest_V;
reg [31:0] size_out_stream_dest_V;
reg [31:0] size_out_stream_dest_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_out_stream_keep_V;

initial begin : dump_tvout_runtime_sign_out_stream_keep_V
    integer fp;
    dump_tvout_finish_out_stream_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_keep_V = 1;
end


reg dump_tvout_finish_out_stream_strb_V;

initial begin : dump_tvout_runtime_sign_out_stream_strb_V
    integer fp;
    dump_tvout_finish_out_stream_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_strb_V = 1;
end


reg dump_tvout_finish_out_stream_user_V;

initial begin : dump_tvout_runtime_sign_out_stream_user_V
    integer fp;
    dump_tvout_finish_out_stream_user_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_user_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_user_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_user_V = 1;
end


reg dump_tvout_finish_out_stream_last_V;

initial begin : dump_tvout_runtime_sign_out_stream_last_V
    integer fp;
    dump_tvout_finish_out_stream_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_last_V = 1;
end


reg dump_tvout_finish_out_stream_id_V;

initial begin : dump_tvout_runtime_sign_out_stream_id_V
    integer fp;
    dump_tvout_finish_out_stream_id_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_id_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_id_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_id_V = 1;
end


reg dump_tvout_finish_out_stream_dest_V;

initial begin : dump_tvout_runtime_sign_out_stream_dest_V
    integer fp;
    dump_tvout_finish_out_stream_dest_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_stream_dest_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_stream_dest_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_stream_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_stream_dest_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
