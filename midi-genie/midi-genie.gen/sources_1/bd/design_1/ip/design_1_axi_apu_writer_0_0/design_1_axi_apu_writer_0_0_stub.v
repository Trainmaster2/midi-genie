// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Thu May  9 23:46:53 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_axi_apu_writer_0_0/design_1_axi_apu_writer_0_0_stub.v
// Design      : design_1_axi_apu_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_apu_writer,Vivado 2022.2.2" *)
module design_1_axi_apu_writer_0_0(S_AXI_ACLK, S_AXI_ARESETN, S_AXI_ARVALID, 
  S_AXI_ARREADY, S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_WVALID, S_AXI_WREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_BVALID, S_AXI_BREADY, S_AXI_BRESP, S_AXI_AWVALID, S_AXI_AWREADY, 
  S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_RVALID, S_AXI_RREADY, S_AXI_RDATA, S_AXI_RRESP, CPU_Rst, 
  Pulse1_Message, Pulse2_Message, Triangle_Message, Noise_Message, DMC_Message, FifoData, 
  FifoWrite)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ACLK,S_AXI_ARESETN,S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_ARADDR[3:0],S_AXI_ARPROT[2:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_BRESP[1:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_AWADDR[3:0],S_AXI_AWPROT[2:0],S_AXI_RVALID,S_AXI_RREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],CPU_Rst,Pulse1_Message[18:0],Pulse2_Message[18:0],Triangle_Message[14:0],Noise_Message[27:0],DMC_Message[3:0],FifoData[27:0],FifoWrite" */;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  output [1:0]S_AXI_BRESP;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  input CPU_Rst;
  input [18:0]Pulse1_Message;
  input [18:0]Pulse2_Message;
  input [14:0]Triangle_Message;
  input [27:0]Noise_Message;
  input [3:0]DMC_Message;
  output [27:0]FifoData;
  output FifoWrite;
endmodule
