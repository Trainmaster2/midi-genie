// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Sun Mar 10 15:21:38 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2022.2.2" *)
module design_1_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[14:0],probe3[7:0],probe4[0:0],probe5[0:0],probe6[52:0],probe7[52:0],probe8[42:0],probe9[50:0],probe10[28:0],probe11[6:0],probe12[1:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[18:0],probe17[18:0],probe18[14:0],probe19[27:0],probe20[2:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [14:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [52:0]probe6;
  input [52:0]probe7;
  input [42:0]probe8;
  input [50:0]probe9;
  input [28:0]probe10;
  input [6:0]probe11;
  input [1:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [18:0]probe16;
  input [18:0]probe17;
  input [14:0]probe18;
  input [27:0]probe19;
  input [2:0]probe20;
endmodule
