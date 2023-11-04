// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov  3 23:23:32 2023
// Host        : TM2s-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_registers_0_0/design_1_nes_apu_registers_0_0_stub.v
// Design      : design_1_nes_apu_registers_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nes_apu_registers,Vivado 2022.2" *)
module design_1_nes_apu_registers_0_0(Clk, CPU_Clk, CPU_M2, CPU_Addr, CPU_Data, 
  CPU_RomSel, CPU_RW, APU_Pulse1_Out, APU_Pulse2_Out, APU_Triangle_Out, APU_Noise_Out, 
  APU_DMC_Out, APU_Status_Out, APU_Counter_Out, Update)
/* synthesis syn_black_box black_box_pad_pin="Clk,CPU_Clk,CPU_M2,CPU_Addr[14:0],CPU_Data[7:0],CPU_RomSel,CPU_RW,APU_Pulse1_Out[31:0],APU_Pulse2_Out[31:0],APU_Triangle_Out[30:0],APU_Noise_Out[15:0],APU_DMC_Out[28:0],APU_Status_Out[6:0],APU_Counter_Out[1:0],Update" */;
  input Clk;
  input CPU_Clk;
  input CPU_M2;
  input [14:0]CPU_Addr;
  input [7:0]CPU_Data;
  input CPU_RomSel;
  input CPU_RW;
  output [31:0]APU_Pulse1_Out;
  output [31:0]APU_Pulse2_Out;
  output [30:0]APU_Triangle_Out;
  output [15:0]APU_Noise_Out;
  output [28:0]APU_DMC_Out;
  output [6:0]APU_Status_Out;
  output [1:0]APU_Counter_Out;
  output Update;
endmodule
