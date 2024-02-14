// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Feb 14 00:12:03 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_0_0/design_1_nes_apu_0_0_stub.v
// Design      : design_1_nes_apu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nes_apu,Vivado 2022.2.2" *)
module design_1_nes_apu_0_0(Clk, Reset, CPU_Clk, CPU_M2, CPU_Rst, CPU_Addr, 
  CPU_Data, CPU_RomSel, CPU_RW, APU_Pulse1_Out, APU_Pulse2_Out, APU_Triangle_Out, 
  APU_Noise_Out, APU_DMC_Out, APU_Status_Out, APU_Counter_Out, APU_Pulse1_Message, 
  APU_Pulse2_Message, dbg_apu_tick, dbg_apu_half, dbg_apu_qtr, dbg_overflow_1, 
  dbg_overflow_2)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,CPU_Clk,CPU_M2,CPU_Rst,CPU_Addr[14:0],CPU_Data[7:0],CPU_RomSel,CPU_RW,APU_Pulse1_Out[52:0],APU_Pulse2_Out[52:0],APU_Triangle_Out[41:0],APU_Noise_Out[15:0],APU_DMC_Out[28:0],APU_Status_Out[6:0],APU_Counter_Out[1:0],APU_Pulse1_Message[18:0],APU_Pulse2_Message[18:0],dbg_apu_tick,dbg_apu_half,dbg_apu_qtr,dbg_overflow_1,dbg_overflow_2" */;
  input Clk;
  input Reset;
  input CPU_Clk;
  input CPU_M2;
  input CPU_Rst;
  input [14:0]CPU_Addr;
  input [7:0]CPU_Data;
  input CPU_RomSel;
  input CPU_RW;
  output [52:0]APU_Pulse1_Out;
  output [52:0]APU_Pulse2_Out;
  output [41:0]APU_Triangle_Out;
  output [15:0]APU_Noise_Out;
  output [28:0]APU_DMC_Out;
  output [6:0]APU_Status_Out;
  output [1:0]APU_Counter_Out;
  output [18:0]APU_Pulse1_Message;
  output [18:0]APU_Pulse2_Message;
  output dbg_apu_tick;
  output dbg_apu_half;
  output dbg_apu_qtr;
  output dbg_overflow_1;
  output dbg_overflow_2;
endmodule
