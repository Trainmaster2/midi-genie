// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri May 24 22:37:47 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_axi_apu_writer_0_0/design_1_axi_apu_writer_0_0_sim_netlist.v
// Design      : design_1_axi_apu_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_apu_writer_0_0,axi_apu_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_apu_writer,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_axi_apu_writer_0_0
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
    CPU_Rst,
    Pulse1_Message,
    Pulse2_Message,
    Triangle_Message,
    Noise_Message,
    DMC_Message,
    FifoData,
    FifoWrite);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_Rst;
  input [18:0]Pulse1_Message;
  input [18:0]Pulse2_Message;
  input [14:0]Triangle_Message;
  input [13:0]Noise_Message;
  input [3:0]DMC_Message;
  output [27:0]FifoData;
  output FifoWrite;

  wire \<const0> ;
  wire CPU_Rst;
  wire [3:0]DMC_Message;
  wire [18:0]\^FifoData ;
  wire FifoWrite;
  wire [13:0]Noise_Message;
  wire [18:0]Pulse1_Message;
  wire [18:0]Pulse2_Message;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [14:0]Triangle_Message;

  assign FifoData[27] = \<const0> ;
  assign FifoData[26] = \<const0> ;
  assign FifoData[25] = \<const0> ;
  assign FifoData[24] = \<const0> ;
  assign FifoData[23] = \<const0> ;
  assign FifoData[22] = \<const0> ;
  assign FifoData[21] = \<const0> ;
  assign FifoData[20] = \<const0> ;
  assign FifoData[19] = \<const0> ;
  assign FifoData[18:0] = \^FifoData [18:0];
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_apu_writer_0_0_axi_apu_writer inst
       (.CPU_Rst(CPU_Rst),
        .DMC_Message(DMC_Message),
        .FifoData(\^FifoData ),
        .FifoWrite(FifoWrite),
        .Noise_Message(Noise_Message),
        .Pulse1_Message(Pulse1_Message),
        .Pulse2_Message(Pulse2_Message),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .Triangle_Message(Triangle_Message),
        .axi_read_valid_reg_0(S_AXI_RVALID));
endmodule

