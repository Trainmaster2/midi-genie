// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jan 10 13:02:04 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_fifo_transmitter_0_0 -prefix
//               design_1_fifo_transmitter_0_0_ design_1_fifo_transmitter_0_0_stub.v
// Design      : design_1_fifo_transmitter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fifo_transmitter,Vivado 2022.2.2" *)
module design_1_fifo_transmitter_0_0(Clk, Reset, FifoData, FifoEmpty, FifoRead, Midi)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,FifoData[25:0],FifoEmpty,FifoRead,Midi" */;
  input Clk;
  input Reset;
  input [25:0]FifoData;
  input FifoEmpty;
  output FifoRead;
  output Midi;
endmodule
