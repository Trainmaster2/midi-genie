// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jan 10 20:16:11 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_system_ila_1_0/design_1_system_ila_1_0_stub.v
// Design      : design_1_system_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_365d,Vivado 2022.2.2" *)
module design_1_system_ila_1_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[25:0],probe1[0:0],probe2[0:0],probe3[25:0],probe4[0:0],probe5[0:0],probe6[9:0],probe7[0:0]" */;
  input clk;
  input [25:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [25:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [9:0]probe6;
  input [0:0]probe7;
endmodule