(* ORIG_REF_NAME = "axi_apu_writer" *) 
module design_1_axi_apu_writer_0_0_axi_apu_writer
   (S_AXI_RDATA,
    FifoData,
    FifoWrite,
    S_AXI_BVALID,
    axi_read_valid_reg_0,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    Pulse1_Message,
    Pulse2_Message,
    S_AXI_AWADDR,
    S_AXI_ACLK,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    Triangle_Message,
    Noise_Message,
    DMC_Message,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_RREADY,
    CPU_Rst,
    S_AXI_ARVALID);
  output [31:0]S_AXI_RDATA;
  output [18:0]FifoData;
  output FifoWrite;
  output S_AXI_BVALID;
  output axi_read_valid_reg_0;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  input [18:0]Pulse1_Message;
  input [18:0]Pulse2_Message;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_ACLK;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input [14:0]Triangle_Message;
  input [13:0]Noise_Message;
  input [3:0]DMC_Message;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input CPU_Rst;
  input S_AXI_ARVALID;

  wire CPU_Rst;
  wire [3:0]DMC_Message;
  wire ENABLE_DMC;
  wire ENABLE_NOISE;
  wire ENABLE_PULSE_2;
  wire ENABLE_TRIANGLE;
  wire [18:0]FifoData;
  wire FifoData110_out;
  wire FifoData14_out;
  wire FifoData17_out;
  wire FifoData1__2;
  wire FifoData3;
  wire FifoData30_out;
  wire FifoData31_in;
  wire FifoData33_in;
  wire FifoData3_carry__0_i_1_n_0;
  wire FifoData3_carry__0_i_2_n_0;
  wire FifoData3_carry__0_i_3_n_0;
  wire FifoData3_carry__0_n_2;
  wire FifoData3_carry__0_n_3;
  wire FifoData3_carry_i_1_n_0;
  wire FifoData3_carry_i_2_n_0;
  wire FifoData3_carry_i_3_n_0;
  wire FifoData3_carry_i_4_n_0;
  wire FifoData3_carry_n_0;
  wire FifoData3_carry_n_1;
  wire FifoData3_carry_n_2;
  wire FifoData3_carry_n_3;
  wire \FifoData3_inferred__0/i__carry__0_n_2 ;
  wire \FifoData3_inferred__0/i__carry__0_n_3 ;
  wire \FifoData3_inferred__0/i__carry_n_0 ;
  wire \FifoData3_inferred__0/i__carry_n_1 ;
  wire \FifoData3_inferred__0/i__carry_n_2 ;
  wire \FifoData3_inferred__0/i__carry_n_3 ;
  wire \FifoData3_inferred__1/i__carry_n_0 ;
  wire \FifoData3_inferred__1/i__carry_n_1 ;
  wire \FifoData3_inferred__1/i__carry_n_2 ;
  wire \FifoData3_inferred__1/i__carry_n_3 ;
  wire \FifoData3_inferred__2/i__carry_n_0 ;
  wire \FifoData3_inferred__2/i__carry_n_1 ;
  wire \FifoData3_inferred__2/i__carry_n_2 ;
  wire \FifoData3_inferred__2/i__carry_n_3 ;
  wire \FifoData[0]_i_1_n_0 ;
  wire \FifoData[0]_i_2_n_0 ;
  wire \FifoData[10]_i_1_n_0 ;
  wire \FifoData[10]_i_2_n_0 ;
  wire \FifoData[11]_i_1_n_0 ;
  wire \FifoData[11]_i_2_n_0 ;
  wire \FifoData[12]_i_1_n_0 ;
  wire \FifoData[12]_i_2_n_0 ;
  wire \FifoData[13]_i_1_n_0 ;
  wire \FifoData[13]_i_2_n_0 ;
  wire \FifoData[13]_i_3_n_0 ;
  wire \FifoData[13]_i_4_n_0 ;
  wire \FifoData[14]_i_1_n_0 ;
  wire \FifoData[14]_i_2_n_0 ;
  wire \FifoData[14]_i_3_n_0 ;
  wire \FifoData[15]_i_1_n_0 ;
  wire \FifoData[16]_i_1_n_0 ;
  wire \FifoData[17]_i_1_n_0 ;
  wire \FifoData[18]_i_1_n_0 ;
  wire \FifoData[18]_i_2_n_0 ;
  wire \FifoData[18]_i_3_n_0 ;
  wire \FifoData[18]_i_4_n_0 ;
  wire \FifoData[18]_i_5_n_0 ;
  wire \FifoData[18]_i_6_n_0 ;
  wire \FifoData[18]_i_7_n_0 ;
  wire \FifoData[1]_i_1_n_0 ;
  wire \FifoData[1]_i_2_n_0 ;
  wire \FifoData[2]_i_1_n_0 ;
  wire \FifoData[2]_i_2_n_0 ;
  wire \FifoData[3]_i_1_n_0 ;
  wire \FifoData[3]_i_2_n_0 ;
  wire \FifoData[3]_i_3_n_0 ;
  wire \FifoData[3]_i_4_n_0 ;
  wire \FifoData[3]_i_5_n_0 ;
  wire \FifoData[3]_i_6_n_0 ;
  wire \FifoData[4]_i_1_n_0 ;
  wire \FifoData[4]_i_2_n_0 ;
  wire \FifoData[5]_i_1_n_0 ;
  wire \FifoData[5]_i_2_n_0 ;
  wire \FifoData[6]_i_1_n_0 ;
  wire \FifoData[6]_i_2_n_0 ;
  wire \FifoData[7]_i_1_n_0 ;
  wire \FifoData[7]_i_2_n_0 ;
  wire \FifoData[8]_i_1_n_0 ;
  wire \FifoData[8]_i_2_n_0 ;
  wire \FifoData[9]_i_1_n_0 ;
  wire \FifoData[9]_i_2_n_0 ;
  wire FifoWrite;
  wire [13:0]Noise_Message;
  wire [18:0]Pulse1_Message;
  wire [18:0]Pulse2_Message;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [14:0]Triangle_Message;
  wire axi_read_data0;
  wire axi_read_valid_reg_0;
  wire axi_write_ready;
  wire [2:0]dmc_message_last;
  wire dmc_message_last_1;
  wire \dmc_message_last_reg_n_0_[3] ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire instSkidAR_n_2;
  wire instSkidAW_n_10;
  wire instSkidAW_n_11;
  wire instSkidAW_n_12;
  wire instSkidAW_n_13;
  wire instSkidAW_n_14;
  wire instSkidAW_n_15;
  wire instSkidAW_n_16;
  wire instSkidAW_n_17;
  wire instSkidAW_n_18;
  wire instSkidAW_n_19;
  wire instSkidAW_n_20;
  wire instSkidAW_n_21;
  wire instSkidAW_n_22;
  wire instSkidAW_n_23;
  wire instSkidAW_n_24;
  wire instSkidAW_n_25;
  wire instSkidAW_n_26;
  wire instSkidAW_n_27;
  wire instSkidAW_n_28;
  wire instSkidAW_n_29;
  wire instSkidAW_n_3;
  wire instSkidAW_n_30;
  wire instSkidAW_n_31;
  wire instSkidAW_n_32;
  wire instSkidAW_n_33;
  wire instSkidAW_n_34;
  wire instSkidAW_n_35;
  wire instSkidAW_n_36;
  wire instSkidAW_n_37;
  wire instSkidAW_n_38;
  wire instSkidAW_n_4;
  wire instSkidAW_n_40;
  wire instSkidAW_n_5;
  wire instSkidAW_n_6;
  wire instSkidAW_n_7;
  wire instSkidAW_n_8;
  wire instSkidAW_n_9;
  wire instSkidW_n_35;
  wire instSkidW_n_36;
  wire instSkidW_n_37;
  wire instSkidW_n_38;
  wire instSkidW_n_71;
  wire instSkidW_n_72;
  wire instSkidW_n_73;
  wire instSkidW_n_74;
  wire instSkidW_n_75;
  wire instSkidW_n_76;
  wire instSkidW_n_77;
  wire instSkidW_n_78;
  wire instSkidW_n_79;
  wire instSkidW_n_80;
  wire instSkidW_n_81;
  wire instSkidW_n_82;
  wire instSkidW_n_83;
  wire instSkidW_n_84;
  wire instSkidW_n_85;
  wire instSkidW_n_86;
  wire instSkidW_n_87;
  wire instSkidW_n_88;
  wire instSkidW_n_89;
  wire instSkidW_n_98;
  wire [13:0]noise_message_last;
  wire noise_message_last_2;
  wire p_0_in1_in;
  wire p_0_in3_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [7:0]p_2_in;
  wire [7:0]p_6_out;
  wire \pulse1_message_last_reg_n_0_[0] ;
  wire \pulse1_message_last_reg_n_0_[10] ;
  wire \pulse1_message_last_reg_n_0_[11] ;
  wire \pulse1_message_last_reg_n_0_[12] ;
  wire \pulse1_message_last_reg_n_0_[13] ;
  wire \pulse1_message_last_reg_n_0_[14] ;
  wire \pulse1_message_last_reg_n_0_[15] ;
  wire \pulse1_message_last_reg_n_0_[16] ;
  wire \pulse1_message_last_reg_n_0_[17] ;
  wire \pulse1_message_last_reg_n_0_[18] ;
  wire \pulse1_message_last_reg_n_0_[1] ;
  wire \pulse1_message_last_reg_n_0_[2] ;
  wire \pulse1_message_last_reg_n_0_[4] ;
  wire \pulse1_message_last_reg_n_0_[5] ;
  wire \pulse1_message_last_reg_n_0_[6] ;
  wire \pulse1_message_last_reg_n_0_[7] ;
  wire \pulse1_message_last_reg_n_0_[8] ;
  wire \pulse1_message_last_reg_n_0_[9] ;
  wire [18:0]pulse2_message_last;
  wire pulse2_message_last_0;
  wire r_valid;
  wire reset;
  wire reset_state;
  wire \reset_state_reg_n_0_[0] ;
  wire \reset_state_reg_n_0_[10] ;
  wire \reset_state_reg_n_0_[11] ;
  wire \reset_state_reg_n_0_[12] ;
  wire \reset_state_reg_n_0_[13] ;
  wire \reset_state_reg_n_0_[14] ;
  wire \reset_state_reg_n_0_[15] ;
  wire \reset_state_reg_n_0_[16] ;
  wire \reset_state_reg_n_0_[17] ;
  wire \reset_state_reg_n_0_[18] ;
  wire \reset_state_reg_n_0_[19] ;
  wire \reset_state_reg_n_0_[1] ;
  wire \reset_state_reg_n_0_[20] ;
  wire \reset_state_reg_n_0_[21] ;
  wire \reset_state_reg_n_0_[22] ;
  wire \reset_state_reg_n_0_[23] ;
  wire \reset_state_reg_n_0_[24] ;
  wire \reset_state_reg_n_0_[25] ;
  wire \reset_state_reg_n_0_[26] ;
  wire \reset_state_reg_n_0_[27] ;
  wire \reset_state_reg_n_0_[28] ;
  wire \reset_state_reg_n_0_[29] ;
  wire \reset_state_reg_n_0_[2] ;
  wire \reset_state_reg_n_0_[30] ;
  wire \reset_state_reg_n_0_[31] ;
  wire \reset_state_reg_n_0_[3] ;
  wire \reset_state_reg_n_0_[4] ;
  wire \reset_state_reg_n_0_[5] ;
  wire \reset_state_reg_n_0_[6] ;
  wire \reset_state_reg_n_0_[7] ;
  wire \reset_state_reg_n_0_[8] ;
  wire \reset_state_reg_n_0_[9] ;
  wire set_state;
  wire \set_state_reg_n_0_[0] ;
  wire \set_state_reg_n_0_[10] ;
  wire \set_state_reg_n_0_[11] ;
  wire \set_state_reg_n_0_[12] ;
  wire \set_state_reg_n_0_[13] ;
  wire \set_state_reg_n_0_[14] ;
  wire \set_state_reg_n_0_[15] ;
  wire \set_state_reg_n_0_[16] ;
  wire \set_state_reg_n_0_[17] ;
  wire \set_state_reg_n_0_[18] ;
  wire \set_state_reg_n_0_[19] ;
  wire \set_state_reg_n_0_[1] ;
  wire \set_state_reg_n_0_[20] ;
  wire \set_state_reg_n_0_[21] ;
  wire \set_state_reg_n_0_[22] ;
  wire \set_state_reg_n_0_[23] ;
  wire \set_state_reg_n_0_[24] ;
  wire \set_state_reg_n_0_[25] ;
  wire \set_state_reg_n_0_[26] ;
  wire \set_state_reg_n_0_[27] ;
  wire \set_state_reg_n_0_[28] ;
  wire \set_state_reg_n_0_[29] ;
  wire \set_state_reg_n_0_[2] ;
  wire \set_state_reg_n_0_[30] ;
  wire \set_state_reg_n_0_[31] ;
  wire \set_state_reg_n_0_[3] ;
  wire \set_state_reg_n_0_[4] ;
  wire \set_state_reg_n_0_[5] ;
  wire \set_state_reg_n_0_[6] ;
  wire \set_state_reg_n_0_[7] ;
  wire \set_state_reg_n_0_[8] ;
  wire \set_state_reg_n_0_[9] ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[10] ;
  wire \state_reg_n_0_[11] ;
  wire \state_reg_n_0_[12] ;
  wire \state_reg_n_0_[13] ;
  wire \state_reg_n_0_[14] ;
  wire \state_reg_n_0_[15] ;
  wire \state_reg_n_0_[16] ;
  wire \state_reg_n_0_[17] ;
  wire \state_reg_n_0_[18] ;
  wire \state_reg_n_0_[19] ;
  wire \state_reg_n_0_[20] ;
  wire \state_reg_n_0_[21] ;
  wire \state_reg_n_0_[22] ;
  wire \state_reg_n_0_[23] ;
  wire \state_reg_n_0_[24] ;
  wire \state_reg_n_0_[25] ;
  wire \state_reg_n_0_[26] ;
  wire \state_reg_n_0_[27] ;
  wire \state_reg_n_0_[28] ;
  wire \state_reg_n_0_[29] ;
  wire \state_reg_n_0_[30] ;
  wire \state_reg_n_0_[31] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire \state_reg_n_0_[8] ;
  wire \state_reg_n_0_[9] ;
  wire [14:0]triangle_message_last;
  wire \triangle_message_last[14]_i_1_n_0 ;
  wire [31:0]wskd_reset;
  wire [31:0]wskd_set;
  wire wskd_valid;
  wire [3:0]NLW_FifoData3_carry_O_UNCONNECTED;
  wire [3:3]NLW_FifoData3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_FifoData3_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_FifoData3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_FifoData3_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_FifoData3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_FifoData3_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_FifoData3_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_FifoData3_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_FifoData3_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_FifoData3_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_FifoData3_inferred__2/i__carry__0_O_UNCONNECTED ;

  CARRY4 FifoData3_carry
       (.CI(1'b0),
        .CO({FifoData3_carry_n_0,FifoData3_carry_n_1,FifoData3_carry_n_2,FifoData3_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData3_carry_O_UNCONNECTED[3:0]),
        .S({FifoData3_carry_i_1_n_0,FifoData3_carry_i_2_n_0,FifoData3_carry_i_3_n_0,FifoData3_carry_i_4_n_0}));
  CARRY4 FifoData3_carry__0
       (.CI(FifoData3_carry_n_0),
        .CO({NLW_FifoData3_carry__0_CO_UNCONNECTED[3],FifoData30_out,FifoData3_carry__0_n_2,FifoData3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,FifoData3_carry__0_i_1_n_0,FifoData3_carry__0_i_2_n_0,FifoData3_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    FifoData3_carry__0_i_1
       (.I0(\pulse1_message_last_reg_n_0_[18] ),
        .I1(Pulse1_Message[18]),
        .O(FifoData3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry__0_i_2
       (.I0(Pulse1_Message[15]),
        .I1(\pulse1_message_last_reg_n_0_[15] ),
        .I2(Pulse1_Message[16]),
        .I3(\pulse1_message_last_reg_n_0_[16] ),
        .I4(\pulse1_message_last_reg_n_0_[17] ),
        .I5(Pulse1_Message[17]),
        .O(FifoData3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry__0_i_3
       (.I0(Pulse1_Message[12]),
        .I1(\pulse1_message_last_reg_n_0_[12] ),
        .I2(Pulse1_Message[13]),
        .I3(\pulse1_message_last_reg_n_0_[13] ),
        .I4(\pulse1_message_last_reg_n_0_[14] ),
        .I5(Pulse1_Message[14]),
        .O(FifoData3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry_i_1
       (.I0(Pulse1_Message[9]),
        .I1(\pulse1_message_last_reg_n_0_[9] ),
        .I2(Pulse1_Message[10]),
        .I3(\pulse1_message_last_reg_n_0_[10] ),
        .I4(\pulse1_message_last_reg_n_0_[11] ),
        .I5(Pulse1_Message[11]),
        .O(FifoData3_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry_i_2
       (.I0(Pulse1_Message[6]),
        .I1(\pulse1_message_last_reg_n_0_[6] ),
        .I2(Pulse1_Message[7]),
        .I3(\pulse1_message_last_reg_n_0_[7] ),
        .I4(\pulse1_message_last_reg_n_0_[8] ),
        .I5(Pulse1_Message[8]),
        .O(FifoData3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry_i_3
       (.I0(Pulse1_Message[4]),
        .I1(\pulse1_message_last_reg_n_0_[4] ),
        .I2(Pulse1_Message[5]),
        .I3(\pulse1_message_last_reg_n_0_[5] ),
        .I4(Pulse1_Message[3]),
        .I5(p_0_in9_in),
        .O(FifoData3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData3_carry_i_4
       (.I0(Pulse1_Message[0]),
        .I1(\pulse1_message_last_reg_n_0_[0] ),
        .I2(Pulse1_Message[1]),
        .I3(\pulse1_message_last_reg_n_0_[1] ),
        .I4(\pulse1_message_last_reg_n_0_[2] ),
        .I5(Pulse1_Message[2]),
        .O(FifoData3_carry_i_4_n_0));
  CARRY4 \FifoData3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\FifoData3_inferred__0/i__carry_n_0 ,\FifoData3_inferred__0/i__carry_n_1 ,\FifoData3_inferred__0/i__carry_n_2 ,\FifoData3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FifoData3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \FifoData3_inferred__0/i__carry__0 
       (.CI(\FifoData3_inferred__0/i__carry_n_0 ),
        .CO({\NLW_FifoData3_inferred__0/i__carry__0_CO_UNCONNECTED [3],FifoData3,\FifoData3_inferred__0/i__carry__0_n_2 ,\FifoData3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_FifoData3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_1__1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  CARRY4 \FifoData3_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\FifoData3_inferred__1/i__carry_n_0 ,\FifoData3_inferred__1/i__carry_n_1 ,\FifoData3_inferred__1/i__carry_n_2 ,\FifoData3_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FifoData3_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \FifoData3_inferred__1/i__carry__0 
       (.CI(\FifoData3_inferred__1/i__carry_n_0 ),
        .CO({\NLW_FifoData3_inferred__1/i__carry__0_CO_UNCONNECTED [3:1],FifoData33_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(\NLW_FifoData3_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}));
  CARRY4 \FifoData3_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\FifoData3_inferred__2/i__carry_n_0 ,\FifoData3_inferred__2/i__carry_n_1 ,\FifoData3_inferred__2/i__carry_n_2 ,\FifoData3_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FifoData3_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \FifoData3_inferred__2/i__carry__0 
       (.CI(\FifoData3_inferred__2/i__carry_n_0 ),
        .CO({\NLW_FifoData3_inferred__2/i__carry__0_CO_UNCONNECTED [3:1],FifoData31_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(\NLW_FifoData3_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[0]_i_1 
       (.I0(\FifoData[0]_i_2_n_0 ),
        .I1(\FifoData[3]_i_5_n_0 ),
        .I2(DMC_Message[0]),
        .I3(\FifoData[13]_i_4_n_0 ),
        .I4(Noise_Message[0]),
        .O(\FifoData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F0F08888)) 
    \FifoData[0]_i_2 
       (.I0(FifoData14_out),
        .I1(Triangle_Message[0]),
        .I2(Pulse2_Message[0]),
        .I3(Pulse1_Message[0]),
        .I4(FifoData17_out),
        .I5(FifoData110_out),
        .O(\FifoData[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[10]_i_1 
       (.I0(\FifoData[10]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[10]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[10]),
        .O(\FifoData[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[10]_i_2 
       (.I0(Pulse1_Message[10]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[10]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[11]_i_1 
       (.I0(\FifoData[11]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[11]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[11]),
        .O(\FifoData[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[11]_i_2 
       (.I0(Pulse1_Message[11]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[11]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[12]_i_1 
       (.I0(\FifoData[12]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[12]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[12]),
        .O(\FifoData[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[12]_i_2 
       (.I0(Pulse1_Message[12]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[12]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \FifoData[13]_i_1 
       (.I0(\FifoData[14]_i_3_n_0 ),
        .I1(Noise_Message[3]),
        .I2(p_0_in1_in),
        .I3(FifoData31_in),
        .I4(ENABLE_NOISE),
        .O(\FifoData[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[13]_i_2 
       (.I0(\FifoData[13]_i_3_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[13]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[13]),
        .O(\FifoData[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[13]_i_3 
       (.I0(Pulse1_Message[13]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[13]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0155555500000000)) 
    \FifoData[13]_i_4 
       (.I0(\FifoData[18]_i_1_n_0 ),
        .I1(Triangle_Message[3]),
        .I2(p_0_in3_in),
        .I3(FifoData33_in),
        .I4(ENABLE_TRIANGLE),
        .I5(FifoData1__2),
        .O(\FifoData[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \FifoData[13]_i_5 
       (.I0(ENABLE_NOISE),
        .I1(FifoData31_in),
        .I2(p_0_in1_in),
        .I3(Noise_Message[3]),
        .O(FifoData1__2));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \FifoData[14]_i_1 
       (.I0(\FifoData[14]_i_2_n_0 ),
        .I1(Pulse1_Message[14]),
        .I2(\FifoData[18]_i_6_n_0 ),
        .I3(\FifoData[14]_i_3_n_0 ),
        .I4(FifoData[14]),
        .O(\FifoData[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \FifoData[14]_i_2 
       (.I0(Pulse2_Message[14]),
        .I1(pulse2_message_last_0),
        .I2(Triangle_Message[14]),
        .I3(FifoData14_out),
        .I4(\FifoData[18]_i_1_n_0 ),
        .O(\FifoData[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \FifoData[14]_i_3 
       (.I0(\FifoData[18]_i_1_n_0 ),
        .I1(Triangle_Message[3]),
        .I2(p_0_in3_in),
        .I3(FifoData33_in),
        .I4(ENABLE_TRIANGLE),
        .O(\FifoData[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FifoData[14]_i_4 
       (.I0(ENABLE_TRIANGLE),
        .I1(FifoData33_in),
        .I2(p_0_in3_in),
        .I3(Triangle_Message[3]),
        .O(FifoData14_out));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[15]_i_1 
       (.I0(Pulse1_Message[15]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[15]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[16]_i_1 
       (.I0(Pulse1_Message[16]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[16]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[17]_i_1 
       (.I0(Pulse1_Message[17]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[17]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \FifoData[18]_i_1 
       (.I0(\FifoData[18]_i_4_n_0 ),
        .I1(FifoData3),
        .I2(ENABLE_PULSE_2),
        .I3(\FifoData[18]_i_5_n_0 ),
        .I4(FifoData30_out),
        .I5(\state_reg_n_0_[0] ),
        .O(\FifoData[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[18]_i_2 
       (.I0(Pulse1_Message[18]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[18]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FifoData[18]_i_3 
       (.I0(S_AXI_ARESETN),
        .I1(CPU_Rst),
        .O(\FifoData[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FifoData[18]_i_4 
       (.I0(Pulse2_Message[3]),
        .I1(p_0_in6_in),
        .O(\FifoData[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FifoData[18]_i_5 
       (.I0(Pulse1_Message[3]),
        .I1(p_0_in9_in),
        .O(\FifoData[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FifoData[18]_i_6 
       (.I0(\FifoData[18]_i_5_n_0 ),
        .I1(FifoData30_out),
        .I2(\state_reg_n_0_[0] ),
        .O(\FifoData[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000000000000)) 
    \FifoData[18]_i_7 
       (.I0(\state_reg_n_0_[0] ),
        .I1(FifoData30_out),
        .I2(\FifoData[18]_i_5_n_0 ),
        .I3(ENABLE_PULSE_2),
        .I4(FifoData3),
        .I5(\FifoData[18]_i_4_n_0 ),
        .O(\FifoData[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[1]_i_1 
       (.I0(\FifoData[1]_i_2_n_0 ),
        .I1(\FifoData[3]_i_5_n_0 ),
        .I2(DMC_Message[1]),
        .I3(\FifoData[13]_i_4_n_0 ),
        .I4(Noise_Message[1]),
        .O(\FifoData[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F0F08888)) 
    \FifoData[1]_i_2 
       (.I0(FifoData14_out),
        .I1(Triangle_Message[1]),
        .I2(Pulse2_Message[1]),
        .I3(Pulse1_Message[1]),
        .I4(FifoData17_out),
        .I5(FifoData110_out),
        .O(\FifoData[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[2]_i_1 
       (.I0(\FifoData[2]_i_2_n_0 ),
        .I1(\FifoData[3]_i_5_n_0 ),
        .I2(DMC_Message[2]),
        .I3(\FifoData[13]_i_4_n_0 ),
        .I4(Noise_Message[2]),
        .O(\FifoData[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F0F08888)) 
    \FifoData[2]_i_2 
       (.I0(FifoData14_out),
        .I1(Triangle_Message[2]),
        .I2(Pulse2_Message[2]),
        .I3(Pulse1_Message[2]),
        .I4(FifoData17_out),
        .I5(FifoData110_out),
        .O(\FifoData[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \FifoData[3]_i_1 
       (.I0(\FifoData[3]_i_3_n_0 ),
        .I1(ENABLE_NOISE),
        .I2(FifoData31_in),
        .I3(p_0_in1_in),
        .I4(Noise_Message[3]),
        .I5(\FifoData[14]_i_3_n_0 ),
        .O(\FifoData[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[3]_i_2 
       (.I0(\FifoData[3]_i_4_n_0 ),
        .I1(\FifoData[3]_i_5_n_0 ),
        .I2(DMC_Message[3]),
        .I3(\FifoData[13]_i_4_n_0 ),
        .I4(Noise_Message[3]),
        .O(\FifoData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA0028AAAA00)) 
    \FifoData[3]_i_3 
       (.I0(ENABLE_DMC),
        .I1(DMC_Message[0]),
        .I2(dmc_message_last[0]),
        .I3(DMC_Message[3]),
        .I4(\dmc_message_last_reg_n_0_[3] ),
        .I5(\FifoData[3]_i_6_n_0 ),
        .O(\FifoData[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F0F08888)) 
    \FifoData[3]_i_4 
       (.I0(FifoData14_out),
        .I1(Triangle_Message[3]),
        .I2(Pulse2_Message[3]),
        .I3(Pulse1_Message[3]),
        .I4(FifoData17_out),
        .I5(FifoData110_out),
        .O(\FifoData[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001555555)) 
    \FifoData[3]_i_5 
       (.I0(\FifoData[18]_i_1_n_0 ),
        .I1(Triangle_Message[3]),
        .I2(p_0_in3_in),
        .I3(FifoData33_in),
        .I4(ENABLE_TRIANGLE),
        .I5(FifoData1__2),
        .O(\FifoData[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FifoData[3]_i_6 
       (.I0(DMC_Message[2]),
        .I1(dmc_message_last[2]),
        .I2(DMC_Message[1]),
        .I3(dmc_message_last[1]),
        .O(\FifoData[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FifoData[3]_i_7 
       (.I0(ENABLE_PULSE_2),
        .I1(FifoData3),
        .I2(p_0_in6_in),
        .I3(Pulse2_Message[3]),
        .O(FifoData17_out));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[4]_i_1 
       (.I0(\FifoData[4]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[4]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[4]),
        .O(\FifoData[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[4]_i_2 
       (.I0(Pulse1_Message[4]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[4]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[5]_i_1 
       (.I0(\FifoData[5]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[5]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[5]),
        .O(\FifoData[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[5]_i_2 
       (.I0(Pulse1_Message[5]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[5]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[6]_i_1 
       (.I0(\FifoData[6]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[6]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[6]),
        .O(\FifoData[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[6]_i_2 
       (.I0(Pulse1_Message[6]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[6]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[7]_i_1 
       (.I0(\FifoData[7]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[7]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[7]),
        .O(\FifoData[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[7]_i_2 
       (.I0(Pulse1_Message[7]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[7]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[8]_i_1 
       (.I0(\FifoData[8]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[8]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[8]),
        .O(\FifoData[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[8]_i_2 
       (.I0(Pulse1_Message[8]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[8]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \FifoData[9]_i_1 
       (.I0(\FifoData[9]_i_2_n_0 ),
        .I1(\FifoData[13]_i_4_n_0 ),
        .I2(Noise_Message[9]),
        .I3(\triangle_message_last[14]_i_1_n_0 ),
        .I4(Triangle_Message[9]),
        .O(\FifoData[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FifoData[9]_i_2 
       (.I0(Pulse1_Message[9]),
        .I1(\FifoData[18]_i_6_n_0 ),
        .I2(Pulse2_Message[9]),
        .I3(\FifoData[18]_i_7_n_0 ),
        .O(\FifoData[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[3]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[0]_i_1_n_0 ),
        .Q(FifoData[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[10]_i_1_n_0 ),
        .Q(FifoData[10]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[11]_i_1_n_0 ),
        .Q(FifoData[11]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[12]_i_1_n_0 ),
        .Q(FifoData[12]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[13]_i_2_n_0 ),
        .Q(FifoData[13]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[14]_i_1_n_0 ),
        .Q(FifoData[14]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[15]_i_1_n_0 ),
        .Q(FifoData[15]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[16]_i_1_n_0 ),
        .Q(FifoData[16]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[17]_i_1_n_0 ),
        .Q(FifoData[17]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[18]_i_2_n_0 ),
        .Q(FifoData[18]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[3]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[1]_i_1_n_0 ),
        .Q(FifoData[1]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[3]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[2]_i_1_n_0 ),
        .Q(FifoData[2]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[3]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[3]_i_2_n_0 ),
        .Q(FifoData[3]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[4]_i_1_n_0 ),
        .Q(FifoData[4]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[5]_i_1_n_0 ),
        .Q(FifoData[5]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[6]_i_1_n_0 ),
        .Q(FifoData[6]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[7]_i_1_n_0 ),
        .Q(FifoData[7]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[8]_i_1_n_0 ),
        .Q(FifoData[8]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\FifoData[13]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[9]_i_1_n_0 ),
        .Q(FifoData[9]));
  FDCE #(
    .INIT(1'b0)) 
    FifoWrite_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[3]_i_1_n_0 ),
        .Q(FifoWrite));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAW_n_40),
        .Q(S_AXI_BVALID),
        .R(reset));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_read_data[31]_i_1 
       (.I0(S_AXI_RREADY),
        .I1(axi_read_valid_reg_0),
        .O(axi_read_data0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[0] ),
        .Q(S_AXI_RDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[10] ),
        .Q(S_AXI_RDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[11] ),
        .Q(S_AXI_RDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[12] ),
        .Q(S_AXI_RDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[13] ),
        .Q(S_AXI_RDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[14] ),
        .Q(S_AXI_RDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[15] ),
        .Q(S_AXI_RDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[16] ),
        .Q(S_AXI_RDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[17] ),
        .Q(S_AXI_RDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[18] ),
        .Q(S_AXI_RDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[19] ),
        .Q(S_AXI_RDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(ENABLE_PULSE_2),
        .Q(S_AXI_RDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[20] ),
        .Q(S_AXI_RDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[21] ),
        .Q(S_AXI_RDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[22] ),
        .Q(S_AXI_RDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[23] ),
        .Q(S_AXI_RDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[24] ),
        .Q(S_AXI_RDATA[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[25] ),
        .Q(S_AXI_RDATA[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[26] ),
        .Q(S_AXI_RDATA[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[27] ),
        .Q(S_AXI_RDATA[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[28] ),
        .Q(S_AXI_RDATA[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[29] ),
        .Q(S_AXI_RDATA[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(ENABLE_TRIANGLE),
        .Q(S_AXI_RDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[30] ),
        .Q(S_AXI_RDATA[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[31] ),
        .Q(S_AXI_RDATA[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(ENABLE_NOISE),
        .Q(S_AXI_RDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(ENABLE_DMC),
        .Q(S_AXI_RDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[5] ),
        .Q(S_AXI_RDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[6] ),
        .Q(S_AXI_RDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[7] ),
        .Q(S_AXI_RDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[8] ),
        .Q(S_AXI_RDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_read_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_read_data0),
        .D(\state_reg_n_0_[9] ),
        .Q(S_AXI_RDATA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    axi_read_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAR_n_2),
        .Q(axi_read_valid_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h000000002A2A2AAA)) 
    \dmc_message_last[3]_i_1 
       (.I0(\FifoData[3]_i_3_n_0 ),
        .I1(ENABLE_NOISE),
        .I2(FifoData31_in),
        .I3(p_0_in1_in),
        .I4(Noise_Message[3]),
        .I5(\FifoData[14]_i_3_n_0 ),
        .O(dmc_message_last_1));
  FDCE #(
    .INIT(1'b0)) 
    \dmc_message_last_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dmc_message_last_1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(DMC_Message[0]),
        .Q(dmc_message_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dmc_message_last_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(dmc_message_last_1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(DMC_Message[1]),
        .Q(dmc_message_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dmc_message_last_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(dmc_message_last_1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(DMC_Message[2]),
        .Q(dmc_message_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dmc_message_last_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(dmc_message_last_1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(DMC_Message[3]),
        .Q(\dmc_message_last_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(Triangle_Message[12]),
        .I1(triangle_message_last[12]),
        .I2(Triangle_Message[13]),
        .I3(triangle_message_last[13]),
        .I4(triangle_message_last[14]),
        .I5(Triangle_Message[14]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_1__0
       (.I0(Noise_Message[12]),
        .I1(noise_message_last[12]),
        .I2(noise_message_last[13]),
        .I3(Noise_Message[13]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(pulse2_message_last[18]),
        .I1(Pulse2_Message[18]),
        .O(i__carry__0_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(Pulse2_Message[15]),
        .I1(pulse2_message_last[15]),
        .I2(Pulse2_Message[16]),
        .I3(pulse2_message_last[16]),
        .I4(pulse2_message_last[17]),
        .I5(Pulse2_Message[17]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(Pulse2_Message[12]),
        .I1(pulse2_message_last[12]),
        .I2(Pulse2_Message[13]),
        .I3(pulse2_message_last[13]),
        .I4(pulse2_message_last[14]),
        .I5(Pulse2_Message[14]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(Pulse2_Message[9]),
        .I1(pulse2_message_last[9]),
        .I2(Pulse2_Message[10]),
        .I3(pulse2_message_last[10]),
        .I4(pulse2_message_last[11]),
        .I5(Pulse2_Message[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(Triangle_Message[9]),
        .I1(triangle_message_last[9]),
        .I2(Triangle_Message[10]),
        .I3(triangle_message_last[10]),
        .I4(triangle_message_last[11]),
        .I5(Triangle_Message[11]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(Noise_Message[9]),
        .I1(noise_message_last[9]),
        .I2(Noise_Message[10]),
        .I3(noise_message_last[10]),
        .I4(noise_message_last[11]),
        .I5(Noise_Message[11]),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Pulse2_Message[6]),
        .I1(pulse2_message_last[6]),
        .I2(Pulse2_Message[7]),
        .I3(pulse2_message_last[7]),
        .I4(pulse2_message_last[8]),
        .I5(Pulse2_Message[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(Triangle_Message[6]),
        .I1(triangle_message_last[6]),
        .I2(Triangle_Message[7]),
        .I3(triangle_message_last[7]),
        .I4(triangle_message_last[8]),
        .I5(Triangle_Message[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(Noise_Message[6]),
        .I1(noise_message_last[6]),
        .I2(Noise_Message[7]),
        .I3(noise_message_last[7]),
        .I4(noise_message_last[8]),
        .I5(Noise_Message[8]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Pulse2_Message[4]),
        .I1(pulse2_message_last[4]),
        .I2(Pulse2_Message[5]),
        .I3(pulse2_message_last[5]),
        .I4(Pulse2_Message[3]),
        .I5(p_0_in6_in),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(Triangle_Message[4]),
        .I1(triangle_message_last[4]),
        .I2(Triangle_Message[5]),
        .I3(triangle_message_last[5]),
        .I4(Triangle_Message[3]),
        .I5(p_0_in3_in),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(Noise_Message[4]),
        .I1(noise_message_last[4]),
        .I2(Noise_Message[5]),
        .I3(noise_message_last[5]),
        .I4(Noise_Message[3]),
        .I5(p_0_in1_in),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Pulse2_Message[0]),
        .I1(pulse2_message_last[0]),
        .I2(Pulse2_Message[1]),
        .I3(pulse2_message_last[1]),
        .I4(pulse2_message_last[2]),
        .I5(Pulse2_Message[2]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(Triangle_Message[0]),
        .I1(triangle_message_last[0]),
        .I2(Triangle_Message[1]),
        .I3(triangle_message_last[1]),
        .I4(triangle_message_last[2]),
        .I5(Triangle_Message[2]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__1
       (.I0(Noise_Message[0]),
        .I1(noise_message_last[0]),
        .I2(Noise_Message[1]),
        .I3(noise_message_last[1]),
        .I4(noise_message_last[2]),
        .I5(Noise_Message[2]),
        .O(i__carry_i_4__1_n_0));
  design_1_axi_apu_writer_0_0_axi_skid_buf instSkidAR
       (.SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .axi_read_valid_reg(instSkidAR_n_2),
        .axi_read_valid_reg_0(axi_read_valid_reg_0));
  design_1_axi_apu_writer_0_0_axi_skid_buf_0 instSkidAW
       (.D({instSkidAW_n_7,instSkidAW_n_8,instSkidAW_n_9,instSkidAW_n_10,instSkidAW_n_11,instSkidAW_n_12,instSkidAW_n_13,instSkidAW_n_14,instSkidAW_n_15,instSkidAW_n_16,instSkidAW_n_17,instSkidAW_n_18,instSkidAW_n_19,instSkidAW_n_20,instSkidAW_n_21,instSkidAW_n_22,instSkidAW_n_23,instSkidAW_n_24,instSkidAW_n_25,instSkidAW_n_26,instSkidAW_n_27,instSkidAW_n_28,instSkidAW_n_29,instSkidAW_n_30,instSkidAW_n_31,instSkidAW_n_32,instSkidAW_n_33,instSkidAW_n_34,instSkidAW_n_35,instSkidAW_n_36,instSkidAW_n_37,instSkidAW_n_38}),
        .E(reset_state),
        .Q({\reset_state_reg_n_0_[31] ,\reset_state_reg_n_0_[30] ,\reset_state_reg_n_0_[29] ,\reset_state_reg_n_0_[28] ,\reset_state_reg_n_0_[27] ,\reset_state_reg_n_0_[26] ,\reset_state_reg_n_0_[25] ,\reset_state_reg_n_0_[24] ,\reset_state_reg_n_0_[23] ,\reset_state_reg_n_0_[22] ,\reset_state_reg_n_0_[21] ,\reset_state_reg_n_0_[20] ,\reset_state_reg_n_0_[19] ,\reset_state_reg_n_0_[18] ,\reset_state_reg_n_0_[17] ,\reset_state_reg_n_0_[16] ,\reset_state_reg_n_0_[15] ,\reset_state_reg_n_0_[14] ,\reset_state_reg_n_0_[13] ,\reset_state_reg_n_0_[12] ,\reset_state_reg_n_0_[11] ,\reset_state_reg_n_0_[10] ,\reset_state_reg_n_0_[9] ,\reset_state_reg_n_0_[8] ,\reset_state_reg_n_0_[7] ,\reset_state_reg_n_0_[6] ,\reset_state_reg_n_0_[5] ,\reset_state_reg_n_0_[4] ,\reset_state_reg_n_0_[3] ,\reset_state_reg_n_0_[2] ,\reset_state_reg_n_0_[1] ,\reset_state_reg_n_0_[0] }),
        .SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BREADY_0(instSkidAW_n_40),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .axi_write_ready(axi_write_ready),
        .p_2_in(p_2_in),
        .p_6_out(p_6_out),
        .\r_data_reg[0]_0 ({instSkidAW_n_3,instSkidAW_n_4,instSkidAW_n_5,instSkidAW_n_6}),
        .\r_data_reg[1]_0 (set_state),
        .r_valid(r_valid),
        .\state_reg[15] (instSkidW_n_89),
        .\state_reg[16] (instSkidW_n_88),
        .\state_reg[17] (instSkidW_n_87),
        .\state_reg[18] (instSkidW_n_86),
        .\state_reg[19] (instSkidW_n_85),
        .\state_reg[20] (instSkidW_n_84),
        .\state_reg[21] (instSkidW_n_83),
        .\state_reg[22] (instSkidW_n_82),
        .\state_reg[23] (instSkidW_n_80),
        .\state_reg[23]_0 (instSkidW_n_81),
        .\state_reg[24] (instSkidW_n_79),
        .\state_reg[25] (instSkidW_n_78),
        .\state_reg[26] (instSkidW_n_77),
        .\state_reg[27] (instSkidW_n_76),
        .\state_reg[28] (instSkidW_n_75),
        .\state_reg[29] (instSkidW_n_74),
        .\state_reg[30] (instSkidW_n_73),
        .\state_reg[31] (instSkidW_n_71),
        .\state_reg[31]_0 ({\state_reg_n_0_[31] ,\state_reg_n_0_[30] ,\state_reg_n_0_[29] ,\state_reg_n_0_[28] ,\state_reg_n_0_[27] ,\state_reg_n_0_[26] ,\state_reg_n_0_[25] ,\state_reg_n_0_[24] ,\state_reg_n_0_[23] ,\state_reg_n_0_[22] ,\state_reg_n_0_[21] ,\state_reg_n_0_[20] ,\state_reg_n_0_[19] ,\state_reg_n_0_[18] ,\state_reg_n_0_[17] ,\state_reg_n_0_[16] ,\state_reg_n_0_[15] ,\state_reg_n_0_[14] ,\state_reg_n_0_[13] ,\state_reg_n_0_[12] ,\state_reg_n_0_[11] ,\state_reg_n_0_[10] ,\state_reg_n_0_[9] ,\state_reg_n_0_[8] ,\state_reg_n_0_[7] ,\state_reg_n_0_[6] ,\state_reg_n_0_[5] ,ENABLE_DMC,ENABLE_NOISE,ENABLE_TRIANGLE,ENABLE_PULSE_2,\state_reg_n_0_[0] }),
        .\state_reg[31]_1 (instSkidW_n_72),
        .\state_reg[31]_2 ({\set_state_reg_n_0_[31] ,\set_state_reg_n_0_[30] ,\set_state_reg_n_0_[29] ,\set_state_reg_n_0_[28] ,\set_state_reg_n_0_[27] ,\set_state_reg_n_0_[26] ,\set_state_reg_n_0_[25] ,\set_state_reg_n_0_[24] ,\set_state_reg_n_0_[23] ,\set_state_reg_n_0_[22] ,\set_state_reg_n_0_[21] ,\set_state_reg_n_0_[20] ,\set_state_reg_n_0_[19] ,\set_state_reg_n_0_[18] ,\set_state_reg_n_0_[17] ,\set_state_reg_n_0_[16] ,\set_state_reg_n_0_[15] ,\set_state_reg_n_0_[14] ,\set_state_reg_n_0_[13] ,\set_state_reg_n_0_[12] ,\set_state_reg_n_0_[11] ,\set_state_reg_n_0_[10] ,\set_state_reg_n_0_[9] ,\set_state_reg_n_0_[8] ,\set_state_reg_n_0_[7] ,\set_state_reg_n_0_[6] ,\set_state_reg_n_0_[5] ,\set_state_reg_n_0_[4] ,\set_state_reg_n_0_[3] ,\set_state_reg_n_0_[2] ,\set_state_reg_n_0_[1] ,\set_state_reg_n_0_[0] }),
        .\state_reg[31]_3 ({instSkidW_n_35,instSkidW_n_36,instSkidW_n_37,instSkidW_n_38}),
        .\state_reg[7] (instSkidW_n_98),
        .wskd_valid(wskd_valid));
  design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0 instSkidW
       (.D(wskd_set),
        .Q({instSkidW_n_35,instSkidW_n_36,instSkidW_n_37,instSkidW_n_38}),
        .SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_write_ready(axi_write_ready),
        .p_2_in(p_2_in),
        .p_6_out(p_6_out),
        .\r_data_reg[0]_0 (instSkidW_n_98),
        .\r_data_reg[1]_0 (instSkidW_n_89),
        .\r_data_reg[20]_0 (instSkidW_n_88),
        .\r_data_reg[21]_0 (instSkidW_n_87),
        .\r_data_reg[22]_0 (instSkidW_n_86),
        .\r_data_reg[23]_0 (instSkidW_n_85),
        .\r_data_reg[24]_0 (instSkidW_n_84),
        .\r_data_reg[25]_0 (instSkidW_n_83),
        .\r_data_reg[26]_0 (instSkidW_n_82),
        .\r_data_reg[27]_0 (instSkidW_n_81),
        .\r_data_reg[28]_0 (instSkidW_n_79),
        .\r_data_reg[29]_0 (instSkidW_n_78),
        .\r_data_reg[2]_0 (instSkidW_n_80),
        .\r_data_reg[30]_0 (instSkidW_n_77),
        .\r_data_reg[31]_0 (instSkidW_n_76),
        .\r_data_reg[32]_0 (instSkidW_n_75),
        .\r_data_reg[33]_0 (instSkidW_n_74),
        .\r_data_reg[34]_0 (instSkidW_n_73),
        .\r_data_reg[35]_0 (wskd_reset),
        .\r_data_reg[35]_1 (instSkidW_n_72),
        .\r_data_reg[35]_2 ({S_AXI_WDATA,S_AXI_WSTRB}),
        .\r_data_reg[3]_0 (instSkidW_n_71),
        .r_valid(r_valid),
        .\reset_state_reg[31] ({\reset_state_reg_n_0_[31] ,\reset_state_reg_n_0_[30] ,\reset_state_reg_n_0_[29] ,\reset_state_reg_n_0_[28] ,\reset_state_reg_n_0_[27] ,\reset_state_reg_n_0_[26] ,\reset_state_reg_n_0_[25] ,\reset_state_reg_n_0_[24] ,\reset_state_reg_n_0_[23] ,\reset_state_reg_n_0_[22] ,\reset_state_reg_n_0_[21] ,\reset_state_reg_n_0_[20] ,\reset_state_reg_n_0_[19] ,\reset_state_reg_n_0_[18] ,\reset_state_reg_n_0_[17] ,\reset_state_reg_n_0_[16] ,\reset_state_reg_n_0_[15] ,\reset_state_reg_n_0_[14] ,\reset_state_reg_n_0_[13] ,\reset_state_reg_n_0_[12] ,\reset_state_reg_n_0_[11] ,\reset_state_reg_n_0_[10] ,\reset_state_reg_n_0_[9] ,\reset_state_reg_n_0_[8] ,\reset_state_reg_n_0_[7] ,\reset_state_reg_n_0_[6] ,\reset_state_reg_n_0_[5] ,\reset_state_reg_n_0_[4] ,\reset_state_reg_n_0_[3] ,\reset_state_reg_n_0_[2] ,\reset_state_reg_n_0_[1] ,\reset_state_reg_n_0_[0] }),
        .\set_state_reg[31] ({\set_state_reg_n_0_[31] ,\set_state_reg_n_0_[30] ,\set_state_reg_n_0_[29] ,\set_state_reg_n_0_[28] ,\set_state_reg_n_0_[27] ,\set_state_reg_n_0_[26] ,\set_state_reg_n_0_[25] ,\set_state_reg_n_0_[24] ,\set_state_reg_n_0_[23] ,\set_state_reg_n_0_[22] ,\set_state_reg_n_0_[21] ,\set_state_reg_n_0_[20] ,\set_state_reg_n_0_[19] ,\set_state_reg_n_0_[18] ,\set_state_reg_n_0_[17] ,\set_state_reg_n_0_[16] ,\set_state_reg_n_0_[15] ,\set_state_reg_n_0_[14] ,\set_state_reg_n_0_[13] ,\set_state_reg_n_0_[12] ,\set_state_reg_n_0_[11] ,\set_state_reg_n_0_[10] ,\set_state_reg_n_0_[9] ,\set_state_reg_n_0_[8] ,\set_state_reg_n_0_[7] ,\set_state_reg_n_0_[6] ,\set_state_reg_n_0_[5] ,\set_state_reg_n_0_[4] ,\set_state_reg_n_0_[3] ,\set_state_reg_n_0_[2] ,\set_state_reg_n_0_[1] ,\set_state_reg_n_0_[0] }),
        .wskd_valid(wskd_valid));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \noise_message_last[13]_i_1 
       (.I0(Noise_Message[3]),
        .I1(p_0_in1_in),
        .I2(FifoData31_in),
        .I3(ENABLE_NOISE),
        .I4(\FifoData[14]_i_3_n_0 ),
        .O(noise_message_last_2));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[0]),
        .Q(noise_message_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[10]),
        .Q(noise_message_last[10]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[11]),
        .Q(noise_message_last[11]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[12]),
        .Q(noise_message_last[12]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[13]),
        .Q(noise_message_last[13]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[1]),
        .Q(noise_message_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[2]),
        .Q(noise_message_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[3]),
        .Q(p_0_in1_in));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[4]),
        .Q(noise_message_last[4]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[5]),
        .Q(noise_message_last[5]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[6]),
        .Q(noise_message_last[6]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[7]),
        .Q(noise_message_last[7]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[8]),
        .Q(noise_message_last[8]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_message_last_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(noise_message_last_2),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Noise_Message[9]),
        .Q(noise_message_last[9]));
  LUT4 #(
    .INIT(16'h8880)) 
    \pulse1_message_last[18]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(FifoData30_out),
        .I2(p_0_in9_in),
        .I3(Pulse1_Message[3]),
        .O(FifoData110_out));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[0]),
        .Q(\pulse1_message_last_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[10]),
        .Q(\pulse1_message_last_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[11]),
        .Q(\pulse1_message_last_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[12]),
        .Q(\pulse1_message_last_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[13]),
        .Q(\pulse1_message_last_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[14]),
        .Q(\pulse1_message_last_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[15]),
        .Q(\pulse1_message_last_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[16]),
        .Q(\pulse1_message_last_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[17]),
        .Q(\pulse1_message_last_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[18]),
        .Q(\pulse1_message_last_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[1]),
        .Q(\pulse1_message_last_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[2]),
        .Q(\pulse1_message_last_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[3]),
        .Q(p_0_in9_in));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[4]),
        .Q(\pulse1_message_last_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[5]),
        .Q(\pulse1_message_last_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[6]),
        .Q(\pulse1_message_last_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[7]),
        .Q(\pulse1_message_last_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[8]),
        .Q(\pulse1_message_last_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(FifoData110_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[9]),
        .Q(\pulse1_message_last_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0080808080808080)) 
    \pulse2_message_last[18]_i_1 
       (.I0(\FifoData[18]_i_4_n_0 ),
        .I1(FifoData3),
        .I2(ENABLE_PULSE_2),
        .I3(\FifoData[18]_i_5_n_0 ),
        .I4(FifoData30_out),
        .I5(\state_reg_n_0_[0] ),
        .O(pulse2_message_last_0));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[0]),
        .Q(pulse2_message_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[10]),
        .Q(pulse2_message_last[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[11]),
        .Q(pulse2_message_last[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[12]),
        .Q(pulse2_message_last[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[13]),
        .Q(pulse2_message_last[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[14]),
        .Q(pulse2_message_last[14]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[15]),
        .Q(pulse2_message_last[15]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[16]),
        .Q(pulse2_message_last[16]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[17]),
        .Q(pulse2_message_last[17]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[18]),
        .Q(pulse2_message_last[18]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[1]),
        .Q(pulse2_message_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[2]),
        .Q(pulse2_message_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[3]),
        .Q(p_0_in6_in));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[4]),
        .Q(pulse2_message_last[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[5]),
        .Q(pulse2_message_last[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[6]),
        .Q(pulse2_message_last[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[7]),
        .Q(pulse2_message_last[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[8]),
        .Q(pulse2_message_last[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[9]),
        .Q(pulse2_message_last[9]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[0]),
        .Q(\reset_state_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[10]),
        .Q(\reset_state_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[11]),
        .Q(\reset_state_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[12]),
        .Q(\reset_state_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[13]),
        .Q(\reset_state_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[14]),
        .Q(\reset_state_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[15]),
        .Q(\reset_state_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[16]),
        .Q(\reset_state_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[17]),
        .Q(\reset_state_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[18]),
        .Q(\reset_state_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[19]),
        .Q(\reset_state_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[1]),
        .Q(\reset_state_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[20]),
        .Q(\reset_state_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[21]),
        .Q(\reset_state_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[22]),
        .Q(\reset_state_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[23]),
        .Q(\reset_state_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[24]),
        .Q(\reset_state_reg_n_0_[24] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[25]),
        .Q(\reset_state_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[26]),
        .Q(\reset_state_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[27]),
        .Q(\reset_state_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[28]),
        .Q(\reset_state_reg_n_0_[28] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[29]),
        .Q(\reset_state_reg_n_0_[29] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[2]),
        .Q(\reset_state_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[30]),
        .Q(\reset_state_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[31]),
        .Q(\reset_state_reg_n_0_[31] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[3]),
        .Q(\reset_state_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[4]),
        .Q(\reset_state_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[5]),
        .Q(\reset_state_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[6]),
        .Q(\reset_state_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[7]),
        .Q(\reset_state_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[8]),
        .Q(\reset_state_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reset_state_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(reset_state),
        .D(wskd_reset[9]),
        .Q(\reset_state_reg_n_0_[9] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[0]),
        .Q(\set_state_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[10]),
        .Q(\set_state_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[11]),
        .Q(\set_state_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[12]),
        .Q(\set_state_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[13]),
        .Q(\set_state_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[14]),
        .Q(\set_state_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[15]),
        .Q(\set_state_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[16]),
        .Q(\set_state_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[17]),
        .Q(\set_state_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[18]),
        .Q(\set_state_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[19]),
        .Q(\set_state_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[1]),
        .Q(\set_state_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[20]),
        .Q(\set_state_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[21]),
        .Q(\set_state_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[22]),
        .Q(\set_state_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[23]),
        .Q(\set_state_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[24]),
        .Q(\set_state_reg_n_0_[24] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[25]),
        .Q(\set_state_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[26]),
        .Q(\set_state_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[27]),
        .Q(\set_state_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[28]),
        .Q(\set_state_reg_n_0_[28] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[29]),
        .Q(\set_state_reg_n_0_[29] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[2]),
        .Q(\set_state_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[30]),
        .Q(\set_state_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[31]),
        .Q(\set_state_reg_n_0_[31] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[3]),
        .Q(\set_state_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[4]),
        .Q(\set_state_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[5]),
        .Q(\set_state_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[6]),
        .Q(\set_state_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[7]),
        .Q(\set_state_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[8]),
        .Q(\set_state_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \set_state_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(set_state),
        .D(wskd_set[9]),
        .Q(\set_state_reg_n_0_[9] ),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_38),
        .Q(\state_reg_n_0_[0] ),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_28),
        .Q(\state_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_27),
        .Q(\state_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_26),
        .Q(\state_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_25),
        .Q(\state_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_24),
        .Q(\state_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_23),
        .Q(\state_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_22),
        .Q(\state_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_21),
        .Q(\state_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_20),
        .Q(\state_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_19),
        .Q(\state_reg_n_0_[19] ),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_37),
        .Q(ENABLE_PULSE_2),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_18),
        .Q(\state_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_17),
        .Q(\state_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_16),
        .Q(\state_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_4),
        .D(instSkidAW_n_15),
        .Q(\state_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_14),
        .Q(\state_reg_n_0_[24] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_13),
        .Q(\state_reg_n_0_[25] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_12),
        .Q(\state_reg_n_0_[26] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_11),
        .Q(\state_reg_n_0_[27] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_10),
        .Q(\state_reg_n_0_[28] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_9),
        .Q(\state_reg_n_0_[29] ),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_36),
        .Q(ENABLE_TRIANGLE),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_8),
        .Q(\state_reg_n_0_[30] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_3),
        .D(instSkidAW_n_7),
        .Q(\state_reg_n_0_[31] ),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_35),
        .Q(ENABLE_NOISE),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_34),
        .Q(ENABLE_DMC),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_33),
        .Q(\state_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_32),
        .Q(\state_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_6),
        .D(instSkidAW_n_31),
        .Q(\state_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_30),
        .Q(\state_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(instSkidAW_n_5),
        .D(instSkidAW_n_29),
        .Q(\state_reg_n_0_[9] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \triangle_message_last[14]_i_1 
       (.I0(Triangle_Message[3]),
        .I1(p_0_in3_in),
        .I2(FifoData33_in),
        .I3(ENABLE_TRIANGLE),
        .I4(\FifoData[18]_i_1_n_0 ),
        .O(\triangle_message_last[14]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[0]),
        .Q(triangle_message_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[10]),
        .Q(triangle_message_last[10]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[11]),
        .Q(triangle_message_last[11]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[12]),
        .Q(triangle_message_last[12]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[13]),
        .Q(triangle_message_last[13]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[14]),
        .Q(triangle_message_last[14]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[1]),
        .Q(triangle_message_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[2]),
        .Q(triangle_message_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[3]),
        .Q(p_0_in3_in));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[4]),
        .Q(triangle_message_last[4]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[5]),
        .Q(triangle_message_last[5]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[6]),
        .Q(triangle_message_last[6]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[7]),
        .Q(triangle_message_last[7]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[8]),
        .Q(triangle_message_last[8]));
  FDCE #(
    .INIT(1'b0)) 
    \triangle_message_last_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\triangle_message_last[14]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Triangle_Message[9]),
        .Q(triangle_message_last[9]));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_apu_writer_0_0_axi_skid_buf
   (SR,
    S_AXI_ARREADY,
    axi_read_valid_reg,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    axi_read_valid_reg_0);
  output [0:0]SR;
  output S_AXI_ARREADY;
  output axi_read_valid_reg;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input axi_read_valid_reg_0;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_RREADY;
  wire axi_read_valid_reg;
  wire axi_read_valid_reg_0;
  wire r_valid;
  wire r_valid_i_1__1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_ARREADY));
  LUT1 #(
    .INIT(2'h1)) 
    axi_bvalid_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFCFE)) 
    axi_read_valid_i_1
       (.I0(axi_read_valid_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(r_valid),
        .I3(S_AXI_RREADY),
        .O(axi_read_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0E00)) 
    r_valid_i_1__1
       (.I0(S_AXI_ARVALID),
        .I1(r_valid),
        .I2(S_AXI_RREADY),
        .I3(axi_read_valid_reg_0),
        .O(r_valid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1__1_n_0),
        .Q(r_valid),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_apu_writer_0_0_axi_skid_buf_0
   (E,
    axi_write_ready,
    \r_data_reg[1]_0 ,
    \r_data_reg[0]_0 ,
    D,
    S_AXI_AWREADY,
    S_AXI_BREADY_0,
    SR,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    \state_reg[7] ,
    \state_reg[15] ,
    \state_reg[23] ,
    \state_reg[31] ,
    S_AXI_BREADY,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    wskd_valid,
    p_6_out,
    Q,
    \state_reg[31]_0 ,
    p_2_in,
    \state_reg[16] ,
    \state_reg[17] ,
    \state_reg[18] ,
    \state_reg[19] ,
    \state_reg[20] ,
    \state_reg[21] ,
    \state_reg[22] ,
    \state_reg[23]_0 ,
    \state_reg[24] ,
    \state_reg[25] ,
    \state_reg[26] ,
    \state_reg[27] ,
    \state_reg[28] ,
    \state_reg[29] ,
    \state_reg[30] ,
    \state_reg[31]_1 ,
    \state_reg[31]_2 ,
    S_AXI_WSTRB,
    r_valid,
    \state_reg[31]_3 );
  output [0:0]E;
  output axi_write_ready;
  output [0:0]\r_data_reg[1]_0 ;
  output [3:0]\r_data_reg[0]_0 ;
  output [31:0]D;
  output S_AXI_AWREADY;
  output S_AXI_BREADY_0;
  input [0:0]SR;
  input S_AXI_ACLK;
  input [1:0]S_AXI_AWADDR;
  input \state_reg[7] ;
  input \state_reg[15] ;
  input \state_reg[23] ;
  input \state_reg[31] ;
  input S_AXI_BREADY;
  input S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input wskd_valid;
  input [7:0]p_6_out;
  input [31:0]Q;
  input [31:0]\state_reg[31]_0 ;
  input [7:0]p_2_in;
  input \state_reg[16] ;
  input \state_reg[17] ;
  input \state_reg[18] ;
  input \state_reg[19] ;
  input \state_reg[20] ;
  input \state_reg[21] ;
  input \state_reg[22] ;
  input \state_reg[23]_0 ;
  input \state_reg[24] ;
  input \state_reg[25] ;
  input \state_reg[26] ;
  input \state_reg[27] ;
  input \state_reg[28] ;
  input \state_reg[29] ;
  input \state_reg[30] ;
  input \state_reg[31]_1 ;
  input [31:0]\state_reg[31]_2 ;
  input [3:0]S_AXI_WSTRB;
  input r_valid;
  input [3:0]\state_reg[31]_3 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BREADY_0;
  wire S_AXI_BVALID;
  wire [3:0]S_AXI_WSTRB;
  wire [1:1]awskd_addr;
  wire axi_write_ready;
  wire [7:0]p_2_in;
  wire [7:0]p_6_out;
  wire [1:0]r_data;
  wire \r_data[0]_i_1_n_0 ;
  wire \r_data[1]_i_1_n_0 ;
  wire [3:0]\r_data_reg[0]_0 ;
  wire [0:0]\r_data_reg[1]_0 ;
  wire r_valid;
  wire r_valid_0;
  wire r_valid_i_1_n_0;
  wire \state[0]_i_2_n_0 ;
  wire \state[10]_i_2_n_0 ;
  wire \state[11]_i_2_n_0 ;
  wire \state[12]_i_2_n_0 ;
  wire \state[13]_i_2_n_0 ;
  wire \state[14]_i_2_n_0 ;
  wire \state[15]_i_4_n_0 ;
  wire \state[15]_i_5_n_0 ;
  wire \state[15]_i_7_n_0 ;
  wire \state[16]_i_2_n_0 ;
  wire \state[17]_i_2_n_0 ;
  wire \state[18]_i_2_n_0 ;
  wire \state[19]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[20]_i_2_n_0 ;
  wire \state[21]_i_2_n_0 ;
  wire \state[22]_i_2_n_0 ;
  wire \state[23]_i_4_n_0 ;
  wire \state[23]_i_5_n_0 ;
  wire \state[23]_i_7_n_0 ;
  wire \state[24]_i_2_n_0 ;
  wire \state[25]_i_2_n_0 ;
  wire \state[26]_i_2_n_0 ;
  wire \state[27]_i_2_n_0 ;
  wire \state[28]_i_2_n_0 ;
  wire \state[29]_i_2_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[30]_i_2_n_0 ;
  wire \state[31]_i_5_n_0 ;
  wire \state[31]_i_6_n_0 ;
  wire \state[31]_i_8_n_0 ;
  wire \state[31]_i_9_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[6]_i_2_n_0 ;
  wire \state[7]_i_4_n_0 ;
  wire \state[7]_i_5_n_0 ;
  wire \state[7]_i_7_n_0 ;
  wire \state[8]_i_2_n_0 ;
  wire \state[9]_i_2_n_0 ;
  wire \state_reg[15] ;
  wire \state_reg[16] ;
  wire \state_reg[17] ;
  wire \state_reg[18] ;
  wire \state_reg[19] ;
  wire \state_reg[20] ;
  wire \state_reg[21] ;
  wire \state_reg[22] ;
  wire \state_reg[23] ;
  wire \state_reg[23]_0 ;
  wire \state_reg[24] ;
  wire \state_reg[25] ;
  wire \state_reg[26] ;
  wire \state_reg[27] ;
  wire \state_reg[28] ;
  wire \state_reg[29] ;
  wire \state_reg[30] ;
  wire \state_reg[31] ;
  wire [31:0]\state_reg[31]_0 ;
  wire \state_reg[31]_1 ;
  wire [31:0]\state_reg[31]_2 ;
  wire [3:0]\state_reg[31]_3 ;
  wire \state_reg[7] ;
  wire wskd_valid;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(r_valid_0),
        .O(S_AXI_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    axi_bvalid_i_2
       (.I0(axi_write_ready),
        .I1(S_AXI_BREADY),
        .I2(S_AXI_BVALID),
        .O(S_AXI_BREADY_0));
  LUT6 #(
    .INIT(64'hBBB0000000000000)) 
    axi_bvalid_i_3
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_AWVALID),
        .I3(r_valid_0),
        .I4(S_AXI_ARESETN),
        .I5(wskd_valid),
        .O(axi_write_ready));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[0]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(r_valid_0),
        .I2(r_data[0]),
        .O(\r_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[1]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(r_valid_0),
        .I2(r_data[1]),
        .O(\r_data[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_data[0]_i_1_n_0 ),
        .Q(r_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\r_data[1]_i_1_n_0 ),
        .Q(r_data[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    r_valid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(r_valid_0),
        .I2(axi_write_ready),
        .O(r_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1_n_0),
        .Q(r_valid_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \reset_state[31]_i_1 
       (.I0(r_data[0]),
        .I1(r_valid_0),
        .I2(S_AXI_AWADDR[0]),
        .I3(r_data[1]),
        .I4(S_AXI_AWADDR[1]),
        .I5(axi_write_ready),
        .O(E));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \set_state[31]_i_1 
       (.I0(r_data[1]),
        .I1(r_valid_0),
        .I2(S_AXI_AWADDR[1]),
        .I3(r_data[0]),
        .I4(S_AXI_AWADDR[0]),
        .I5(axi_write_ready),
        .O(\r_data_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[0]),
        .I3(Q[0]),
        .I4(\state_reg[31]_0 [0]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[0]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [0]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [0]),
        .I5(p_6_out[0]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[10]_i_1 
       (.I0(\state[10]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[2]),
        .I3(Q[10]),
        .I4(\state_reg[31]_0 [10]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[10]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [10]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [10]),
        .I5(p_2_in[2]),
        .O(\state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[11]_i_1 
       (.I0(\state[11]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[3]),
        .I3(Q[11]),
        .I4(\state_reg[31]_0 [11]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[11]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [11]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [11]),
        .I5(p_2_in[3]),
        .O(\state[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[12]_i_1 
       (.I0(\state[12]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[4]),
        .I3(Q[12]),
        .I4(\state_reg[31]_0 [12]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[12]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [12]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [12]),
        .I5(p_2_in[4]),
        .O(\state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[13]_i_1 
       (.I0(\state[13]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[5]),
        .I3(Q[13]),
        .I4(\state_reg[31]_0 [13]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[13]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [13]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [13]),
        .I5(p_2_in[5]),
        .O(\state[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[14]_i_1 
       (.I0(\state[14]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[6]),
        .I3(Q[14]),
        .I4(\state_reg[31]_0 [14]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[14]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [14]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [14]),
        .I5(p_2_in[6]),
        .O(\state[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC80C0C0CC8C8C8)) 
    \state[15]_i_1 
       (.I0(\state_reg[15] ),
        .I1(axi_write_ready),
        .I2(awskd_addr),
        .I3(r_data[0]),
        .I4(r_valid_0),
        .I5(S_AXI_AWADDR[0]),
        .O(\r_data_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[15]_i_2 
       (.I0(\state[15]_i_4_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[7]),
        .I3(Q[15]),
        .I4(\state_reg[31]_0 [15]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[15]_i_4 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [15]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [15]),
        .I5(p_2_in[7]),
        .O(\state[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0B00A0FBABF)) 
    \state[15]_i_5 
       (.I0(\state_reg[15] ),
        .I1(r_data[0]),
        .I2(r_valid_0),
        .I3(S_AXI_AWADDR[0]),
        .I4(r_data[1]),
        .I5(S_AXI_AWADDR[1]),
        .O(\state[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \state[15]_i_7 
       (.I0(S_AXI_AWADDR[1]),
        .I1(r_valid_0),
        .I2(r_data[1]),
        .I3(S_AXI_WSTRB[1]),
        .I4(r_valid),
        .I5(\state_reg[31]_3 [1]),
        .O(\state[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[16]_i_1 
       (.I0(\state[16]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[16] ),
        .I3(Q[16]),
        .I4(\state_reg[31]_0 [16]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[16]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [16]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [16]),
        .I5(\state_reg[16] ),
        .O(\state[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[17]_i_1 
       (.I0(\state[17]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[17] ),
        .I3(Q[17]),
        .I4(\state_reg[31]_0 [17]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[17]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [17]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [17]),
        .I5(\state_reg[17] ),
        .O(\state[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[18]_i_1 
       (.I0(\state[18]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[18] ),
        .I3(Q[18]),
        .I4(\state_reg[31]_0 [18]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[18]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [18]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [18]),
        .I5(\state_reg[18] ),
        .O(\state[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[19]_i_1 
       (.I0(\state[19]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[19] ),
        .I3(Q[19]),
        .I4(\state_reg[31]_0 [19]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[19]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [19]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [19]),
        .I5(\state_reg[19] ),
        .O(\state[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[1]),
        .I3(Q[1]),
        .I4(\state_reg[31]_0 [1]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[1]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [1]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [1]),
        .I5(p_6_out[1]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[20]_i_1 
       (.I0(\state[20]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[20] ),
        .I3(Q[20]),
        .I4(\state_reg[31]_0 [20]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[20]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [20]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [20]),
        .I5(\state_reg[20] ),
        .O(\state[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[21]_i_1 
       (.I0(\state[21]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[21] ),
        .I3(Q[21]),
        .I4(\state_reg[31]_0 [21]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[21]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [21]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [21]),
        .I5(\state_reg[21] ),
        .O(\state[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[22]_i_1 
       (.I0(\state[22]_i_2_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[22] ),
        .I3(Q[22]),
        .I4(\state_reg[31]_0 [22]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[22]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [22]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [22]),
        .I5(\state_reg[22] ),
        .O(\state[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC80C0C0CC8C8C8)) 
    \state[23]_i_1 
       (.I0(\state_reg[23] ),
        .I1(axi_write_ready),
        .I2(awskd_addr),
        .I3(r_data[0]),
        .I4(r_valid_0),
        .I5(S_AXI_AWADDR[0]),
        .O(\r_data_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[23]_i_2 
       (.I0(\state[23]_i_4_n_0 ),
        .I1(\state[23]_i_5_n_0 ),
        .I2(\state_reg[23]_0 ),
        .I3(Q[23]),
        .I4(\state_reg[31]_0 [23]),
        .I5(\state[23]_i_7_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[23]_i_4 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [23]),
        .I2(\state_reg[23] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [23]),
        .I5(\state_reg[23]_0 ),
        .O(\state[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0B00A0FBABF)) 
    \state[23]_i_5 
       (.I0(\state_reg[23] ),
        .I1(r_data[0]),
        .I2(r_valid_0),
        .I3(S_AXI_AWADDR[0]),
        .I4(r_data[1]),
        .I5(S_AXI_AWADDR[1]),
        .O(\state[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \state[23]_i_7 
       (.I0(S_AXI_AWADDR[1]),
        .I1(r_valid_0),
        .I2(r_data[1]),
        .I3(S_AXI_WSTRB[2]),
        .I4(r_valid),
        .I5(\state_reg[31]_3 [2]),
        .O(\state[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[24]_i_1 
       (.I0(\state[24]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[24] ),
        .I3(Q[24]),
        .I4(\state_reg[31]_0 [24]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[24]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [24]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [24]),
        .I5(\state_reg[24] ),
        .O(\state[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[25]_i_1 
       (.I0(\state[25]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[25] ),
        .I3(Q[25]),
        .I4(\state_reg[31]_0 [25]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[25]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [25]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [25]),
        .I5(\state_reg[25] ),
        .O(\state[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[26]_i_1 
       (.I0(\state[26]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[26] ),
        .I3(Q[26]),
        .I4(\state_reg[31]_0 [26]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[26]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [26]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [26]),
        .I5(\state_reg[26] ),
        .O(\state[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[27]_i_1 
       (.I0(\state[27]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[27] ),
        .I3(Q[27]),
        .I4(\state_reg[31]_0 [27]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[27]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [27]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [27]),
        .I5(\state_reg[27] ),
        .O(\state[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[28]_i_1 
       (.I0(\state[28]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[28] ),
        .I3(Q[28]),
        .I4(\state_reg[31]_0 [28]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[28]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [28]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [28]),
        .I5(\state_reg[28] ),
        .O(\state[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[29]_i_1 
       (.I0(\state[29]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[29] ),
        .I3(Q[29]),
        .I4(\state_reg[31]_0 [29]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[29]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [29]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [29]),
        .I5(\state_reg[29] ),
        .O(\state[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[2]),
        .I3(Q[2]),
        .I4(\state_reg[31]_0 [2]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[2]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [2]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [2]),
        .I5(p_6_out[2]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[30]_i_1 
       (.I0(\state[30]_i_2_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[30] ),
        .I3(Q[30]),
        .I4(\state_reg[31]_0 [30]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[30]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [30]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [30]),
        .I5(\state_reg[30] ),
        .O(\state[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC80C0C0CC8C8C8)) 
    \state[31]_i_1 
       (.I0(\state_reg[31] ),
        .I1(axi_write_ready),
        .I2(awskd_addr),
        .I3(r_data[0]),
        .I4(r_valid_0),
        .I5(S_AXI_AWADDR[0]),
        .O(\r_data_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[31]_i_2 
       (.I0(\state[31]_i_5_n_0 ),
        .I1(\state[31]_i_6_n_0 ),
        .I2(\state_reg[31]_1 ),
        .I3(Q[31]),
        .I4(\state_reg[31]_0 [31]),
        .I5(\state[31]_i_8_n_0 ),
        .O(D[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[31]_i_4 
       (.I0(r_data[1]),
        .I1(r_valid_0),
        .I2(S_AXI_AWADDR[1]),
        .O(awskd_addr));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[31]_i_5 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [31]),
        .I2(\state_reg[31] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [31]),
        .I5(\state_reg[31]_1 ),
        .O(\state[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0B00A0FBABF)) 
    \state[31]_i_6 
       (.I0(\state_reg[31] ),
        .I1(r_data[0]),
        .I2(r_valid_0),
        .I3(S_AXI_AWADDR[0]),
        .I4(r_data[1]),
        .I5(S_AXI_AWADDR[1]),
        .O(\state[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \state[31]_i_8 
       (.I0(S_AXI_AWADDR[1]),
        .I1(r_valid_0),
        .I2(r_data[1]),
        .I3(S_AXI_WSTRB[3]),
        .I4(r_valid),
        .I5(\state_reg[31]_3 [3]),
        .O(\state[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \state[31]_i_9 
       (.I0(S_AXI_AWADDR[0]),
        .I1(r_data[0]),
        .I2(S_AXI_AWADDR[1]),
        .I3(r_valid_0),
        .I4(r_data[1]),
        .O(\state[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[3]),
        .I3(Q[3]),
        .I4(\state_reg[31]_0 [3]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[3]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [3]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [3]),
        .I5(p_6_out[3]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[4]),
        .I3(Q[4]),
        .I4(\state_reg[31]_0 [4]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[4]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [4]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [4]),
        .I5(p_6_out[4]),
        .O(\state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[5]_i_1 
       (.I0(\state[5]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[5]),
        .I3(Q[5]),
        .I4(\state_reg[31]_0 [5]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[5]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [5]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [5]),
        .I5(p_6_out[5]),
        .O(\state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[6]_i_1 
       (.I0(\state[6]_i_2_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[6]),
        .I3(Q[6]),
        .I4(\state_reg[31]_0 [6]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[6]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [6]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [6]),
        .I5(p_6_out[6]),
        .O(\state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC80C0C0CC8C8C8)) 
    \state[7]_i_1 
       (.I0(\state_reg[7] ),
        .I1(axi_write_ready),
        .I2(awskd_addr),
        .I3(r_data[0]),
        .I4(r_valid_0),
        .I5(S_AXI_AWADDR[0]),
        .O(\r_data_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[7]_i_2 
       (.I0(\state[7]_i_4_n_0 ),
        .I1(\state[7]_i_5_n_0 ),
        .I2(p_6_out[7]),
        .I3(Q[7]),
        .I4(\state_reg[31]_0 [7]),
        .I5(\state[7]_i_7_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[7]_i_4 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [7]),
        .I2(\state_reg[7] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [7]),
        .I5(p_6_out[7]),
        .O(\state[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0B00A0FBABF)) 
    \state[7]_i_5 
       (.I0(\state_reg[7] ),
        .I1(r_data[0]),
        .I2(r_valid_0),
        .I3(S_AXI_AWADDR[0]),
        .I4(r_data[1]),
        .I5(S_AXI_AWADDR[1]),
        .O(\state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \state[7]_i_7 
       (.I0(S_AXI_AWADDR[1]),
        .I1(r_valid_0),
        .I2(r_data[1]),
        .I3(S_AXI_WSTRB[0]),
        .I4(r_valid),
        .I5(\state_reg[31]_3 [0]),
        .O(\state[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[8]_i_1 
       (.I0(\state[8]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[0]),
        .I3(Q[8]),
        .I4(\state_reg[31]_0 [8]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[8]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [8]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [8]),
        .I5(p_2_in[0]),
        .O(\state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \state[9]_i_1 
       (.I0(\state[9]_i_2_n_0 ),
        .I1(\state[15]_i_5_n_0 ),
        .I2(p_2_in[1]),
        .I3(Q[9]),
        .I4(\state_reg[31]_0 [9]),
        .I5(\state[15]_i_7_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAAA0808FAAA0808)) 
    \state[9]_i_2 
       (.I0(\state[31]_i_9_n_0 ),
        .I1(\state_reg[31]_2 [9]),
        .I2(\state_reg[15] ),
        .I3(awskd_addr),
        .I4(\state_reg[31]_0 [9]),
        .I5(p_2_in[1]),
        .O(\state[9]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0
   (r_valid,
    wskd_valid,
    S_AXI_WREADY,
    D,
    Q,
    \r_data_reg[35]_0 ,
    \r_data_reg[3]_0 ,
    \r_data_reg[35]_1 ,
    \r_data_reg[34]_0 ,
    \r_data_reg[33]_0 ,
    \r_data_reg[32]_0 ,
    \r_data_reg[31]_0 ,
    \r_data_reg[30]_0 ,
    \r_data_reg[29]_0 ,
    \r_data_reg[28]_0 ,
    \r_data_reg[2]_0 ,
    \r_data_reg[27]_0 ,
    \r_data_reg[26]_0 ,
    \r_data_reg[25]_0 ,
    \r_data_reg[24]_0 ,
    \r_data_reg[23]_0 ,
    \r_data_reg[22]_0 ,
    \r_data_reg[21]_0 ,
    \r_data_reg[20]_0 ,
    \r_data_reg[1]_0 ,
    p_2_in,
    \r_data_reg[0]_0 ,
    p_6_out,
    SR,
    S_AXI_ACLK,
    S_AXI_WVALID,
    S_AXI_ARESETN,
    \r_data_reg[35]_2 ,
    \set_state_reg[31] ,
    \reset_state_reg[31] ,
    axi_write_ready);
  output r_valid;
  output wskd_valid;
  output S_AXI_WREADY;
  output [31:0]D;
  output [3:0]Q;
  output [31:0]\r_data_reg[35]_0 ;
  output \r_data_reg[3]_0 ;
  output \r_data_reg[35]_1 ;
  output \r_data_reg[34]_0 ;
  output \r_data_reg[33]_0 ;
  output \r_data_reg[32]_0 ;
  output \r_data_reg[31]_0 ;
  output \r_data_reg[30]_0 ;
  output \r_data_reg[29]_0 ;
  output \r_data_reg[28]_0 ;
  output \r_data_reg[2]_0 ;
  output \r_data_reg[27]_0 ;
  output \r_data_reg[26]_0 ;
  output \r_data_reg[25]_0 ;
  output \r_data_reg[24]_0 ;
  output \r_data_reg[23]_0 ;
  output \r_data_reg[22]_0 ;
  output \r_data_reg[21]_0 ;
  output \r_data_reg[20]_0 ;
  output \r_data_reg[1]_0 ;
  output [7:0]p_2_in;
  output \r_data_reg[0]_0 ;
  output [7:0]p_6_out;
  input [0:0]SR;
  input S_AXI_ACLK;
  input S_AXI_WVALID;
  input S_AXI_ARESETN;
  input [35:0]\r_data_reg[35]_2 ;
  input [31:0]\set_state_reg[31] ;
  input [31:0]\reset_state_reg[31] ;
  input axi_write_ready;

  wire [31:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_write_ready;
  wire [7:0]p_2_in;
  wire [7:0]p_6_out;
  wire \r_data_reg[0]_0 ;
  wire \r_data_reg[1]_0 ;
  wire \r_data_reg[20]_0 ;
  wire \r_data_reg[21]_0 ;
  wire \r_data_reg[22]_0 ;
  wire \r_data_reg[23]_0 ;
  wire \r_data_reg[24]_0 ;
  wire \r_data_reg[25]_0 ;
  wire \r_data_reg[26]_0 ;
  wire \r_data_reg[27]_0 ;
  wire \r_data_reg[28]_0 ;
  wire \r_data_reg[29]_0 ;
  wire \r_data_reg[2]_0 ;
  wire \r_data_reg[30]_0 ;
  wire \r_data_reg[31]_0 ;
  wire \r_data_reg[32]_0 ;
  wire \r_data_reg[33]_0 ;
  wire \r_data_reg[34]_0 ;
  wire [31:0]\r_data_reg[35]_0 ;
  wire \r_data_reg[35]_1 ;
  wire [35:0]\r_data_reg[35]_2 ;
  wire \r_data_reg[3]_0 ;
  wire \r_data_reg_n_0_[10] ;
  wire \r_data_reg_n_0_[11] ;
  wire \r_data_reg_n_0_[12] ;
  wire \r_data_reg_n_0_[13] ;
  wire \r_data_reg_n_0_[14] ;
  wire \r_data_reg_n_0_[15] ;
  wire \r_data_reg_n_0_[16] ;
  wire \r_data_reg_n_0_[17] ;
  wire \r_data_reg_n_0_[18] ;
  wire \r_data_reg_n_0_[19] ;
  wire \r_data_reg_n_0_[20] ;
  wire \r_data_reg_n_0_[21] ;
  wire \r_data_reg_n_0_[22] ;
  wire \r_data_reg_n_0_[23] ;
  wire \r_data_reg_n_0_[24] ;
  wire \r_data_reg_n_0_[25] ;
  wire \r_data_reg_n_0_[26] ;
  wire \r_data_reg_n_0_[27] ;
  wire \r_data_reg_n_0_[28] ;
  wire \r_data_reg_n_0_[29] ;
  wire \r_data_reg_n_0_[30] ;
  wire \r_data_reg_n_0_[31] ;
  wire \r_data_reg_n_0_[32] ;
  wire \r_data_reg_n_0_[33] ;
  wire \r_data_reg_n_0_[34] ;
  wire \r_data_reg_n_0_[35] ;
  wire \r_data_reg_n_0_[4] ;
  wire \r_data_reg_n_0_[5] ;
  wire \r_data_reg_n_0_[6] ;
  wire \r_data_reg_n_0_[7] ;
  wire \r_data_reg_n_0_[8] ;
  wire \r_data_reg_n_0_[9] ;
  wire r_valid;
  wire r_valid_i_1__0_n_0;
  wire [31:0]\reset_state_reg[31] ;
  wire [31:0]\set_state_reg[31] ;
  wire wskd_valid;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_WREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    axi_bvalid_i_4
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_ARESETN),
        .I2(r_valid),
        .O(wskd_valid));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [10]),
        .Q(\r_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [11]),
        .Q(\r_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [12]),
        .Q(\r_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [13]),
        .Q(\r_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [14]),
        .Q(\r_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [15]),
        .Q(\r_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [16]),
        .Q(\r_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [17]),
        .Q(\r_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [18]),
        .Q(\r_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [19]),
        .Q(\r_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [20]),
        .Q(\r_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [21]),
        .Q(\r_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [22]),
        .Q(\r_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [23]),
        .Q(\r_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [24]),
        .Q(\r_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [25]),
        .Q(\r_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [26]),
        .Q(\r_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [27]),
        .Q(\r_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [28]),
        .Q(\r_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [29]),
        .Q(\r_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [30]),
        .Q(\r_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [31]),
        .Q(\r_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [32]),
        .Q(\r_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [33]),
        .Q(\r_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [34]),
        .Q(\r_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [35]),
        .Q(\r_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [4]),
        .Q(\r_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [5]),
        .Q(\r_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [6]),
        .Q(\r_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [7]),
        .Q(\r_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [8]),
        .Q(\r_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(\r_data_reg[35]_2 [9]),
        .Q(\r_data_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    r_valid_i_1__0
       (.I0(S_AXI_WVALID),
        .I1(r_valid),
        .I2(axi_write_ready),
        .O(r_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1__0_n_0),
        .Q(r_valid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[0]_i_1 
       (.I0(\r_data_reg_n_0_[4] ),
        .I1(\r_data_reg[35]_2 [4]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [0]),
        .O(\r_data_reg[35]_0 [0]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[10]_i_1 
       (.I0(\r_data_reg_n_0_[14] ),
        .I1(\r_data_reg[35]_2 [14]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [10]),
        .O(\r_data_reg[35]_0 [10]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[11]_i_1 
       (.I0(\r_data_reg_n_0_[15] ),
        .I1(\r_data_reg[35]_2 [15]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [11]),
        .O(\r_data_reg[35]_0 [11]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[12]_i_1 
       (.I0(\r_data_reg_n_0_[16] ),
        .I1(\r_data_reg[35]_2 [16]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [12]),
        .O(\r_data_reg[35]_0 [12]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[13]_i_1 
       (.I0(\r_data_reg_n_0_[17] ),
        .I1(\r_data_reg[35]_2 [17]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [13]),
        .O(\r_data_reg[35]_0 [13]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[14]_i_1 
       (.I0(\r_data_reg_n_0_[18] ),
        .I1(\r_data_reg[35]_2 [18]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [14]),
        .O(\r_data_reg[35]_0 [14]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[15]_i_1 
       (.I0(\r_data_reg_n_0_[19] ),
        .I1(\r_data_reg[35]_2 [19]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [15]),
        .O(\r_data_reg[35]_0 [15]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[16]_i_1 
       (.I0(\r_data_reg_n_0_[20] ),
        .I1(\r_data_reg[35]_2 [20]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [16]),
        .O(\r_data_reg[35]_0 [16]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[17]_i_1 
       (.I0(\r_data_reg_n_0_[21] ),
        .I1(\r_data_reg[35]_2 [21]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [17]),
        .O(\r_data_reg[35]_0 [17]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[18]_i_1 
       (.I0(\r_data_reg_n_0_[22] ),
        .I1(\r_data_reg[35]_2 [22]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [18]),
        .O(\r_data_reg[35]_0 [18]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[19]_i_1 
       (.I0(\r_data_reg_n_0_[23] ),
        .I1(\r_data_reg[35]_2 [23]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [19]),
        .O(\r_data_reg[35]_0 [19]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[1]_i_1 
       (.I0(\r_data_reg_n_0_[5] ),
        .I1(\r_data_reg[35]_2 [5]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [1]),
        .O(\r_data_reg[35]_0 [1]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[20]_i_1 
       (.I0(\r_data_reg_n_0_[24] ),
        .I1(\r_data_reg[35]_2 [24]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [20]),
        .O(\r_data_reg[35]_0 [20]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[21]_i_1 
       (.I0(\r_data_reg_n_0_[25] ),
        .I1(\r_data_reg[35]_2 [25]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [21]),
        .O(\r_data_reg[35]_0 [21]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[22]_i_1 
       (.I0(\r_data_reg_n_0_[26] ),
        .I1(\r_data_reg[35]_2 [26]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [22]),
        .O(\r_data_reg[35]_0 [22]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[23]_i_1 
       (.I0(\r_data_reg_n_0_[27] ),
        .I1(\r_data_reg[35]_2 [27]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\reset_state_reg[31] [23]),
        .O(\r_data_reg[35]_0 [23]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[24]_i_1 
       (.I0(\r_data_reg_n_0_[28] ),
        .I1(\r_data_reg[35]_2 [28]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [24]),
        .O(\r_data_reg[35]_0 [24]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[25]_i_1 
       (.I0(\r_data_reg_n_0_[29] ),
        .I1(\r_data_reg[35]_2 [29]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [25]),
        .O(\r_data_reg[35]_0 [25]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[26]_i_1 
       (.I0(\r_data_reg_n_0_[30] ),
        .I1(\r_data_reg[35]_2 [30]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [26]),
        .O(\r_data_reg[35]_0 [26]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[27]_i_1 
       (.I0(\r_data_reg_n_0_[31] ),
        .I1(\r_data_reg[35]_2 [31]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [27]),
        .O(\r_data_reg[35]_0 [27]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[28]_i_1 
       (.I0(\r_data_reg_n_0_[32] ),
        .I1(\r_data_reg[35]_2 [32]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [28]),
        .O(\r_data_reg[35]_0 [28]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[29]_i_1 
       (.I0(\r_data_reg_n_0_[33] ),
        .I1(\r_data_reg[35]_2 [33]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [29]),
        .O(\r_data_reg[35]_0 [29]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[2]_i_1 
       (.I0(\r_data_reg_n_0_[6] ),
        .I1(\r_data_reg[35]_2 [6]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [2]),
        .O(\r_data_reg[35]_0 [2]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[30]_i_1 
       (.I0(\r_data_reg_n_0_[34] ),
        .I1(\r_data_reg[35]_2 [34]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [30]),
        .O(\r_data_reg[35]_0 [30]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[31]_i_2 
       (.I0(\r_data_reg_n_0_[35] ),
        .I1(\r_data_reg[35]_2 [35]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\reset_state_reg[31] [31]),
        .O(\r_data_reg[35]_0 [31]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[3]_i_1 
       (.I0(\r_data_reg_n_0_[7] ),
        .I1(\r_data_reg[35]_2 [7]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [3]),
        .O(\r_data_reg[35]_0 [3]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[4]_i_1 
       (.I0(\r_data_reg_n_0_[8] ),
        .I1(\r_data_reg[35]_2 [8]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [4]),
        .O(\r_data_reg[35]_0 [4]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[5]_i_1 
       (.I0(\r_data_reg_n_0_[9] ),
        .I1(\r_data_reg[35]_2 [9]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [5]),
        .O(\r_data_reg[35]_0 [5]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[6]_i_1 
       (.I0(\r_data_reg_n_0_[10] ),
        .I1(\r_data_reg[35]_2 [10]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [6]),
        .O(\r_data_reg[35]_0 [6]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[7]_i_1 
       (.I0(\r_data_reg_n_0_[11] ),
        .I1(\r_data_reg[35]_2 [11]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\reset_state_reg[31] [7]),
        .O(\r_data_reg[35]_0 [7]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[8]_i_1 
       (.I0(\r_data_reg_n_0_[12] ),
        .I1(\r_data_reg[35]_2 [12]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [8]),
        .O(\r_data_reg[35]_0 [8]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \reset_state[9]_i_1 
       (.I0(\r_data_reg_n_0_[13] ),
        .I1(\r_data_reg[35]_2 [13]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\reset_state_reg[31] [9]),
        .O(\r_data_reg[35]_0 [9]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[0]_i_1 
       (.I0(\r_data_reg_n_0_[4] ),
        .I1(\r_data_reg[35]_2 [4]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[10]_i_1 
       (.I0(\r_data_reg_n_0_[14] ),
        .I1(\r_data_reg[35]_2 [14]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[11]_i_1 
       (.I0(\r_data_reg_n_0_[15] ),
        .I1(\r_data_reg[35]_2 [15]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[12]_i_1 
       (.I0(\r_data_reg_n_0_[16] ),
        .I1(\r_data_reg[35]_2 [16]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[13]_i_1 
       (.I0(\r_data_reg_n_0_[17] ),
        .I1(\r_data_reg[35]_2 [17]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[14]_i_1 
       (.I0(\r_data_reg_n_0_[18] ),
        .I1(\r_data_reg[35]_2 [18]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[15]_i_1 
       (.I0(\r_data_reg_n_0_[19] ),
        .I1(\r_data_reg[35]_2 [19]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[16]_i_1 
       (.I0(\r_data_reg_n_0_[20] ),
        .I1(\r_data_reg[35]_2 [20]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[17]_i_1 
       (.I0(\r_data_reg_n_0_[21] ),
        .I1(\r_data_reg[35]_2 [21]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[18]_i_1 
       (.I0(\r_data_reg_n_0_[22] ),
        .I1(\r_data_reg[35]_2 [22]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[19]_i_1 
       (.I0(\r_data_reg_n_0_[23] ),
        .I1(\r_data_reg[35]_2 [23]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[1]_i_1 
       (.I0(\r_data_reg_n_0_[5] ),
        .I1(\r_data_reg[35]_2 [5]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[20]_i_1 
       (.I0(\r_data_reg_n_0_[24] ),
        .I1(\r_data_reg[35]_2 [24]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[21]_i_1 
       (.I0(\r_data_reg_n_0_[25] ),
        .I1(\r_data_reg[35]_2 [25]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[22]_i_1 
       (.I0(\r_data_reg_n_0_[26] ),
        .I1(\r_data_reg[35]_2 [26]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[23]_i_1 
       (.I0(\r_data_reg_n_0_[27] ),
        .I1(\r_data_reg[35]_2 [27]),
        .I2(Q[2]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [2]),
        .I5(\set_state_reg[31] [23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[24]_i_1 
       (.I0(\r_data_reg_n_0_[28] ),
        .I1(\r_data_reg[35]_2 [28]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[25]_i_1 
       (.I0(\r_data_reg_n_0_[29] ),
        .I1(\r_data_reg[35]_2 [29]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[26]_i_1 
       (.I0(\r_data_reg_n_0_[30] ),
        .I1(\r_data_reg[35]_2 [30]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[27]_i_1 
       (.I0(\r_data_reg_n_0_[31] ),
        .I1(\r_data_reg[35]_2 [31]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[28]_i_1 
       (.I0(\r_data_reg_n_0_[32] ),
        .I1(\r_data_reg[35]_2 [32]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[29]_i_1 
       (.I0(\r_data_reg_n_0_[33] ),
        .I1(\r_data_reg[35]_2 [33]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[2]_i_1 
       (.I0(\r_data_reg_n_0_[6] ),
        .I1(\r_data_reg[35]_2 [6]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[30]_i_1 
       (.I0(\r_data_reg_n_0_[34] ),
        .I1(\r_data_reg[35]_2 [34]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[31]_i_2 
       (.I0(\r_data_reg_n_0_[35] ),
        .I1(\r_data_reg[35]_2 [35]),
        .I2(Q[3]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [3]),
        .I5(\set_state_reg[31] [31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[3]_i_1 
       (.I0(\r_data_reg_n_0_[7] ),
        .I1(\r_data_reg[35]_2 [7]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[4]_i_1 
       (.I0(\r_data_reg_n_0_[8] ),
        .I1(\r_data_reg[35]_2 [8]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[5]_i_1 
       (.I0(\r_data_reg_n_0_[9] ),
        .I1(\r_data_reg[35]_2 [9]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[6]_i_1 
       (.I0(\r_data_reg_n_0_[10] ),
        .I1(\r_data_reg[35]_2 [10]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[7]_i_1 
       (.I0(\r_data_reg_n_0_[11] ),
        .I1(\r_data_reg[35]_2 [11]),
        .I2(Q[0]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [0]),
        .I5(\set_state_reg[31] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[8]_i_1 
       (.I0(\r_data_reg_n_0_[12] ),
        .I1(\r_data_reg[35]_2 [12]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \set_state[9]_i_1 
       (.I0(\r_data_reg_n_0_[13] ),
        .I1(\r_data_reg[35]_2 [13]),
        .I2(Q[1]),
        .I3(r_valid),
        .I4(\r_data_reg[35]_2 [1]),
        .I5(\set_state_reg[31] [9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[0]_i_3 
       (.I0(\r_data_reg_n_0_[4] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [4]),
        .O(p_6_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[10]_i_3 
       (.I0(\r_data_reg_n_0_[14] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [14]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[11]_i_3 
       (.I0(\r_data_reg_n_0_[15] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [15]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[12]_i_3 
       (.I0(\r_data_reg_n_0_[16] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [16]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[13]_i_3 
       (.I0(\r_data_reg_n_0_[17] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [17]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[14]_i_3 
       (.I0(\r_data_reg_n_0_[18] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [18]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[15]_i_3 
       (.I0(Q[1]),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [1]),
        .O(\r_data_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[15]_i_6 
       (.I0(\r_data_reg_n_0_[19] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [19]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[16]_i_3 
       (.I0(\r_data_reg_n_0_[20] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [20]),
        .O(\r_data_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[17]_i_3 
       (.I0(\r_data_reg_n_0_[21] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [21]),
        .O(\r_data_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[18]_i_3 
       (.I0(\r_data_reg_n_0_[22] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [22]),
        .O(\r_data_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[19]_i_3 
       (.I0(\r_data_reg_n_0_[23] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [23]),
        .O(\r_data_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_3 
       (.I0(\r_data_reg_n_0_[5] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [5]),
        .O(p_6_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[20]_i_3 
       (.I0(\r_data_reg_n_0_[24] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [24]),
        .O(\r_data_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[21]_i_3 
       (.I0(\r_data_reg_n_0_[25] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [25]),
        .O(\r_data_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[22]_i_3 
       (.I0(\r_data_reg_n_0_[26] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [26]),
        .O(\r_data_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[23]_i_3 
       (.I0(Q[2]),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [2]),
        .O(\r_data_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[23]_i_6 
       (.I0(\r_data_reg_n_0_[27] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [27]),
        .O(\r_data_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[24]_i_3 
       (.I0(\r_data_reg_n_0_[28] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [28]),
        .O(\r_data_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[25]_i_3 
       (.I0(\r_data_reg_n_0_[29] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [29]),
        .O(\r_data_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[26]_i_3 
       (.I0(\r_data_reg_n_0_[30] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [30]),
        .O(\r_data_reg[30]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[27]_i_3 
       (.I0(\r_data_reg_n_0_[31] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [31]),
        .O(\r_data_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[28]_i_3 
       (.I0(\r_data_reg_n_0_[32] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [32]),
        .O(\r_data_reg[32]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[29]_i_3 
       (.I0(\r_data_reg_n_0_[33] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [33]),
        .O(\r_data_reg[33]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_3 
       (.I0(\r_data_reg_n_0_[6] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [6]),
        .O(p_6_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[30]_i_3 
       (.I0(\r_data_reg_n_0_[34] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [34]),
        .O(\r_data_reg[34]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[31]_i_3 
       (.I0(Q[3]),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [3]),
        .O(\r_data_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[31]_i_7 
       (.I0(\r_data_reg_n_0_[35] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [35]),
        .O(\r_data_reg[35]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[3]_i_3 
       (.I0(\r_data_reg_n_0_[7] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [7]),
        .O(p_6_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[4]_i_3 
       (.I0(\r_data_reg_n_0_[8] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [8]),
        .O(p_6_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_3 
       (.I0(\r_data_reg_n_0_[9] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [9]),
        .O(p_6_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[6]_i_3 
       (.I0(\r_data_reg_n_0_[10] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [10]),
        .O(p_6_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[7]_i_3 
       (.I0(Q[0]),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [0]),
        .O(\r_data_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[7]_i_6 
       (.I0(\r_data_reg_n_0_[11] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [11]),
        .O(p_6_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[8]_i_3 
       (.I0(\r_data_reg_n_0_[12] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [12]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[9]_i_3 
       (.I0(\r_data_reg_n_0_[13] ),
        .I1(r_valid),
        .I2(\r_data_reg[35]_2 [13]),
        .O(p_2_in[1]));
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
