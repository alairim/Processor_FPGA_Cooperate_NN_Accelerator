//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Dec 11 17:09:18 2022
//Host        : Yukikaze-PC running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (INPUT_STREAM_tdata,
    INPUT_STREAM_tdest,
    INPUT_STREAM_tid,
    INPUT_STREAM_tkeep,
    INPUT_STREAM_tlast,
    INPUT_STREAM_tready,
    INPUT_STREAM_tstrb,
    INPUT_STREAM_tuser,
    INPUT_STREAM_tvalid,
    OUTPUT_STREAM_tdata,
    OUTPUT_STREAM_tdest,
    OUTPUT_STREAM_tid,
    OUTPUT_STREAM_tkeep,
    OUTPUT_STREAM_tlast,
    OUTPUT_STREAM_tready,
    OUTPUT_STREAM_tstrb,
    OUTPUT_STREAM_tuser,
    OUTPUT_STREAM_tvalid,
    S_AXI_CONTROL_BUS_araddr,
    S_AXI_CONTROL_BUS_arready,
    S_AXI_CONTROL_BUS_arvalid,
    S_AXI_CONTROL_BUS_awaddr,
    S_AXI_CONTROL_BUS_awready,
    S_AXI_CONTROL_BUS_awvalid,
    S_AXI_CONTROL_BUS_bready,
    S_AXI_CONTROL_BUS_bresp,
    S_AXI_CONTROL_BUS_bvalid,
    S_AXI_CONTROL_BUS_rdata,
    S_AXI_CONTROL_BUS_rready,
    S_AXI_CONTROL_BUS_rresp,
    S_AXI_CONTROL_BUS_rvalid,
    S_AXI_CONTROL_BUS_wdata,
    S_AXI_CONTROL_BUS_wready,
    S_AXI_CONTROL_BUS_wstrb,
    S_AXI_CONTROL_BUS_wvalid,
    aclk,
    aresetn,
    interrupt);
  input [31:0]INPUT_STREAM_tdata;
  input [4:0]INPUT_STREAM_tdest;
  input [4:0]INPUT_STREAM_tid;
  input [3:0]INPUT_STREAM_tkeep;
  input [0:0]INPUT_STREAM_tlast;
  output INPUT_STREAM_tready;
  input [3:0]INPUT_STREAM_tstrb;
  input [3:0]INPUT_STREAM_tuser;
  input INPUT_STREAM_tvalid;
  output [31:0]OUTPUT_STREAM_tdata;
  output [4:0]OUTPUT_STREAM_tdest;
  output [4:0]OUTPUT_STREAM_tid;
  output [3:0]OUTPUT_STREAM_tkeep;
  output [0:0]OUTPUT_STREAM_tlast;
  input OUTPUT_STREAM_tready;
  output [3:0]OUTPUT_STREAM_tstrb;
  output [3:0]OUTPUT_STREAM_tuser;
  output OUTPUT_STREAM_tvalid;
  input [3:0]S_AXI_CONTROL_BUS_araddr;
  output S_AXI_CONTROL_BUS_arready;
  input S_AXI_CONTROL_BUS_arvalid;
  input [3:0]S_AXI_CONTROL_BUS_awaddr;
  output S_AXI_CONTROL_BUS_awready;
  input S_AXI_CONTROL_BUS_awvalid;
  input S_AXI_CONTROL_BUS_bready;
  output [1:0]S_AXI_CONTROL_BUS_bresp;
  output S_AXI_CONTROL_BUS_bvalid;
  output [31:0]S_AXI_CONTROL_BUS_rdata;
  input S_AXI_CONTROL_BUS_rready;
  output [1:0]S_AXI_CONTROL_BUS_rresp;
  output S_AXI_CONTROL_BUS_rvalid;
  input [31:0]S_AXI_CONTROL_BUS_wdata;
  output S_AXI_CONTROL_BUS_wready;
  input [3:0]S_AXI_CONTROL_BUS_wstrb;
  input S_AXI_CONTROL_BUS_wvalid;
  input aclk;
  input aresetn;
  output interrupt;

  wire [31:0]INPUT_STREAM_tdata;
  wire [4:0]INPUT_STREAM_tdest;
  wire [4:0]INPUT_STREAM_tid;
  wire [3:0]INPUT_STREAM_tkeep;
  wire [0:0]INPUT_STREAM_tlast;
  wire INPUT_STREAM_tready;
  wire [3:0]INPUT_STREAM_tstrb;
  wire [3:0]INPUT_STREAM_tuser;
  wire INPUT_STREAM_tvalid;
  wire [31:0]OUTPUT_STREAM_tdata;
  wire [4:0]OUTPUT_STREAM_tdest;
  wire [4:0]OUTPUT_STREAM_tid;
  wire [3:0]OUTPUT_STREAM_tkeep;
  wire [0:0]OUTPUT_STREAM_tlast;
  wire OUTPUT_STREAM_tready;
  wire [3:0]OUTPUT_STREAM_tstrb;
  wire [3:0]OUTPUT_STREAM_tuser;
  wire OUTPUT_STREAM_tvalid;
  wire [3:0]S_AXI_CONTROL_BUS_araddr;
  wire S_AXI_CONTROL_BUS_arready;
  wire S_AXI_CONTROL_BUS_arvalid;
  wire [3:0]S_AXI_CONTROL_BUS_awaddr;
  wire S_AXI_CONTROL_BUS_awready;
  wire S_AXI_CONTROL_BUS_awvalid;
  wire S_AXI_CONTROL_BUS_bready;
  wire [1:0]S_AXI_CONTROL_BUS_bresp;
  wire S_AXI_CONTROL_BUS_bvalid;
  wire [31:0]S_AXI_CONTROL_BUS_rdata;
  wire S_AXI_CONTROL_BUS_rready;
  wire [1:0]S_AXI_CONTROL_BUS_rresp;
  wire S_AXI_CONTROL_BUS_rvalid;
  wire [31:0]S_AXI_CONTROL_BUS_wdata;
  wire S_AXI_CONTROL_BUS_wready;
  wire [3:0]S_AXI_CONTROL_BUS_wstrb;
  wire S_AXI_CONTROL_BUS_wvalid;
  wire aclk;
  wire aresetn;
  wire interrupt;

  bd_0 bd_0_i
       (.INPUT_STREAM_tdata(INPUT_STREAM_tdata),
        .INPUT_STREAM_tdest(INPUT_STREAM_tdest),
        .INPUT_STREAM_tid(INPUT_STREAM_tid),
        .INPUT_STREAM_tkeep(INPUT_STREAM_tkeep),
        .INPUT_STREAM_tlast(INPUT_STREAM_tlast),
        .INPUT_STREAM_tready(INPUT_STREAM_tready),
        .INPUT_STREAM_tstrb(INPUT_STREAM_tstrb),
        .INPUT_STREAM_tuser(INPUT_STREAM_tuser),
        .INPUT_STREAM_tvalid(INPUT_STREAM_tvalid),
        .OUTPUT_STREAM_tdata(OUTPUT_STREAM_tdata),
        .OUTPUT_STREAM_tdest(OUTPUT_STREAM_tdest),
        .OUTPUT_STREAM_tid(OUTPUT_STREAM_tid),
        .OUTPUT_STREAM_tkeep(OUTPUT_STREAM_tkeep),
        .OUTPUT_STREAM_tlast(OUTPUT_STREAM_tlast),
        .OUTPUT_STREAM_tready(OUTPUT_STREAM_tready),
        .OUTPUT_STREAM_tstrb(OUTPUT_STREAM_tstrb),
        .OUTPUT_STREAM_tuser(OUTPUT_STREAM_tuser),
        .OUTPUT_STREAM_tvalid(OUTPUT_STREAM_tvalid),
        .S_AXI_CONTROL_BUS_araddr(S_AXI_CONTROL_BUS_araddr),
        .S_AXI_CONTROL_BUS_arready(S_AXI_CONTROL_BUS_arready),
        .S_AXI_CONTROL_BUS_arvalid(S_AXI_CONTROL_BUS_arvalid),
        .S_AXI_CONTROL_BUS_awaddr(S_AXI_CONTROL_BUS_awaddr),
        .S_AXI_CONTROL_BUS_awready(S_AXI_CONTROL_BUS_awready),
        .S_AXI_CONTROL_BUS_awvalid(S_AXI_CONTROL_BUS_awvalid),
        .S_AXI_CONTROL_BUS_bready(S_AXI_CONTROL_BUS_bready),
        .S_AXI_CONTROL_BUS_bresp(S_AXI_CONTROL_BUS_bresp),
        .S_AXI_CONTROL_BUS_bvalid(S_AXI_CONTROL_BUS_bvalid),
        .S_AXI_CONTROL_BUS_rdata(S_AXI_CONTROL_BUS_rdata),
        .S_AXI_CONTROL_BUS_rready(S_AXI_CONTROL_BUS_rready),
        .S_AXI_CONTROL_BUS_rresp(S_AXI_CONTROL_BUS_rresp),
        .S_AXI_CONTROL_BUS_rvalid(S_AXI_CONTROL_BUS_rvalid),
        .S_AXI_CONTROL_BUS_wdata(S_AXI_CONTROL_BUS_wdata),
        .S_AXI_CONTROL_BUS_wready(S_AXI_CONTROL_BUS_wready),
        .S_AXI_CONTROL_BUS_wstrb(S_AXI_CONTROL_BUS_wstrb),
        .S_AXI_CONTROL_BUS_wvalid(S_AXI_CONTROL_BUS_wvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .interrupt(interrupt));
endmodule
