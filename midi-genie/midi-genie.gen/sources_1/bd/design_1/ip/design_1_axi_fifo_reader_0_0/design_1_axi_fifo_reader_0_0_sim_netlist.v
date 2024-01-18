// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jan 17 19:44:31 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_axi_fifo_reader_0_0/design_1_axi_fifo_reader_0_0_sim_netlist.v
// Design      : design_1_axi_fifo_reader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_fifo_reader_0_0,axi_fifo_reader,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_fifo_reader,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_axi_fifo_reader_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_BRESP,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    FifoData,
    FifoEmpty,
    FifoRead,
    DataAvailable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]S_AXI_RRESP;
  input [18:0]FifoData;
  input FifoEmpty;
  output FifoRead;
  output DataAvailable;

  wire \<const0> ;
  wire DataAvailable;
  wire [18:0]FifoData;
  wire FifoEmpty;
  wire FifoRead;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [18:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18:0] = \^S_AXI_RDATA [18:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_fifo_reader_0_0_axi_fifo_reader inst
       (.DataAvailable(DataAvailable),
        .FifoData(FifoData),
        .FifoEmpty(FifoEmpty),
        .FifoRead(FifoRead),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_bvalid_reg_0(S_AXI_BVALID),
        .axi_read_valid_reg_0(S_AXI_RVALID));
endmodule

(* ORIG_REF_NAME = "axi_fifo_reader" *) 
module design_1_axi_fifo_reader_0_0_axi_fifo_reader
   (axi_bvalid_reg_0,
    S_AXI_RDATA,
    axi_read_valid_reg_0,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    DataAvailable,
    FifoRead,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ACLK,
    FifoData,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    FifoEmpty);
  output axi_bvalid_reg_0;
  output [18:0]S_AXI_RDATA;
  output axi_read_valid_reg_0;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output DataAvailable;
  output FifoRead;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ACLK;
  input [18:0]FifoData;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input FifoEmpty;

  wire DataAvailable;
  wire [18:0]FifoData;
  wire FifoEmpty;
  wire FifoRead;
  wire FifoRead1;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [18:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_bvalid_reg_0;
  wire [18:0]axi_read_data;
  wire axi_read_valid_reg_0;
  wire instSkidAR_n_21;
  wire instSkidAR_n_22;
  wire instSkidAR_n_23;
  wire instSkidAW_n_0;
  wire instSkidAW_n_1;
  wire r_valid;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    FifoRead_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAR_n_22),
        .Q(FifoRead),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAW_n_0),
        .Q(axi_bvalid_reg_0),
        .R(reset));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_read_data[18]_i_1 
       (.I0(S_AXI_RREADY),
        .I1(axi_read_valid_reg_0),
        .O(FifoRead1));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[0]),
        .Q(S_AXI_RDATA[0]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[10]),
        .Q(S_AXI_RDATA[10]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[11]),
        .Q(S_AXI_RDATA[11]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[12]),
        .Q(S_AXI_RDATA[12]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[13]),
        .Q(S_AXI_RDATA[13]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[14]),
        .Q(S_AXI_RDATA[14]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[15]),
        .Q(S_AXI_RDATA[15]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[16]),
        .Q(S_AXI_RDATA[16]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[17]),
        .Q(S_AXI_RDATA[17]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[18]),
        .Q(S_AXI_RDATA[18]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[1]),
        .Q(S_AXI_RDATA[1]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[2]),
        .Q(S_AXI_RDATA[2]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[3]),
        .Q(S_AXI_RDATA[3]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[4]),
        .Q(S_AXI_RDATA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[5]),
        .Q(S_AXI_RDATA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[6]),
        .Q(S_AXI_RDATA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[7]),
        .Q(S_AXI_RDATA[7]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[8]),
        .Q(S_AXI_RDATA[8]));
  FDCE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(FifoRead1),
        .CLR(reset),
        .D(axi_read_data[9]),
        .Q(S_AXI_RDATA[9]));
  FDRE #(
    .INIT(1'b0)) 
    axi_read_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAR_n_23),
        .Q(axi_read_valid_reg_0),
        .R(reset));
  FDCE #(
    .INIT(1'b0)) 
    dataAvailableBuf_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(reset),
        .D(instSkidAR_n_21),
        .Q(DataAvailable));
  design_1_axi_fifo_reader_0_0_axi_skid_buf instSkidAR
       (.AR(reset),
        .D(axi_read_data),
        .DataAvailable(DataAvailable),
        .FifoData(FifoData),
        .FifoEmpty(FifoEmpty),
        .FifoEmpty_0(instSkidAR_n_22),
        .FifoRead(FifoRead),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RREADY_0(instSkidAR_n_23),
        .axi_read_valid_reg(axi_read_valid_reg_0),
        .dataAvailableBuf_reg(instSkidAR_n_21));
  design_1_axi_fifo_reader_0_0_axi_skid_buf_0 instSkidAW
       (.AR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BREADY_0(instSkidAW_n_0),
        .S_AXI_BREADY_1(instSkidAW_n_1),
        .S_AXI_WVALID(S_AXI_WVALID),
        .r_valid(r_valid),
        .r_valid_reg_0(axi_bvalid_reg_0));
  design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0 instSkidW
       (.AR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_WREADY(S_AXI_WREADY),
        .r_valid(r_valid),
        .r_valid_reg_0(instSkidAW_n_1));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_fifo_reader_0_0_axi_skid_buf
   (AR,
    D,
    S_AXI_ARREADY,
    dataAvailableBuf_reg,
    FifoEmpty_0,
    S_AXI_RREADY_0,
    S_AXI_ACLK,
    FifoData,
    S_AXI_RREADY,
    axi_read_valid_reg,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    DataAvailable,
    FifoEmpty,
    FifoRead);
  output [0:0]AR;
  output [18:0]D;
  output S_AXI_ARREADY;
  output dataAvailableBuf_reg;
  output FifoEmpty_0;
  output S_AXI_RREADY_0;
  input S_AXI_ACLK;
  input [18:0]FifoData;
  input S_AXI_RREADY;
  input axi_read_valid_reg;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input DataAvailable;
  input FifoEmpty;
  input FifoRead;

  wire [0:0]AR;
  wire [18:0]D;
  wire DataAvailable;
  wire [18:0]FifoData;
  wire FifoEmpty;
  wire FifoEmpty_0;
  wire FifoRead;
  wire FifoRead_i_2_n_0;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RREADY_0;
  wire axi_read_valid_reg;
  wire dataAvailableBuf_reg;
  wire r_valid;
  wire r_valid_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3F551055)) 
    FifoRead_i_1
       (.I0(FifoEmpty),
        .I1(DataAvailable),
        .I2(S_AXI_ARESETN),
        .I3(FifoRead_i_2_n_0),
        .I4(FifoRead),
        .O(FifoEmpty_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5757FF57)) 
    FifoRead_i_2
       (.I0(S_AXI_ARESETN),
        .I1(r_valid),
        .I2(S_AXI_ARVALID),
        .I3(axi_read_valid_reg),
        .I4(S_AXI_RREADY),
        .O(FifoRead_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_ARREADY));
  LUT1 #(
    .INIT(2'h1)) 
    axi_bvalid_i_1
       (.I0(S_AXI_ARESETN),
        .O(AR));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[0]_i_1 
       (.I0(FifoData[0]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[10]_i_1 
       (.I0(FifoData[10]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[11]_i_1 
       (.I0(FifoData[11]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[12]_i_1 
       (.I0(FifoData[12]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[13]_i_1 
       (.I0(FifoData[13]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[14]_i_1 
       (.I0(FifoData[14]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[15]_i_1 
       (.I0(FifoData[15]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[16]_i_1 
       (.I0(FifoData[16]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[17]_i_1 
       (.I0(FifoData[17]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[18]_i_2 
       (.I0(FifoData[18]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[1]_i_1 
       (.I0(FifoData[1]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[2]_i_1 
       (.I0(FifoData[2]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[3]_i_1 
       (.I0(FifoData[3]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[4]_i_1 
       (.I0(FifoData[4]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[5]_i_1 
       (.I0(FifoData[5]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[6]_i_1 
       (.I0(FifoData[6]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[7]_i_1 
       (.I0(FifoData[7]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[8]_i_1 
       (.I0(FifoData[8]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h8A8A8A0000000000)) 
    \axi_read_data[9]_i_1 
       (.I0(FifoData[9]),
        .I1(S_AXI_RREADY),
        .I2(axi_read_valid_reg),
        .I3(S_AXI_ARVALID),
        .I4(r_valid),
        .I5(S_AXI_ARESETN),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    axi_read_valid_i_1
       (.I0(S_AXI_RREADY),
        .I1(axi_read_valid_reg),
        .I2(S_AXI_ARVALID),
        .I3(r_valid),
        .O(S_AXI_RREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB3)) 
    dataAvailableBuf_i_1
       (.I0(DataAvailable),
        .I1(FifoEmpty),
        .I2(FifoRead_i_2_n_0),
        .O(dataAvailableBuf_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    r_valid_i_1
       (.I0(S_AXI_RREADY),
        .I1(axi_read_valid_reg),
        .I2(S_AXI_ARVALID),
        .I3(r_valid),
        .O(r_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1_n_0),
        .Q(r_valid),
        .R(AR));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_fifo_reader_0_0_axi_skid_buf_0
   (S_AXI_BREADY_0,
    S_AXI_BREADY_1,
    S_AXI_AWREADY,
    AR,
    S_AXI_ACLK,
    S_AXI_BREADY,
    r_valid_reg_0,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    r_valid);
  output S_AXI_BREADY_0;
  output S_AXI_BREADY_1;
  output S_AXI_AWREADY;
  input [0:0]AR;
  input S_AXI_ACLK;
  input S_AXI_BREADY;
  input r_valid_reg_0;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input r_valid;

  wire [0:0]AR;
  wire S_AXI_ACLK;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BREADY_0;
  wire S_AXI_BREADY_1;
  wire S_AXI_WVALID;
  wire r_valid;
  wire r_valid_0;
  wire r_valid_i_1__1_n_0;
  wire r_valid_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(r_valid_0),
        .O(S_AXI_AWREADY));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF44444)) 
    axi_bvalid_i_2
       (.I0(S_AXI_BREADY),
        .I1(r_valid_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(r_valid_0),
        .I4(S_AXI_WVALID),
        .I5(r_valid),
        .O(S_AXI_BREADY_0));
  LUT6 #(
    .INIT(64'h444F444F444F0000)) 
    r_valid_i_1__0
       (.I0(S_AXI_BREADY),
        .I1(r_valid_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(r_valid_0),
        .I4(S_AXI_WVALID),
        .I5(r_valid),
        .O(S_AXI_BREADY_1));
  LUT6 #(
    .INIT(64'h444044404440FFF0)) 
    r_valid_i_1__1
       (.I0(S_AXI_BREADY),
        .I1(r_valid_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(r_valid_0),
        .I4(S_AXI_WVALID),
        .I5(r_valid),
        .O(r_valid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1__1_n_0),
        .Q(r_valid_0),
        .R(AR));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0
   (r_valid,
    S_AXI_WREADY,
    AR,
    r_valid_reg_0,
    S_AXI_ACLK);
  output r_valid;
  output S_AXI_WREADY;
  input [0:0]AR;
  input r_valid_reg_0;
  input S_AXI_ACLK;

  wire [0:0]AR;
  wire S_AXI_ACLK;
  wire S_AXI_WREADY;
  wire r_valid;
  wire r_valid_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_WREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_WREADY));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_reg_0),
        .Q(r_valid),
        .R(AR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
