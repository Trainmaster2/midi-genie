// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jan 17 17:16:49 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_apu_fifo_writer_0_0/design_1_apu_fifo_writer_0_0_stub.v
// Design      : design_1_apu_fifo_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "apu_fifo_writer,Vivado 2022.2.2" *)
module design_1_apu_fifo_writer_0_0(Clk, Reset, Pulse1_Timer, Pulse1_Volume, 
  Pulse2_Timer, Pulse2_Volume, FifoData, FifoWrite)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,Pulse1_Timer[11:0],Pulse1_Volume[3:0],Pulse2_Timer[11:0],Pulse2_Volume[3:0],FifoData[15:0],FifoWrite" */;
  input Clk;
  input Reset;
  input [11:0]Pulse1_Timer;
  input [3:0]Pulse1_Volume;
  input [11:0]Pulse2_Timer;
  input [3:0]Pulse2_Volume;
  output [15:0]FifoData;
  output FifoWrite;
endmodule
