// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Sat Feb 24 23:38:16 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_fifo_generator_0_1 -prefix
//               design_1_fifo_generator_0_1_ design_1_fifo_generator_0_1_stub.v
// Design      : design_1_fifo_generator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2.2" *)
module design_1_fifo_generator_0_1(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[27:0],wr_en,rd_en,dout[27:0],full,empty" */;
  input clk;
  input rst;
  input [27:0]din;
  input wr_en;
  input rd_en;
  output [27:0]dout;
  output full;
  output empty;
endmodule
