// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri May 24 22:47:33 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_0_0/design_1_nes_apu_0_0_sim_netlist.v
// Design      : design_1_nes_apu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nes_apu_0_0,nes_apu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "nes_apu,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_nes_apu_0_0
   (Clk,
    Reset,
    CPU_Clk,
    CPU_M2,
    CPU_Rst,
    CPU_Addr,
    CPU_Data,
    CPU_RomSel,
    CPU_RW,
    APU_Pulse1_Message,
    APU_Pulse2_Message,
    APU_Triangle_Message,
    APU_Noise_Message,
    APU_DMC_Message);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CPU_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Clk, ASSOCIATED_RESET CPU_Rst, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0" *) input CPU_Clk;
  input CPU_M2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_Rst;
  input [14:0]CPU_Addr;
  input [7:0]CPU_Data;
  input CPU_RomSel;
  input CPU_RW;
  output [18:0]APU_Pulse1_Message;
  output [18:0]APU_Pulse2_Message;
  output [14:0]APU_Triangle_Message;
  output [13:0]APU_Noise_Message;
  output [3:0]APU_DMC_Message;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:3]\^APU_Noise_Message ;
  wire [18:3]\^APU_Pulse1_Message ;
  wire [18:3]\^APU_Pulse2_Message ;
  wire [14:3]\^APU_Triangle_Message ;
  wire [14:0]CPU_Addr;
  wire [7:0]CPU_Data;
  wire CPU_M2;
  wire CPU_RW;
  wire CPU_RomSel;
  wire CPU_Rst;
  wire Reset;

  assign APU_DMC_Message[3] = \<const0> ;
  assign APU_DMC_Message[2] = \<const1> ;
  assign APU_DMC_Message[1] = \<const0> ;
  assign APU_DMC_Message[0] = \<const0> ;
  assign APU_Noise_Message[13:3] = \^APU_Noise_Message [13:3];
  assign APU_Noise_Message[2] = \<const0> ;
  assign APU_Noise_Message[1] = \<const1> ;
  assign APU_Noise_Message[0] = \<const1> ;
  assign APU_Pulse1_Message[18:3] = \^APU_Pulse1_Message [18:3];
  assign APU_Pulse1_Message[2] = \<const0> ;
  assign APU_Pulse1_Message[1] = \<const0> ;
  assign APU_Pulse1_Message[0] = \<const0> ;
  assign APU_Pulse2_Message[18:3] = \^APU_Pulse2_Message [18:3];
  assign APU_Pulse2_Message[2] = \<const0> ;
  assign APU_Pulse2_Message[1] = \<const0> ;
  assign APU_Pulse2_Message[0] = \<const1> ;
  assign APU_Triangle_Message[14:3] = \^APU_Triangle_Message [14:3];
  assign APU_Triangle_Message[2] = \<const0> ;
  assign APU_Triangle_Message[1] = \<const1> ;
  assign APU_Triangle_Message[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_nes_apu_0_0_nes_apu inst
       (.APU_Noise_Message(\^APU_Noise_Message ),
        .APU_Pulse1_Message({\^APU_Pulse1_Message [18:13],\^APU_Pulse1_Message [3]}),
        .\APU_Pulse1_reg[timer][8]_0 (\^APU_Pulse1_Message [12]),
        .APU_Pulse2_Message({\^APU_Pulse2_Message [18:15],\^APU_Pulse2_Message [3]}),
        .\APU_Pulse2_reg[timer][10]_0 (\^APU_Pulse2_Message [14]),
        .\APU_Pulse2_reg[timer][7]_0 (\^APU_Pulse2_Message [11:4]),
        .\APU_Pulse2_reg[timer][8]_0 (\^APU_Pulse2_Message [12]),
        .\APU_Pulse2_reg[timer][9]_0 (\^APU_Pulse2_Message [13]),
        .APU_Triangle_Message(\^APU_Triangle_Message ),
        .CPU_Addr(CPU_Addr),
        .CPU_Data(CPU_Data),
        .CPU_M2(CPU_M2),
        .CPU_RW(CPU_RW),
        .CPU_RomSel(CPU_RomSel),
        .CPU_Rst(CPU_Rst),
        .Q(\^APU_Pulse1_Message [11:4]),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "nes_apu" *) 
module design_1_nes_apu_0_0_nes_apu
   (\APU_Pulse2_reg[timer][9]_0 ,
    \APU_Pulse2_reg[timer][10]_0 ,
    \APU_Pulse2_reg[timer][8]_0 ,
    APU_Noise_Message,
    Q,
    \APU_Pulse1_reg[timer][8]_0 ,
    \APU_Pulse2_reg[timer][7]_0 ,
    APU_Pulse1_Message,
    APU_Pulse2_Message,
    APU_Triangle_Message,
    Reset,
    CPU_Rst,
    CPU_Data,
    CPU_M2,
    CPU_Addr,
    CPU_RomSel,
    CPU_RW);
  output \APU_Pulse2_reg[timer][9]_0 ;
  output \APU_Pulse2_reg[timer][10]_0 ;
  output \APU_Pulse2_reg[timer][8]_0 ;
  output [10:0]APU_Noise_Message;
  output [7:0]Q;
  output \APU_Pulse1_reg[timer][8]_0 ;
  output [7:0]\APU_Pulse2_reg[timer][7]_0 ;
  output [6:0]APU_Pulse1_Message;
  output [4:0]APU_Pulse2_Message;
  output [11:0]APU_Triangle_Message;
  input Reset;
  input CPU_Rst;
  input [7:0]CPU_Data;
  input CPU_M2;
  input [14:0]CPU_Addr;
  input CPU_RomSel;
  input CPU_RW;

  wire \APU_Counter[mode]_i_1_n_0 ;
  wire \APU_Counter_reg[mode]__0 ;
  wire APU_Half_CE20_out;
  wire APU_Half_CE_i_10_n_0;
  wire APU_Half_CE_i_11_n_0;
  wire APU_Half_CE_i_12_n_0;
  wire APU_Half_CE_i_13_n_0;
  wire APU_Half_CE_i_2_n_0;
  wire APU_Half_CE_i_3_n_0;
  wire APU_Half_CE_i_4_n_0;
  wire APU_Half_CE_i_5_n_0;
  wire APU_Half_CE_i_6_n_0;
  wire APU_Half_CE_i_7_n_0;
  wire APU_Half_CE_i_8_n_0;
  wire APU_Half_CE_i_9_n_0;
  wire APU_Half_CE_reg_n_0;
  wire \APU_Noise[length_counter][0]_i_1_n_0 ;
  wire \APU_Noise[length_counter][1]_i_1_n_0 ;
  wire \APU_Noise[length_counter][2]_i_1_n_0 ;
  wire \APU_Noise[length_counter][2]_i_2_n_0 ;
  wire \APU_Noise[length_counter][3]_i_1_n_0 ;
  wire \APU_Noise[length_counter][3]_i_2_n_0 ;
  wire \APU_Noise[length_counter][4]_i_1_n_0 ;
  wire \APU_Noise[length_counter][4]_i_2_n_0 ;
  wire \APU_Noise[length_counter][5]_i_1_n_0 ;
  wire \APU_Noise[length_counter][5]_i_2_n_0 ;
  wire \APU_Noise[length_counter][5]_i_3_n_0 ;
  wire \APU_Noise[length_counter][5]_i_4_n_0 ;
  wire \APU_Noise[length_counter][5]_i_5_n_0 ;
  wire \APU_Noise[length_counter][5]_i_6_n_0 ;
  wire \APU_Noise[length_counter][5]_i_7_n_0 ;
  wire \APU_Noise[length_counter_halt] ;
  wire \APU_Noise[noise_mode]_i_1_n_0 ;
  wire \APU_Noise[noise_period] ;
  wire \APU_Noise[noise_period][3]_i_2_n_0 ;
  wire \APU_Noise[shift_reg_at_switch] ;
  wire \APU_Noise[volume] ;
  wire \APU_Noise[volume][0]_i_1_n_0 ;
  wire \APU_Noise[volume][1]_i_1_n_0 ;
  wire \APU_Noise[volume][2]_i_1_n_0 ;
  wire \APU_Noise[volume][3]_i_2_n_0 ;
  wire \APU_Noise[volume][3]_i_3_n_0 ;
  wire \APU_Noise[volume][3]_i_4_n_0 ;
  wire \APU_Noise[volume][3]_i_5_n_0 ;
  wire [10:0]APU_Noise_Message;
  wire \APU_Noise_Message[13]_INST_0_i_10_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_11_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_12_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_13_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_14_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_15_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_16_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_17_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_18_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_19_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_1_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_20_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_2_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_3_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_4_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_5_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_6_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_7_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_8_n_0 ;
  wire \APU_Noise_Message[13]_INST_0_i_9_n_0 ;
  wire \APU_Noise_reg[constant_volume]__0 ;
  wire \APU_Noise_reg[envelope_n_0_][0] ;
  wire \APU_Noise_reg[envelope_n_0_][1] ;
  wire \APU_Noise_reg[envelope_n_0_][2] ;
  wire \APU_Noise_reg[envelope_n_0_][3] ;
  wire [5:0]\APU_Noise_reg[length_counter] ;
  wire \APU_Noise_reg[length_counter_halt_n_0_] ;
  wire \APU_Noise_reg[shift][14]_i_1_n_0 ;
  wire \APU_Noise_reg[shift][14]_i_2_n_0 ;
  wire [14:0]\APU_Noise_reg[shift_reg_at_switch] ;
  wire \APU_Noise_reg[shift_reg_n_0_][0] ;
  wire [3:0]\APU_Noise_reg[volume] ;
  wire \APU_Pulse1[length_counter][0]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][1]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][1]_i_2_n_0 ;
  wire \APU_Pulse1[length_counter][2]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][2]_i_2_n_0 ;
  wire \APU_Pulse1[length_counter][2]_i_3_n_0 ;
  wire \APU_Pulse1[length_counter][3]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][3]_i_2_n_0 ;
  wire \APU_Pulse1[length_counter][3]_i_3_n_0 ;
  wire \APU_Pulse1[length_counter][4]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][4]_i_2_n_0 ;
  wire \APU_Pulse1[length_counter][4]_i_3_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_1_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_2_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_3_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_4_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_5_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_6_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_7_n_0 ;
  wire \APU_Pulse1[length_counter][5]_i_8_n_0 ;
  wire \APU_Pulse1[length_counter_halt] ;
  wire \APU_Pulse1[length_counter_halt]_i_2_n_0 ;
  wire \APU_Pulse1[sweep_enable] ;
  wire \APU_Pulse1[sweep_shift][2]_i_2_n_0 ;
  wire \APU_Pulse1[timer][0]_i_2_n_0 ;
  wire \APU_Pulse1[timer][10]_i_1_n_0 ;
  wire \APU_Pulse1[timer][10]_i_2_n_0 ;
  wire \APU_Pulse1[timer][10]_i_3_n_0 ;
  wire \APU_Pulse1[timer][10]_i_4_n_0 ;
  wire \APU_Pulse1[timer][10]_i_5_n_0 ;
  wire \APU_Pulse1[timer][10]_i_6_n_0 ;
  wire \APU_Pulse1[timer][10]_i_7_n_0 ;
  wire \APU_Pulse1[timer][1]_i_2_n_0 ;
  wire \APU_Pulse1[timer][2]_i_2_n_0 ;
  wire \APU_Pulse1[timer][3]_i_2_n_0 ;
  wire \APU_Pulse1[timer][3]_i_4_n_0 ;
  wire \APU_Pulse1[timer][3]_i_5_n_0 ;
  wire \APU_Pulse1[timer][3]_i_6_n_0 ;
  wire \APU_Pulse1[timer][3]_i_7_n_0 ;
  wire \APU_Pulse1[timer][4]_i_2_n_0 ;
  wire \APU_Pulse1[timer][5]_i_2_n_0 ;
  wire \APU_Pulse1[timer][6]_i_2_n_0 ;
  wire \APU_Pulse1[timer][7]_i_1_n_0 ;
  wire \APU_Pulse1[timer][7]_i_3_n_0 ;
  wire \APU_Pulse1[timer][7]_i_4_n_0 ;
  wire \APU_Pulse1[timer][7]_i_5_n_0 ;
  wire \APU_Pulse1[timer][8]_i_1_n_0 ;
  wire \APU_Pulse1[timer][8]_i_2_n_0 ;
  wire \APU_Pulse1[timer][9]_i_1_n_0 ;
  wire \APU_Pulse1[timer][9]_i_2_n_0 ;
  wire \APU_Pulse1[volume] ;
  wire \APU_Pulse1[volume][0]_i_1_n_0 ;
  wire \APU_Pulse1[volume][1]_i_1_n_0 ;
  wire \APU_Pulse1[volume][2]_i_1_n_0 ;
  wire \APU_Pulse1[volume][3]_i_2_n_0 ;
  wire \APU_Pulse1[volume][3]_i_3_n_0 ;
  wire \APU_Pulse1[volume][3]_i_4_n_0 ;
  wire \APU_Pulse1[volume][3]_i_5_n_0 ;
  wire \APU_Pulse1[volume][3]_i_6_n_0 ;
  wire [6:0]APU_Pulse1_Message;
  wire \APU_Pulse1_Message[3]_INST_0_i_10_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_11_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_12_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_13_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_1_n_2 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_1_n_3 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_2_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_3_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_4_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_4_n_1 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_4_n_2 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_4_n_3 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_5_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_6_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_7_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_8_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_9_n_0 ;
  wire \APU_Pulse1_reg[constant_volume]__0 ;
  wire \APU_Pulse1_reg[envelope_n_0_][0] ;
  wire \APU_Pulse1_reg[envelope_n_0_][1] ;
  wire \APU_Pulse1_reg[envelope_n_0_][2] ;
  wire \APU_Pulse1_reg[envelope_n_0_][3] ;
  wire [5:0]\APU_Pulse1_reg[length_counter] ;
  wire \APU_Pulse1_reg[length_counter_halt_n_0_] ;
  wire \APU_Pulse1_reg[sweep_enable]__0 ;
  wire \APU_Pulse1_reg[sweep_negate]__0 ;
  wire [2:0]\APU_Pulse1_reg[sweep_period] ;
  wire \APU_Pulse1_reg[sweep_shift_n_0_][0] ;
  wire \APU_Pulse1_reg[sweep_shift_n_0_][1] ;
  wire \APU_Pulse1_reg[sweep_shift_n_0_][2] ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_0 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_1 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_2 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_3 ;
  wire \APU_Pulse1_reg[timer][8]_0 ;
  wire [3:0]\APU_Pulse1_reg[volume] ;
  wire \APU_Pulse2[length_counter][0]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][1]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][2]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][2]_i_2_n_0 ;
  wire \APU_Pulse2[length_counter][3]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][3]_i_2_n_0 ;
  wire \APU_Pulse2[length_counter][4]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][4]_i_2_n_0 ;
  wire \APU_Pulse2[length_counter][4]_i_3_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_1_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_2_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_3_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_4_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_5_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_6_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_7_n_0 ;
  wire \APU_Pulse2[length_counter][5]_i_8_n_0 ;
  wire \APU_Pulse2[length_counter_halt] ;
  wire \APU_Pulse2[sweep_enable] ;
  wire \APU_Pulse2[sweep_shift][2]_i_2_n_0 ;
  wire \APU_Pulse2[timer][0]_i_1_n_0 ;
  wire \APU_Pulse2[timer][0]_i_2_n_0 ;
  wire \APU_Pulse2[timer][10]_i_1_n_0 ;
  wire \APU_Pulse2[timer][10]_i_2_n_0 ;
  wire \APU_Pulse2[timer][10]_i_3_n_0 ;
  wire \APU_Pulse2[timer][10]_i_4_n_0 ;
  wire \APU_Pulse2[timer][10]_i_5_n_0 ;
  wire \APU_Pulse2[timer][10]_i_6_n_0 ;
  wire \APU_Pulse2[timer][10]_i_7_n_0 ;
  wire \APU_Pulse2[timer][1]_i_1_n_0 ;
  wire \APU_Pulse2[timer][1]_i_2_n_0 ;
  wire \APU_Pulse2[timer][2]_i_1_n_0 ;
  wire \APU_Pulse2[timer][2]_i_2_n_0 ;
  wire \APU_Pulse2[timer][3]_i_1_n_0 ;
  wire \APU_Pulse2[timer][3]_i_2_n_0 ;
  wire \APU_Pulse2[timer][3]_i_4_n_0 ;
  wire \APU_Pulse2[timer][3]_i_5_n_0 ;
  wire \APU_Pulse2[timer][3]_i_6_n_0 ;
  wire \APU_Pulse2[timer][3]_i_7_n_0 ;
  wire \APU_Pulse2[timer][4]_i_1_n_0 ;
  wire \APU_Pulse2[timer][4]_i_2_n_0 ;
  wire \APU_Pulse2[timer][5]_i_1_n_0 ;
  wire \APU_Pulse2[timer][5]_i_2_n_0 ;
  wire \APU_Pulse2[timer][6]_i_1_n_0 ;
  wire \APU_Pulse2[timer][6]_i_2_n_0 ;
  wire \APU_Pulse2[timer][7]_i_1_n_0 ;
  wire \APU_Pulse2[timer][7]_i_2_n_0 ;
  wire \APU_Pulse2[timer][7]_i_3_n_0 ;
  wire \APU_Pulse2[timer][7]_i_4_n_0 ;
  wire \APU_Pulse2[timer][7]_i_5_n_0 ;
  wire \APU_Pulse2[timer][7]_i_6_n_0 ;
  wire \APU_Pulse2[timer][8]_i_1_n_0 ;
  wire \APU_Pulse2[timer][8]_i_2_n_0 ;
  wire \APU_Pulse2[timer][9]_i_1_n_0 ;
  wire \APU_Pulse2[timer][9]_i_2_n_0 ;
  wire \APU_Pulse2[volume] ;
  wire \APU_Pulse2[volume][0]_i_1_n_0 ;
  wire \APU_Pulse2[volume][1]_i_1_n_0 ;
  wire \APU_Pulse2[volume][2]_i_1_n_0 ;
  wire \APU_Pulse2[volume][3]_i_2_n_0 ;
  wire \APU_Pulse2[volume][3]_i_3_n_0 ;
  wire \APU_Pulse2[volume][3]_i_4_n_0 ;
  wire \APU_Pulse2[volume][3]_i_5_n_0 ;
  wire \APU_Pulse2[volume][3]_i_6_n_0 ;
  wire [4:0]APU_Pulse2_Message;
  wire \APU_Pulse2_Message[3]_INST_0_i_10_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_11_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_12_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_1_n_2 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_1_n_3 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_2_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_3_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_4_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_4_n_1 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_4_n_2 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_4_n_3 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_5_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_6_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_7_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_8_n_0 ;
  wire \APU_Pulse2_Message[3]_INST_0_i_9_n_0 ;
  wire \APU_Pulse2_reg[constant_volume]__0 ;
  wire \APU_Pulse2_reg[envelope_n_0_][0] ;
  wire \APU_Pulse2_reg[envelope_n_0_][1] ;
  wire \APU_Pulse2_reg[envelope_n_0_][2] ;
  wire \APU_Pulse2_reg[envelope_n_0_][3] ;
  wire [5:0]\APU_Pulse2_reg[length_counter] ;
  wire \APU_Pulse2_reg[length_counter_halt_n_0_] ;
  wire \APU_Pulse2_reg[sweep_enable]__0 ;
  wire \APU_Pulse2_reg[sweep_negate]__0 ;
  wire [2:0]\APU_Pulse2_reg[sweep_period] ;
  wire \APU_Pulse2_reg[sweep_shift_n_0_][0] ;
  wire \APU_Pulse2_reg[sweep_shift_n_0_][1] ;
  wire \APU_Pulse2_reg[sweep_shift_n_0_][2] ;
  wire \APU_Pulse2_reg[timer][10]_0 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_0 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_1 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_2 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_3 ;
  wire [7:0]\APU_Pulse2_reg[timer][7]_0 ;
  wire \APU_Pulse2_reg[timer][8]_0 ;
  wire \APU_Pulse2_reg[timer][9]_0 ;
  wire [3:0]\APU_Pulse2_reg[volume] ;
  wire APU_Quarter_CE;
  wire APU_Quarter_CE14_out;
  wire [14:1]APU_Quarter_CE2;
  wire APU_Quarter_CE2_carry__0_n_0;
  wire APU_Quarter_CE2_carry__0_n_1;
  wire APU_Quarter_CE2_carry__0_n_2;
  wire APU_Quarter_CE2_carry__0_n_3;
  wire APU_Quarter_CE2_carry__1_n_0;
  wire APU_Quarter_CE2_carry__1_n_1;
  wire APU_Quarter_CE2_carry__1_n_2;
  wire APU_Quarter_CE2_carry__1_n_3;
  wire APU_Quarter_CE2_carry__2_n_3;
  wire APU_Quarter_CE2_carry_n_0;
  wire APU_Quarter_CE2_carry_n_1;
  wire APU_Quarter_CE2_carry_n_2;
  wire APU_Quarter_CE2_carry_n_3;
  wire APU_Quarter_CE_i_2_n_0;
  wire APU_Quarter_CE_i_3_n_0;
  wire APU_Quarter_CE_i_4_n_0;
  wire APU_Quarter_CE_i_5_n_0;
  wire APU_Quarter_CE_i_6_n_0;
  wire APU_Quarter_CE_i_7_n_0;
  wire APU_Quarter_CE_i_8_n_0;
  wire \APU_Status[noise_active] ;
  wire \APU_Status[pulse1_active]_i_2_n_0 ;
  wire \APU_Status_reg[noise_active_n_0_] ;
  wire \APU_Status_reg[pulse1_active_n_0_] ;
  wire \APU_Status_reg[pulse2_active_n_0_] ;
  wire \APU_Status_reg[triangle_active_n_0_] ;
  wire APU_Tick_CE;
  wire \APU_Triangle[length_counter][0]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][1]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][2]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][2]_i_2_n_0 ;
  wire \APU_Triangle[length_counter][3]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][3]_i_2_n_0 ;
  wire \APU_Triangle[length_counter][4]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][4]_i_2_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_1_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_2_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_3_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_4_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_5_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_6_n_0 ;
  wire \APU_Triangle[length_counter][5]_i_7_n_0 ;
  wire \APU_Triangle[length_counter_halt] ;
  wire \APU_Triangle[linear_counter] ;
  wire \APU_Triangle[linear_counter][4]_i_2_n_0 ;
  wire \APU_Triangle[linear_counter][5]_i_2_n_0 ;
  wire \APU_Triangle[timer][10]_i_1_n_0 ;
  wire \APU_Triangle[timer][10]_i_2_n_0 ;
  wire \APU_Triangle[timer][7]_i_1_n_0 ;
  wire \APU_Triangle[timer][7]_i_2_n_0 ;
  wire \APU_Triangle[timer][8]_i_1_n_0 ;
  wire \APU_Triangle[timer][9]_i_1_n_0 ;
  wire [11:0]APU_Triangle_Message;
  wire \APU_Triangle_Message[3]_INST_0_i_1_n_0 ;
  wire \APU_Triangle_Message[3]_INST_0_i_2_n_0 ;
  wire [5:0]\APU_Triangle_reg[length_counter] ;
  wire \APU_Triangle_reg[length_counter_halt]__0 ;
  wire [6:0]\APU_Triangle_reg[linear_counter] ;
  wire [6:0]\APU_Triangle_reg[linear_counter_load] ;
  wire [14:0]CPU_Addr;
  wire [7:0]CPU_Data;
  wire CPU_M2;
  wire CPU_RW;
  wire CPU_RomSel;
  wire CPU_Rst;
  wire [10:0]Pulse1_Target01_out;
  wire [11:0]Pulse1_Target05_out;
  wire Pulse1_Target0_carry__0_i_1_n_0;
  wire Pulse1_Target0_carry__0_i_2_n_0;
  wire Pulse1_Target0_carry__0_i_3_n_0;
  wire Pulse1_Target0_carry__0_i_4_n_0;
  wire Pulse1_Target0_carry__0_n_0;
  wire Pulse1_Target0_carry__0_n_1;
  wire Pulse1_Target0_carry__0_n_2;
  wire Pulse1_Target0_carry__0_n_3;
  wire Pulse1_Target0_carry__1_i_1_n_0;
  wire Pulse1_Target0_carry__1_i_2_n_0;
  wire Pulse1_Target0_carry__1_i_3_n_0;
  wire Pulse1_Target0_carry__1_i_4_n_0;
  wire Pulse1_Target0_carry__1_n_2;
  wire Pulse1_Target0_carry__1_n_3;
  wire Pulse1_Target0_carry_i_1_n_0;
  wire Pulse1_Target0_carry_i_2_n_0;
  wire Pulse1_Target0_carry_i_3_n_0;
  wire Pulse1_Target0_carry_i_4_n_0;
  wire Pulse1_Target0_carry_i_5_n_0;
  wire Pulse1_Target0_carry_n_0;
  wire Pulse1_Target0_carry_n_1;
  wire Pulse1_Target0_carry_n_2;
  wire Pulse1_Target0_carry_n_3;
  wire Pulse1_Target1;
  wire Pulse1_Target1_carry__0_i_1_n_0;
  wire Pulse1_Target1_carry__0_i_2_n_0;
  wire Pulse1_Target1_carry__0_i_3_n_0;
  wire Pulse1_Target1_carry__0_i_4_n_0;
  wire Pulse1_Target1_carry__0_i_5_n_0;
  wire Pulse1_Target1_carry__0_i_6_n_0;
  wire Pulse1_Target1_carry__0_n_3;
  wire Pulse1_Target1_carry_i_10_n_0;
  wire Pulse1_Target1_carry_i_13_n_0;
  wire Pulse1_Target1_carry_i_19_n_0;
  wire Pulse1_Target1_carry_i_1_n_0;
  wire Pulse1_Target1_carry_i_20_n_0;
  wire Pulse1_Target1_carry_i_21_n_0;
  wire Pulse1_Target1_carry_i_22_n_0;
  wire Pulse1_Target1_carry_i_23_n_0;
  wire Pulse1_Target1_carry_i_24_n_0;
  wire Pulse1_Target1_carry_i_25_n_0;
  wire Pulse1_Target1_carry_i_26_n_0;
  wire Pulse1_Target1_carry_i_2_n_0;
  wire Pulse1_Target1_carry_i_3_n_0;
  wire Pulse1_Target1_carry_i_4_n_0;
  wire Pulse1_Target1_carry_i_5_n_0;
  wire Pulse1_Target1_carry_i_6_n_0;
  wire Pulse1_Target1_carry_i_7_n_0;
  wire Pulse1_Target1_carry_i_8_n_0;
  wire Pulse1_Target1_carry_n_0;
  wire Pulse1_Target1_carry_n_1;
  wire Pulse1_Target1_carry_n_2;
  wire Pulse1_Target1_carry_n_3;
  wire [10:0]Pulse2_Target00_out;
  wire [11:0]Pulse2_Target02_out;
  wire Pulse2_Target0_carry__0_i_1_n_0;
  wire Pulse2_Target0_carry__0_i_2_n_0;
  wire Pulse2_Target0_carry__0_i_3_n_0;
  wire Pulse2_Target0_carry__0_i_4_n_0;
  wire Pulse2_Target0_carry__0_n_0;
  wire Pulse2_Target0_carry__0_n_1;
  wire Pulse2_Target0_carry__0_n_2;
  wire Pulse2_Target0_carry__0_n_3;
  wire Pulse2_Target0_carry__1_i_1_n_0;
  wire Pulse2_Target0_carry__1_i_2_n_0;
  wire Pulse2_Target0_carry__1_i_3_n_0;
  wire Pulse2_Target0_carry__1_n_2;
  wire Pulse2_Target0_carry__1_n_3;
  wire Pulse2_Target0_carry_i_1_n_0;
  wire Pulse2_Target0_carry_i_2_n_0;
  wire Pulse2_Target0_carry_i_3_n_0;
  wire Pulse2_Target0_carry_i_4_n_0;
  wire Pulse2_Target0_carry_n_0;
  wire Pulse2_Target0_carry_n_1;
  wire Pulse2_Target0_carry_n_2;
  wire Pulse2_Target0_carry_n_3;
  wire Pulse2_Target1;
  wire Pulse2_Target1_carry__0_i_1_n_0;
  wire Pulse2_Target1_carry__0_i_2_n_0;
  wire Pulse2_Target1_carry__0_i_3_n_0;
  wire Pulse2_Target1_carry__0_n_3;
  wire Pulse2_Target1_carry_i_10_n_0;
  wire Pulse2_Target1_carry_i_11_n_0;
  wire Pulse2_Target1_carry_i_12_n_0;
  wire Pulse2_Target1_carry_i_13_n_0;
  wire Pulse2_Target1_carry_i_14_n_0;
  wire Pulse2_Target1_carry_i_15_n_0;
  wire Pulse2_Target1_carry_i_16_n_0;
  wire Pulse2_Target1_carry_i_17_n_0;
  wire Pulse2_Target1_carry_i_18_n_0;
  wire Pulse2_Target1_carry_i_19_n_0;
  wire Pulse2_Target1_carry_i_1_n_0;
  wire Pulse2_Target1_carry_i_2_n_0;
  wire Pulse2_Target1_carry_i_3_n_0;
  wire Pulse2_Target1_carry_i_4_n_0;
  wire Pulse2_Target1_carry_i_5_n_0;
  wire Pulse2_Target1_carry_i_6_n_0;
  wire Pulse2_Target1_carry_i_7_n_0;
  wire Pulse2_Target1_carry_i_8_n_0;
  wire Pulse2_Target1_carry_i_9_n_0;
  wire Pulse2_Target1_carry_n_0;
  wire Pulse2_Target1_carry_n_1;
  wire Pulse2_Target1_carry_n_2;
  wire Pulse2_Target1_carry_n_3;
  wire [7:0]Q;
  wire Reset;
  wire [3:0]noise_envelope_divider;
  wire [10:0]noise_shift_timer;
  wire [10:0]noise_shift_timer_1;
  wire [6:0]p_0_in;
  wire [9:0]p_0_in3_in;
  wire p_1_in;
  wire [7:0]p_2_in;
  wire [13:0]p_2_in_0;
  wire \procFrameCounter.counter[0]_i_2_n_0 ;
  wire \procFrameCounter.counter[0]_i_3_n_0 ;
  wire \procFrameCounter.counter[0]_i_4_n_0 ;
  wire \procFrameCounter.counter[0]_i_5_n_0 ;
  wire \procFrameCounter.counter[12]_i_2_n_0 ;
  wire \procFrameCounter.counter[12]_i_3_n_0 ;
  wire \procFrameCounter.counter[12]_i_4_n_0 ;
  wire \procFrameCounter.counter[4]_i_2_n_0 ;
  wire \procFrameCounter.counter[4]_i_3_n_0 ;
  wire \procFrameCounter.counter[4]_i_4_n_0 ;
  wire \procFrameCounter.counter[4]_i_5_n_0 ;
  wire \procFrameCounter.counter[8]_i_2_n_0 ;
  wire \procFrameCounter.counter[8]_i_3_n_0 ;
  wire \procFrameCounter.counter[8]_i_4_n_0 ;
  wire \procFrameCounter.counter[8]_i_5_n_0 ;
  wire [14:0]\procFrameCounter.counter_reg ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_0 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_1 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_2 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_3 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_4 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_5 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_6 ;
  wire \procFrameCounter.counter_reg[0]_i_1_n_7 ;
  wire \procFrameCounter.counter_reg[12]_i_1_n_2 ;
  wire \procFrameCounter.counter_reg[12]_i_1_n_3 ;
  wire \procFrameCounter.counter_reg[12]_i_1_n_5 ;
  wire \procFrameCounter.counter_reg[12]_i_1_n_6 ;
  wire \procFrameCounter.counter_reg[12]_i_1_n_7 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_0 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_1 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_2 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_3 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_4 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_5 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_6 ;
  wire \procFrameCounter.counter_reg[4]_i_1_n_7 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_0 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_1 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_2 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_3 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_4 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_5 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_6 ;
  wire \procFrameCounter.counter_reg[8]_i_1_n_7 ;
  wire \procMainLogic.noise_envelope_divider[0]_i_1_n_0 ;
  wire \procMainLogic.noise_envelope_divider[1]_i_1_n_0 ;
  wire \procMainLogic.noise_envelope_divider[2]_i_1_n_0 ;
  wire \procMainLogic.noise_envelope_divider[3]_i_1_n_0 ;
  wire \procMainLogic.noise_envelope_start_i_1_n_0 ;
  wire \procMainLogic.noise_envelope_start_reg_n_0 ;
  wire \procMainLogic.noise_shift_mode_i_1_n_0 ;
  wire \procMainLogic.noise_shift_mode_reg_n_0 ;
  wire \procMainLogic.noise_shift_timer[10]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[10]_i_3_n_0 ;
  wire \procMainLogic.noise_shift_timer[1]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[2]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[2]_i_3_n_0 ;
  wire \procMainLogic.noise_shift_timer[3]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[4]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[5]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[6]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[7]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[8]_i_2_n_0 ;
  wire \procMainLogic.noise_shift_timer[9]_i_2_n_0 ;
  wire \procMainLogic.pulse1_envelope_divider[0]_i_1_n_0 ;
  wire \procMainLogic.pulse1_envelope_divider[1]_i_1_n_0 ;
  wire \procMainLogic.pulse1_envelope_divider[2]_i_1_n_0 ;
  wire \procMainLogic.pulse1_envelope_divider[3]_i_1_n_0 ;
  wire \procMainLogic.pulse1_envelope_start_i_1_n_0 ;
  wire \procMainLogic.pulse1_envelope_start_reg_n_0 ;
  wire \procMainLogic.pulse1_sweep_divider[0]_i_1_n_0 ;
  wire \procMainLogic.pulse1_sweep_divider[1]_i_1_n_0 ;
  wire \procMainLogic.pulse1_sweep_divider[2]_i_1_n_0 ;
  wire \procMainLogic.pulse1_sweep_reload_i_1_n_0 ;
  wire \procMainLogic.pulse1_sweep_reload_reg_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[0]_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[1]_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[2]_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_start_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_start_reg_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_reload_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_reload_reg_n_0 ;
  wire \procMainLogic.triangle_linear_reload_i_1_n_0 ;
  wire \procMainLogic.triangle_linear_reload_i_2_n_0 ;
  wire \procMainLogic.triangle_linear_reload_i_3_n_0 ;
  wire \procMainLogic.triangle_linear_reload_reg_n_0 ;
  wire [3:0]pulse1_envelope_divider;
  wire [2:0]pulse1_sweep_divider;
  wire [3:0]pulse2_envelope_divider;
  wire [2:0]pulse2_sweep_divider;
  wire [2:2]\NLW_APU_Pulse1_Message[3]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_APU_Pulse1_Message[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_APU_Pulse2_Message[3]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_APU_Pulse2_Message[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_APU_Quarter_CE2_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_APU_Quarter_CE2_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_Pulse1_Target0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_Pulse1_Target0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Pulse1_Target1_carry_O_UNCONNECTED;
  wire [3:2]NLW_Pulse1_Target1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Pulse1_Target1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_Pulse2_Target0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_Pulse2_Target0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Pulse2_Target1_carry_O_UNCONNECTED;
  wire [3:2]NLW_Pulse2_Target1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Pulse2_Target1_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \APU_Counter[mode]_i_1 
       (.I0(CPU_Data[7]),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[2]),
        .I3(\APU_Triangle[length_counter][5]_i_5_n_0 ),
        .I4(\APU_Status[pulse1_active]_i_2_n_0 ),
        .I5(\APU_Counter_reg[mode]__0 ),
        .O(\APU_Counter[mode]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Counter_reg[mode] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Counter[mode]_i_1_n_0 ),
        .Q(\APU_Counter_reg[mode]__0 ));
  LUT6 #(
    .INIT(64'h0000000011F10000)) 
    APU_Half_CE_i_1
       (.I0(APU_Half_CE_i_2_n_0),
        .I1(APU_Half_CE_i_3_n_0),
        .I2(APU_Half_CE_i_4_n_0),
        .I3(APU_Half_CE_i_5_n_0),
        .I4(APU_Tick_CE),
        .I5(APU_Half_CE_i_6_n_0),
        .O(APU_Half_CE20_out));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    APU_Half_CE_i_10
       (.I0(\procFrameCounter.counter_reg [0]),
        .I1(\procFrameCounter.counter_reg [1]),
        .I2(\procFrameCounter.counter_reg [5]),
        .I3(APU_Half_CE_i_13_n_0),
        .I4(\procFrameCounter.counter_reg [13]),
        .I5(\procFrameCounter.counter_reg [11]),
        .O(APU_Half_CE_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    APU_Half_CE_i_11
       (.I0(\procFrameCounter.counter_reg [8]),
        .I1(\procFrameCounter.counter_reg [4]),
        .I2(\procFrameCounter.counter_reg [12]),
        .I3(\procFrameCounter.counter_reg [7]),
        .I4(\procFrameCounter.counter_reg [9]),
        .O(APU_Half_CE_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    APU_Half_CE_i_12
       (.I0(\procFrameCounter.counter_reg [9]),
        .I1(\procFrameCounter.counter_reg [12]),
        .O(APU_Half_CE_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    APU_Half_CE_i_13
       (.I0(\procFrameCounter.counter_reg [2]),
        .I1(\procFrameCounter.counter_reg [3]),
        .O(APU_Half_CE_i_13_n_0));
  LUT4 #(
    .INIT(16'hE0EE)) 
    APU_Half_CE_i_2
       (.I0(APU_Half_CE_i_7_n_0),
        .I1(APU_Half_CE_i_8_n_0),
        .I2(APU_Half_CE_i_9_n_0),
        .I3(APU_Half_CE_i_10_n_0),
        .O(APU_Half_CE_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    APU_Half_CE_i_3
       (.I0(\procFrameCounter.counter_reg [8]),
        .I1(\procFrameCounter.counter_reg [4]),
        .I2(\procFrameCounter.counter_reg [10]),
        .I3(\procFrameCounter.counter_reg [6]),
        .O(APU_Half_CE_i_3_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    APU_Half_CE_i_4
       (.I0(APU_Half_CE_i_10_n_0),
        .I1(\procFrameCounter.counter_reg [10]),
        .I2(\procFrameCounter.counter_reg [6]),
        .I3(\procFrameCounter.counter_reg [14]),
        .O(APU_Half_CE_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    APU_Half_CE_i_5
       (.I0(\procFrameCounter.counter_reg [9]),
        .I1(\procFrameCounter.counter_reg [8]),
        .I2(\procFrameCounter.counter_reg [7]),
        .I3(\procFrameCounter.counter_reg [12]),
        .I4(\procFrameCounter.counter_reg [4]),
        .O(APU_Half_CE_i_5_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    APU_Half_CE_i_6
       (.I0(\procFrameCounter.counter_reg [14]),
        .I1(\procFrameCounter.counter_reg [6]),
        .I2(\procFrameCounter.counter_reg [10]),
        .I3(APU_Half_CE_i_10_n_0),
        .I4(APU_Half_CE_i_11_n_0),
        .O(APU_Half_CE_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    APU_Half_CE_i_7
       (.I0(\procFrameCounter.counter_reg [5]),
        .I1(\procFrameCounter.counter_reg [14]),
        .I2(APU_Half_CE_i_12_n_0),
        .I3(\procFrameCounter.counter_reg [7]),
        .I4(\procFrameCounter.counter_reg [1]),
        .I5(\APU_Counter_reg[mode]__0 ),
        .O(APU_Half_CE_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    APU_Half_CE_i_8
       (.I0(\procFrameCounter.counter_reg [3]),
        .I1(\procFrameCounter.counter_reg [2]),
        .I2(\procFrameCounter.counter_reg [11]),
        .I3(\procFrameCounter.counter_reg [13]),
        .I4(\procFrameCounter.counter_reg [0]),
        .O(APU_Half_CE_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    APU_Half_CE_i_9
       (.I0(\procFrameCounter.counter_reg [7]),
        .I1(\procFrameCounter.counter_reg [12]),
        .I2(\APU_Counter_reg[mode]__0 ),
        .I3(\procFrameCounter.counter_reg [9]),
        .I4(\procFrameCounter.counter_reg [14]),
        .O(APU_Half_CE_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    APU_Half_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(APU_Half_CE20_out),
        .Q(APU_Half_CE_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h77744474)) 
    \APU_Noise[length_counter][0]_i_1 
       (.I0(\APU_Noise_reg[length_counter] [0]),
        .I1(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I2(\APU_Status_reg[noise_active_n_0_] ),
        .I3(CPU_Addr[4]),
        .I4(CPU_Data[3]),
        .O(\APU_Noise[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h909090909F9F9F90)) 
    \APU_Noise[length_counter][1]_i_1 
       (.I0(\APU_Noise_reg[length_counter] [0]),
        .I1(\APU_Noise_reg[length_counter] [1]),
        .I2(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Noise[length_counter][5]_i_6_n_0 ),
        .I4(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .I5(\APU_Noise[length_counter][5]_i_5_n_0 ),
        .O(\APU_Noise[length_counter][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h606060606F6F6F60)) 
    \APU_Noise[length_counter][2]_i_1 
       (.I0(\APU_Noise_reg[length_counter] [2]),
        .I1(\APU_Noise[length_counter][2]_i_2_n_0 ),
        .I2(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Noise[length_counter][5]_i_6_n_0 ),
        .I4(\APU_Pulse1[length_counter][2]_i_3_n_0 ),
        .I5(\APU_Noise[length_counter][5]_i_5_n_0 ),
        .O(\APU_Noise[length_counter][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Noise[length_counter][2]_i_2 
       (.I0(\APU_Noise_reg[length_counter] [0]),
        .I1(\APU_Noise_reg[length_counter] [1]),
        .O(\APU_Noise[length_counter][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h606060606F6F6F60)) 
    \APU_Noise[length_counter][3]_i_1 
       (.I0(\APU_Noise_reg[length_counter] [3]),
        .I1(\APU_Noise[length_counter][3]_i_2_n_0 ),
        .I2(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Noise[length_counter][5]_i_6_n_0 ),
        .I4(\APU_Pulse1[length_counter][3]_i_3_n_0 ),
        .I5(\APU_Noise[length_counter][5]_i_5_n_0 ),
        .O(\APU_Noise[length_counter][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Noise[length_counter][3]_i_2 
       (.I0(\APU_Noise_reg[length_counter] [1]),
        .I1(\APU_Noise_reg[length_counter] [0]),
        .I2(\APU_Noise_reg[length_counter] [2]),
        .O(\APU_Noise[length_counter][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BB888B888B888)) 
    \APU_Noise[length_counter][4]_i_1 
       (.I0(\APU_Noise[length_counter][4]_i_2_n_0 ),
        .I1(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I2(CPU_Addr[4]),
        .I3(CPU_Data[3]),
        .I4(\APU_Pulse2[length_counter][4]_i_3_n_0 ),
        .I5(\APU_Status_reg[noise_active_n_0_] ),
        .O(\APU_Noise[length_counter][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \APU_Noise[length_counter][4]_i_2 
       (.I0(\APU_Noise_reg[length_counter] [4]),
        .I1(\APU_Noise_reg[length_counter] [3]),
        .I2(\APU_Noise_reg[length_counter] [1]),
        .I3(\APU_Noise_reg[length_counter] [0]),
        .I4(\APU_Noise_reg[length_counter] [2]),
        .O(\APU_Noise[length_counter][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEBAAAAAAAAA)) 
    \APU_Noise[length_counter][5]_i_1 
       (.I0(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Noise[length_counter][5]_i_4_n_0 ),
        .I5(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .O(\APU_Noise[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0054FF54FF540054)) 
    \APU_Noise[length_counter][5]_i_2 
       (.I0(\APU_Noise[length_counter][5]_i_5_n_0 ),
        .I1(\APU_Noise[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Noise[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Noise[length_counter][5]_i_7_n_0 ),
        .I5(\APU_Noise_reg[length_counter] [5]),
        .O(\APU_Noise[length_counter][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \APU_Noise[length_counter][5]_i_3 
       (.I0(APU_Noise_Message[0]),
        .I1(APU_Half_CE_reg_n_0),
        .I2(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .O(\APU_Noise[length_counter][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFF7FFF7FF)) 
    \APU_Noise[length_counter][5]_i_4 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_RW),
        .I3(CPU_RomSel),
        .I4(CPU_Addr[4]),
        .I5(CPU_Data[3]),
        .O(\APU_Noise[length_counter][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \APU_Noise[length_counter][5]_i_5 
       (.I0(CPU_Data[3]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status_reg[noise_active_n_0_] ),
        .O(\APU_Noise[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Noise[length_counter][5]_i_6 
       (.I0(CPU_Data[3]),
        .I1(CPU_Addr[4]),
        .O(\APU_Noise[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Noise[length_counter][5]_i_7 
       (.I0(\APU_Noise_reg[length_counter] [3]),
        .I1(\APU_Noise_reg[length_counter] [1]),
        .I2(\APU_Noise_reg[length_counter] [0]),
        .I3(\APU_Noise_reg[length_counter] [2]),
        .I4(\APU_Noise_reg[length_counter] [4]),
        .O(\APU_Noise[length_counter][5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \APU_Noise[length_counter_halt]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[4]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[0]),
        .I4(\APU_Triangle[timer][10]_i_2_n_0 ),
        .O(\APU_Noise[length_counter_halt] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Noise[noise_mode]_i_1 
       (.I0(CPU_Data[7]),
        .I1(\APU_Noise[noise_period] ),
        .I2(APU_Noise_Message[1]),
        .O(\APU_Noise[noise_mode]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \APU_Noise[noise_period][3]_i_1 
       (.I0(\APU_Noise[noise_period][3]_i_2_n_0 ),
        .I1(CPU_RomSel),
        .I2(CPU_RW),
        .I3(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I4(CPU_Addr[0]),
        .O(\APU_Noise[noise_period] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \APU_Noise[noise_period][3]_i_2 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[3]),
        .I3(CPU_Addr[4]),
        .O(\APU_Noise[noise_period][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFAE)) 
    \APU_Noise[volume][0]_i_1 
       (.I0(\APU_Noise[volume][3]_i_5_n_0 ),
        .I1(\APU_Noise_reg[volume] [2]),
        .I2(\APU_Noise_reg[volume] [0]),
        .I3(\APU_Noise_reg[volume] [1]),
        .I4(\APU_Noise_reg[volume] [3]),
        .I5(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .O(\APU_Noise[volume][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCCCFFFFCCCCFE)) 
    \APU_Noise[volume][1]_i_1 
       (.I0(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Noise[volume][3]_i_5_n_0 ),
        .I2(\APU_Noise_reg[volume] [2]),
        .I3(\APU_Noise_reg[volume] [0]),
        .I4(\APU_Noise_reg[volume] [1]),
        .I5(\APU_Noise_reg[volume] [3]),
        .O(\APU_Noise[volume][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEEEBEEEBEEEA)) 
    \APU_Noise[volume][2]_i_1 
       (.I0(\APU_Noise[volume][3]_i_5_n_0 ),
        .I1(\APU_Noise_reg[volume] [2]),
        .I2(\APU_Noise_reg[volume] [0]),
        .I3(\APU_Noise_reg[volume] [1]),
        .I4(\APU_Noise_reg[volume] [3]),
        .I5(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .O(\APU_Noise[volume][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88808888)) 
    \APU_Noise[volume][3]_i_1 
       (.I0(APU_Quarter_CE),
        .I1(\APU_Noise[volume][3]_i_3_n_0 ),
        .I2(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .I3(\APU_Noise_reg[volume] [3]),
        .I4(\APU_Noise[volume][3]_i_4_n_0 ),
        .I5(\APU_Noise[volume][3]_i_5_n_0 ),
        .O(\APU_Noise[volume] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC2)) 
    \APU_Noise[volume][3]_i_2 
       (.I0(\APU_Noise_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Noise_reg[volume] [3]),
        .I2(\APU_Noise_reg[volume] [1]),
        .I3(\APU_Noise_reg[volume] [0]),
        .I4(\APU_Noise_reg[volume] [2]),
        .I5(\APU_Noise[volume][3]_i_5_n_0 ),
        .O(\APU_Noise[volume][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Noise[volume][3]_i_3 
       (.I0(noise_envelope_divider[2]),
        .I1(noise_envelope_divider[1]),
        .I2(noise_envelope_divider[0]),
        .I3(noise_envelope_divider[3]),
        .O(\APU_Noise[volume][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Noise[volume][3]_i_4 
       (.I0(\APU_Noise_reg[volume] [1]),
        .I1(\APU_Noise_reg[volume] [0]),
        .I2(\APU_Noise_reg[volume] [2]),
        .O(\APU_Noise[volume][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \APU_Noise[volume][3]_i_5 
       (.I0(\procMainLogic.noise_envelope_start_reg_n_0 ),
        .I1(\APU_Noise[noise_period][3]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I4(CPU_RW),
        .I5(CPU_RomSel),
        .O(\APU_Noise[volume][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Noise_Message[10]_INST_0 
       (.I0(\APU_Noise_reg[envelope_n_0_][1] ),
        .I1(\APU_Noise_reg[constant_volume]__0 ),
        .I2(\APU_Noise_reg[volume] [1]),
        .O(APU_Noise_Message[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Noise_Message[11]_INST_0 
       (.I0(\APU_Noise_reg[envelope_n_0_][2] ),
        .I1(\APU_Noise_reg[constant_volume]__0 ),
        .I2(\APU_Noise_reg[volume] [2]),
        .O(APU_Noise_Message[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Noise_Message[12]_INST_0 
       (.I0(\APU_Noise_reg[envelope_n_0_][3] ),
        .I1(\APU_Noise_reg[constant_volume]__0 ),
        .I2(\APU_Noise_reg[volume] [3]),
        .O(APU_Noise_Message[9]));
  LUT5 #(
    .INIT(32'hAAAAEEEA)) 
    \APU_Noise_Message[13]_INST_0 
       (.I0(\APU_Noise_Message[13]_INST_0_i_1_n_0 ),
        .I1(\APU_Noise_Message[13]_INST_0_i_2_n_0 ),
        .I2(\APU_Noise_Message[13]_INST_0_i_3_n_0 ),
        .I3(\APU_Noise_Message[13]_INST_0_i_4_n_0 ),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [0]),
        .O(APU_Noise_Message[10]));
  LUT6 #(
    .INIT(64'h0000008080000000)) 
    \APU_Noise_Message[13]_INST_0_i_1 
       (.I0(\APU_Noise_Message[13]_INST_0_i_5_n_0 ),
        .I1(\APU_Noise_Message[13]_INST_0_i_6_n_0 ),
        .I2(\APU_Noise_Message[13]_INST_0_i_7_n_0 ),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [1]),
        .I4(\APU_Noise_Message[13]_INST_0_i_8_n_0 ),
        .I5(\APU_Noise_Message[13]_INST_0_i_9_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0AA0C00C)) 
    \APU_Noise_Message[13]_INST_0_i_10 
       (.I0(\APU_Noise_Message[13]_INST_0_i_17_n_0 ),
        .I1(\APU_Noise_Message[13]_INST_0_i_18_n_0 ),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [14]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .O(\APU_Noise_Message[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0990000000000000)) 
    \APU_Noise_Message[13]_INST_0_i_11 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [13]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [14]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I5(\APU_Noise_Message[13]_INST_0_i_19_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4100004000000000)) 
    \APU_Noise_Message[13]_INST_0_i_12 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [14]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [13]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .I5(\APU_Noise_Message[13]_INST_0_i_20_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0081810042000042)) 
    \APU_Noise_Message[13]_INST_0_i_13 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [4]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [5]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I5(\APU_Noise_reg[shift_reg_at_switch] [1]),
        .O(\APU_Noise_Message[13]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6009)) 
    \APU_Noise_Message[13]_INST_0_i_14 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [2]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .O(\APU_Noise_Message[13]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \APU_Noise_Message[13]_INST_0_i_15 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [4]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [5]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .O(\APU_Noise_Message[13]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0100008080000008)) 
    \APU_Noise_Message[13]_INST_0_i_16 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [4]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [5]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [2]),
        .I5(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .O(\APU_Noise_Message[13]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h18000024)) 
    \APU_Noise_Message[13]_INST_0_i_17 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .O(\APU_Noise_Message[13]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h81000042)) 
    \APU_Noise_Message[13]_INST_0_i_18 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .O(\APU_Noise_Message[13]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h24000018)) 
    \APU_Noise_Message[13]_INST_0_i_19 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .O(\APU_Noise_Message[13]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h28FF28FF28FF2800)) 
    \APU_Noise_Message[13]_INST_0_i_2 
       (.I0(\APU_Noise_Message[13]_INST_0_i_10_n_0 ),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [13]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I4(\APU_Noise_Message[13]_INST_0_i_11_n_0 ),
        .I5(\APU_Noise_Message[13]_INST_0_i_12_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h42000088)) 
    \APU_Noise_Message[13]_INST_0_i_20 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .O(\APU_Noise_Message[13]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0082280000000000)) 
    \APU_Noise_Message[13]_INST_0_i_3 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [3]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [2]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I5(\APU_Noise_Message[13]_INST_0_i_13_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008800000000F0)) 
    \APU_Noise_Message[13]_INST_0_i_4 
       (.I0(\APU_Noise_Message[13]_INST_0_i_14_n_0 ),
        .I1(\APU_Noise_Message[13]_INST_0_i_15_n_0 ),
        .I2(\APU_Noise_Message[13]_INST_0_i_16_n_0 ),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [1]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [3]),
        .I5(\APU_Noise_Message[13]_INST_0_i_8_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0820100401408002)) 
    \APU_Noise_Message[13]_INST_0_i_5 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [12]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [9]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [2]),
        .I5(\APU_Noise_Message[13]_INST_0_i_8_n_0 ),
        .O(\APU_Noise_Message[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2800002800282800)) 
    \APU_Noise_Message[13]_INST_0_i_6 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [0]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [5]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [7]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [2]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [3]),
        .I5(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .O(\APU_Noise_Message[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0600006000066000)) 
    \APU_Noise_Message[13]_INST_0_i_7 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [10]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [14]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [11]),
        .I3(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I4(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .I5(\APU_Noise_reg[shift_reg_at_switch] [13]),
        .O(\APU_Noise_Message[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Noise_Message[13]_INST_0_i_8 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [6]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [8]),
        .O(\APU_Noise_Message[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \APU_Noise_Message[13]_INST_0_i_9 
       (.I0(\APU_Noise_reg[shift_reg_at_switch] [5]),
        .I1(\APU_Noise_reg[shift_reg_at_switch] [4]),
        .I2(\APU_Noise_reg[shift_reg_at_switch] [3]),
        .O(\APU_Noise_Message[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \APU_Noise_Message[3]_INST_0 
       (.I0(\APU_Noise_reg[length_counter] [5]),
        .I1(\APU_Noise_reg[length_counter] [4]),
        .I2(\APU_Noise_reg[length_counter] [2]),
        .I3(\APU_Noise_reg[length_counter] [0]),
        .I4(\APU_Noise_reg[length_counter] [1]),
        .I5(\APU_Noise_reg[length_counter] [3]),
        .O(APU_Noise_Message[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Noise_Message[9]_INST_0 
       (.I0(\APU_Noise_reg[envelope_n_0_][0] ),
        .I1(\APU_Noise_reg[constant_volume]__0 ),
        .I2(\APU_Noise_reg[volume] [0]),
        .O(APU_Noise_Message[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Noise_reg[constant_volume]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[envelope][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Noise_reg[envelope_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[envelope][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Noise_reg[envelope_n_0_][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[envelope][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Noise_reg[envelope_n_0_][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[envelope][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Noise_reg[envelope_n_0_][3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][0]_i_1_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][1]_i_1_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][2]_i_1_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][3]_i_1_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][4]_i_1_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[length_counter][5]_i_2_n_0 ),
        .Q(\APU_Noise_reg[length_counter] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Noise_reg[length_counter_halt_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_mode] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[noise_mode]_i_1_n_0 ),
        .Q(APU_Noise_Message[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[noise_period] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Noise_Message[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[noise_period] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Noise_Message[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[noise_period] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Noise_Message[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[noise_period] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Message[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Noise_reg[shift][14]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I1(APU_Tick_CE),
        .O(\APU_Noise_reg[shift][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55566656AAA666A6)) 
    \APU_Noise_reg[shift][14]_i_2 
       (.I0(\APU_Noise_reg[shift_reg_n_0_][0] ),
        .I1(p_2_in_0[0]),
        .I2(\procMainLogic.noise_shift_mode_reg_n_0 ),
        .I3(\APU_Noise[noise_period] ),
        .I4(CPU_Data[7]),
        .I5(p_2_in_0[5]),
        .O(\APU_Noise_reg[shift][14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000880)) 
    \APU_Noise_reg[shift_at_switch][14]_i_1 
       (.I0(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I1(CPU_Addr[3]),
        .I2(APU_Noise_Message[1]),
        .I3(CPU_Data[7]),
        .I4(\APU_Pulse2[timer][7]_i_3_n_0 ),
        .O(\APU_Noise[shift_reg_at_switch] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .D(p_2_in_0[0]),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Noise_reg[shift_reg_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][10] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[10]),
        .Q(p_2_in_0[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][11] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[11]),
        .Q(p_2_in_0[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][12] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[12]),
        .Q(p_2_in_0[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][13] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[13]),
        .Q(p_2_in_0[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][14] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise_reg[shift][14]_i_2_n_0 ),
        .Q(p_2_in_0[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[1]),
        .Q(p_2_in_0[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[2]),
        .Q(p_2_in_0[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[3]),
        .Q(p_2_in_0[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][4] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[4]),
        .Q(p_2_in_0[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][5] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[5]),
        .Q(p_2_in_0[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][6] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[6]),
        .Q(p_2_in_0[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][7] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[7]),
        .Q(p_2_in_0[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][8] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[8]),
        .Q(p_2_in_0[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg][9] 
       (.C(CPU_M2),
        .CE(\APU_Noise_reg[shift][14]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[9]),
        .Q(p_2_in_0[8]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .D(\APU_Noise_reg[shift_reg_n_0_][0] ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][10] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[9]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][11] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[10]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][12] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[11]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][13] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[12]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][14] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[13]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[0]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[1]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[2]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][4] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[3]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][5] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[4]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][6] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[5]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][7] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[6]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][8] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[7]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[shift_reg_at_switch][9] 
       (.C(CPU_M2),
        .CE(\APU_Noise[shift_reg_at_switch] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in_0[8]),
        .Q(\APU_Noise_reg[shift_reg_at_switch] [9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[volume] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[volume][0]_i_1_n_0 ),
        .Q(\APU_Noise_reg[volume] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[volume] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[volume][1]_i_1_n_0 ),
        .Q(\APU_Noise_reg[volume] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[volume] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[volume][2]_i_1_n_0 ),
        .Q(\APU_Noise_reg[volume] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[volume] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Noise[volume][3]_i_2_n_0 ),
        .Q(\APU_Noise_reg[volume] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \APU_Pulse1[length_counter][0]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter] [0]),
        .I1(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I2(CPU_Data[0]),
        .I3(CPU_Addr[4]),
        .I4(\APU_Status_reg[pulse1_active_n_0_] ),
        .O(\APU_Pulse1[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F909F909090)) 
    \APU_Pulse1[length_counter][1]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter] [0]),
        .I1(\APU_Pulse1_reg[length_counter] [1]),
        .I2(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .O(\APU_Pulse1[length_counter][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF404F011)) 
    \APU_Pulse1[length_counter][1]_i_2 
       (.I0(CPU_Data[7]),
        .I1(CPU_Data[5]),
        .I2(CPU_Data[3]),
        .I3(CPU_Data[4]),
        .I4(CPU_Data[6]),
        .O(\APU_Pulse1[length_counter][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F606F606060)) 
    \APU_Pulse1[length_counter][2]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter] [2]),
        .I1(\APU_Pulse1[length_counter][2]_i_2_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse1[length_counter][2]_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse1[length_counter][2]_i_2 
       (.I0(\APU_Pulse1_reg[length_counter] [0]),
        .I1(\APU_Pulse1_reg[length_counter] [1]),
        .O(\APU_Pulse1[length_counter][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCC11CD42)) 
    \APU_Pulse1[length_counter][2]_i_3 
       (.I0(CPU_Data[7]),
        .I1(CPU_Data[5]),
        .I2(CPU_Data[6]),
        .I3(CPU_Data[3]),
        .I4(CPU_Data[4]),
        .O(\APU_Pulse1[length_counter][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F606F606060)) 
    \APU_Pulse1[length_counter][3]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter] [3]),
        .I1(\APU_Pulse1[length_counter][3]_i_2_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse1[length_counter][3]_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse1[length_counter][3]_i_2 
       (.I0(\APU_Pulse1_reg[length_counter] [1]),
        .I1(\APU_Pulse1_reg[length_counter] [0]),
        .I2(\APU_Pulse1_reg[length_counter] [2]),
        .O(\APU_Pulse1[length_counter][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF702F417)) 
    \APU_Pulse1[length_counter][3]_i_3 
       (.I0(CPU_Data[7]),
        .I1(CPU_Data[5]),
        .I2(CPU_Data[3]),
        .I3(CPU_Data[6]),
        .I4(CPU_Data[4]),
        .O(\APU_Pulse1[length_counter][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00444000BBFFFFBB)) 
    \APU_Pulse1[length_counter][4]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I1(APU_Half_CE_reg_n_0),
        .I2(\APU_Pulse1_reg[length_counter] [5]),
        .I3(\APU_Pulse1[length_counter][4]_i_2_n_0 ),
        .I4(\APU_Pulse1_reg[length_counter] [4]),
        .I5(\APU_Pulse1[length_counter][4]_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[length_counter][4]_i_2 
       (.I0(\APU_Pulse1_reg[length_counter] [2]),
        .I1(\APU_Pulse1_reg[length_counter] [0]),
        .I2(\APU_Pulse1_reg[length_counter] [1]),
        .I3(\APU_Pulse1_reg[length_counter] [3]),
        .O(\APU_Pulse1[length_counter][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h07F7)) 
    \APU_Pulse1[length_counter][4]_i_3 
       (.I0(\APU_Pulse2[length_counter][4]_i_3_n_0 ),
        .I1(\APU_Status_reg[pulse1_active_n_0_] ),
        .I2(CPU_Addr[4]),
        .I3(CPU_Data[0]),
        .O(\APU_Pulse1[length_counter][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFBFBFAA)) 
    \APU_Pulse1[length_counter][5]_i_1 
       (.I0(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I1(CPU_Data[0]),
        .I2(CPU_Addr[4]),
        .I3(\APU_Status[noise_active] ),
        .I4(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CAA0CAA0CAA0C08)) 
    \APU_Pulse1[length_counter][5]_i_2 
       (.I0(\APU_Pulse1[length_counter][5]_i_4_n_0 ),
        .I1(\APU_Pulse1_reg[length_counter] [5]),
        .I2(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \APU_Pulse1[length_counter][5]_i_3 
       (.I0(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I1(APU_Half_CE_reg_n_0),
        .I2(\APU_Pulse1_Message[3]_INST_0_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[length_counter][5]_i_4 
       (.I0(CPU_Data[0]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status_reg[pulse1_active_n_0_] ),
        .O(\APU_Pulse1[length_counter][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \APU_Pulse1[length_counter][5]_i_5 
       (.I0(\APU_Pulse1[length_counter][5]_i_8_n_0 ),
        .I1(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I2(APU_Half_CE_reg_n_0),
        .O(\APU_Pulse1[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse1[length_counter][5]_i_6 
       (.I0(CPU_Data[0]),
        .I1(CPU_Addr[4]),
        .O(\APU_Pulse1[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0091018C)) 
    \APU_Pulse1[length_counter][5]_i_7 
       (.I0(CPU_Data[7]),
        .I1(CPU_Data[5]),
        .I2(CPU_Data[4]),
        .I3(CPU_Data[3]),
        .I4(CPU_Data[6]),
        .O(\APU_Pulse1[length_counter][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse1[length_counter][5]_i_8 
       (.I0(\APU_Pulse1_reg[length_counter] [3]),
        .I1(\APU_Pulse1_reg[length_counter] [1]),
        .I2(\APU_Pulse1_reg[length_counter] [0]),
        .I3(\APU_Pulse1_reg[length_counter] [2]),
        .I4(\APU_Pulse1_reg[length_counter] [4]),
        .O(\APU_Pulse1[length_counter][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \APU_Pulse1[length_counter_halt]_i_1 
       (.I0(\APU_Pulse1[length_counter_halt]_i_2_n_0 ),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[0]),
        .I4(CPU_Addr[2]),
        .I5(\APU_Triangle[timer][7]_i_2_n_0 ),
        .O(\APU_Pulse1[length_counter_halt] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \APU_Pulse1[length_counter_halt]_i_2 
       (.I0(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I1(CPU_Addr[3]),
        .O(\APU_Pulse1[length_counter_halt]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \APU_Pulse1[sweep_shift][2]_i_1 
       (.I0(\APU_Triangle[timer][7]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[sweep_shift][2]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[1]),
        .O(\APU_Pulse1[sweep_enable] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse1[sweep_shift][2]_i_2 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[3]),
        .O(\APU_Pulse1[sweep_shift][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][0]_i_1 
       (.I0(\APU_Pulse1[timer][0]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][0]_i_2 
       (.I0(Pulse1_Target05_out[0]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[0]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \APU_Pulse1[timer][10]_i_1 
       (.I0(\APU_Pulse1[timer][10]_i_3_n_0 ),
        .I1(CPU_Data[2]),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I4(APU_Pulse1_Message[2]),
        .O(\APU_Pulse1[timer][10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \APU_Pulse1[timer][10]_i_2 
       (.I0(Reset),
        .I1(CPU_Rst),
        .O(\APU_Pulse1[timer][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][10]_i_3 
       (.I0(Pulse1_Target05_out[10]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[10]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \APU_Pulse1[timer][10]_i_4 
       (.I0(\APU_Triangle[timer][7]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I4(CPU_Addr[2]),
        .I5(CPU_Addr[3]),
        .O(\APU_Pulse1[timer][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055551555)) 
    \APU_Pulse1[timer][10]_i_5 
       (.I0(\APU_Pulse1_Message[3]_INST_0_i_2_n_0 ),
        .I1(Reset),
        .I2(CPU_Rst),
        .I3(Pulse1_Target05_out[11]),
        .I4(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I5(\APU_Pulse1[timer][10]_i_6_n_0 ),
        .O(\APU_Pulse1[timer][10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7777777FFFFFFFFF)) 
    \APU_Pulse1[timer][10]_i_6 
       (.I0(APU_Half_CE_reg_n_0),
        .I1(\APU_Pulse1_reg[sweep_enable]__0 ),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(\APU_Pulse1[timer][10]_i_7_n_0 ),
        .O(\APU_Pulse1[timer][10]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse1[timer][10]_i_7 
       (.I0(pulse1_sweep_divider[2]),
        .I1(pulse1_sweep_divider[0]),
        .I2(pulse1_sweep_divider[1]),
        .O(\APU_Pulse1[timer][10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][1]_i_1 
       (.I0(\APU_Pulse1[timer][1]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][1]_i_2 
       (.I0(Pulse1_Target05_out[1]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[1]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][2]_i_1 
       (.I0(\APU_Pulse1[timer][2]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][2]_i_2 
       (.I0(Pulse1_Target05_out[2]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[2]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][3]_i_1 
       (.I0(\APU_Pulse1[timer][3]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][3]_i_2 
       (.I0(Pulse1_Target05_out[3]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[3]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_4 
       (.I0(Q[3]),
        .I1(p_0_in3_in[3]),
        .O(\APU_Pulse1[timer][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_5 
       (.I0(Q[2]),
        .I1(p_0_in3_in[2]),
        .O(\APU_Pulse1[timer][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_6 
       (.I0(Q[1]),
        .I1(p_0_in3_in[1]),
        .O(\APU_Pulse1[timer][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_7 
       (.I0(Q[0]),
        .I1(p_0_in3_in[0]),
        .O(\APU_Pulse1[timer][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][4]_i_1 
       (.I0(\APU_Pulse1[timer][4]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][4]_i_2 
       (.I0(Pulse1_Target05_out[4]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[4]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][5]_i_1 
       (.I0(\APU_Pulse1[timer][5]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][5]_i_2 
       (.I0(Pulse1_Target05_out[5]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[5]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][6]_i_1 
       (.I0(\APU_Pulse1[timer][6]_i_2_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][6]_i_2 
       (.I0(Pulse1_Target05_out[6]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[6]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \APU_Pulse1[timer][7]_i_1 
       (.I0(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(\APU_Pulse1[timer][7]_i_3_n_0 ),
        .I3(CPU_Addr[3]),
        .I4(CPU_Addr[2]),
        .I5(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .O(\APU_Pulse1[timer][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer][7]_i_2 
       (.I0(\APU_Pulse1[timer][7]_i_5_n_0 ),
        .I1(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \APU_Pulse1[timer][7]_i_3 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .O(\APU_Pulse1[timer][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \APU_Pulse1[timer][7]_i_4 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[4]),
        .O(\APU_Pulse1[timer][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][7]_i_5 
       (.I0(Pulse1_Target05_out[7]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[7]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \APU_Pulse1[timer][8]_i_1 
       (.I0(\APU_Pulse1[timer][8]_i_2_n_0 ),
        .I1(CPU_Data[0]),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .O(\APU_Pulse1[timer][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][8]_i_2 
       (.I0(Pulse1_Target05_out[8]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[8]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \APU_Pulse1[timer][9]_i_1 
       (.I0(\APU_Pulse1[timer][9]_i_2_n_0 ),
        .I1(CPU_Data[1]),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I4(APU_Pulse1_Message[1]),
        .O(\APU_Pulse1[timer][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse1[timer][9]_i_2 
       (.I0(Pulse1_Target05_out[9]),
        .I1(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I2(Pulse1_Target1),
        .I3(Pulse1_Target01_out[9]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse1[timer][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFAE)) 
    \APU_Pulse1[volume][0]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse1_reg[volume] [2]),
        .I2(\APU_Pulse1_reg[volume] [0]),
        .I3(\APU_Pulse1_reg[volume] [1]),
        .I4(\APU_Pulse1_reg[volume] [3]),
        .I5(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .O(\APU_Pulse1[volume][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCCCFFFFCCCCFE)) 
    \APU_Pulse1[volume][1]_i_1 
       (.I0(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I2(\APU_Pulse1_reg[volume] [2]),
        .I3(\APU_Pulse1_reg[volume] [0]),
        .I4(\APU_Pulse1_reg[volume] [1]),
        .I5(\APU_Pulse1_reg[volume] [3]),
        .O(\APU_Pulse1[volume][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEEEBEEEBEEEA)) 
    \APU_Pulse1[volume][2]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse1_reg[volume] [2]),
        .I2(\APU_Pulse1_reg[volume] [0]),
        .I3(\APU_Pulse1_reg[volume] [1]),
        .I4(\APU_Pulse1_reg[volume] [3]),
        .I5(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .O(\APU_Pulse1[volume][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88808888)) 
    \APU_Pulse1[volume][3]_i_1 
       (.I0(APU_Quarter_CE),
        .I1(\APU_Pulse1[volume][3]_i_3_n_0 ),
        .I2(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I3(\APU_Pulse1_reg[volume] [3]),
        .I4(\APU_Pulse1[volume][3]_i_4_n_0 ),
        .I5(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .O(\APU_Pulse1[volume] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC2)) 
    \APU_Pulse1[volume][3]_i_2 
       (.I0(\APU_Pulse1_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Pulse1_reg[volume] [3]),
        .I2(\APU_Pulse1_reg[volume] [1]),
        .I3(\APU_Pulse1_reg[volume] [0]),
        .I4(\APU_Pulse1_reg[volume] [2]),
        .I5(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .O(\APU_Pulse1[volume][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[volume][3]_i_3 
       (.I0(pulse1_envelope_divider[2]),
        .I1(pulse1_envelope_divider[1]),
        .I2(pulse1_envelope_divider[0]),
        .I3(pulse1_envelope_divider[3]),
        .O(\APU_Pulse1[volume][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse1[volume][3]_i_4 
       (.I0(\APU_Pulse1_reg[volume] [1]),
        .I1(\APU_Pulse1_reg[volume] [0]),
        .I2(\APU_Pulse1_reg[volume] [2]),
        .O(\APU_Pulse1[volume][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \APU_Pulse1[volume][3]_i_5 
       (.I0(\procMainLogic.pulse1_envelope_start_reg_n_0 ),
        .I1(\APU_Pulse1[volume][3]_i_6_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I4(CPU_RW),
        .I5(CPU_RomSel),
        .O(\APU_Pulse1[volume][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \APU_Pulse1[volume][3]_i_6 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[1]),
        .O(\APU_Pulse1[volume][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[15]_INST_0 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][0] ),
        .I1(\APU_Pulse1_reg[constant_volume]__0 ),
        .I2(\APU_Pulse1_reg[volume] [0]),
        .O(APU_Pulse1_Message[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[16]_INST_0 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][1] ),
        .I1(\APU_Pulse1_reg[constant_volume]__0 ),
        .I2(\APU_Pulse1_reg[volume] [1]),
        .O(APU_Pulse1_Message[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[17]_INST_0 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][2] ),
        .I1(\APU_Pulse1_reg[constant_volume]__0 ),
        .I2(\APU_Pulse1_reg[volume] [2]),
        .O(APU_Pulse1_Message[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[18]_INST_0 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][3] ),
        .I1(\APU_Pulse1_reg[constant_volume]__0 ),
        .I2(\APU_Pulse1_reg[volume] [3]),
        .O(APU_Pulse1_Message[6]));
  LUT6 #(
    .INIT(64'h000000000000BFFF)) 
    \APU_Pulse1_Message[3]_INST_0 
       (.I0(\APU_Pulse1_reg[sweep_negate]__0 ),
        .I1(Pulse1_Target05_out[11]),
        .I2(CPU_Rst),
        .I3(Reset),
        .I4(\APU_Pulse1_Message[3]_INST_0_i_2_n_0 ),
        .I5(\APU_Pulse1_Message[3]_INST_0_i_3_n_0 ),
        .O(APU_Pulse1_Message[0]));
  CARRY4 \APU_Pulse1_Message[3]_INST_0_i_1 
       (.CI(\APU_Pulse1_Message[3]_INST_0_i_4_n_0 ),
        .CO({Pulse1_Target05_out[11],\NLW_APU_Pulse1_Message[3]_INST_0_i_1_CO_UNCONNECTED [2],\APU_Pulse1_Message[3]_INST_0_i_1_n_2 ,\APU_Pulse1_Message[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,APU_Pulse1_Message[2:1],\APU_Pulse1_reg[timer][8]_0 }),
        .O({\NLW_APU_Pulse1_Message[3]_INST_0_i_1_O_UNCONNECTED [3],Pulse1_Target05_out[10:8]}),
        .S({1'b1,\APU_Pulse1_Message[3]_INST_0_i_5_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_6_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_10 
       (.I0(Q[6]),
        .I1(p_0_in3_in[6]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_11 
       (.I0(Q[5]),
        .I1(p_0_in3_in[5]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_12 
       (.I0(Q[4]),
        .I1(p_0_in3_in[4]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \APU_Pulse1_Message[3]_INST_0_i_13 
       (.I0(APU_Pulse1_Message[2]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse1_reg[timer][8]_0 ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .O(\APU_Pulse1_Message[3]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse1_Message[3]_INST_0_i_2 
       (.I0(APU_Pulse1_Message[1]),
        .I1(APU_Pulse1_Message[2]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(\APU_Pulse1_Message[3]_INST_0_i_8_n_0 ),
        .O(\APU_Pulse1_Message[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \APU_Pulse1_Message[3]_INST_0_i_3 
       (.I0(\APU_Pulse1_reg[length_counter] [4]),
        .I1(\APU_Pulse1_reg[length_counter] [2]),
        .I2(\APU_Pulse1_reg[length_counter] [0]),
        .I3(\APU_Pulse1_reg[length_counter] [1]),
        .I4(\APU_Pulse1_reg[length_counter] [3]),
        .I5(\APU_Pulse1_reg[length_counter] [5]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_3_n_0 ));
  CARRY4 \APU_Pulse1_Message[3]_INST_0_i_4 
       (.CI(\APU_Pulse1_reg[timer][3]_i_3_n_0 ),
        .CO({\APU_Pulse1_Message[3]_INST_0_i_4_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_1 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_2 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(Pulse1_Target05_out[7:4]),
        .S({\APU_Pulse1_Message[3]_INST_0_i_9_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_10_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_11_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_12_n_0 }));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \APU_Pulse1_Message[3]_INST_0_i_5 
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I2(APU_Pulse1_Message[2]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .O(\APU_Pulse1_Message[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC9C8CCC8)) 
    \APU_Pulse1_Message[3]_INST_0_i_6 
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I1(APU_Pulse1_Message[1]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I4(APU_Pulse1_Message[2]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC9C998C8CCCC98C8)) 
    \APU_Pulse1_Message[3]_INST_0_i_7 
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I1(\APU_Pulse1_reg[timer][8]_0 ),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(APU_Pulse1_Message[2]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(APU_Pulse1_Message[1]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse1_Message[3]_INST_0_i_8 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\APU_Pulse1_reg[timer][8]_0 ),
        .I3(Q[3]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h333398C8CCCC98C8)) 
    \APU_Pulse1_Message[3]_INST_0_i_9 
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I1(Q[7]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(APU_Pulse1_Message[1]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(\APU_Pulse1_Message[3]_INST_0_i_13_n_0 ),
        .O(\APU_Pulse1_Message[3]_INST_0_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Pulse1_reg[constant_volume]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Pulse1_reg[envelope_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Pulse1_reg[envelope_n_0_][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Pulse1_reg[envelope_n_0_][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Pulse1_reg[envelope_n_0_][3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][0]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][1]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][2]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][3]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][4]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][5]_i_2_n_0 ),
        .Q(\APU_Pulse1_reg[length_counter] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Pulse1_reg[length_counter_halt_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(\APU_Pulse1_reg[sweep_enable]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Pulse1_reg[sweep_negate]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Pulse1_reg[sweep_period] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Pulse1_reg[sweep_period] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(\APU_Pulse1_reg[sweep_period] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Pulse1_reg[sweep_shift_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Pulse1_reg[sweep_shift_n_0_][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Pulse1_reg[sweep_shift_n_0_][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][10]_i_1_n_0 ),
        .Q(APU_Pulse1_Message[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]));
  CARRY4 \APU_Pulse1_reg[timer][3]_i_3 
       (.CI(1'b0),
        .CO({\APU_Pulse1_reg[timer][3]_i_3_n_0 ,\APU_Pulse1_reg[timer][3]_i_3_n_1 ,\APU_Pulse1_reg[timer][3]_i_3_n_2 ,\APU_Pulse1_reg[timer][3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(Pulse1_Target05_out[3:0]),
        .S({\APU_Pulse1[timer][3]_i_4_n_0 ,\APU_Pulse1[timer][3]_i_5_n_0 ,\APU_Pulse1[timer][3]_i_6_n_0 ,\APU_Pulse1[timer][3]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][8]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer][8]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][9]_i_1_n_0 ),
        .Q(APU_Pulse1_Message[1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][0]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse1_reg[volume] [0]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][1]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse1_reg[volume] [1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][2]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse1_reg[volume] [2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][3]_i_2_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse1_reg[volume] [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \APU_Pulse2[length_counter][0]_i_1 
       (.I0(CPU_Data[1]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status_reg[pulse2_active_n_0_] ),
        .I3(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse2_reg[length_counter] [0]),
        .O(\APU_Pulse2[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8FFA800A800A8FF)) 
    \APU_Pulse2[length_counter][1]_i_1 
       (.I0(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse2_reg[length_counter] [0]),
        .I5(\APU_Pulse2_reg[length_counter] [1]),
        .O(\APU_Pulse2[length_counter][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800A8FFA8FFA800)) 
    \APU_Pulse2[length_counter][2]_i_1 
       (.I0(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][2]_i_3_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse2_reg[length_counter] [2]),
        .I5(\APU_Pulse2[length_counter][2]_i_2_n_0 ),
        .O(\APU_Pulse2[length_counter][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse2[length_counter][2]_i_2 
       (.I0(\APU_Pulse2_reg[length_counter] [0]),
        .I1(\APU_Pulse2_reg[length_counter] [1]),
        .O(\APU_Pulse2[length_counter][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA800A8FFA8FFA800)) 
    \APU_Pulse2[length_counter][3]_i_1 
       (.I0(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][3]_i_3_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .I4(\APU_Pulse2_reg[length_counter] [3]),
        .I5(\APU_Pulse2[length_counter][3]_i_2_n_0 ),
        .O(\APU_Pulse2[length_counter][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[length_counter][3]_i_2 
       (.I0(\APU_Pulse2_reg[length_counter] [1]),
        .I1(\APU_Pulse2_reg[length_counter] [0]),
        .I2(\APU_Pulse2_reg[length_counter] [2]),
        .O(\APU_Pulse2[length_counter][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F00066666666)) 
    \APU_Pulse2[length_counter][4]_i_1 
       (.I0(\APU_Pulse2[length_counter][4]_i_2_n_0 ),
        .I1(\APU_Pulse2_reg[length_counter] [4]),
        .I2(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I3(\APU_Pulse2[length_counter][4]_i_3_n_0 ),
        .I4(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .O(\APU_Pulse2[length_counter][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse2[length_counter][4]_i_2 
       (.I0(\APU_Pulse2_reg[length_counter] [2]),
        .I1(\APU_Pulse2_reg[length_counter] [0]),
        .I2(\APU_Pulse2_reg[length_counter] [1]),
        .I3(\APU_Pulse2_reg[length_counter] [3]),
        .O(\APU_Pulse2[length_counter][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA57AB88)) 
    \APU_Pulse2[length_counter][4]_i_3 
       (.I0(CPU_Data[7]),
        .I1(CPU_Data[5]),
        .I2(CPU_Data[6]),
        .I3(CPU_Data[3]),
        .I4(CPU_Data[4]),
        .O(\APU_Pulse2[length_counter][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1A00FFFF)) 
    \APU_Pulse2[length_counter][5]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Data[1]),
        .I2(CPU_Addr[4]),
        .I3(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8FFA800A800A8A8)) 
    \APU_Pulse2[length_counter][5]_i_2 
       (.I0(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_7_n_0 ),
        .I4(\APU_Pulse2_reg[length_counter] [5]),
        .I5(\APU_Pulse2[length_counter][5]_i_8_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \APU_Pulse2[length_counter][5]_i_3 
       (.I0(CPU_Addr[3]),
        .I1(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[0]),
        .I4(CPU_RW),
        .I5(CPU_RomSel),
        .O(\APU_Pulse2[length_counter][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \APU_Pulse2[length_counter][5]_i_4 
       (.I0(APU_Half_CE_reg_n_0),
        .I1(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .I2(\APU_Pulse2_Message[3]_INST_0_i_3_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[length_counter][5]_i_5 
       (.I0(CPU_Data[1]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status_reg[pulse2_active_n_0_] ),
        .O(\APU_Pulse2[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse2[length_counter][5]_i_6 
       (.I0(CPU_Data[1]),
        .I1(CPU_Addr[4]),
        .O(\APU_Pulse2[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \APU_Pulse2[length_counter][5]_i_7 
       (.I0(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .I1(APU_Half_CE_reg_n_0),
        .O(\APU_Pulse2[length_counter][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \APU_Pulse2[length_counter][5]_i_8 
       (.I0(\APU_Pulse2_reg[length_counter] [4]),
        .I1(\APU_Pulse2_reg[length_counter] [3]),
        .I2(\APU_Pulse2_reg[length_counter] [1]),
        .I3(\APU_Pulse2_reg[length_counter] [0]),
        .I4(\APU_Pulse2_reg[length_counter] [2]),
        .O(\APU_Pulse2[length_counter][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \APU_Pulse2[length_counter_halt]_i_1 
       (.I0(\APU_Pulse1[timer][7]_i_3_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[4]),
        .I4(CPU_Addr[1]),
        .I5(CPU_Addr[3]),
        .O(\APU_Pulse2[length_counter_halt] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \APU_Pulse2[sweep_shift][2]_i_1 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I3(CPU_Addr[0]),
        .I4(\APU_Pulse2[sweep_shift][2]_i_2_n_0 ),
        .I5(CPU_Addr[3]),
        .O(\APU_Pulse2[sweep_enable] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \APU_Pulse2[sweep_shift][2]_i_2 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[4]),
        .I2(CPU_Addr[2]),
        .O(\APU_Pulse2[sweep_shift][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCA0A0A0A)) 
    \APU_Pulse2[timer][0]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse2[timer][0]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse2[timer][0]_i_2 
       (.I0(Pulse2_Target00_out[0]),
        .I1(Pulse2_Target1),
        .I2(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I3(Pulse2_Target02_out[0]),
        .O(\APU_Pulse2[timer][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888F0FF8888F000)) 
    \APU_Pulse2[timer][10]_i_1 
       (.I0(\APU_Pulse2[timer][10]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I2(CPU_Data[2]),
        .I3(\APU_Pulse2[timer][10]_i_4_n_0 ),
        .I4(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I5(\APU_Pulse2_reg[timer][10]_0 ),
        .O(\APU_Pulse2[timer][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse2[timer][10]_i_2 
       (.I0(CPU_Rst),
        .I1(Reset),
        .O(\APU_Pulse2[timer][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse2[timer][10]_i_3 
       (.I0(Pulse2_Target00_out[10]),
        .I1(Pulse2_Target1),
        .I2(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I3(Pulse2_Target02_out[10]),
        .O(\APU_Pulse2[timer][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \APU_Pulse2[timer][10]_i_4 
       (.I0(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I1(\APU_Triangle[timer][7]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I5(CPU_Addr[3]),
        .O(\APU_Pulse2[timer][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055551555)) 
    \APU_Pulse2[timer][10]_i_5 
       (.I0(\APU_Pulse2_Message[3]_INST_0_i_2_n_0 ),
        .I1(Reset),
        .I2(CPU_Rst),
        .I3(Pulse2_Target02_out[11]),
        .I4(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I5(\APU_Pulse2[timer][10]_i_6_n_0 ),
        .O(\APU_Pulse2[timer][10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \APU_Pulse2[timer][10]_i_6 
       (.I0(\APU_Pulse2[timer][10]_i_7_n_0 ),
        .I1(APU_Half_CE_reg_n_0),
        .I2(\APU_Pulse2_reg[sweep_enable]__0 ),
        .I3(pulse2_sweep_divider[2]),
        .I4(pulse2_sweep_divider[0]),
        .I5(pulse2_sweep_divider[1]),
        .O(\APU_Pulse2[timer][10]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[timer][10]_i_7 
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .O(\APU_Pulse2[timer][10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][1]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse2[timer][1]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][1]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[1]),
        .I2(Pulse2_Target02_out[1]),
        .I3(\APU_Pulse2_reg[sweep_negate]__0 ),
        .O(\APU_Pulse2[timer][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCA0A0A0A)) 
    \APU_Pulse2[timer][2]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse2[timer][2]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse2[timer][2]_i_2 
       (.I0(Pulse2_Target00_out[2]),
        .I1(Pulse2_Target1),
        .I2(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I3(Pulse2_Target02_out[2]),
        .O(\APU_Pulse2[timer][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][3]_i_1 
       (.I0(\APU_Pulse2[timer][3]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[3]),
        .O(\APU_Pulse2[timer][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse2[timer][3]_i_2 
       (.I0(Pulse2_Target02_out[3]),
        .I1(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I2(Pulse2_Target1),
        .I3(Pulse2_Target00_out[3]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse2[timer][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \APU_Pulse2[timer][3]_i_4 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(Pulse2_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_13_n_0),
        .O(\APU_Pulse2[timer][3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \APU_Pulse2[timer][3]_i_5 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .O(\APU_Pulse2[timer][3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA656)) 
    \APU_Pulse2[timer][3]_i_6 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .O(\APU_Pulse2[timer][3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h47B8)) 
    \APU_Pulse2[timer][3]_i_7 
       (.I0(Pulse2_Target1_carry_i_16_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse2_Target1_carry_i_17_n_0),
        .I3(\APU_Pulse2_reg[timer][7]_0 [0]),
        .O(\APU_Pulse2[timer][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][4]_i_1 
       (.I0(\APU_Pulse2[timer][4]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[4]),
        .O(\APU_Pulse2[timer][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse2[timer][4]_i_2 
       (.I0(Pulse2_Target02_out[4]),
        .I1(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I2(Pulse2_Target1),
        .I3(Pulse2_Target00_out[4]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse2[timer][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][5]_i_1 
       (.I0(\APU_Pulse2[timer][5]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[5]),
        .O(\APU_Pulse2[timer][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse2[timer][5]_i_2 
       (.I0(Pulse2_Target02_out[5]),
        .I1(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I2(Pulse2_Target1),
        .I3(Pulse2_Target00_out[5]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse2[timer][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][6]_i_1 
       (.I0(\APU_Pulse2[timer][6]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[6]),
        .O(\APU_Pulse2[timer][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse2[timer][6]_i_2 
       (.I0(Pulse2_Target02_out[6]),
        .I1(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I2(Pulse2_Target1),
        .I3(Pulse2_Target00_out[6]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse2[timer][6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \APU_Pulse2[timer][7]_i_1 
       (.I0(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I1(\APU_Pulse2[timer][7]_i_3_n_0 ),
        .I2(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I3(CPU_Addr[3]),
        .O(\APU_Pulse2[timer][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][7]_i_2 
       (.I0(\APU_Pulse2[timer][7]_i_5_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I2(CPU_Data[7]),
        .O(\APU_Pulse2[timer][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \APU_Pulse2[timer][7]_i_3 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[0]),
        .I4(CPU_Addr[2]),
        .I5(CPU_Addr[1]),
        .O(\APU_Pulse2[timer][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse2[timer][7]_i_4 
       (.I0(CPU_Addr[10]),
        .I1(CPU_Addr[11]),
        .I2(CPU_Addr[8]),
        .I3(CPU_Addr[9]),
        .I4(\APU_Pulse2[timer][7]_i_6_n_0 ),
        .O(\APU_Pulse2[timer][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2E22000000000000)) 
    \APU_Pulse2[timer][7]_i_5 
       (.I0(Pulse2_Target02_out[7]),
        .I1(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I2(Pulse2_Target1),
        .I3(Pulse2_Target00_out[7]),
        .I4(Reset),
        .I5(CPU_Rst),
        .O(\APU_Pulse2[timer][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \APU_Pulse2[timer][7]_i_6 
       (.I0(CPU_Addr[13]),
        .I1(CPU_Addr[6]),
        .I2(CPU_Addr[5]),
        .I3(CPU_Addr[7]),
        .I4(CPU_Addr[12]),
        .I5(CPU_Addr[14]),
        .O(\APU_Pulse2[timer][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse2[timer][8]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse2[timer][8]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse2[timer][10]_i_4_n_0 ),
        .I4(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I5(\APU_Pulse2_reg[timer][8]_0 ),
        .O(\APU_Pulse2[timer][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][8]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[8]),
        .I2(Pulse2_Target02_out[8]),
        .I3(\APU_Pulse2_reg[sweep_negate]__0 ),
        .O(\APU_Pulse2[timer][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse2[timer][9]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse2[timer][9]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse2[timer][10]_i_4_n_0 ),
        .I4(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I5(\APU_Pulse2_reg[timer][9]_0 ),
        .O(\APU_Pulse2[timer][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][9]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[9]),
        .I2(Pulse2_Target02_out[9]),
        .I3(\APU_Pulse2_reg[sweep_negate]__0 ),
        .O(\APU_Pulse2[timer][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFAE)) 
    \APU_Pulse2[volume][0]_i_1 
       (.I0(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse2_reg[volume] [2]),
        .I2(\APU_Pulse2_reg[volume] [0]),
        .I3(\APU_Pulse2_reg[volume] [1]),
        .I4(\APU_Pulse2_reg[volume] [3]),
        .I5(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .O(\APU_Pulse2[volume][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCCCFFFFCCCCFE)) 
    \APU_Pulse2[volume][1]_i_1 
       (.I0(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I2(\APU_Pulse2_reg[volume] [2]),
        .I3(\APU_Pulse2_reg[volume] [0]),
        .I4(\APU_Pulse2_reg[volume] [1]),
        .I5(\APU_Pulse2_reg[volume] [3]),
        .O(\APU_Pulse2[volume][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEEEBEEEBEEEA)) 
    \APU_Pulse2[volume][2]_i_1 
       (.I0(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse2_reg[volume] [2]),
        .I2(\APU_Pulse2_reg[volume] [0]),
        .I3(\APU_Pulse2_reg[volume] [1]),
        .I4(\APU_Pulse2_reg[volume] [3]),
        .I5(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .O(\APU_Pulse2[volume][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88808888)) 
    \APU_Pulse2[volume][3]_i_1 
       (.I0(APU_Quarter_CE),
        .I1(\APU_Pulse2[volume][3]_i_3_n_0 ),
        .I2(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .I3(\APU_Pulse2_reg[volume] [3]),
        .I4(\APU_Pulse2[volume][3]_i_4_n_0 ),
        .I5(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .O(\APU_Pulse2[volume] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC2)) 
    \APU_Pulse2[volume][3]_i_2 
       (.I0(\APU_Pulse2_reg[length_counter_halt_n_0_] ),
        .I1(\APU_Pulse2_reg[volume] [3]),
        .I2(\APU_Pulse2_reg[volume] [1]),
        .I3(\APU_Pulse2_reg[volume] [0]),
        .I4(\APU_Pulse2_reg[volume] [2]),
        .I5(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .O(\APU_Pulse2[volume][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse2[volume][3]_i_3 
       (.I0(pulse2_envelope_divider[2]),
        .I1(pulse2_envelope_divider[1]),
        .I2(pulse2_envelope_divider[0]),
        .I3(pulse2_envelope_divider[3]),
        .O(\APU_Pulse2[volume][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[volume][3]_i_4 
       (.I0(\APU_Pulse2_reg[volume] [1]),
        .I1(\APU_Pulse2_reg[volume] [0]),
        .I2(\APU_Pulse2_reg[volume] [2]),
        .O(\APU_Pulse2[volume][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \APU_Pulse2[volume][3]_i_5 
       (.I0(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I1(CPU_Addr[3]),
        .I2(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I3(\APU_Pulse2[volume][3]_i_6_n_0 ),
        .I4(CPU_Addr[1]),
        .I5(CPU_Addr[4]),
        .O(\APU_Pulse2[volume][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \APU_Pulse2[volume][3]_i_6 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .O(\APU_Pulse2[volume][3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[15]_INST_0 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][0] ),
        .I1(\APU_Pulse2_reg[constant_volume]__0 ),
        .I2(\APU_Pulse2_reg[volume] [0]),
        .O(APU_Pulse2_Message[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[16]_INST_0 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][1] ),
        .I1(\APU_Pulse2_reg[constant_volume]__0 ),
        .I2(\APU_Pulse2_reg[volume] [1]),
        .O(APU_Pulse2_Message[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[17]_INST_0 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][2] ),
        .I1(\APU_Pulse2_reg[constant_volume]__0 ),
        .I2(\APU_Pulse2_reg[volume] [2]),
        .O(APU_Pulse2_Message[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[18]_INST_0 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][3] ),
        .I1(\APU_Pulse2_reg[constant_volume]__0 ),
        .I2(\APU_Pulse2_reg[volume] [3]),
        .O(APU_Pulse2_Message[4]));
  LUT6 #(
    .INIT(64'h0000BFFF00000000)) 
    \APU_Pulse2_Message[3]_INST_0 
       (.I0(\APU_Pulse2_reg[sweep_negate]__0 ),
        .I1(Pulse2_Target02_out[11]),
        .I2(CPU_Rst),
        .I3(Reset),
        .I4(\APU_Pulse2_Message[3]_INST_0_i_2_n_0 ),
        .I5(\APU_Pulse2_Message[3]_INST_0_i_3_n_0 ),
        .O(APU_Pulse2_Message[0]));
  CARRY4 \APU_Pulse2_Message[3]_INST_0_i_1 
       (.CI(\APU_Pulse2_Message[3]_INST_0_i_4_n_0 ),
        .CO({Pulse2_Target02_out[11],\NLW_APU_Pulse2_Message[3]_INST_0_i_1_CO_UNCONNECTED [2],\APU_Pulse2_Message[3]_INST_0_i_1_n_2 ,\APU_Pulse2_Message[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\APU_Pulse2_reg[timer][10]_0 ,\APU_Pulse2_reg[timer][9]_0 ,\APU_Pulse2_reg[timer][8]_0 }),
        .O({\NLW_APU_Pulse2_Message[3]_INST_0_i_1_O_UNCONNECTED [3],Pulse2_Target02_out[10:8]}),
        .S({1'b1,\APU_Pulse2_Message[3]_INST_0_i_5_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_6_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse2_Message[3]_INST_0_i_10 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_18_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2_Message[3]_INST_0_i_11 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I1(Pulse2_Target1_carry_i_12_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_11_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h59A9)) 
    \APU_Pulse2_Message[3]_INST_0_i_12 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_13_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse2_Message[3]_INST_0_i_2 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I2(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I4(\APU_Pulse2_Message[3]_INST_0_i_8_n_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \APU_Pulse2_Message[3]_INST_0_i_3 
       (.I0(\APU_Pulse2_reg[length_counter] [5]),
        .I1(\APU_Pulse2_reg[length_counter] [2]),
        .I2(\APU_Pulse2_reg[length_counter] [0]),
        .I3(\APU_Pulse2_reg[length_counter] [1]),
        .I4(\APU_Pulse2_reg[length_counter] [3]),
        .I5(\APU_Pulse2_reg[length_counter] [4]),
        .O(\APU_Pulse2_Message[3]_INST_0_i_3_n_0 ));
  CARRY4 \APU_Pulse2_Message[3]_INST_0_i_4 
       (.CI(\APU_Pulse2_reg[timer][3]_i_3_n_0 ),
        .CO({\APU_Pulse2_Message[3]_INST_0_i_4_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_1 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_2 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\APU_Pulse2_reg[timer][7]_0 [7:4]),
        .O(Pulse2_Target02_out[7:4]),
        .S({\APU_Pulse2_Message[3]_INST_0_i_9_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_10_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_11_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_12_n_0 }));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \APU_Pulse2_Message[3]_INST_0_i_5 
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFA04FE00)) 
    \APU_Pulse2_Message[3]_INST_0_i_6 
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[timer][10]_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC9C998C8CCCC98C8)) 
    \APU_Pulse2_Message[3]_INST_0_i_7 
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I1(\APU_Pulse2_reg[timer][8]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I5(\APU_Pulse2_reg[timer][9]_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse2_Message[3]_INST_0_i_8 
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse2_reg[timer][9]_0 ),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h333398C8CCCC98C8)) 
    \APU_Pulse2_Message[3]_INST_0_i_9 
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse2_Target1_carry_i_9_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Pulse2_reg[constant_volume]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Pulse2_reg[envelope_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Pulse2_reg[envelope_n_0_][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Pulse2_reg[envelope_n_0_][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Pulse2_reg[envelope_n_0_][3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][0]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][1]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][2]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][3]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][4]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][5]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[length_counter] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Pulse2_reg[length_counter_halt_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(\APU_Pulse2_reg[sweep_enable]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Pulse2_reg[sweep_negate]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Pulse2_reg[sweep_period] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Pulse2_reg[sweep_period] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(\APU_Pulse2_reg[sweep_period] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Pulse2_reg[sweep_shift_n_0_][0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Pulse2_reg[sweep_shift_n_0_][1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Pulse2_reg[sweep_shift_n_0_][2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][0]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][10]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][10]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][1]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][2]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][3]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [3]));
  CARRY4 \APU_Pulse2_reg[timer][3]_i_3 
       (.CI(1'b0),
        .CO({\APU_Pulse2_reg[timer][3]_i_3_n_0 ,\APU_Pulse2_reg[timer][3]_i_3_n_1 ,\APU_Pulse2_reg[timer][3]_i_3_n_2 ,\APU_Pulse2_reg[timer][3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\APU_Pulse2_reg[timer][7]_0 [3:0]),
        .O(Pulse2_Target02_out[3:0]),
        .S({\APU_Pulse2[timer][3]_i_4_n_0 ,\APU_Pulse2[timer][3]_i_5_n_0 ,\APU_Pulse2[timer][3]_i_6_n_0 ,\APU_Pulse2[timer][3]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][4]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][5]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][6]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][7]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][8]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][8]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][9]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][9]_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][0]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[volume] [0]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][1]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[volume] [1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][2]_i_1_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[volume] [2]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][3]_i_2_n_0 ),
        .PRE(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[volume] [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 APU_Quarter_CE2_carry
       (.CI(1'b0),
        .CO({APU_Quarter_CE2_carry_n_0,APU_Quarter_CE2_carry_n_1,APU_Quarter_CE2_carry_n_2,APU_Quarter_CE2_carry_n_3}),
        .CYINIT(\procFrameCounter.counter_reg [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(APU_Quarter_CE2[4:1]),
        .S(\procFrameCounter.counter_reg [4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 APU_Quarter_CE2_carry__0
       (.CI(APU_Quarter_CE2_carry_n_0),
        .CO({APU_Quarter_CE2_carry__0_n_0,APU_Quarter_CE2_carry__0_n_1,APU_Quarter_CE2_carry__0_n_2,APU_Quarter_CE2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(APU_Quarter_CE2[8:5]),
        .S(\procFrameCounter.counter_reg [8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 APU_Quarter_CE2_carry__1
       (.CI(APU_Quarter_CE2_carry__0_n_0),
        .CO({APU_Quarter_CE2_carry__1_n_0,APU_Quarter_CE2_carry__1_n_1,APU_Quarter_CE2_carry__1_n_2,APU_Quarter_CE2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(APU_Quarter_CE2[12:9]),
        .S(\procFrameCounter.counter_reg [12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 APU_Quarter_CE2_carry__2
       (.CI(APU_Quarter_CE2_carry__1_n_0),
        .CO({NLW_APU_Quarter_CE2_carry__2_CO_UNCONNECTED[3:1],APU_Quarter_CE2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_APU_Quarter_CE2_carry__2_O_UNCONNECTED[3:2],APU_Quarter_CE2[14:13]}),
        .S({1'b0,1'b0,\procFrameCounter.counter_reg [14:13]}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h008AAAAA)) 
    APU_Quarter_CE_i_1
       (.I0(APU_Tick_CE),
        .I1(APU_Quarter_CE_i_2_n_0),
        .I2(APU_Quarter_CE_i_3_n_0),
        .I3(APU_Half_CE_i_3_n_0),
        .I4(APU_Quarter_CE_i_4_n_0),
        .O(APU_Quarter_CE14_out));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    APU_Quarter_CE_i_2
       (.I0(APU_Half_CE_i_10_n_0),
        .I1(\procFrameCounter.counter_reg [14]),
        .I2(\procFrameCounter.counter_reg [9]),
        .I3(\APU_Counter_reg[mode]__0 ),
        .I4(\procFrameCounter.counter_reg [12]),
        .I5(\procFrameCounter.counter_reg [7]),
        .O(APU_Quarter_CE_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    APU_Quarter_CE_i_3
       (.I0(\procFrameCounter.counter_reg [0]),
        .I1(\procFrameCounter.counter_reg [13]),
        .I2(\procFrameCounter.counter_reg [11]),
        .I3(\procFrameCounter.counter_reg [2]),
        .I4(\procFrameCounter.counter_reg [3]),
        .I5(APU_Half_CE_i_7_n_0),
        .O(APU_Quarter_CE_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFADF)) 
    APU_Quarter_CE_i_4
       (.I0(\procFrameCounter.counter_reg [8]),
        .I1(\procFrameCounter.counter_reg [9]),
        .I2(\procFrameCounter.counter_reg [4]),
        .I3(\procFrameCounter.counter_reg [7]),
        .I4(\procFrameCounter.counter_reg [5]),
        .I5(APU_Quarter_CE_i_5_n_0),
        .O(APU_Quarter_CE_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFE)) 
    APU_Quarter_CE_i_5
       (.I0(APU_Quarter_CE_i_6_n_0),
        .I1(\procFrameCounter.counter_reg [1]),
        .I2(\procFrameCounter.counter_reg [0]),
        .I3(\procFrameCounter.counter_reg [2]),
        .I4(APU_Quarter_CE_i_7_n_0),
        .I5(APU_Quarter_CE_i_8_n_0),
        .O(APU_Quarter_CE_i_5_n_0));
  LUT5 #(
    .INIT(32'hF7DFDFDF)) 
    APU_Quarter_CE_i_6
       (.I0(\procFrameCounter.counter_reg [11]),
        .I1(\procFrameCounter.counter_reg [13]),
        .I2(\procFrameCounter.counter_reg [10]),
        .I3(\procFrameCounter.counter_reg [9]),
        .I4(\procFrameCounter.counter_reg [8]),
        .O(APU_Quarter_CE_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFD3)) 
    APU_Quarter_CE_i_7
       (.I0(\procFrameCounter.counter_reg [8]),
        .I1(\procFrameCounter.counter_reg [9]),
        .I2(\procFrameCounter.counter_reg [12]),
        .I3(\procFrameCounter.counter_reg [6]),
        .I4(\procFrameCounter.counter_reg [14]),
        .O(APU_Quarter_CE_i_7_n_0));
  LUT4 #(
    .INIT(16'hE677)) 
    APU_Quarter_CE_i_8
       (.I0(\procFrameCounter.counter_reg [2]),
        .I1(\procFrameCounter.counter_reg [3]),
        .I2(\procFrameCounter.counter_reg [4]),
        .I3(\procFrameCounter.counter_reg [5]),
        .O(APU_Quarter_CE_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    APU_Quarter_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(APU_Quarter_CE14_out),
        .Q(APU_Quarter_CE));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \APU_Status[pulse1_active]_i_1 
       (.I0(CPU_Addr[0]),
        .I1(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I2(\APU_Triangle[timer][7]_i_2_n_0 ),
        .I3(\APU_Status[pulse1_active]_i_2_n_0 ),
        .I4(CPU_Addr[2]),
        .I5(CPU_Addr[1]),
        .O(\APU_Status[noise_active] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \APU_Status[pulse1_active]_i_2 
       (.I0(CPU_Addr[4]),
        .I1(CPU_Addr[3]),
        .O(\APU_Status[pulse1_active]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[noise_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[noise_active] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Status_reg[noise_active_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse1_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[noise_active] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Status_reg[pulse1_active_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse2_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[noise_active] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Status_reg[pulse2_active_n_0_] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[triangle_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[noise_active] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Status_reg[triangle_active_n_0_] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    APU_Tick_CE_i_1
       (.I0(APU_Tick_CE),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    APU_Tick_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_1_in),
        .Q(APU_Tick_CE));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \APU_Triangle[length_counter][0]_i_1 
       (.I0(\APU_Triangle_reg[length_counter] [0]),
        .I1(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I2(CPU_Data[2]),
        .I3(CPU_Addr[4]),
        .I4(\APU_Status_reg[triangle_active_n_0_] ),
        .O(\APU_Triangle[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h909090909F9F9F90)) 
    \APU_Triangle[length_counter][1]_i_1 
       (.I0(\APU_Triangle_reg[length_counter] [1]),
        .I1(\APU_Triangle_reg[length_counter] [0]),
        .I2(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Triangle[length_counter][5]_i_7_n_0 ),
        .I4(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .I5(\APU_Triangle[length_counter][5]_i_6_n_0 ),
        .O(\APU_Triangle[length_counter][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h606060606F6F6F60)) 
    \APU_Triangle[length_counter][2]_i_1 
       (.I0(\APU_Triangle_reg[length_counter] [2]),
        .I1(\APU_Triangle[length_counter][2]_i_2_n_0 ),
        .I2(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Triangle[length_counter][5]_i_7_n_0 ),
        .I4(\APU_Pulse1[length_counter][2]_i_3_n_0 ),
        .I5(\APU_Triangle[length_counter][5]_i_6_n_0 ),
        .O(\APU_Triangle[length_counter][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Triangle[length_counter][2]_i_2 
       (.I0(\APU_Triangle_reg[length_counter] [0]),
        .I1(\APU_Triangle_reg[length_counter] [1]),
        .O(\APU_Triangle[length_counter][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h606060606F6F6F60)) 
    \APU_Triangle[length_counter][3]_i_1 
       (.I0(\APU_Triangle_reg[length_counter] [3]),
        .I1(\APU_Triangle[length_counter][3]_i_2_n_0 ),
        .I2(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Triangle[length_counter][5]_i_7_n_0 ),
        .I4(\APU_Pulse1[length_counter][3]_i_3_n_0 ),
        .I5(\APU_Triangle[length_counter][5]_i_6_n_0 ),
        .O(\APU_Triangle[length_counter][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Triangle[length_counter][3]_i_2 
       (.I0(\APU_Triangle_reg[length_counter] [1]),
        .I1(\APU_Triangle_reg[length_counter] [0]),
        .I2(\APU_Triangle_reg[length_counter] [2]),
        .O(\APU_Triangle[length_counter][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333333333200020)) 
    \APU_Triangle[length_counter][4]_i_1 
       (.I0(\APU_Pulse2[length_counter][4]_i_3_n_0 ),
        .I1(\APU_Triangle[length_counter][4]_i_2_n_0 ),
        .I2(\APU_Status_reg[triangle_active_n_0_] ),
        .I3(CPU_Addr[4]),
        .I4(CPU_Data[2]),
        .I5(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .O(\APU_Triangle[length_counter][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002FD00000000)) 
    \APU_Triangle[length_counter][4]_i_2 
       (.I0(\APU_Triangle[length_counter][2]_i_2_n_0 ),
        .I1(\APU_Triangle_reg[length_counter] [2]),
        .I2(\APU_Triangle_reg[length_counter] [3]),
        .I3(\APU_Triangle_reg[length_counter] [4]),
        .I4(\APU_Triangle_reg[length_counter_halt]__0 ),
        .I5(APU_Half_CE_reg_n_0),
        .O(\APU_Triangle[length_counter][4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \APU_Triangle[length_counter][5]_i_1 
       (.I0(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I1(\APU_Triangle[length_counter][5]_i_4_n_0 ),
        .I2(\APU_Triangle[length_counter][5]_i_5_n_0 ),
        .O(\APU_Triangle[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0054FF54FF540054)) 
    \APU_Triangle[length_counter][5]_i_2 
       (.I0(\APU_Triangle[length_counter][5]_i_6_n_0 ),
        .I1(\APU_Triangle[length_counter][5]_i_7_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Triangle[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Triangle_Message[3]_INST_0_i_2_n_0 ),
        .I5(\APU_Triangle_reg[length_counter] [5]),
        .O(\APU_Triangle[length_counter][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \APU_Triangle[length_counter][5]_i_3 
       (.I0(\APU_Triangle_reg[length_counter] [5]),
        .I1(\APU_Triangle_Message[3]_INST_0_i_2_n_0 ),
        .I2(APU_Half_CE_reg_n_0),
        .I3(\APU_Triangle_reg[length_counter_halt]__0 ),
        .O(\APU_Triangle[length_counter][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFAFFFFDF)) 
    \APU_Triangle[length_counter][5]_i_4 
       (.I0(CPU_Addr[4]),
        .I1(CPU_Data[2]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[1]),
        .I4(CPU_Addr[3]),
        .O(\APU_Triangle[length_counter][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \APU_Triangle[length_counter][5]_i_5 
       (.I0(CPU_Addr[0]),
        .I1(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I2(CPU_RW),
        .I3(CPU_RomSel),
        .O(\APU_Triangle[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \APU_Triangle[length_counter][5]_i_6 
       (.I0(CPU_Data[2]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status_reg[triangle_active_n_0_] ),
        .O(\APU_Triangle[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Triangle[length_counter][5]_i_7 
       (.I0(CPU_Data[2]),
        .I1(CPU_Addr[4]),
        .O(\APU_Triangle[length_counter][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \APU_Triangle[linear_counter][0]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [0]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \APU_Triangle[linear_counter][1]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [1]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [0]),
        .I3(\APU_Triangle_reg[linear_counter] [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \APU_Triangle[linear_counter][2]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [2]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [2]),
        .I3(\APU_Triangle_reg[linear_counter] [1]),
        .I4(\APU_Triangle_reg[linear_counter] [0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \APU_Triangle[linear_counter][3]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [3]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [3]),
        .I3(\APU_Triangle_reg[linear_counter] [2]),
        .I4(\APU_Triangle_reg[linear_counter] [0]),
        .I5(\APU_Triangle_reg[linear_counter] [1]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \APU_Triangle[linear_counter][4]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [4]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [4]),
        .I3(\APU_Triangle[linear_counter][4]_i_2_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Triangle[linear_counter][4]_i_2 
       (.I0(\APU_Triangle_reg[linear_counter] [2]),
        .I1(\APU_Triangle_reg[linear_counter] [0]),
        .I2(\APU_Triangle_reg[linear_counter] [1]),
        .I3(\APU_Triangle_reg[linear_counter] [3]),
        .O(\APU_Triangle[linear_counter][4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \APU_Triangle[linear_counter][5]_i_1 
       (.I0(\APU_Triangle_reg[linear_counter_load] [5]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [5]),
        .I3(\APU_Triangle[linear_counter][5]_i_2_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Triangle[linear_counter][5]_i_2 
       (.I0(\APU_Triangle_reg[linear_counter] [3]),
        .I1(\APU_Triangle_reg[linear_counter] [1]),
        .I2(\APU_Triangle_reg[linear_counter] [0]),
        .I3(\APU_Triangle_reg[linear_counter] [2]),
        .I4(\APU_Triangle_reg[linear_counter] [4]),
        .O(\APU_Triangle[linear_counter][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \APU_Triangle[linear_counter][6]_i_1 
       (.I0(APU_Quarter_CE),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_Message[3]_INST_0_i_1_n_0 ),
        .I3(\APU_Triangle_reg[linear_counter] [6]),
        .O(\APU_Triangle[linear_counter] ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \APU_Triangle[linear_counter][6]_i_2 
       (.I0(\APU_Triangle_reg[linear_counter_load] [6]),
        .I1(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I2(\APU_Triangle_reg[linear_counter] [6]),
        .I3(\APU_Triangle_Message[3]_INST_0_i_1_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Triangle[linear_counter_load][6]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Triangle[timer][10]_i_2_n_0 ),
        .O(\APU_Triangle[length_counter_halt] ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \APU_Triangle[timer][10]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Triangle[timer][10]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I5(APU_Triangle_Message[11]),
        .O(\APU_Triangle[timer][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \APU_Triangle[timer][10]_i_2 
       (.I0(CPU_Addr[3]),
        .I1(CPU_RW),
        .I2(CPU_RomSel),
        .I3(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .O(\APU_Triangle[timer][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \APU_Triangle[timer][7]_i_1 
       (.I0(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[2]),
        .I3(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I4(\APU_Triangle[timer][7]_i_2_n_0 ),
        .I5(CPU_Addr[3]),
        .O(\APU_Triangle[timer][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \APU_Triangle[timer][7]_i_2 
       (.I0(CPU_RW),
        .I1(CPU_RomSel),
        .O(\APU_Triangle[timer][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \APU_Triangle[timer][8]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Triangle[timer][10]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I5(APU_Triangle_Message[9]),
        .O(\APU_Triangle[timer][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \APU_Triangle[timer][9]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Triangle[timer][10]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(\APU_Pulse1[timer][7]_i_4_n_0 ),
        .I5(APU_Triangle_Message[10]),
        .O(\APU_Triangle[timer][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB0BB)) 
    \APU_Triangle_Message[3]_INST_0 
       (.I0(\APU_Triangle_reg[linear_counter] [6]),
        .I1(\APU_Triangle_Message[3]_INST_0_i_1_n_0 ),
        .I2(\APU_Triangle_reg[length_counter] [5]),
        .I3(\APU_Triangle_Message[3]_INST_0_i_2_n_0 ),
        .O(APU_Triangle_Message[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \APU_Triangle_Message[3]_INST_0_i_1 
       (.I0(\APU_Triangle_reg[linear_counter] [4]),
        .I1(\APU_Triangle_reg[linear_counter] [2]),
        .I2(\APU_Triangle_reg[linear_counter] [0]),
        .I3(\APU_Triangle_reg[linear_counter] [1]),
        .I4(\APU_Triangle_reg[linear_counter] [3]),
        .I5(\APU_Triangle_reg[linear_counter] [5]),
        .O(\APU_Triangle_Message[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Triangle_Message[3]_INST_0_i_2 
       (.I0(\APU_Triangle_reg[length_counter] [4]),
        .I1(\APU_Triangle_reg[length_counter] [1]),
        .I2(\APU_Triangle_reg[length_counter] [0]),
        .I3(\APU_Triangle_reg[length_counter] [2]),
        .I4(\APU_Triangle_reg[length_counter] [3]),
        .O(\APU_Triangle_Message[3]_INST_0_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][0]_i_1_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][1]_i_1_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][2]_i_1_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][3]_i_1_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][4]_i_1_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[length_counter][5]_i_2_n_0 ),
        .Q(\APU_Triangle_reg[length_counter] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(\APU_Triangle_reg[length_counter_halt]__0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\APU_Triangle_reg[linear_counter] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\APU_Triangle_reg[linear_counter] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\APU_Triangle_reg[linear_counter] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\APU_Triangle_reg[linear_counter] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\APU_Triangle_reg[linear_counter] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\APU_Triangle_reg[linear_counter] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[linear_counter] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\APU_Triangle_reg[linear_counter] [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Triangle_reg[linear_counter_load] [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Triangle_reg[linear_counter_load] [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Triangle_reg[linear_counter_load] [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(\APU_Triangle_reg[linear_counter_load] [3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(\APU_Triangle_reg[linear_counter_load] [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(\APU_Triangle_reg[linear_counter_load] [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(\APU_Triangle_reg[linear_counter_load] [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Message[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[timer][10]_i_1_n_0 ),
        .Q(APU_Triangle_Message[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Message[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Message[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Message[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Message[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Message[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Message[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][7] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Message[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[timer][8]_i_1_n_0 ),
        .Q(APU_Triangle_Message[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\APU_Triangle[timer][9]_i_1_n_0 ),
        .Q(APU_Triangle_Message[10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse1_Target0_carry
       (.CI(1'b0),
        .CO({Pulse1_Target0_carry_n_0,Pulse1_Target0_carry_n_1,Pulse1_Target0_carry_n_2,Pulse1_Target0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(Pulse1_Target01_out[3:0]),
        .S({Pulse1_Target0_carry_i_1_n_0,Pulse1_Target0_carry_i_2_n_0,Pulse1_Target0_carry_i_3_n_0,Pulse1_Target0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse1_Target0_carry__0
       (.CI(Pulse1_Target0_carry_n_0),
        .CO({Pulse1_Target0_carry__0_n_0,Pulse1_Target0_carry__0_n_1,Pulse1_Target0_carry__0_n_2,Pulse1_Target0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(Pulse1_Target01_out[7:4]),
        .S({Pulse1_Target0_carry__0_i_1_n_0,Pulse1_Target0_carry__0_i_2_n_0,Pulse1_Target0_carry__0_i_3_n_0,Pulse1_Target0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    Pulse1_Target0_carry__0_i_1
       (.I0(p_0_in3_in[6]),
        .I1(p_0_in3_in[5]),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(p_0_in3_in[4]),
        .I4(Q[7]),
        .I5(p_0_in3_in[7]),
        .O(Pulse1_Target0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Pulse1_Target0_carry__0_i_2
       (.I0(Q[6]),
        .I1(p_0_in3_in[6]),
        .I2(Pulse1_Target1_carry_i_10_n_0),
        .O(Pulse1_Target0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    Pulse1_Target0_carry__0_i_3
       (.I0(Pulse1_Target1_carry_i_13_n_0),
        .I1(p_0_in3_in[4]),
        .I2(Q[5]),
        .I3(p_0_in3_in[5]),
        .O(Pulse1_Target0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry__0_i_4
       (.I0(Pulse1_Target1_carry_i_13_n_0),
        .I1(p_0_in3_in[4]),
        .I2(Q[4]),
        .O(Pulse1_Target0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse1_Target0_carry__1
       (.CI(Pulse1_Target0_carry__0_n_0),
        .CO({NLW_Pulse1_Target0_carry__1_CO_UNCONNECTED[3:2],Pulse1_Target0_carry__1_n_2,Pulse1_Target0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,APU_Pulse1_Message[1],\APU_Pulse1_reg[timer][8]_0 }),
        .O({NLW_Pulse1_Target0_carry__1_O_UNCONNECTED[3],Pulse1_Target01_out[10:8]}),
        .S({1'b0,Pulse1_Target0_carry__1_i_1_n_0,Pulse1_Target0_carry__1_i_2_n_0,Pulse1_Target0_carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0000FFFF00C7FFF7)) 
    Pulse1_Target0_carry__1_i_1
       (.I0(APU_Pulse1_Message[1]),
        .I1(Pulse1_Target1_carry__0_i_5_n_0),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(APU_Pulse1_Message[2]),
        .I5(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .O(Pulse1_Target0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA5555AA655595)) 
    Pulse1_Target0_carry__1_i_2
       (.I0(Pulse1_Target1_carry__0_i_5_n_0),
        .I1(APU_Pulse1_Message[2]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(APU_Pulse1_Message[1]),
        .I5(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .O(Pulse1_Target0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Pulse1_Target0_carry__1_i_3
       (.I0(Pulse1_Target0_carry__1_i_4_n_0),
        .I1(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    Pulse1_Target0_carry__1_i_4
       (.I0(p_0_in3_in[7]),
        .I1(p_0_in3_in[6]),
        .I2(p_0_in3_in[5]),
        .I3(Pulse1_Target1_carry_i_13_n_0),
        .I4(p_0_in3_in[4]),
        .I5(p_0_in3_in[8]),
        .O(Pulse1_Target0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry_i_1
       (.I0(Pulse1_Target0_carry_i_5_n_0),
        .I1(p_0_in3_in[3]),
        .I2(Q[3]),
        .O(Pulse1_Target0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    Pulse1_Target0_carry_i_2
       (.I0(p_0_in3_in[1]),
        .I1(p_0_in3_in[0]),
        .I2(p_0_in3_in[2]),
        .I3(Q[2]),
        .O(Pulse1_Target0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry_i_3
       (.I0(p_0_in3_in[0]),
        .I1(p_0_in3_in[1]),
        .I2(Q[1]),
        .O(Pulse1_Target0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Pulse1_Target0_carry_i_4
       (.I0(Q[0]),
        .I1(p_0_in3_in[0]),
        .O(Pulse1_Target0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hA0800080)) 
    Pulse1_Target0_carry_i_5
       (.I0(Pulse1_Target1_carry_i_24_n_0),
        .I1(Pulse1_Target1_carry_i_23_n_0),
        .I2(Pulse1_Target1_carry_i_22_n_0),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I4(Pulse1_Target1_carry_i_25_n_0),
        .O(Pulse1_Target0_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Pulse1_Target1_carry
       (.CI(1'b0),
        .CO({Pulse1_Target1_carry_n_0,Pulse1_Target1_carry_n_1,Pulse1_Target1_carry_n_2,Pulse1_Target1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Pulse1_Target1_carry_i_1_n_0,Pulse1_Target1_carry_i_2_n_0,Pulse1_Target1_carry_i_3_n_0,Pulse1_Target1_carry_i_4_n_0}),
        .O(NLW_Pulse1_Target1_carry_O_UNCONNECTED[3:0]),
        .S({Pulse1_Target1_carry_i_5_n_0,Pulse1_Target1_carry_i_6_n_0,Pulse1_Target1_carry_i_7_n_0,Pulse1_Target1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Pulse1_Target1_carry__0
       (.CI(Pulse1_Target1_carry_n_0),
        .CO({NLW_Pulse1_Target1_carry__0_CO_UNCONNECTED[3:2],Pulse1_Target1,Pulse1_Target1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Pulse1_Target1_carry__0_i_1_n_0,Pulse1_Target1_carry__0_i_2_n_0}),
        .O(NLW_Pulse1_Target1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,Pulse1_Target1_carry__0_i_3_n_0,Pulse1_Target1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    Pulse1_Target1_carry__0_i_1
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I2(APU_Pulse1_Message[1]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I4(Pulse1_Target1_carry__0_i_5_n_0),
        .I5(APU_Pulse1_Message[2]),
        .O(Pulse1_Target1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h15403D54)) 
    Pulse1_Target1_carry__0_i_2
       (.I0(APU_Pulse1_Message[1]),
        .I1(Pulse1_Target1_carry__0_i_6_n_0),
        .I2(p_0_in3_in[8]),
        .I3(p_0_in3_in[9]),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h3732333737373337)) 
    Pulse1_Target1_carry__0_i_3
       (.I0(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I1(APU_Pulse1_Message[2]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I4(Pulse1_Target1_carry__0_i_5_n_0),
        .I5(APU_Pulse1_Message[1]),
        .O(Pulse1_Target1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    Pulse1_Target1_carry__0_i_4
       (.I0(p_0_in3_in[9]),
        .I1(APU_Pulse1_Message[1]),
        .I2(Pulse1_Target1_carry__0_i_6_n_0),
        .I3(p_0_in3_in[8]),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Pulse1_Target1_carry__0_i_5
       (.I0(p_0_in3_in[7]),
        .I1(p_0_in3_in[6]),
        .I2(p_0_in3_in[5]),
        .I3(Pulse1_Target1_carry_i_13_n_0),
        .I4(p_0_in3_in[4]),
        .I5(p_0_in3_in[8]),
        .O(Pulse1_Target1_carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    Pulse1_Target1_carry__0_i_6
       (.I0(p_0_in3_in[4]),
        .I1(Pulse1_Target1_carry_i_13_n_0),
        .I2(p_0_in3_in[5]),
        .I3(p_0_in3_in[6]),
        .I4(p_0_in3_in[7]),
        .O(Pulse1_Target1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    Pulse1_Target1_carry__0_i_7
       (.I0(APU_Pulse1_Message[1]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(APU_Pulse1_Message[2]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .I5(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .O(p_0_in3_in[8]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    Pulse1_Target1_carry__0_i_8
       (.I0(APU_Pulse1_Message[2]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I3(APU_Pulse1_Message[1]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .O(p_0_in3_in[9]));
  LUT5 #(
    .INIT(32'h4144D14D)) 
    Pulse1_Target1_carry_i_1
       (.I0(Q[7]),
        .I1(p_0_in3_in[7]),
        .I2(Pulse1_Target1_carry_i_10_n_0),
        .I3(p_0_in3_in[6]),
        .I4(Q[6]),
        .O(Pulse1_Target1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    Pulse1_Target1_carry_i_10
       (.I0(p_0_in3_in[4]),
        .I1(Pulse1_Target1_carry_i_13_n_0),
        .I2(p_0_in3_in[5]),
        .O(Pulse1_Target1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    Pulse1_Target1_carry_i_11
       (.I0(APU_Pulse1_Message[1]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(Q[7]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse1_Target1_carry_i_20_n_0),
        .O(p_0_in3_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_12
       (.I0(Pulse1_Target1_carry_i_20_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_21_n_0),
        .O(p_0_in3_in[5]));
  LUT6 #(
    .INIT(64'hA000800000008000)) 
    Pulse1_Target1_carry_i_13
       (.I0(Pulse1_Target1_carry_i_22_n_0),
        .I1(Pulse1_Target1_carry_i_23_n_0),
        .I2(Pulse1_Target1_carry_i_24_n_0),
        .I3(Pulse1_Target1_carry_i_25_n_0),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse1_Target1_carry_i_26_n_0),
        .O(Pulse1_Target1_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_14
       (.I0(Pulse1_Target1_carry_i_21_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_26_n_0),
        .O(p_0_in3_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_15
       (.I0(Pulse1_Target1_carry_i_26_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_25_n_0),
        .O(p_0_in3_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_16
       (.I0(Pulse1_Target1_carry_i_22_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_24_n_0),
        .O(p_0_in3_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_17
       (.I0(Pulse1_Target1_carry_i_24_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_23_n_0),
        .O(p_0_in3_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_18
       (.I0(Pulse1_Target1_carry_i_25_n_0),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse1_Target1_carry_i_22_n_0),
        .O(p_0_in3_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    Pulse1_Target1_carry_i_19
       (.I0(APU_Pulse1_Message[1]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(Q[7]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .O(Pulse1_Target1_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'h14441DD4)) 
    Pulse1_Target1_carry_i_2
       (.I0(Q[5]),
        .I1(p_0_in3_in[5]),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(p_0_in3_in[4]),
        .I4(Q[4]),
        .O(Pulse1_Target1_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    Pulse1_Target1_carry_i_20
       (.I0(\APU_Pulse1_reg[timer][8]_0 ),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(APU_Pulse1_Message[2]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(Q[6]),
        .O(Pulse1_Target1_carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    Pulse1_Target1_carry_i_21
       (.I0(Q[7]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(APU_Pulse1_Message[1]),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(Q[5]),
        .O(Pulse1_Target1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_22
       (.I0(\APU_Pulse1_reg[timer][8]_0 ),
        .I1(Q[4]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(Q[6]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I5(Q[2]),
        .O(Pulse1_Target1_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_23
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(Q[4]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I5(Q[0]),
        .O(Pulse1_Target1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_24
       (.I0(Q[7]),
        .I1(Q[3]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(Q[5]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I5(Q[1]),
        .O(Pulse1_Target1_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_25
       (.I0(APU_Pulse1_Message[1]),
        .I1(Q[5]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(Q[7]),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I5(Q[3]),
        .O(Pulse1_Target1_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_26
       (.I0(APU_Pulse1_Message[2]),
        .I1(Q[6]),
        .I2(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse1_reg[timer][8]_0 ),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I5(Q[4]),
        .O(Pulse1_Target1_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h144444441DDDD444)) 
    Pulse1_Target1_carry_i_3
       (.I0(Q[3]),
        .I1(p_0_in3_in[3]),
        .I2(p_0_in3_in[1]),
        .I3(p_0_in3_in[0]),
        .I4(p_0_in3_in[2]),
        .I5(Q[2]),
        .O(Pulse1_Target1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h141D)) 
    Pulse1_Target1_carry_i_4
       (.I0(Q[1]),
        .I1(p_0_in3_in[1]),
        .I2(p_0_in3_in[0]),
        .I3(Q[0]),
        .O(Pulse1_Target1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h90090690)) 
    Pulse1_Target1_carry_i_5
       (.I0(p_0_in3_in[7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_0_in3_in[6]),
        .I4(Pulse1_Target1_carry_i_10_n_0),
        .O(Pulse1_Target1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h06909009)) 
    Pulse1_Target1_carry_i_6
       (.I0(p_0_in3_in[5]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(p_0_in3_in[4]),
        .I4(Pulse1_Target1_carry_i_13_n_0),
        .O(Pulse1_Target1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0690900990099009)) 
    Pulse1_Target1_carry_i_7
       (.I0(p_0_in3_in[3]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(p_0_in3_in[2]),
        .I4(p_0_in3_in[0]),
        .I5(p_0_in3_in[1]),
        .O(Pulse1_Target1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    Pulse1_Target1_carry_i_8
       (.I0(p_0_in3_in[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_0_in3_in[0]),
        .O(Pulse1_Target1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    Pulse1_Target1_carry_i_9
       (.I0(APU_Pulse1_Message[2]),
        .I1(\APU_Pulse1_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse1_reg[timer][8]_0 ),
        .I3(\APU_Pulse1_reg[sweep_shift_n_0_][2] ),
        .I4(\APU_Pulse1_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse1_Target1_carry_i_19_n_0),
        .O(p_0_in3_in[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse2_Target0_carry
       (.CI(1'b0),
        .CO({Pulse2_Target0_carry_n_0,Pulse2_Target0_carry_n_1,Pulse2_Target0_carry_n_2,Pulse2_Target0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\APU_Pulse2_reg[timer][7]_0 [3:0]),
        .O(Pulse2_Target00_out[3:0]),
        .S({Pulse2_Target0_carry_i_1_n_0,Pulse2_Target0_carry_i_2_n_0,Pulse2_Target0_carry_i_3_n_0,Pulse2_Target0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse2_Target0_carry__0
       (.CI(Pulse2_Target0_carry_n_0),
        .CO({Pulse2_Target0_carry__0_n_0,Pulse2_Target0_carry__0_n_1,Pulse2_Target0_carry__0_n_2,Pulse2_Target0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\APU_Pulse2_reg[timer][7]_0 [7:4]),
        .O(Pulse2_Target00_out[7:4]),
        .S({Pulse2_Target0_carry__0_i_1_n_0,Pulse2_Target0_carry__0_i_2_n_0,Pulse2_Target0_carry__0_i_3_n_0,Pulse2_Target0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Pulse2_Target0_carry__0_i_1
       (.I0(Pulse2_Target1_carry_i_19_n_0),
        .O(Pulse2_Target0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Pulse2_Target0_carry__0_i_2
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_18_n_0),
        .O(Pulse2_Target0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry__0_i_3
       (.I0(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I1(Pulse2_Target1_carry_i_12_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hA656)) 
    Pulse2_Target0_carry__0_i_4
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_13_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .O(Pulse2_Target0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse2_Target0_carry__1
       (.CI(Pulse2_Target0_carry__0_n_0),
        .CO({NLW_Pulse2_Target0_carry__1_CO_UNCONNECTED[3:2],Pulse2_Target0_carry__1_n_2,Pulse2_Target0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\APU_Pulse2_reg[timer][9]_0 ,\APU_Pulse2_reg[timer][8]_0 }),
        .O({NLW_Pulse2_Target0_carry__1_O_UNCONNECTED[3],Pulse2_Target00_out[10:8]}),
        .S({1'b0,Pulse2_Target0_carry__1_i_1_n_0,Pulse2_Target0_carry__1_i_2_n_0,Pulse2_Target0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h01FF)) 
    Pulse2_Target0_carry__1_i_1
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(Pulse2_Target0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h3333393F)) 
    Pulse2_Target0_carry__1_i_2
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[timer][9]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .O(Pulse2_Target0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF30BBCF77)) 
    Pulse2_Target0_carry__1_i_3
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[timer][10]_0 ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I4(\APU_Pulse2_reg[timer][8]_0 ),
        .I5(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .O(Pulse2_Target0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    Pulse2_Target0_carry_i_1
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(Pulse2_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_13_n_0),
        .O(Pulse2_Target0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    Pulse2_Target0_carry_i_2
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .O(Pulse2_Target0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A9)) 
    Pulse2_Target0_carry_i_3
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .O(Pulse2_Target0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB847)) 
    Pulse2_Target0_carry_i_4
       (.I0(Pulse2_Target1_carry_i_16_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse2_Target1_carry_i_17_n_0),
        .I3(\APU_Pulse2_reg[timer][7]_0 [0]),
        .O(Pulse2_Target0_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Pulse2_Target1_carry
       (.CI(1'b0),
        .CO({Pulse2_Target1_carry_n_0,Pulse2_Target1_carry_n_1,Pulse2_Target1_carry_n_2,Pulse2_Target1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Pulse2_Target1_carry_i_1_n_0,Pulse2_Target1_carry_i_2_n_0,Pulse2_Target1_carry_i_3_n_0,Pulse2_Target1_carry_i_4_n_0}),
        .O(NLW_Pulse2_Target1_carry_O_UNCONNECTED[3:0]),
        .S({Pulse2_Target1_carry_i_5_n_0,Pulse2_Target1_carry_i_6_n_0,Pulse2_Target1_carry_i_7_n_0,Pulse2_Target1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Pulse2_Target1_carry__0
       (.CI(Pulse2_Target1_carry_n_0),
        .CO({NLW_Pulse2_Target1_carry__0_CO_UNCONNECTED[3:2],Pulse2_Target1,Pulse2_Target1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Pulse2_Target1_carry__0_i_1_n_0}),
        .O(NLW_Pulse2_Target1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,Pulse2_Target1_carry__0_i_2_n_0,Pulse2_Target1_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'h0000020000020A00)) 
    Pulse2_Target1_carry__0_i_1
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[timer][9]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I5(\APU_Pulse2_reg[timer][8]_0 ),
        .O(Pulse2_Target1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    Pulse2_Target1_carry__0_i_2
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(Pulse2_Target1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000555510B34537)) 
    Pulse2_Target1_carry__0_i_3
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(\APU_Pulse2_reg[timer][10]_0 ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I4(\APU_Pulse2_reg[timer][8]_0 ),
        .I5(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .O(Pulse2_Target1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h4500DFC54000DFC0)) 
    Pulse2_Target1_carry_i_1
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_9_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_10_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I5(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    Pulse2_Target1_carry_i_10
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .O(Pulse2_Target1_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    Pulse2_Target1_carry_i_11
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[timer][10]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I3(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .O(Pulse2_Target1_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    Pulse2_Target1_carry_i_12
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse2_reg[timer][9]_0 ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I4(\APU_Pulse2_reg[timer][7]_0 [5]),
        .O(Pulse2_Target1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    Pulse2_Target1_carry_i_13
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I5(\APU_Pulse2_reg[timer][8]_0 ),
        .O(Pulse2_Target1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    Pulse2_Target1_carry_i_14
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I2(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I4(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I5(\APU_Pulse2_reg[timer][9]_0 ),
        .O(Pulse2_Target1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    Pulse2_Target1_carry_i_15
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I5(\APU_Pulse2_reg[timer][7]_0 [2]),
        .O(Pulse2_Target1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_16
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I5(\APU_Pulse2_reg[timer][7]_0 [1]),
        .O(Pulse2_Target1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_17
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I5(\APU_Pulse2_reg[timer][7]_0 [0]),
        .O(Pulse2_Target1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    Pulse2_Target1_carry_i_18
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h333398C8CCCC98C8)) 
    Pulse2_Target1_carry_i_19
       (.I0(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I5(Pulse2_Target1_carry_i_9_n_0),
        .O(Pulse2_Target1_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h4000DFC04500DFC5)) 
    Pulse2_Target1_carry_i_2
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_11_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I5(Pulse2_Target1_carry_i_13_n_0),
        .O(Pulse2_Target1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h000100451157DDDF)) 
    Pulse2_Target1_carry_i_3
       (.I0(Pulse2_Target1_carry_i_14_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I2(Pulse2_Target1_carry_i_15_n_0),
        .I3(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I4(Pulse2_Target1_carry_i_13_n_0),
        .I5(\APU_Pulse2_reg[timer][7]_0 [3]),
        .O(Pulse2_Target1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h15007F3510007F30)) 
    Pulse2_Target1_carry_i_4
       (.I0(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_16_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I5(Pulse2_Target1_carry_i_17_n_0),
        .O(Pulse2_Target1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    Pulse2_Target1_carry_i_5
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_18_n_0),
        .I2(Pulse2_Target1_carry_i_19_n_0),
        .O(Pulse2_Target1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h8040291989492010)) 
    Pulse2_Target1_carry_i_6
       (.I0(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I1(Pulse2_Target1_carry_i_12_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_11_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I5(Pulse2_Target1_carry_i_13_n_0),
        .O(Pulse2_Target1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h000656A050A60600)) 
    Pulse2_Target1_carry_i_7
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I5(Pulse2_Target1_carry_i_13_n_0),
        .O(Pulse2_Target1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h4989408010201929)) 
    Pulse2_Target1_carry_i_8
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift_n_0_][0] ),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .I4(Pulse2_Target1_carry_i_17_n_0),
        .I5(\APU_Pulse2_reg[timer][7]_0 [0]),
        .O(Pulse2_Target1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    Pulse2_Target1_carry_i_9
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift_n_0_][1] ),
        .I2(\APU_Pulse2_reg[timer][8]_0 ),
        .I3(\APU_Pulse2_reg[sweep_shift_n_0_][2] ),
        .O(Pulse2_Target1_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[3]),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE_i_3_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_3 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[2]),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE_i_3_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_4 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[1]),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE_i_3_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \procFrameCounter.counter[0]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(\procFrameCounter.counter_reg [0]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_2 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[14]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_3 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[13]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_4 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[12]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[4]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[7]),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE_i_3_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_3 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[6]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_4 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[5]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[4]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[8]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[11]),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE_i_3_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAAAA)) 
    \procFrameCounter.counter[8]_i_3 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE_i_2_n_0),
        .I2(APU_Quarter_CE_i_3_n_0),
        .I3(APU_Half_CE_i_3_n_0),
        .I4(APU_Quarter_CE2[10]),
        .O(\procFrameCounter.counter[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAAAA)) 
    \procFrameCounter.counter[8]_i_4 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE_i_2_n_0),
        .I2(APU_Quarter_CE_i_3_n_0),
        .I3(APU_Half_CE_i_3_n_0),
        .I4(APU_Quarter_CE2[9]),
        .O(\procFrameCounter.counter[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[8]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_3_n_0),
        .I2(APU_Quarter_CE_i_2_n_0),
        .I3(APU_Quarter_CE2[8]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_7 ),
        .Q(\procFrameCounter.counter_reg [0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \procFrameCounter.counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\procFrameCounter.counter_reg[0]_i_1_n_0 ,\procFrameCounter.counter_reg[0]_i_1_n_1 ,\procFrameCounter.counter_reg[0]_i_1_n_2 ,\procFrameCounter.counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,APU_Half_CE_i_6_n_0}),
        .O({\procFrameCounter.counter_reg[0]_i_1_n_4 ,\procFrameCounter.counter_reg[0]_i_1_n_5 ,\procFrameCounter.counter_reg[0]_i_1_n_6 ,\procFrameCounter.counter_reg[0]_i_1_n_7 }),
        .S({\procFrameCounter.counter[0]_i_2_n_0 ,\procFrameCounter.counter[0]_i_3_n_0 ,\procFrameCounter.counter[0]_i_4_n_0 ,\procFrameCounter.counter[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[10] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[11] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[12] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[12]_i_1_n_7 ),
        .Q(\procFrameCounter.counter_reg [12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \procFrameCounter.counter_reg[12]_i_1 
       (.CI(\procFrameCounter.counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED [3:2],\procFrameCounter.counter_reg[12]_i_1_n_2 ,\procFrameCounter.counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED [3],\procFrameCounter.counter_reg[12]_i_1_n_5 ,\procFrameCounter.counter_reg[12]_i_1_n_6 ,\procFrameCounter.counter_reg[12]_i_1_n_7 }),
        .S({1'b0,\procFrameCounter.counter[12]_i_2_n_0 ,\procFrameCounter.counter[12]_i_3_n_0 ,\procFrameCounter.counter[12]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[13] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[12]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[14] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[12]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [14]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[3] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[4] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_7 ),
        .Q(\procFrameCounter.counter_reg [4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \procFrameCounter.counter_reg[4]_i_1 
       (.CI(\procFrameCounter.counter_reg[0]_i_1_n_0 ),
        .CO({\procFrameCounter.counter_reg[4]_i_1_n_0 ,\procFrameCounter.counter_reg[4]_i_1_n_1 ,\procFrameCounter.counter_reg[4]_i_1_n_2 ,\procFrameCounter.counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\procFrameCounter.counter_reg[4]_i_1_n_4 ,\procFrameCounter.counter_reg[4]_i_1_n_5 ,\procFrameCounter.counter_reg[4]_i_1_n_6 ,\procFrameCounter.counter_reg[4]_i_1_n_7 }),
        .S({\procFrameCounter.counter[4]_i_2_n_0 ,\procFrameCounter.counter[4]_i_3_n_0 ,\procFrameCounter.counter[4]_i_4_n_0 ,\procFrameCounter.counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[5] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [5]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[6] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [6]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[7] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [7]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[8] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_7 ),
        .Q(\procFrameCounter.counter_reg [8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \procFrameCounter.counter_reg[8]_i_1 
       (.CI(\procFrameCounter.counter_reg[4]_i_1_n_0 ),
        .CO({\procFrameCounter.counter_reg[8]_i_1_n_0 ,\procFrameCounter.counter_reg[8]_i_1_n_1 ,\procFrameCounter.counter_reg[8]_i_1_n_2 ,\procFrameCounter.counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\procFrameCounter.counter_reg[8]_i_1_n_4 ,\procFrameCounter.counter_reg[8]_i_1_n_5 ,\procFrameCounter.counter_reg[8]_i_1_n_6 ,\procFrameCounter.counter_reg[8]_i_1_n_7 }),
        .S({\procFrameCounter.counter[8]_i_2_n_0 ,\procFrameCounter.counter[8]_i_3_n_0 ,\procFrameCounter.counter[8]_i_4_n_0 ,\procFrameCounter.counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[9] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [9]));
  LUT6 #(
    .INIT(64'h88BB88BB88BB88BA)) 
    \procMainLogic.noise_envelope_divider[0]_i_1 
       (.I0(\APU_Noise_reg[envelope_n_0_][0] ),
        .I1(\APU_Noise[volume][3]_i_5_n_0 ),
        .I2(noise_envelope_divider[3]),
        .I3(noise_envelope_divider[0]),
        .I4(noise_envelope_divider[1]),
        .I5(noise_envelope_divider[2]),
        .O(\procMainLogic.noise_envelope_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888BBBB8888BA)) 
    \procMainLogic.noise_envelope_divider[1]_i_1 
       (.I0(\APU_Noise_reg[envelope_n_0_][1] ),
        .I1(\APU_Noise[volume][3]_i_5_n_0 ),
        .I2(noise_envelope_divider[3]),
        .I3(noise_envelope_divider[0]),
        .I4(noise_envelope_divider[1]),
        .I5(noise_envelope_divider[2]),
        .O(\procMainLogic.noise_envelope_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD8D8D88DD8D8D88C)) 
    \procMainLogic.noise_envelope_divider[2]_i_1 
       (.I0(\APU_Noise[volume][3]_i_5_n_0 ),
        .I1(\APU_Noise_reg[envelope_n_0_][2] ),
        .I2(noise_envelope_divider[2]),
        .I3(noise_envelope_divider[1]),
        .I4(noise_envelope_divider[0]),
        .I5(noise_envelope_divider[3]),
        .O(\procMainLogic.noise_envelope_divider[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD88888888C)) 
    \procMainLogic.noise_envelope_divider[3]_i_1 
       (.I0(\APU_Noise[volume][3]_i_5_n_0 ),
        .I1(\APU_Noise_reg[envelope_n_0_][3] ),
        .I2(noise_envelope_divider[2]),
        .I3(noise_envelope_divider[1]),
        .I4(noise_envelope_divider[0]),
        .I5(noise_envelope_divider[3]),
        .O(\procMainLogic.noise_envelope_divider[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_envelope_divider_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.noise_envelope_divider[0]_i_1_n_0 ),
        .Q(noise_envelope_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_envelope_divider_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.noise_envelope_divider[1]_i_1_n_0 ),
        .Q(noise_envelope_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_envelope_divider_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.noise_envelope_divider[2]_i_1_n_0 ),
        .Q(noise_envelope_divider[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_envelope_divider_reg[3] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.noise_envelope_divider[3]_i_1_n_0 ),
        .Q(noise_envelope_divider[3]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \procMainLogic.noise_envelope_start_i_1 
       (.I0(\APU_Noise[volume][3]_i_5_n_0 ),
        .I1(APU_Quarter_CE),
        .I2(CPU_Rst),
        .I3(Reset),
        .I4(\procMainLogic.noise_envelope_start_reg_n_0 ),
        .O(\procMainLogic.noise_envelope_start_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_envelope_start_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .D(\procMainLogic.noise_envelope_start_i_1_n_0 ),
        .Q(\procMainLogic.noise_envelope_start_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \procMainLogic.noise_shift_mode_i_1 
       (.I0(CPU_Data[7]),
        .I1(\APU_Noise[noise_period] ),
        .I2(\procMainLogic.noise_shift_mode_reg_n_0 ),
        .O(\procMainLogic.noise_shift_mode_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_mode_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.noise_shift_mode_i_1_n_0 ),
        .Q(\procMainLogic.noise_shift_mode_reg_n_0 ));
  LUT6 #(
    .INIT(64'h02A2000002A2FFFF)) 
    \procMainLogic.noise_shift_timer[0]_i_1 
       (.I0(APU_Noise_Message[5]),
        .I1(APU_Noise_Message[3]),
        .I2(APU_Noise_Message[4]),
        .I3(APU_Noise_Message[2]),
        .I4(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I5(noise_shift_timer[0]),
        .O(noise_shift_timer_1[0]));
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \procMainLogic.noise_shift_timer[10]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[10]_i_2_n_0 ),
        .I1(noise_shift_timer[9]),
        .I2(noise_shift_timer[10]),
        .I3(\procMainLogic.noise_shift_timer[10]_i_3_n_0 ),
        .I4(APU_Noise_Message[2]),
        .O(noise_shift_timer_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \procMainLogic.noise_shift_timer[10]_i_2 
       (.I0(noise_shift_timer[7]),
        .I1(noise_shift_timer[6]),
        .I2(\procMainLogic.noise_shift_timer[6]_i_2_n_0 ),
        .I3(noise_shift_timer[8]),
        .O(\procMainLogic.noise_shift_timer[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \procMainLogic.noise_shift_timer[10]_i_3 
       (.I0(APU_Noise_Message[3]),
        .I1(APU_Noise_Message[4]),
        .I2(APU_Noise_Message[5]),
        .I3(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .O(\procMainLogic.noise_shift_timer[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \procMainLogic.noise_shift_timer[1]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[1]_i_2_n_0 ),
        .I1(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I2(noise_shift_timer[1]),
        .I3(noise_shift_timer[0]),
        .O(noise_shift_timer_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8809)) 
    \procMainLogic.noise_shift_timer[1]_i_2 
       (.I0(APU_Noise_Message[5]),
        .I1(APU_Noise_Message[2]),
        .I2(APU_Noise_Message[4]),
        .I3(APU_Noise_Message[3]),
        .O(\procMainLogic.noise_shift_timer[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8E008EFF8EFF8E00)) 
    \procMainLogic.noise_shift_timer[2]_i_1 
       (.I0(APU_Noise_Message[5]),
        .I1(\procMainLogic.noise_shift_timer[2]_i_2_n_0 ),
        .I2(APU_Noise_Message[3]),
        .I3(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I4(noise_shift_timer[2]),
        .I5(\procMainLogic.noise_shift_timer[2]_i_3_n_0 ),
        .O(noise_shift_timer_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \procMainLogic.noise_shift_timer[2]_i_2 
       (.I0(APU_Noise_Message[2]),
        .I1(APU_Noise_Message[4]),
        .O(\procMainLogic.noise_shift_timer[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \procMainLogic.noise_shift_timer[2]_i_3 
       (.I0(noise_shift_timer[1]),
        .I1(noise_shift_timer[0]),
        .O(\procMainLogic.noise_shift_timer[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2A98FFFF2A980000)) 
    \procMainLogic.noise_shift_timer[3]_i_1 
       (.I0(APU_Noise_Message[5]),
        .I1(APU_Noise_Message[2]),
        .I2(APU_Noise_Message[3]),
        .I3(APU_Noise_Message[4]),
        .I4(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I5(\procMainLogic.noise_shift_timer[3]_i_2_n_0 ),
        .O(noise_shift_timer_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \procMainLogic.noise_shift_timer[3]_i_2 
       (.I0(noise_shift_timer[3]),
        .I1(noise_shift_timer[2]),
        .I2(noise_shift_timer[1]),
        .I3(noise_shift_timer[0]),
        .O(\procMainLogic.noise_shift_timer[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDDD5588008800)) 
    \procMainLogic.noise_shift_timer[4]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I1(APU_Noise_Message[5]),
        .I2(APU_Noise_Message[3]),
        .I3(APU_Noise_Message[4]),
        .I4(APU_Noise_Message[2]),
        .I5(\procMainLogic.noise_shift_timer[4]_i_2_n_0 ),
        .O(noise_shift_timer_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \procMainLogic.noise_shift_timer[4]_i_2 
       (.I0(noise_shift_timer[4]),
        .I1(noise_shift_timer[3]),
        .I2(noise_shift_timer[0]),
        .I3(noise_shift_timer[1]),
        .I4(noise_shift_timer[2]),
        .O(\procMainLogic.noise_shift_timer[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88A880A8AAAAAAAA)) 
    \procMainLogic.noise_shift_timer[5]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[5]_i_2_n_0 ),
        .I1(APU_Noise_Message[5]),
        .I2(APU_Noise_Message[4]),
        .I3(APU_Noise_Message[3]),
        .I4(APU_Noise_Message[2]),
        .I5(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .O(noise_shift_timer_1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \procMainLogic.noise_shift_timer[5]_i_2 
       (.I0(noise_shift_timer[5]),
        .I1(noise_shift_timer[4]),
        .I2(noise_shift_timer[2]),
        .I3(noise_shift_timer[1]),
        .I4(noise_shift_timer[0]),
        .I5(noise_shift_timer[3]),
        .O(\procMainLogic.noise_shift_timer[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEA00EA00EAFF)) 
    \procMainLogic.noise_shift_timer[6]_i_1 
       (.I0(APU_Noise_Message[5]),
        .I1(APU_Noise_Message[3]),
        .I2(APU_Noise_Message[4]),
        .I3(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I4(noise_shift_timer[6]),
        .I5(\procMainLogic.noise_shift_timer[6]_i_2_n_0 ),
        .O(noise_shift_timer_1[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \procMainLogic.noise_shift_timer[6]_i_2 
       (.I0(noise_shift_timer[5]),
        .I1(noise_shift_timer[4]),
        .I2(noise_shift_timer[2]),
        .I3(noise_shift_timer[1]),
        .I4(noise_shift_timer[0]),
        .I5(noise_shift_timer[3]),
        .O(\procMainLogic.noise_shift_timer[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333333CCCCCCC8)) 
    \procMainLogic.noise_shift_timer[7]_i_1 
       (.I0(\procMainLogic.noise_shift_timer[7]_i_2_n_0 ),
        .I1(\procMainLogic.noise_shift_timer[8]_i_2_n_0 ),
        .I2(noise_shift_timer[9]),
        .I3(noise_shift_timer[10]),
        .I4(noise_shift_timer[8]),
        .I5(noise_shift_timer[7]),
        .O(noise_shift_timer_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hC8C0)) 
    \procMainLogic.noise_shift_timer[7]_i_2 
       (.I0(APU_Noise_Message[4]),
        .I1(APU_Noise_Message[5]),
        .I2(APU_Noise_Message[3]),
        .I3(APU_Noise_Message[2]),
        .O(\procMainLogic.noise_shift_timer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80808F8F808F80)) 
    \procMainLogic.noise_shift_timer[8]_i_1 
       (.I0(APU_Noise_Message[4]),
        .I1(APU_Noise_Message[5]),
        .I2(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I3(noise_shift_timer[8]),
        .I4(noise_shift_timer[7]),
        .I5(\procMainLogic.noise_shift_timer[8]_i_2_n_0 ),
        .O(noise_shift_timer_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \procMainLogic.noise_shift_timer[8]_i_2 
       (.I0(noise_shift_timer[6]),
        .I1(\procMainLogic.noise_shift_timer[6]_i_2_n_0 ),
        .O(\procMainLogic.noise_shift_timer[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h800080FF80FF8000)) 
    \procMainLogic.noise_shift_timer[9]_i_1 
       (.I0(APU_Noise_Message[5]),
        .I1(APU_Noise_Message[4]),
        .I2(APU_Noise_Message[3]),
        .I3(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ),
        .I4(noise_shift_timer[9]),
        .I5(\procMainLogic.noise_shift_timer[10]_i_2_n_0 ),
        .O(noise_shift_timer_1[9]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \procMainLogic.noise_shift_timer[9]_i_2 
       (.I0(\procMainLogic.noise_shift_timer[6]_i_2_n_0 ),
        .I1(noise_shift_timer[6]),
        .I2(noise_shift_timer[9]),
        .I3(noise_shift_timer[10]),
        .I4(noise_shift_timer[8]),
        .I5(noise_shift_timer[7]),
        .O(\procMainLogic.noise_shift_timer[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[0]),
        .Q(noise_shift_timer[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[10] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[10]),
        .Q(noise_shift_timer[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[1]),
        .Q(noise_shift_timer[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[2]),
        .Q(noise_shift_timer[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[3] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[3]),
        .Q(noise_shift_timer[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[4] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[4]),
        .Q(noise_shift_timer[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[5] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[5]),
        .Q(noise_shift_timer[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[6] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[6]),
        .Q(noise_shift_timer[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[7] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[7]),
        .Q(noise_shift_timer[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[8] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[8]),
        .Q(noise_shift_timer[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.noise_shift_timer_reg[9] 
       (.C(CPU_M2),
        .CE(APU_Tick_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(noise_shift_timer_1[9]),
        .Q(noise_shift_timer[9]));
  LUT6 #(
    .INIT(64'h88BB88BB88BB88BA)) 
    \procMainLogic.pulse1_envelope_divider[0]_i_1 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][0] ),
        .I1(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I2(pulse1_envelope_divider[3]),
        .I3(pulse1_envelope_divider[0]),
        .I4(pulse1_envelope_divider[1]),
        .I5(pulse1_envelope_divider[2]),
        .O(\procMainLogic.pulse1_envelope_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888BBBB8888BA)) 
    \procMainLogic.pulse1_envelope_divider[1]_i_1 
       (.I0(\APU_Pulse1_reg[envelope_n_0_][1] ),
        .I1(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I2(pulse1_envelope_divider[3]),
        .I3(pulse1_envelope_divider[0]),
        .I4(pulse1_envelope_divider[1]),
        .I5(pulse1_envelope_divider[2]),
        .O(\procMainLogic.pulse1_envelope_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD8D8D88DD8D8D88C)) 
    \procMainLogic.pulse1_envelope_divider[2]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse1_reg[envelope_n_0_][2] ),
        .I2(pulse1_envelope_divider[2]),
        .I3(pulse1_envelope_divider[1]),
        .I4(pulse1_envelope_divider[0]),
        .I5(pulse1_envelope_divider[3]),
        .O(\procMainLogic.pulse1_envelope_divider[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD88888888C)) 
    \procMainLogic.pulse1_envelope_divider[3]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse1_reg[envelope_n_0_][3] ),
        .I2(pulse1_envelope_divider[2]),
        .I3(pulse1_envelope_divider[1]),
        .I4(pulse1_envelope_divider[0]),
        .I5(pulse1_envelope_divider[3]),
        .O(\procMainLogic.pulse1_envelope_divider[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[0]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[1]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[2]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[3] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[3]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \procMainLogic.pulse1_envelope_start_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Quarter_CE),
        .O(\procMainLogic.pulse1_envelope_start_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_start_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_start_i_1_n_0 ),
        .Q(\procMainLogic.pulse1_envelope_start_reg_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF3300000032)) 
    \procMainLogic.pulse1_sweep_divider[0]_i_1 
       (.I0(pulse1_sweep_divider[1]),
        .I1(pulse1_sweep_divider[0]),
        .I2(pulse1_sweep_divider[2]),
        .I3(\APU_Pulse1[sweep_enable] ),
        .I4(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I5(\APU_Pulse1_reg[sweep_period] [0]),
        .O(\procMainLogic.pulse1_sweep_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9900000098)) 
    \procMainLogic.pulse1_sweep_divider[1]_i_1 
       (.I0(pulse1_sweep_divider[1]),
        .I1(pulse1_sweep_divider[0]),
        .I2(pulse1_sweep_divider[2]),
        .I3(\APU_Pulse1[sweep_enable] ),
        .I4(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I5(\APU_Pulse1_reg[sweep_period] [1]),
        .O(\procMainLogic.pulse1_sweep_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8A8AA)) 
    \procMainLogic.pulse1_sweep_divider[2]_i_1 
       (.I0(\APU_Pulse1_reg[sweep_period] [2]),
        .I1(\APU_Pulse1[sweep_enable] ),
        .I2(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I3(pulse1_sweep_divider[0]),
        .I4(pulse1_sweep_divider[1]),
        .I5(pulse1_sweep_divider[2]),
        .O(\procMainLogic.pulse1_sweep_divider[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_divider_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[0]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_divider_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[1]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_divider_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[2]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \procMainLogic.pulse1_sweep_reload_i_1 
       (.I0(\APU_Pulse1[sweep_enable] ),
        .I1(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I2(APU_Half_CE_reg_n_0),
        .O(\procMainLogic.pulse1_sweep_reload_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_reload_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_reload_i_1_n_0 ),
        .Q(\procMainLogic.pulse1_sweep_reload_reg_n_0 ));
  LUT6 #(
    .INIT(64'h88BB88BB88BB88BA)) 
    \procMainLogic.pulse2_envelope_divider[0]_i_1 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][0] ),
        .I1(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I2(pulse2_envelope_divider[3]),
        .I3(pulse2_envelope_divider[0]),
        .I4(pulse2_envelope_divider[1]),
        .I5(pulse2_envelope_divider[2]),
        .O(\procMainLogic.pulse2_envelope_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888BBBB8888BA)) 
    \procMainLogic.pulse2_envelope_divider[1]_i_1 
       (.I0(\APU_Pulse2_reg[envelope_n_0_][1] ),
        .I1(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I2(pulse2_envelope_divider[3]),
        .I3(pulse2_envelope_divider[0]),
        .I4(pulse2_envelope_divider[1]),
        .I5(pulse2_envelope_divider[2]),
        .O(\procMainLogic.pulse2_envelope_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD8D8D88DD8D8D88C)) 
    \procMainLogic.pulse2_envelope_divider[2]_i_1 
       (.I0(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse2_reg[envelope_n_0_][2] ),
        .I2(pulse2_envelope_divider[2]),
        .I3(pulse2_envelope_divider[1]),
        .I4(pulse2_envelope_divider[0]),
        .I5(pulse2_envelope_divider[3]),
        .O(\procMainLogic.pulse2_envelope_divider[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD88888888C)) 
    \procMainLogic.pulse2_envelope_divider[3]_i_1 
       (.I0(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I1(\APU_Pulse2_reg[envelope_n_0_][3] ),
        .I2(pulse2_envelope_divider[2]),
        .I3(pulse2_envelope_divider[1]),
        .I4(pulse2_envelope_divider[0]),
        .I5(pulse2_envelope_divider[3]),
        .O(\procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[0]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[1]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[2]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[3] 
       (.C(CPU_M2),
        .CE(APU_Quarter_CE),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \procMainLogic.pulse2_envelope_start_i_1 
       (.I0(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I1(APU_Quarter_CE),
        .O(\procMainLogic.pulse2_envelope_start_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_start_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_start_i_1_n_0 ),
        .Q(\procMainLogic.pulse2_envelope_start_reg_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF3300000032)) 
    \procMainLogic.pulse2_sweep_divider[0]_i_1 
       (.I0(pulse2_sweep_divider[1]),
        .I1(pulse2_sweep_divider[0]),
        .I2(pulse2_sweep_divider[2]),
        .I3(\APU_Pulse2[sweep_enable] ),
        .I4(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I5(\APU_Pulse2_reg[sweep_period] [0]),
        .O(\procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9900000098)) 
    \procMainLogic.pulse2_sweep_divider[1]_i_1 
       (.I0(pulse2_sweep_divider[1]),
        .I1(pulse2_sweep_divider[0]),
        .I2(pulse2_sweep_divider[2]),
        .I3(\APU_Pulse2[sweep_enable] ),
        .I4(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I5(\APU_Pulse2_reg[sweep_period] [1]),
        .O(\procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8A8AA)) 
    \procMainLogic.pulse2_sweep_divider[2]_i_1 
       (.I0(\APU_Pulse2_reg[sweep_period] [2]),
        .I1(\APU_Pulse2[sweep_enable] ),
        .I2(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I3(pulse2_sweep_divider[0]),
        .I4(pulse2_sweep_divider[1]),
        .I5(pulse2_sweep_divider[2]),
        .O(\procMainLogic.pulse2_sweep_divider[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_divider_reg[0] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_divider_reg[1] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_divider_reg[2] 
       (.C(CPU_M2),
        .CE(APU_Half_CE_reg_n_0),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[2]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \procMainLogic.pulse2_sweep_reload_i_1 
       (.I0(\APU_Pulse2[sweep_enable] ),
        .I1(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I2(APU_Half_CE_reg_n_0),
        .O(\procMainLogic.pulse2_sweep_reload_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_reload_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_reload_i_1_n_0 ),
        .Q(\procMainLogic.pulse2_sweep_reload_reg_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \procMainLogic.triangle_linear_reload_i_1 
       (.I0(\procMainLogic.triangle_linear_reload_i_2_n_0 ),
        .I1(\APU_Triangle_reg[length_counter_halt]__0 ),
        .I2(APU_Quarter_CE),
        .O(\procMainLogic.triangle_linear_reload_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \procMainLogic.triangle_linear_reload_i_2 
       (.I0(\procMainLogic.triangle_linear_reload_reg_n_0 ),
        .I1(CPU_Addr[2]),
        .I2(\procMainLogic.triangle_linear_reload_i_3_n_0 ),
        .I3(CPU_Addr[0]),
        .I4(\APU_Pulse2[timer][7]_i_4_n_0 ),
        .I5(\APU_Triangle[timer][7]_i_2_n_0 ),
        .O(\procMainLogic.triangle_linear_reload_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \procMainLogic.triangle_linear_reload_i_3 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[4]),
        .I2(CPU_Addr[1]),
        .O(\procMainLogic.triangle_linear_reload_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.triangle_linear_reload_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .D(\procMainLogic.triangle_linear_reload_i_1_n_0 ),
        .Q(\procMainLogic.triangle_linear_reload_reg_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
