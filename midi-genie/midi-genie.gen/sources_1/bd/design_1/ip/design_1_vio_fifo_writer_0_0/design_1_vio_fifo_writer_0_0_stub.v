// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Thu Jan 11 13:22:20 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_vio_fifo_writer_0_0/design_1_vio_fifo_writer_0_0_stub.v
// Design      : design_1_vio_fifo_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio_fifo_writer,Vivado 2022.2.2" *)
module design_1_vio_fifo_writer_0_0(Clk, VioData, VioWrite, FifoData, FifoWrite)
/* synthesis syn_black_box black_box_pad_pin="Clk,VioData[14:0],VioWrite,FifoData[14:0],FifoWrite" */;
  input Clk;
  input [14:0]VioData;
  input VioWrite;
  output [14:0]FifoData;
  output FifoWrite;
endmodule
