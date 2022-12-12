//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Dec 11 17:09:18 2022
//Host        : Yukikaze-PC running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INPUT_STREAM, CLK_DOMAIN bd_0_aclk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4" *) input [31:0]INPUT_STREAM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [4:0]INPUT_STREAM_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [4:0]INPUT_STREAM_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [3:0]INPUT_STREAM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [0:0]INPUT_STREAM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) output INPUT_STREAM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [3:0]INPUT_STREAM_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input [3:0]INPUT_STREAM_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 INPUT_STREAM " *) input INPUT_STREAM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OUTPUT_STREAM, CLK_DOMAIN bd_0_aclk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER_WIDTH 4}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 5, TID_WIDTH 5, TUSER_WIDTH 4" *) output [31:0]OUTPUT_STREAM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [4:0]OUTPUT_STREAM_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [4:0]OUTPUT_STREAM_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [3:0]OUTPUT_STREAM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [0:0]OUTPUT_STREAM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) input OUTPUT_STREAM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [3:0]OUTPUT_STREAM_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output [3:0]OUTPUT_STREAM_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 OUTPUT_STREAM " *) output OUTPUT_STREAM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CONTROL_BUS, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]S_AXI_CONTROL_BUS_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output S_AXI_CONTROL_BUS_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input S_AXI_CONTROL_BUS_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input [3:0]S_AXI_CONTROL_BUS_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output S_AXI_CONTROL_BUS_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input S_AXI_CONTROL_BUS_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input S_AXI_CONTROL_BUS_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output [1:0]S_AXI_CONTROL_BUS_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output S_AXI_CONTROL_BUS_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output [31:0]S_AXI_CONTROL_BUS_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input S_AXI_CONTROL_BUS_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output [1:0]S_AXI_CONTROL_BUS_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output S_AXI_CONTROL_BUS_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input [31:0]S_AXI_CONTROL_BUS_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) output S_AXI_CONTROL_BUS_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input [3:0]S_AXI_CONTROL_BUS_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CONTROL_BUS " *) input S_AXI_CONTROL_BUS_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF INPUT_STREAM:OUTPUT_STREAM:S_AXI_CONTROL_BUS, ASSOCIATED_RESET aresetn, CLK_DOMAIN bd_0_aclk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;

  wire [31:0]INPUT_STREAM_0_1_TDATA;
  wire [4:0]INPUT_STREAM_0_1_TDEST;
  wire [4:0]INPUT_STREAM_0_1_TID;
  wire [3:0]INPUT_STREAM_0_1_TKEEP;
  wire [0:0]INPUT_STREAM_0_1_TLAST;
  wire INPUT_STREAM_0_1_TREADY;
  wire [3:0]INPUT_STREAM_0_1_TSTRB;
  wire [3:0]INPUT_STREAM_0_1_TUSER;
  wire INPUT_STREAM_0_1_TVALID;
  wire [3:0]S_AXI_CONTROL_BUS_0_1_ARADDR;
  wire S_AXI_CONTROL_BUS_0_1_ARREADY;
  wire S_AXI_CONTROL_BUS_0_1_ARVALID;
  wire [3:0]S_AXI_CONTROL_BUS_0_1_AWADDR;
  wire S_AXI_CONTROL_BUS_0_1_AWREADY;
  wire S_AXI_CONTROL_BUS_0_1_AWVALID;
  wire S_AXI_CONTROL_BUS_0_1_BREADY;
  wire [1:0]S_AXI_CONTROL_BUS_0_1_BRESP;
  wire S_AXI_CONTROL_BUS_0_1_BVALID;
  wire [31:0]S_AXI_CONTROL_BUS_0_1_RDATA;
  wire S_AXI_CONTROL_BUS_0_1_RREADY;
  wire [1:0]S_AXI_CONTROL_BUS_0_1_RRESP;
  wire S_AXI_CONTROL_BUS_0_1_RVALID;
  wire [31:0]S_AXI_CONTROL_BUS_0_1_WDATA;
  wire S_AXI_CONTROL_BUS_0_1_WREADY;
  wire [3:0]S_AXI_CONTROL_BUS_0_1_WSTRB;
  wire S_AXI_CONTROL_BUS_0_1_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [31:0]hls_inst_OUTPUT_STREAM_TDATA;
  wire [4:0]hls_inst_OUTPUT_STREAM_TDEST;
  wire [4:0]hls_inst_OUTPUT_STREAM_TID;
  wire [3:0]hls_inst_OUTPUT_STREAM_TKEEP;
  wire [0:0]hls_inst_OUTPUT_STREAM_TLAST;
  wire hls_inst_OUTPUT_STREAM_TREADY;
  wire [3:0]hls_inst_OUTPUT_STREAM_TSTRB;
  wire [3:0]hls_inst_OUTPUT_STREAM_TUSER;
  wire hls_inst_OUTPUT_STREAM_TVALID;
  wire hls_inst_interrupt;

  assign INPUT_STREAM_0_1_TDATA = INPUT_STREAM_tdata[31:0];
  assign INPUT_STREAM_0_1_TDEST = INPUT_STREAM_tdest[4:0];
  assign INPUT_STREAM_0_1_TID = INPUT_STREAM_tid[4:0];
  assign INPUT_STREAM_0_1_TKEEP = INPUT_STREAM_tkeep[3:0];
  assign INPUT_STREAM_0_1_TLAST = INPUT_STREAM_tlast[0];
  assign INPUT_STREAM_0_1_TSTRB = INPUT_STREAM_tstrb[3:0];
  assign INPUT_STREAM_0_1_TUSER = INPUT_STREAM_tuser[3:0];
  assign INPUT_STREAM_0_1_TVALID = INPUT_STREAM_tvalid;
  assign INPUT_STREAM_tready = INPUT_STREAM_0_1_TREADY;
  assign OUTPUT_STREAM_tdata[31:0] = hls_inst_OUTPUT_STREAM_TDATA;
  assign OUTPUT_STREAM_tdest[4:0] = hls_inst_OUTPUT_STREAM_TDEST;
  assign OUTPUT_STREAM_tid[4:0] = hls_inst_OUTPUT_STREAM_TID;
  assign OUTPUT_STREAM_tkeep[3:0] = hls_inst_OUTPUT_STREAM_TKEEP;
  assign OUTPUT_STREAM_tlast[0] = hls_inst_OUTPUT_STREAM_TLAST;
  assign OUTPUT_STREAM_tstrb[3:0] = hls_inst_OUTPUT_STREAM_TSTRB;
  assign OUTPUT_STREAM_tuser[3:0] = hls_inst_OUTPUT_STREAM_TUSER;
  assign OUTPUT_STREAM_tvalid = hls_inst_OUTPUT_STREAM_TVALID;
  assign S_AXI_CONTROL_BUS_0_1_ARADDR = S_AXI_CONTROL_BUS_araddr[3:0];
  assign S_AXI_CONTROL_BUS_0_1_ARVALID = S_AXI_CONTROL_BUS_arvalid;
  assign S_AXI_CONTROL_BUS_0_1_AWADDR = S_AXI_CONTROL_BUS_awaddr[3:0];
  assign S_AXI_CONTROL_BUS_0_1_AWVALID = S_AXI_CONTROL_BUS_awvalid;
  assign S_AXI_CONTROL_BUS_0_1_BREADY = S_AXI_CONTROL_BUS_bready;
  assign S_AXI_CONTROL_BUS_0_1_RREADY = S_AXI_CONTROL_BUS_rready;
  assign S_AXI_CONTROL_BUS_0_1_WDATA = S_AXI_CONTROL_BUS_wdata[31:0];
  assign S_AXI_CONTROL_BUS_0_1_WSTRB = S_AXI_CONTROL_BUS_wstrb[3:0];
  assign S_AXI_CONTROL_BUS_0_1_WVALID = S_AXI_CONTROL_BUS_wvalid;
  assign S_AXI_CONTROL_BUS_arready = S_AXI_CONTROL_BUS_0_1_ARREADY;
  assign S_AXI_CONTROL_BUS_awready = S_AXI_CONTROL_BUS_0_1_AWREADY;
  assign S_AXI_CONTROL_BUS_bresp[1:0] = S_AXI_CONTROL_BUS_0_1_BRESP;
  assign S_AXI_CONTROL_BUS_bvalid = S_AXI_CONTROL_BUS_0_1_BVALID;
  assign S_AXI_CONTROL_BUS_rdata[31:0] = S_AXI_CONTROL_BUS_0_1_RDATA;
  assign S_AXI_CONTROL_BUS_rresp[1:0] = S_AXI_CONTROL_BUS_0_1_RRESP;
  assign S_AXI_CONTROL_BUS_rvalid = S_AXI_CONTROL_BUS_0_1_RVALID;
  assign S_AXI_CONTROL_BUS_wready = S_AXI_CONTROL_BUS_0_1_WREADY;
  assign aclk_0_1 = aclk;
  assign aresetn_0_1 = aresetn;
  assign hls_inst_OUTPUT_STREAM_TREADY = OUTPUT_STREAM_tready;
  assign interrupt = hls_inst_interrupt;
  bd_0_hls_inst_0 hls_inst
       (.INPUT_STREAM_TDATA(INPUT_STREAM_0_1_TDATA),
        .INPUT_STREAM_TDEST(INPUT_STREAM_0_1_TDEST),
        .INPUT_STREAM_TID(INPUT_STREAM_0_1_TID),
        .INPUT_STREAM_TKEEP(INPUT_STREAM_0_1_TKEEP),
        .INPUT_STREAM_TLAST(INPUT_STREAM_0_1_TLAST),
        .INPUT_STREAM_TREADY(INPUT_STREAM_0_1_TREADY),
        .INPUT_STREAM_TSTRB(INPUT_STREAM_0_1_TSTRB),
        .INPUT_STREAM_TUSER(INPUT_STREAM_0_1_TUSER),
        .INPUT_STREAM_TVALID(INPUT_STREAM_0_1_TVALID),
        .OUTPUT_STREAM_TDATA(hls_inst_OUTPUT_STREAM_TDATA),
        .OUTPUT_STREAM_TDEST(hls_inst_OUTPUT_STREAM_TDEST),
        .OUTPUT_STREAM_TID(hls_inst_OUTPUT_STREAM_TID),
        .OUTPUT_STREAM_TKEEP(hls_inst_OUTPUT_STREAM_TKEEP),
        .OUTPUT_STREAM_TLAST(hls_inst_OUTPUT_STREAM_TLAST),
        .OUTPUT_STREAM_TREADY(hls_inst_OUTPUT_STREAM_TREADY),
        .OUTPUT_STREAM_TSTRB(hls_inst_OUTPUT_STREAM_TSTRB),
        .OUTPUT_STREAM_TUSER(hls_inst_OUTPUT_STREAM_TUSER),
        .OUTPUT_STREAM_TVALID(hls_inst_OUTPUT_STREAM_TVALID),
        .aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .interrupt(hls_inst_interrupt),
        .s_axi_CONTROL_BUS_ARADDR(S_AXI_CONTROL_BUS_0_1_ARADDR),
        .s_axi_CONTROL_BUS_ARREADY(S_AXI_CONTROL_BUS_0_1_ARREADY),
        .s_axi_CONTROL_BUS_ARVALID(S_AXI_CONTROL_BUS_0_1_ARVALID),
        .s_axi_CONTROL_BUS_AWADDR(S_AXI_CONTROL_BUS_0_1_AWADDR),
        .s_axi_CONTROL_BUS_AWREADY(S_AXI_CONTROL_BUS_0_1_AWREADY),
        .s_axi_CONTROL_BUS_AWVALID(S_AXI_CONTROL_BUS_0_1_AWVALID),
        .s_axi_CONTROL_BUS_BREADY(S_AXI_CONTROL_BUS_0_1_BREADY),
        .s_axi_CONTROL_BUS_BRESP(S_AXI_CONTROL_BUS_0_1_BRESP),
        .s_axi_CONTROL_BUS_BVALID(S_AXI_CONTROL_BUS_0_1_BVALID),
        .s_axi_CONTROL_BUS_RDATA(S_AXI_CONTROL_BUS_0_1_RDATA),
        .s_axi_CONTROL_BUS_RREADY(S_AXI_CONTROL_BUS_0_1_RREADY),
        .s_axi_CONTROL_BUS_RRESP(S_AXI_CONTROL_BUS_0_1_RRESP),
        .s_axi_CONTROL_BUS_RVALID(S_AXI_CONTROL_BUS_0_1_RVALID),
        .s_axi_CONTROL_BUS_WDATA(S_AXI_CONTROL_BUS_0_1_WDATA),
        .s_axi_CONTROL_BUS_WREADY(S_AXI_CONTROL_BUS_0_1_WREADY),
        .s_axi_CONTROL_BUS_WSTRB(S_AXI_CONTROL_BUS_0_1_WSTRB),
        .s_axi_CONTROL_BUS_WVALID(S_AXI_CONTROL_BUS_0_1_WVALID));
endmodule
