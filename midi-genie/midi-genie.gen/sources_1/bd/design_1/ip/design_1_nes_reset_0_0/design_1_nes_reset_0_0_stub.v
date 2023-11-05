// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  5 15:11:23 2023
// Host        : TM2s-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_reset_0_0/design_1_nes_reset_0_0_stub.v
// Design      : design_1_nes_reset_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nes_reset,Vivado 2022.2" *)
module design_1_nes_reset_0_0(Clk, Reset, M2, NES_rst, test, test2, test3, test4, 
  test5, test6, test7)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,M2,NES_rst,test[3:0],test2,test3,test4,test5[3:0],test6,test7" */;
  input Clk;
  input Reset;
  input M2;
  output NES_rst;
  output [3:0]test;
  output test2;
  output test3;
  output test4;
  output [3:0]test5;
  output test6;
  output test7;
endmodule
