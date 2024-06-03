// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri May 24 22:47:33 2024
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
  CPU_Data, CPU_RomSel, CPU_RW, APU_Pulse1_Message, APU_Pulse2_Message, APU_Triangle_Message, 
  APU_Noise_Message, APU_DMC_Message)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,CPU_Clk,CPU_M2,CPU_Rst,CPU_Addr[14:0],CPU_Data[7:0],CPU_RomSel,CPU_RW,APU_Pulse1_Message[18:0],APU_Pulse2_Message[18:0],APU_Triangle_Message[14:0],APU_Noise_Message[13:0],APU_DMC_Message[3:0]" */;
  input Clk;
  input Reset;
  input CPU_Clk;
  input CPU_M2;
  input CPU_Rst;
  input [14:0]CPU_Addr;
  input [7:0]CPU_Data;
  input CPU_RomSel;
  input CPU_RW;
  output [18:0]APU_Pulse1_Message;
  output [18:0]APU_Pulse2_Message;
  output [14:0]APU_Triangle_Message;
  output [13:0]APU_Noise_Message;
  output [3:0]APU_DMC_Message;
endmodule
