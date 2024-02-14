// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Feb 14 00:12:03 2024
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
    APU_Pulse1_Out,
    APU_Pulse2_Out,
    APU_Triangle_Out,
    APU_Noise_Out,
    APU_DMC_Out,
    APU_Status_Out,
    APU_Counter_Out,
    APU_Pulse1_Message,
    APU_Pulse2_Message,
    dbg_apu_tick,
    dbg_apu_half,
    dbg_apu_qtr,
    dbg_overflow_1,
    dbg_overflow_2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CPU_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Clk, ASSOCIATED_RESET CPU_Rst, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0" *) input CPU_Clk;
  input CPU_M2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_Rst;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]APU_Counter_Out;
  wire [28:0]APU_DMC_Out;
  wire [15:0]APU_Noise_Out;
  wire [18:3]\^APU_Pulse1_Message ;
  wire [52:0]\^APU_Pulse1_Out ;
  wire [18:3]\^APU_Pulse2_Message ;
  wire [52:0]\^APU_Pulse2_Out ;
  wire [4:0]\^APU_Status_Out ;
  wire [41:11]\^APU_Triangle_Out ;
  wire [14:0]CPU_Addr;
  wire [7:0]CPU_Data;
  wire CPU_M2;
  wire CPU_RW;
  wire CPU_RomSel;
  wire CPU_Rst;
  wire Reset;
  wire dbg_apu_half;
  wire dbg_apu_qtr;
  wire dbg_apu_tick;
  wire dbg_overflow_1;
  wire dbg_overflow_2;

  assign APU_Pulse1_Message[18:3] = \^APU_Pulse1_Message [18:3];
  assign APU_Pulse1_Message[2] = \<const0> ;
  assign APU_Pulse1_Message[1] = \<const0> ;
  assign APU_Pulse1_Message[0] = \<const0> ;
  assign APU_Pulse1_Out[52:17] = \^APU_Pulse1_Out [52:17];
  assign APU_Pulse1_Out[16:6] = \^APU_Pulse1_Message [14:4];
  assign APU_Pulse1_Out[5:0] = \^APU_Pulse1_Out [5:0];
  assign APU_Pulse2_Message[18:3] = \^APU_Pulse2_Message [18:3];
  assign APU_Pulse2_Message[2] = \<const0> ;
  assign APU_Pulse2_Message[1] = \<const0> ;
  assign APU_Pulse2_Message[0] = \<const1> ;
  assign APU_Pulse2_Out[52:17] = \^APU_Pulse2_Out [52:17];
  assign APU_Pulse2_Out[16:6] = \^APU_Pulse2_Message [14:4];
  assign APU_Pulse2_Out[5:0] = \^APU_Pulse2_Out [5:0];
  assign APU_Status_Out[6] = \<const0> ;
  assign APU_Status_Out[5] = \<const0> ;
  assign APU_Status_Out[4:0] = \^APU_Status_Out [4:0];
  assign APU_Triangle_Out[41:11] = \^APU_Triangle_Out [41:11];
  assign APU_Triangle_Out[10] = \<const0> ;
  assign APU_Triangle_Out[9] = \<const0> ;
  assign APU_Triangle_Out[8] = \<const0> ;
  assign APU_Triangle_Out[7] = \<const0> ;
  assign APU_Triangle_Out[6] = \<const0> ;
  assign APU_Triangle_Out[5] = \<const0> ;
  assign APU_Triangle_Out[4] = \<const0> ;
  assign APU_Triangle_Out[3] = \<const0> ;
  assign APU_Triangle_Out[2] = \<const0> ;
  assign APU_Triangle_Out[1] = \<const0> ;
  assign APU_Triangle_Out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_nes_apu_0_0_nes_apu inst
       (.APU_Counter_Out(APU_Counter_Out[0]),
        .\APU_Counter_reg[mode]_0 (APU_Counter_Out[1]),
        .APU_DMC_Out(APU_DMC_Out),
        .APU_Noise_Out(APU_Noise_Out),
        .APU_Pulse1_Message({\^APU_Pulse1_Message [18:15],\^APU_Pulse1_Message [13],\^APU_Pulse1_Message [3]}),
        .APU_Pulse1_Out({\^APU_Pulse1_Out [52:36],\^APU_Pulse1_Out [29:17],\^APU_Pulse1_Out [5:0]}),
        .\APU_Pulse1_reg[timer][10]_0 (\^APU_Pulse1_Message [14]),
        .\APU_Pulse1_reg[timer][7]_0 (\^APU_Pulse1_Message [11:4]),
        .\APU_Pulse1_reg[timer][8]_0 (\^APU_Pulse1_Message [12]),
        .\APU_Pulse1_reg[timer_load][10]_0 (\^APU_Pulse1_Out [32:30]),
        .APU_Pulse2_Message({\^APU_Pulse2_Message [18:15],\^APU_Pulse2_Message [3]}),
        .APU_Pulse2_Out({\^APU_Pulse2_Out [52:36],\^APU_Pulse2_Out [32:17],\^APU_Pulse2_Out [5:0]}),
        .\APU_Pulse2_reg[sweep_shift][2]_0 (\^APU_Pulse2_Out [35:33]),
        .\APU_Pulse2_reg[timer][10]_0 (\^APU_Pulse2_Message [14]),
        .\APU_Pulse2_reg[timer][7]_0 (\^APU_Pulse2_Message [11:4]),
        .\APU_Pulse2_reg[timer][8]_0 (\^APU_Pulse2_Message [12]),
        .\APU_Pulse2_reg[timer][9]_0 (\^APU_Pulse2_Message [13]),
        .APU_Status_Out(\^APU_Status_Out ),
        .APU_Triangle_Out(\^APU_Triangle_Out ),
        .CPU_Addr(CPU_Addr),
        .CPU_Data(CPU_Data),
        .CPU_M2(CPU_M2),
        .CPU_RW(CPU_RW),
        .CPU_RomSel(CPU_RomSel),
        .CPU_Rst(CPU_Rst),
        .Q(\^APU_Pulse1_Out [35:33]),
        .Reset(Reset),
        .dbg_apu_half(dbg_apu_half),
        .dbg_apu_qtr(dbg_apu_qtr),
        .dbg_apu_tick(dbg_apu_tick),
        .dbg_overflow_1(dbg_overflow_1),
        .dbg_overflow_2(dbg_overflow_2));
endmodule

(* ORIG_REF_NAME = "nes_apu" *) 
module design_1_nes_apu_0_0_nes_apu
   (\APU_Pulse1_reg[timer][8]_0 ,
    \APU_Pulse1_reg[timer][10]_0 ,
    Q,
    \APU_Pulse1_reg[timer][7]_0 ,
    \APU_Pulse2_reg[timer][7]_0 ,
    \APU_Pulse2_reg[sweep_shift][2]_0 ,
    \APU_Pulse2_reg[timer][10]_0 ,
    \APU_Pulse2_reg[timer][8]_0 ,
    \APU_Pulse2_reg[timer][9]_0 ,
    APU_Pulse2_Message,
    APU_Pulse2_Out,
    APU_Pulse1_Message,
    APU_Pulse1_Out,
    dbg_apu_half,
    \APU_Pulse1_reg[timer_load][10]_0 ,
    dbg_apu_tick,
    APU_Status_Out,
    dbg_apu_qtr,
    APU_Triangle_Out,
    APU_Noise_Out,
    APU_DMC_Out,
    dbg_overflow_2,
    dbg_overflow_1,
    \APU_Counter_reg[mode]_0 ,
    APU_Counter_Out,
    CPU_Addr,
    CPU_RW,
    CPU_RomSel,
    CPU_Rst,
    Reset,
    CPU_M2,
    CPU_Data);
  output \APU_Pulse1_reg[timer][8]_0 ;
  output \APU_Pulse1_reg[timer][10]_0 ;
  output [2:0]Q;
  output [7:0]\APU_Pulse1_reg[timer][7]_0 ;
  output [7:0]\APU_Pulse2_reg[timer][7]_0 ;
  output [2:0]\APU_Pulse2_reg[sweep_shift][2]_0 ;
  output \APU_Pulse2_reg[timer][10]_0 ;
  output \APU_Pulse2_reg[timer][8]_0 ;
  output \APU_Pulse2_reg[timer][9]_0 ;
  output [4:0]APU_Pulse2_Message;
  output [38:0]APU_Pulse2_Out;
  output [5:0]APU_Pulse1_Message;
  output [35:0]APU_Pulse1_Out;
  output dbg_apu_half;
  output [2:0]\APU_Pulse1_reg[timer_load][10]_0 ;
  output dbg_apu_tick;
  output [4:0]APU_Status_Out;
  output dbg_apu_qtr;
  output [30:0]APU_Triangle_Out;
  output [15:0]APU_Noise_Out;
  output [28:0]APU_DMC_Out;
  output dbg_overflow_2;
  output dbg_overflow_1;
  output \APU_Counter_reg[mode]_0 ;
  output [0:0]APU_Counter_Out;
  input [14:0]CPU_Addr;
  input CPU_RW;
  input CPU_RomSel;
  input CPU_Rst;
  input Reset;
  input CPU_M2;
  input [7:0]CPU_Data;

  wire \APU_Counter[irq_inhibit]_i_1_n_0 ;
  wire \APU_Counter[mode]_i_1_n_0 ;
  wire \APU_Counter[mode]_i_2_n_0 ;
  wire [0:0]APU_Counter_Out;
  wire \APU_Counter_reg[mode]_0 ;
  wire \APU_DMC[irq_enable] ;
  wire \APU_DMC[load_counter] ;
  wire \APU_DMC[sample_address] ;
  wire \APU_DMC[sample_length] ;
  wire \APU_DMC[sample_length][7]_i_2_n_0 ;
  wire [28:0]APU_DMC_Out;
  wire APU_Half_CE18_out;
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
  wire \APU_Noise[length_counter] ;
  wire \APU_Noise[length_counter_halt] ;
  wire \APU_Noise[length_counter_halt]_i_2_n_0 ;
  wire \APU_Noise[loop_noise] ;
  wire [15:0]APU_Noise_Out;
  wire \APU_Pulse1[duty] ;
  wire \APU_Pulse1[duty][1]_i_2_n_0 ;
  wire \APU_Pulse1[duty][1]_i_3_n_0 ;
  wire \APU_Pulse1[duty][1]_i_4_n_0 ;
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
  wire \APU_Pulse1[length_counter_load] ;
  wire \APU_Pulse1[sweep_enable] ;
  wire \APU_Pulse1[sweep_enable]_i_2_n_0 ;
  wire \APU_Pulse1[sweep_enable]_i_3_n_0 ;
  wire \APU_Pulse1[sweep_enable]_i_4_n_0 ;
  wire \APU_Pulse1[sweep_enable]_i_5_n_0 ;
  wire \APU_Pulse1[timer][0]_i_2_n_0 ;
  wire \APU_Pulse1[timer][10]_i_1_n_0 ;
  wire \APU_Pulse1[timer][10]_i_2_n_0 ;
  wire \APU_Pulse1[timer][10]_i_3_n_0 ;
  wire \APU_Pulse1[timer][10]_i_4_n_0 ;
  wire \APU_Pulse1[timer][10]_i_5_n_0 ;
  wire \APU_Pulse1[timer][10]_i_6_n_0 ;
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
  wire \APU_Pulse1[timer][8]_i_1_n_0 ;
  wire \APU_Pulse1[timer][8]_i_2_n_0 ;
  wire \APU_Pulse1[timer][9]_i_1_n_0 ;
  wire \APU_Pulse1[timer][9]_i_2_n_0 ;
  wire [10:7]\APU_Pulse1[timer_load] ;
  wire \APU_Pulse1[timer_load][10]_i_1_n_0 ;
  wire \APU_Pulse1[timer_load][7]_i_2_n_0 ;
  wire \APU_Pulse1[timer_load][8]_i_1_n_0 ;
  wire \APU_Pulse1[timer_load][9]_i_1_n_0 ;
  wire \APU_Pulse1[volume] ;
  wire \APU_Pulse1[volume][0]_i_1_n_0 ;
  wire \APU_Pulse1[volume][1]_i_1_n_0 ;
  wire \APU_Pulse1[volume][2]_i_1_n_0 ;
  wire \APU_Pulse1[volume][3]_i_2_n_0 ;
  wire \APU_Pulse1[volume][3]_i_3_n_0 ;
  wire \APU_Pulse1[volume][3]_i_4_n_0 ;
  wire \APU_Pulse1[volume][3]_i_5_n_0 ;
  wire [5:0]APU_Pulse1_Message;
  wire \APU_Pulse1_Message[3]_INST_0_i_10_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_11_n_0 ;
  wire \APU_Pulse1_Message[3]_INST_0_i_12_n_0 ;
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
  wire [35:0]APU_Pulse1_Out;
  wire \APU_Pulse1_reg[timer][10]_0 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_0 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_1 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_2 ;
  wire \APU_Pulse1_reg[timer][3]_i_3_n_3 ;
  wire [7:0]\APU_Pulse1_reg[timer][7]_0 ;
  wire \APU_Pulse1_reg[timer][8]_0 ;
  wire [2:0]\APU_Pulse1_reg[timer_load][10]_0 ;
  wire \APU_Pulse2[duty][1]_i_1_n_0 ;
  wire \APU_Pulse2[duty][1]_i_2_n_0 ;
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
  wire \APU_Pulse2[sweep_enable]_i_1_n_0 ;
  wire \APU_Pulse2[timer][0]_i_1_n_0 ;
  wire \APU_Pulse2[timer][0]_i_2_n_0 ;
  wire \APU_Pulse2[timer][10]_i_1_n_0 ;
  wire \APU_Pulse2[timer][10]_i_2_n_0 ;
  wire \APU_Pulse2[timer][10]_i_3_n_0 ;
  wire \APU_Pulse2[timer][10]_i_4_n_0 ;
  wire \APU_Pulse2[timer][10]_i_5_n_0 ;
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
  wire \APU_Pulse2[timer][8]_i_1_n_0 ;
  wire \APU_Pulse2[timer][8]_i_2_n_0 ;
  wire \APU_Pulse2[timer][9]_i_1_n_0 ;
  wire \APU_Pulse2[timer][9]_i_2_n_0 ;
  wire [10:7]\APU_Pulse2[timer_load] ;
  wire \APU_Pulse2[timer_load][10]_i_2_n_0 ;
  wire \APU_Pulse2[timer_load][7]_i_2_n_0 ;
  wire \APU_Pulse2[volume] ;
  wire \APU_Pulse2[volume][0]_i_1_n_0 ;
  wire \APU_Pulse2[volume][1]_i_1_n_0 ;
  wire \APU_Pulse2[volume][1]_i_2_n_0 ;
  wire \APU_Pulse2[volume][2]_i_1_n_0 ;
  wire \APU_Pulse2[volume][2]_i_2_n_0 ;
  wire \APU_Pulse2[volume][3]_i_2_n_0 ;
  wire \APU_Pulse2[volume][3]_i_3_n_0 ;
  wire \APU_Pulse2[volume][3]_i_4_n_0 ;
  wire \APU_Pulse2[volume][3]_i_5_n_0 ;
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
  wire [38:0]APU_Pulse2_Out;
  wire [2:0]\APU_Pulse2_reg[sweep_shift][2]_0 ;
  wire \APU_Pulse2_reg[timer][10]_0 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_0 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_1 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_2 ;
  wire \APU_Pulse2_reg[timer][3]_i_3_n_3 ;
  wire [7:0]\APU_Pulse2_reg[timer][7]_0 ;
  wire \APU_Pulse2_reg[timer][8]_0 ;
  wire \APU_Pulse2_reg[timer][9]_0 ;
  wire APU_Quarter_CE12_out;
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
  wire APU_Quarter_CE_i_9_n_0;
  wire \APU_Status[dmc_active] ;
  wire [4:0]APU_Status_Out;
  wire \APU_Triangle[length_counter_halt] ;
  wire \APU_Triangle[length_counter_halt]_i_2_n_0 ;
  wire \APU_Triangle[timer_load][10]_i_1_n_0 ;
  wire \APU_Triangle[timer_load][7]_i_1_n_0 ;
  wire \APU_Triangle[timer_load][7]_i_2_n_0 ;
  wire [30:0]APU_Triangle_Out;
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
  wire Pulse1_Target1_carry__0_i_10_n_0;
  wire Pulse1_Target1_carry__0_i_1_n_0;
  wire Pulse1_Target1_carry__0_i_2_n_0;
  wire Pulse1_Target1_carry__0_i_3_n_0;
  wire Pulse1_Target1_carry__0_i_4_n_0;
  wire Pulse1_Target1_carry__0_i_5_n_0;
  wire Pulse1_Target1_carry__0_i_6_n_0;
  wire Pulse1_Target1_carry__0_i_7_n_0;
  wire Pulse1_Target1_carry__0_i_8_n_0;
  wire Pulse1_Target1_carry__0_n_3;
  wire Pulse1_Target1_carry_i_10_n_0;
  wire Pulse1_Target1_carry_i_11_n_0;
  wire Pulse1_Target1_carry_i_13_n_0;
  wire Pulse1_Target1_carry_i_14_n_0;
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
  wire Pulse1_Target1_carry_i_9_n_0;
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
  wire Pulse2_Target1_carry__0_i_4_n_0;
  wire Pulse2_Target1_carry__0_i_5_n_0;
  wire Pulse2_Target1_carry__0_i_6_n_0;
  wire Pulse2_Target1_carry__0_n_3;
  wire Pulse2_Target1_carry_i_10_n_0;
  wire Pulse2_Target1_carry_i_11_n_0;
  wire Pulse2_Target1_carry_i_12_n_0;
  wire Pulse2_Target1_carry_i_13_n_0;
  wire Pulse2_Target1_carry_i_14_n_0;
  wire Pulse2_Target1_carry_i_15_n_0;
  wire Pulse2_Target1_carry_i_16_n_0;
  wire Pulse2_Target1_carry_i_17_n_0;
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
  wire [2:0]Q;
  wire Reset;
  wire dbg_apu_half;
  wire dbg_apu_qtr;
  wire dbg_apu_tick;
  wire dbg_overflow_1;
  wire dbg_overflow_2;
  wire [9:0]p_0_in3_in;
  wire p_1_in;
  wire [7:0]p_2_in;
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
  wire \procMainLogic.pulse2_envelope_divider[2]_i_2_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_divider[3]_i_2_n_0 ;
  wire \procMainLogic.pulse2_envelope_start_i_1_n_0 ;
  wire \procMainLogic.pulse2_envelope_start_reg_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_reload_i_1_n_0 ;
  wire \procMainLogic.pulse2_sweep_reload_reg_n_0 ;
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
    .INIT(64'hFBFFFFFF08000000)) 
    \APU_Counter[irq_inhibit]_i_1 
       (.I0(CPU_Data[6]),
        .I1(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I2(\APU_Counter[mode]_i_2_n_0 ),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(APU_Counter_Out),
        .O(\APU_Counter[irq_inhibit]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \APU_Counter[mode]_i_1 
       (.I0(CPU_Data[7]),
        .I1(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I2(\APU_Counter[mode]_i_2_n_0 ),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Counter_reg[mode]_0 ),
        .O(\APU_Counter[mode]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \APU_Counter[mode]_i_2 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(CPU_Addr[1]),
        .I3(CPU_Addr[0]),
        .O(\APU_Counter[mode]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Counter_reg[irq_inhibit] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Counter[irq_inhibit]_i_1_n_0 ),
        .Q(APU_Counter_Out));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Counter_reg[mode] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Counter[mode]_i_1_n_0 ),
        .Q(\APU_Counter_reg[mode]_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \APU_DMC[irq_enable]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[2]),
        .O(\APU_DMC[irq_enable] ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \APU_DMC[load_counter][6]_i_1 
       (.I0(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[2]),
        .O(\APU_DMC[load_counter] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \APU_DMC[sample_address][7]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I3(CPU_Addr[0]),
        .I4(CPU_Addr[1]),
        .I5(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .O(\APU_DMC[sample_address] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \APU_DMC[sample_length][7]_i_1 
       (.I0(\APU_DMC[sample_length][7]_i_2_n_0 ),
        .I1(CPU_RomSel),
        .I2(CPU_RW),
        .I3(CPU_Addr[1]),
        .I4(CPU_Addr[0]),
        .I5(CPU_Addr[3]),
        .O(\APU_DMC[sample_length] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \APU_DMC[sample_length][7]_i_2 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[4]),
        .I2(CPU_Addr[2]),
        .O(\APU_DMC[sample_length][7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[dmc_loop] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[irq_enable] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][7] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][7] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[7]));
  LUT6 #(
    .INIT(64'h0000000011F10000)) 
    APU_Half_CE_i_1
       (.I0(APU_Half_CE_i_2_n_0),
        .I1(APU_Half_CE_i_3_n_0),
        .I2(APU_Half_CE_i_4_n_0),
        .I3(APU_Half_CE_i_5_n_0),
        .I4(dbg_apu_tick),
        .I5(APU_Half_CE_i_6_n_0),
        .O(APU_Half_CE18_out));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    APU_Half_CE_i_10
       (.I0(\procFrameCounter.counter_reg [5]),
        .I1(\procFrameCounter.counter_reg [0]),
        .I2(\procFrameCounter.counter_reg [1]),
        .I3(APU_Half_CE_i_13_n_0),
        .I4(\procFrameCounter.counter_reg [13]),
        .I5(\procFrameCounter.counter_reg [11]),
        .O(APU_Half_CE_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    APU_Half_CE_i_11
       (.I0(\procFrameCounter.counter_reg [8]),
        .I1(\procFrameCounter.counter_reg [4]),
        .I2(\procFrameCounter.counter_reg [12]),
        .I3(\procFrameCounter.counter_reg [7]),
        .I4(\procFrameCounter.counter_reg [9]),
        .O(APU_Half_CE_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    APU_Half_CE_i_12
       (.I0(\procFrameCounter.counter_reg [9]),
        .I1(\procFrameCounter.counter_reg [12]),
        .O(APU_Half_CE_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    APU_Half_CE_i_7
       (.I0(\procFrameCounter.counter_reg [7]),
        .I1(\procFrameCounter.counter_reg [1]),
        .I2(\APU_Counter_reg[mode]_0 ),
        .I3(\procFrameCounter.counter_reg [5]),
        .I4(\procFrameCounter.counter_reg [14]),
        .I5(APU_Half_CE_i_12_n_0),
        .O(APU_Half_CE_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    APU_Half_CE_i_8
       (.I0(\procFrameCounter.counter_reg [3]),
        .I1(\procFrameCounter.counter_reg [2]),
        .I2(\procFrameCounter.counter_reg [11]),
        .I3(\procFrameCounter.counter_reg [13]),
        .I4(\procFrameCounter.counter_reg [0]),
        .O(APU_Half_CE_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    APU_Half_CE_i_9
       (.I0(\procFrameCounter.counter_reg [7]),
        .I1(\procFrameCounter.counter_reg [12]),
        .I2(\APU_Counter_reg[mode]_0 ),
        .I3(\procFrameCounter.counter_reg [9]),
        .I4(\procFrameCounter.counter_reg [14]),
        .O(APU_Half_CE_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    APU_Half_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Half_CE18_out),
        .Q(dbg_apu_half));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \APU_Noise[length_counter][4]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(\APU_Noise[length_counter_halt]_i_2_n_0 ),
        .I3(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I4(CPU_Addr[3]),
        .I5(CPU_Addr[1]),
        .O(\APU_Noise[length_counter] ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \APU_Noise[length_counter_halt]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[1]),
        .I3(\APU_Noise[length_counter_halt]_i_2_n_0 ),
        .I4(CPU_Addr[3]),
        .I5(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .O(\APU_Noise[length_counter_halt] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \APU_Noise[length_counter_halt]_i_2 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[4]),
        .O(\APU_Noise[length_counter_halt]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \APU_Noise[loop_noise]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(\APU_Noise[length_counter_halt]_i_2_n_0 ),
        .I3(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I4(CPU_Addr[3]),
        .I5(CPU_Addr[1]),
        .O(\APU_Noise[loop_noise] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Noise_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Noise_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Noise_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Noise_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Noise_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Noise_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[loop_noise] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Noise_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Noise_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Noise_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Noise_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Noise_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Noise_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Noise_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[13]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \APU_Pulse1[duty][1]_i_1 
       (.I0(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I1(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[1]),
        .I5(CPU_Addr[0]),
        .O(\APU_Pulse1[duty] ));
  LUT2 #(
    .INIT(4'h7)) 
    \APU_Pulse1[duty][1]_i_2 
       (.I0(Reset),
        .I1(CPU_Rst),
        .O(\APU_Pulse1[duty][1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse1[duty][1]_i_3 
       (.I0(CPU_Addr[3]),
        .I1(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .O(\APU_Pulse1[duty][1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \APU_Pulse1[duty][1]_i_4 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .O(\APU_Pulse1[duty][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    \APU_Pulse1[length_counter][0]_i_1 
       (.I0(APU_Pulse1_Out[0]),
        .I1(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I2(CPU_Data[0]),
        .I3(CPU_Addr[4]),
        .O(\APU_Pulse1[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF200F200F2FFF2)) 
    \APU_Pulse1[length_counter][1]_i_1 
       (.I0(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .I1(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I4(APU_Pulse1_Out[1]),
        .I5(APU_Pulse1_Out[0]),
        .O(\APU_Pulse1[length_counter][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCECC0205)) 
    \APU_Pulse1[length_counter][1]_i_2 
       (.I0(CPU_Data[5]),
        .I1(CPU_Data[3]),
        .I2(CPU_Data[7]),
        .I3(CPU_Data[6]),
        .I4(CPU_Data[4]),
        .O(\APU_Pulse1[length_counter][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFF2FFF200F2)) 
    \APU_Pulse1[length_counter][2]_i_1 
       (.I0(\APU_Pulse1[length_counter][2]_i_2_n_0 ),
        .I1(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse1[length_counter][2]_i_3_n_0 ),
        .I5(APU_Pulse1_Out[2]),
        .O(\APU_Pulse1[length_counter][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h889A899C)) 
    \APU_Pulse1[length_counter][2]_i_2 
       (.I0(CPU_Data[5]),
        .I1(CPU_Data[3]),
        .I2(CPU_Data[4]),
        .I3(CPU_Data[7]),
        .I4(CPU_Data[6]),
        .O(\APU_Pulse1[length_counter][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse1[length_counter][2]_i_3 
       (.I0(APU_Pulse1_Out[0]),
        .I1(APU_Pulse1_Out[1]),
        .O(\APU_Pulse1[length_counter][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFF2FFF200F2)) 
    \APU_Pulse1[length_counter][3]_i_1 
       (.I0(\APU_Pulse1[length_counter][3]_i_2_n_0 ),
        .I1(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse1[length_counter][3]_i_3_n_0 ),
        .I5(APU_Pulse1_Out[3]),
        .O(\APU_Pulse1[length_counter][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFCE1017)) 
    \APU_Pulse1[length_counter][3]_i_2 
       (.I0(CPU_Data[5]),
        .I1(CPU_Data[3]),
        .I2(CPU_Data[7]),
        .I3(CPU_Data[4]),
        .I4(CPU_Data[6]),
        .O(\APU_Pulse1[length_counter][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse1[length_counter][3]_i_3 
       (.I0(APU_Pulse1_Out[1]),
        .I1(APU_Pulse1_Out[0]),
        .I2(APU_Pulse1_Out[2]),
        .O(\APU_Pulse1[length_counter][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00F2F2F2F2)) 
    \APU_Pulse1[length_counter][4]_i_1 
       (.I0(\APU_Pulse1[length_counter][4]_i_2_n_0 ),
        .I1(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I3(APU_Pulse1_Out[4]),
        .I4(\APU_Pulse1[length_counter][4]_i_3_n_0 ),
        .I5(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC3D3E0E4)) 
    \APU_Pulse1[length_counter][4]_i_2 
       (.I0(CPU_Data[5]),
        .I1(CPU_Data[3]),
        .I2(CPU_Data[7]),
        .I3(CPU_Data[6]),
        .I4(CPU_Data[4]),
        .O(\APU_Pulse1[length_counter][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[length_counter][4]_i_3 
       (.I0(APU_Pulse1_Out[2]),
        .I1(APU_Pulse1_Out[0]),
        .I2(APU_Pulse1_Out[1]),
        .I3(APU_Pulse1_Out[3]),
        .O(\APU_Pulse1[length_counter][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7770)) 
    \APU_Pulse1[length_counter][5]_i_1 
       (.I0(CPU_Data[0]),
        .I1(CPU_Addr[4]),
        .I2(\APU_Status[dmc_active] ),
        .I3(\APU_Pulse1[length_counter_load] ),
        .I4(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606F60)) 
    \APU_Pulse1[length_counter][5]_i_2 
       (.I0(APU_Pulse1_Out[5]),
        .I1(\APU_Pulse1[length_counter][5]_i_4_n_0 ),
        .I2(\APU_Pulse1[length_counter][5]_i_3_n_0 ),
        .I3(\APU_Pulse1[length_counter][5]_i_5_n_0 ),
        .I4(\APU_Pulse1[length_counter][5]_i_6_n_0 ),
        .I5(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \APU_Pulse1[length_counter][5]_i_3 
       (.I0(APU_Pulse1_Out[33]),
        .I1(dbg_apu_half),
        .I2(\APU_Pulse1_Message[3]_INST_0_i_3_n_0 ),
        .O(\APU_Pulse1[length_counter][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse1[length_counter][5]_i_4 
       (.I0(APU_Pulse1_Out[3]),
        .I1(APU_Pulse1_Out[1]),
        .I2(APU_Pulse1_Out[0]),
        .I3(APU_Pulse1_Out[2]),
        .I4(APU_Pulse1_Out[4]),
        .O(\APU_Pulse1[length_counter][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse1[length_counter][5]_i_5 
       (.I0(CPU_Data[0]),
        .I1(CPU_Addr[4]),
        .O(\APU_Pulse1[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \APU_Pulse1[length_counter][5]_i_6 
       (.I0(CPU_Addr[4]),
        .I1(APU_Status_Out[0]),
        .O(\APU_Pulse1[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h080A0512)) 
    \APU_Pulse1[length_counter][5]_i_7 
       (.I0(CPU_Data[5]),
        .I1(CPU_Data[4]),
        .I2(CPU_Data[3]),
        .I3(CPU_Data[6]),
        .I4(CPU_Data[7]),
        .O(\APU_Pulse1[length_counter][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \APU_Pulse1[length_counter_load][4]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_RW),
        .I2(CPU_RomSel),
        .I3(CPU_Addr[0]),
        .I4(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I5(\APU_Pulse1[timer_load][7]_i_2_n_0 ),
        .O(\APU_Pulse1[length_counter_load] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \APU_Pulse1[sweep_enable]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[3]),
        .I4(\APU_Pulse1[sweep_enable]_i_3_n_0 ),
        .O(\APU_Pulse1[sweep_enable] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \APU_Pulse1[sweep_enable]_i_2 
       (.I0(\APU_Pulse1[sweep_enable]_i_4_n_0 ),
        .I1(CPU_Addr[13]),
        .I2(CPU_Addr[14]),
        .I3(\APU_Pulse1[sweep_enable]_i_5_n_0 ),
        .O(\APU_Pulse1[sweep_enable]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \APU_Pulse1[sweep_enable]_i_3 
       (.I0(CPU_RW),
        .I1(CPU_RomSel),
        .I2(CPU_Addr[4]),
        .I3(CPU_Addr[2]),
        .O(\APU_Pulse1[sweep_enable]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse1[sweep_enable]_i_4 
       (.I0(CPU_Addr[6]),
        .I1(CPU_Addr[5]),
        .I2(CPU_Addr[12]),
        .I3(CPU_Addr[7]),
        .O(\APU_Pulse1[sweep_enable]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse1[sweep_enable]_i_5 
       (.I0(CPU_Addr[9]),
        .I1(CPU_Addr[8]),
        .I2(CPU_Addr[11]),
        .I3(CPU_Addr[10]),
        .O(\APU_Pulse1[sweep_enable]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][0]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse1[timer][0]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][0]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[0]),
        .I2(Pulse1_Target05_out[0]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0AAFFC0C0AA00)) 
    \APU_Pulse1[timer][10]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_3_n_0 ),
        .I3(\APU_Pulse1[timer_load] [10]),
        .I4(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I5(\APU_Pulse1_reg[timer][10]_0 ),
        .O(\APU_Pulse1[timer][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse1[timer][10]_i_2 
       (.I0(CPU_Rst),
        .I1(Reset),
        .O(\APU_Pulse1[timer][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse1[timer][10]_i_3 
       (.I0(Pulse1_Target01_out[10]),
        .I1(Pulse1_Target1),
        .I2(APU_Pulse1_Out[19]),
        .I3(Pulse1_Target05_out[10]),
        .O(\APU_Pulse1[timer][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222202222222)) 
    \APU_Pulse1[timer][10]_i_4 
       (.I0(\APU_Pulse1[timer][10]_i_5_n_0 ),
        .I1(\APU_Pulse1_Message[3]_INST_0_i_2_n_0 ),
        .I2(Reset),
        .I3(CPU_Rst),
        .I4(Pulse1_Target05_out[11]),
        .I5(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \APU_Pulse1[timer][10]_i_5 
       (.I0(dbg_apu_half),
        .I1(APU_Pulse1_Out[23]),
        .I2(\APU_Pulse1[timer][10]_i_6_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\APU_Pulse1[timer][10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse1[timer][10]_i_6 
       (.I0(pulse1_sweep_divider[2]),
        .I1(pulse1_sweep_divider[0]),
        .I2(pulse1_sweep_divider[1]),
        .O(\APU_Pulse1[timer][10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][1]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse1[timer][1]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][1]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[1]),
        .I2(Pulse1_Target05_out[1]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][2]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse1[timer][2]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][2]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[2]),
        .I2(Pulse1_Target05_out[2]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][3]_i_1 
       (.I0(CPU_Data[3]),
        .I1(\APU_Pulse1[timer][3]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][3]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[3]),
        .I2(Pulse1_Target05_out[3]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_4 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I1(p_0_in3_in[3]),
        .O(\APU_Pulse1[timer][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_5 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [2]),
        .I1(p_0_in3_in[2]),
        .O(\APU_Pulse1[timer][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_6 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I1(p_0_in3_in[1]),
        .O(\APU_Pulse1[timer][3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1[timer][3]_i_7 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I1(p_0_in3_in[0]),
        .O(\APU_Pulse1[timer][3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][4]_i_1 
       (.I0(CPU_Data[4]),
        .I1(\APU_Pulse1[timer][4]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][4]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[4]),
        .I2(Pulse1_Target05_out[4]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][5]_i_1 
       (.I0(CPU_Data[5]),
        .I1(\APU_Pulse1[timer][5]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][5]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[5]),
        .I2(Pulse1_Target05_out[5]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][6]_i_1 
       (.I0(CPU_Data[6]),
        .I1(\APU_Pulse1[timer][6]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][6]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[6]),
        .I2(Pulse1_Target05_out[6]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \APU_Pulse1[timer][7]_i_1 
       (.I0(\APU_Pulse1[timer_load] [7]),
        .I1(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .O(\APU_Pulse1[timer][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse1[timer][7]_i_2 
       (.I0(CPU_Data[7]),
        .I1(\APU_Pulse1[timer][7]_i_3_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][7]_i_3 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[7]),
        .I2(Pulse1_Target05_out[7]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse1[timer][8]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse1[timer][8]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse1[timer_load] [10]),
        .I4(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I5(\APU_Pulse1_reg[timer][8]_0 ),
        .O(\APU_Pulse1[timer][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][8]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[8]),
        .I2(Pulse1_Target05_out[8]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse1[timer][9]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse1[timer][9]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse1[timer_load] [10]),
        .I4(\APU_Pulse1[timer][10]_i_4_n_0 ),
        .I5(APU_Pulse1_Message[1]),
        .O(\APU_Pulse1[timer][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse1[timer][9]_i_2 
       (.I0(Pulse1_Target1),
        .I1(Pulse1_Target01_out[9]),
        .I2(Pulse1_Target05_out[9]),
        .I3(APU_Pulse1_Out[19]),
        .O(\APU_Pulse1[timer][9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer_load][10]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse1[timer_load] [10]),
        .I2(\APU_Pulse1_reg[timer_load][10]_0 [2]),
        .O(\APU_Pulse1[timer_load][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \APU_Pulse1[timer_load][10]_i_2 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[3]),
        .I2(\APU_Pulse1[timer_load][7]_i_2_n_0 ),
        .I3(CPU_RW),
        .I4(CPU_RomSel),
        .I5(CPU_Addr[0]),
        .O(\APU_Pulse1[timer_load] [10]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \APU_Pulse1[timer_load][7]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[0]),
        .I3(CPU_RW),
        .I4(CPU_RomSel),
        .I5(\APU_Pulse1[timer_load][7]_i_2_n_0 ),
        .O(\APU_Pulse1[timer_load] [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \APU_Pulse1[timer_load][7]_i_2 
       (.I0(CPU_Addr[4]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[1]),
        .O(\APU_Pulse1[timer_load][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer_load][8]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse1[timer_load] [10]),
        .I2(\APU_Pulse1_reg[timer_load][10]_0 [0]),
        .O(\APU_Pulse1[timer_load][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1[timer_load][9]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse1[timer_load] [10]),
        .I2(\APU_Pulse1_reg[timer_load][10]_0 [1]),
        .O(\APU_Pulse1[timer_load][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAFAFAFAE)) 
    \APU_Pulse1[volume][0]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Pulse1_Out[26]),
        .I2(APU_Pulse1_Out[24]),
        .I3(APU_Pulse1_Out[25]),
        .I4(APU_Pulse1_Out[27]),
        .I5(APU_Pulse1_Out[33]),
        .O(\APU_Pulse1[volume][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAFFAAFFAAFFAAE)) 
    \APU_Pulse1[volume][1]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Pulse1_Out[26]),
        .I2(APU_Pulse1_Out[24]),
        .I3(APU_Pulse1_Out[25]),
        .I4(APU_Pulse1_Out[27]),
        .I5(APU_Pulse1_Out[33]),
        .O(\APU_Pulse1[volume][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEEEBEEEBEEEA)) 
    \APU_Pulse1[volume][2]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Pulse1_Out[26]),
        .I2(APU_Pulse1_Out[24]),
        .I3(APU_Pulse1_Out[25]),
        .I4(APU_Pulse1_Out[27]),
        .I5(APU_Pulse1_Out[33]),
        .O(\APU_Pulse1[volume][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \APU_Pulse1[volume][3]_i_1 
       (.I0(dbg_apu_qtr),
        .I1(\APU_Pulse1[volume][3]_i_3_n_0 ),
        .I2(\APU_Pulse1[volume][3]_i_4_n_0 ),
        .I3(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .O(\APU_Pulse1[volume] ));
  LUT6 #(
    .INIT(64'hEEEEEEEBEEEEEEEA)) 
    \APU_Pulse1[volume][3]_i_2 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Pulse1_Out[27]),
        .I2(APU_Pulse1_Out[26]),
        .I3(APU_Pulse1_Out[24]),
        .I4(APU_Pulse1_Out[25]),
        .I5(APU_Pulse1_Out[33]),
        .O(\APU_Pulse1[volume][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[volume][3]_i_3 
       (.I0(pulse1_envelope_divider[2]),
        .I1(pulse1_envelope_divider[1]),
        .I2(pulse1_envelope_divider[0]),
        .I3(pulse1_envelope_divider[3]),
        .O(\APU_Pulse1[volume][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse1[volume][3]_i_4 
       (.I0(APU_Pulse1_Out[26]),
        .I1(APU_Pulse1_Out[24]),
        .I2(APU_Pulse1_Out[25]),
        .I3(APU_Pulse1_Out[27]),
        .I4(APU_Pulse1_Out[33]),
        .O(\APU_Pulse1[volume][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \APU_Pulse1[volume][3]_i_5 
       (.I0(\procMainLogic.pulse1_envelope_start_reg_n_0 ),
        .I1(\APU_Pulse1[timer_load][7]_i_2_n_0 ),
        .I2(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I3(CPU_Addr[0]),
        .I4(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I5(CPU_Addr[3]),
        .O(\APU_Pulse1[volume][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[15]_INST_0 
       (.I0(APU_Pulse1_Out[28]),
        .I1(APU_Pulse1_Out[32]),
        .I2(APU_Pulse1_Out[24]),
        .O(APU_Pulse1_Message[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[16]_INST_0 
       (.I0(APU_Pulse1_Out[29]),
        .I1(APU_Pulse1_Out[32]),
        .I2(APU_Pulse1_Out[25]),
        .O(APU_Pulse1_Message[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[17]_INST_0 
       (.I0(APU_Pulse1_Out[30]),
        .I1(APU_Pulse1_Out[32]),
        .I2(APU_Pulse1_Out[26]),
        .O(APU_Pulse1_Message[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse1_Message[18]_INST_0 
       (.I0(APU_Pulse1_Out[31]),
        .I1(APU_Pulse1_Out[32]),
        .I2(APU_Pulse1_Out[27]),
        .O(APU_Pulse1_Message[5]));
  LUT6 #(
    .INIT(64'h000000000000BFFF)) 
    \APU_Pulse1_Message[3]_INST_0 
       (.I0(APU_Pulse1_Out[19]),
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
        .DI({1'b0,\APU_Pulse1_reg[timer][10]_0 ,APU_Pulse1_Message[1],\APU_Pulse1_reg[timer][8]_0 }),
        .O({\NLW_APU_Pulse1_Message[3]_INST_0_i_1_O_UNCONNECTED [3],Pulse1_Target05_out[10:8]}),
        .S({1'b1,\APU_Pulse1_Message[3]_INST_0_i_5_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_6_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \APU_Pulse1_Message[3]_INST_0_i_10 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I1(Pulse1_Target1_carry_i_11_n_0),
        .O(\APU_Pulse1_Message[3]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_11 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I1(p_0_in3_in[5]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \APU_Pulse1_Message[3]_INST_0_i_12 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I1(Pulse1_Target1_carry_i_14_n_0),
        .O(\APU_Pulse1_Message[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse1_Message[3]_INST_0_i_2 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I4(\APU_Pulse1_Message[3]_INST_0_i_8_n_0 ),
        .O(\APU_Pulse1_Message[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \APU_Pulse1_Message[3]_INST_0_i_3 
       (.I0(APU_Pulse1_Out[4]),
        .I1(APU_Pulse1_Out[2]),
        .I2(APU_Pulse1_Out[0]),
        .I3(APU_Pulse1_Out[1]),
        .I4(APU_Pulse1_Out[3]),
        .I5(APU_Pulse1_Out[5]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_3_n_0 ));
  CARRY4 \APU_Pulse1_Message[3]_INST_0_i_4 
       (.CI(\APU_Pulse1_reg[timer][3]_i_3_n_0 ),
        .CO({\APU_Pulse1_Message[3]_INST_0_i_4_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_1 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_2 ,\APU_Pulse1_Message[3]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\APU_Pulse1_reg[timer][7]_0 [7:4]),
        .O(Pulse1_Target05_out[7:4]),
        .S({\APU_Pulse1_Message[3]_INST_0_i_9_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_10_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_11_n_0 ,\APU_Pulse1_Message[3]_INST_0_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse1_Message[3]_INST_0_i_5 
       (.I0(\APU_Pulse1_reg[timer][10]_0 ),
        .I1(Pulse1_Target1_carry__0_i_6_n_0),
        .I2(Q[0]),
        .I3(Pulse1_Target1_carry__0_i_5_n_0),
        .O(\APU_Pulse1_Message[3]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_6 
       (.I0(APU_Pulse1_Message[1]),
        .I1(p_0_in3_in[9]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \APU_Pulse1_Message[3]_INST_0_i_7 
       (.I0(\APU_Pulse1_reg[timer][8]_0 ),
        .I1(p_0_in3_in[8]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse1_Message[3]_INST_0_i_8 
       (.I0(\APU_Pulse1_reg[timer][8]_0 ),
        .I1(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse1_reg[timer][10]_0 ),
        .I3(APU_Pulse1_Message[1]),
        .O(\APU_Pulse1_Message[3]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \APU_Pulse1_Message[3]_INST_0_i_9 
       (.I0(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I1(Pulse1_Target1_carry_i_9_n_0),
        .O(\APU_Pulse1_Message[3]_INST_0_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[32]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[duty][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[34]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[duty][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[35]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[envelope][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][0]_i_1_n_0 ),
        .Q(APU_Pulse1_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][1]_i_1_n_0 ),
        .Q(APU_Pulse1_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][2]_i_1_n_0 ),
        .Q(APU_Pulse1_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][3]_i_1_n_0 ),
        .Q(APU_Pulse1_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][4]_i_1_n_0 ),
        .Q(APU_Pulse1_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[length_counter][5]_i_2_n_0 ),
        .Q(APU_Pulse1_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[33]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_load] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_load] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_load] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_load] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[length_counter_load] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][10]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer][10]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [3]));
  CARRY4 \APU_Pulse1_reg[timer][3]_i_3 
       (.CI(1'b0),
        .CO({\APU_Pulse1_reg[timer][3]_i_3_n_0 ,\APU_Pulse1_reg[timer][3]_i_3_n_1 ,\APU_Pulse1_reg[timer][3]_i_3_n_2 ,\APU_Pulse1_reg[timer][3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\APU_Pulse1_reg[timer][7]_0 [3:0]),
        .O(Pulse1_Target05_out[3:0]),
        .S({\APU_Pulse1[timer][3]_i_4_n_0 ,\APU_Pulse1[timer][3]_i_5_n_0 ,\APU_Pulse1[timer][3]_i_6_n_0 ,\APU_Pulse1[timer][3]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\APU_Pulse1_reg[timer][7]_0 [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][8]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer][8]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer][9]_i_1_n_0 ),
        .Q(APU_Pulse1_Message[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer_load][10]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer_load][8]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer_load][10]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse1[timer_load][9]_i_1_n_0 ),
        .Q(\APU_Pulse1_reg[timer_load][10]_0 [1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][0]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse1_Out[24]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][1]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse1_Out[25]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][2]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse1_Out[26]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[volume] ),
        .D(\APU_Pulse1[volume][3]_i_2_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse1_Out[27]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \APU_Pulse2[duty][1]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[2]),
        .O(\APU_Pulse2[duty][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \APU_Pulse2[duty][1]_i_2 
       (.I0(CPU_Addr[3]),
        .I1(CPU_RW),
        .I2(CPU_RomSel),
        .O(\APU_Pulse2[duty][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    \APU_Pulse2[length_counter][0]_i_1 
       (.I0(APU_Pulse2_Out[0]),
        .I1(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I2(CPU_Data[1]),
        .I3(CPU_Addr[4]),
        .O(\APU_Pulse2[length_counter][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF200F200F2FFF2)) 
    \APU_Pulse2[length_counter][1]_i_1 
       (.I0(\APU_Pulse1[length_counter][1]_i_2_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I2(\APU_Pulse2[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I4(APU_Pulse2_Out[1]),
        .I5(APU_Pulse2_Out[0]),
        .O(\APU_Pulse2[length_counter][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFF2FFF200F2)) 
    \APU_Pulse2[length_counter][2]_i_1 
       (.I0(\APU_Pulse1[length_counter][2]_i_2_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I2(\APU_Pulse2[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse2[length_counter][2]_i_2_n_0 ),
        .I5(APU_Pulse2_Out[2]),
        .O(\APU_Pulse2[length_counter][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse2[length_counter][2]_i_2 
       (.I0(APU_Pulse2_Out[0]),
        .I1(APU_Pulse2_Out[1]),
        .O(\APU_Pulse2[length_counter][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFF2FFF200F2)) 
    \APU_Pulse2[length_counter][3]_i_1 
       (.I0(\APU_Pulse1[length_counter][3]_i_2_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I2(\APU_Pulse2[length_counter][5]_i_7_n_0 ),
        .I3(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I4(\APU_Pulse2[length_counter][3]_i_2_n_0 ),
        .I5(APU_Pulse2_Out[3]),
        .O(\APU_Pulse2[length_counter][3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[length_counter][3]_i_2 
       (.I0(APU_Pulse2_Out[1]),
        .I1(APU_Pulse2_Out[0]),
        .I2(APU_Pulse2_Out[2]),
        .O(\APU_Pulse2[length_counter][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00444000BBFFFFBB)) 
    \APU_Pulse2[length_counter][4]_i_1 
       (.I0(APU_Pulse2_Out[36]),
        .I1(dbg_apu_half),
        .I2(APU_Pulse2_Out[5]),
        .I3(\APU_Pulse2[length_counter][4]_i_2_n_0 ),
        .I4(APU_Pulse2_Out[4]),
        .I5(\APU_Pulse2[length_counter][4]_i_3_n_0 ),
        .O(\APU_Pulse2[length_counter][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse2[length_counter][4]_i_2 
       (.I0(APU_Pulse2_Out[2]),
        .I1(APU_Pulse2_Out[0]),
        .I2(APU_Pulse2_Out[1]),
        .I3(APU_Pulse2_Out[3]),
        .O(\APU_Pulse2[length_counter][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \APU_Pulse2[length_counter][4]_i_3 
       (.I0(CPU_Data[1]),
        .I1(CPU_Addr[4]),
        .I2(APU_Status_Out[1]),
        .I3(\APU_Pulse1[length_counter][4]_i_2_n_0 ),
        .O(\APU_Pulse2[length_counter][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hABEEAAAA)) 
    \APU_Pulse2[length_counter][5]_i_1 
       (.I0(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .I1(CPU_Addr[1]),
        .I2(CPU_Data[1]),
        .I3(CPU_Addr[4]),
        .I4(\APU_Pulse2[length_counter][5]_i_4_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000F0FFFF22F2)) 
    \APU_Pulse2[length_counter][5]_i_2 
       (.I0(\APU_Pulse1[length_counter][5]_i_7_n_0 ),
        .I1(\APU_Pulse2[length_counter][5]_i_5_n_0 ),
        .I2(APU_Pulse2_Out[5]),
        .I3(\APU_Pulse2[length_counter][5]_i_6_n_0 ),
        .I4(\APU_Pulse2[length_counter][5]_i_7_n_0 ),
        .I5(\APU_Pulse2[length_counter][5]_i_3_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \APU_Pulse2[length_counter][5]_i_3 
       (.I0(APU_Pulse2_Out[36]),
        .I1(dbg_apu_half),
        .I2(\APU_Pulse2_Message[3]_INST_0_i_3_n_0 ),
        .O(\APU_Pulse2[length_counter][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \APU_Pulse2[length_counter][5]_i_4 
       (.I0(CPU_Addr[0]),
        .I1(CPU_RomSel),
        .I2(CPU_RW),
        .I3(CPU_Addr[3]),
        .I4(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I5(CPU_Addr[2]),
        .O(\APU_Pulse2[length_counter][5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \APU_Pulse2[length_counter][5]_i_5 
       (.I0(CPU_Addr[4]),
        .I1(APU_Status_Out[1]),
        .O(\APU_Pulse2[length_counter][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \APU_Pulse2[length_counter][5]_i_6 
       (.I0(\APU_Pulse2[length_counter][5]_i_8_n_0 ),
        .I1(APU_Pulse2_Out[36]),
        .I2(dbg_apu_half),
        .O(\APU_Pulse2[length_counter][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \APU_Pulse2[length_counter][5]_i_7 
       (.I0(CPU_Data[1]),
        .I1(CPU_Addr[4]),
        .O(\APU_Pulse2[length_counter][5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse2[length_counter][5]_i_8 
       (.I0(APU_Pulse2_Out[3]),
        .I1(APU_Pulse2_Out[1]),
        .I2(APU_Pulse2_Out[0]),
        .I3(APU_Pulse2_Out[2]),
        .I4(APU_Pulse2_Out[4]),
        .O(\APU_Pulse2[length_counter][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \APU_Pulse2[sweep_enable]_i_1 
       (.I0(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[2]),
        .O(\APU_Pulse2[sweep_enable]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][0]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse2[timer][0]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][0]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[0]),
        .I2(Pulse2_Target02_out[0]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0AAFFC0C0AA00)) 
    \APU_Pulse2[timer][10]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse2[timer_load] [10]),
        .I4(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I5(\APU_Pulse2_reg[timer][10]_0 ),
        .O(\APU_Pulse2[timer][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse2[timer][10]_i_2 
       (.I0(Pulse2_Target00_out[10]),
        .I1(Pulse2_Target1),
        .I2(APU_Pulse2_Out[22]),
        .I3(Pulse2_Target02_out[10]),
        .O(\APU_Pulse2[timer][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222222202222222)) 
    \APU_Pulse2[timer][10]_i_3 
       (.I0(\APU_Pulse2[timer][10]_i_4_n_0 ),
        .I1(\APU_Pulse2_Message[3]_INST_0_i_2_n_0 ),
        .I2(Reset),
        .I3(CPU_Rst),
        .I4(Pulse2_Target02_out[11]),
        .I5(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \APU_Pulse2[timer][10]_i_4 
       (.I0(dbg_apu_half),
        .I1(APU_Pulse2_Out[26]),
        .I2(\APU_Pulse2[timer][10]_i_5_n_0 ),
        .I3(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I5(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .O(\APU_Pulse2[timer][10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[timer][10]_i_5 
       (.I0(pulse2_sweep_divider[2]),
        .I1(pulse2_sweep_divider[0]),
        .I2(pulse2_sweep_divider[1]),
        .O(\APU_Pulse2[timer][10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][1]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse2[timer][1]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][1]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[1]),
        .I2(Pulse2_Target02_out[1]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][2]_i_1 
       (.I0(CPU_Data[2]),
        .I1(\APU_Pulse2[timer][2]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][2]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[2]),
        .I2(Pulse2_Target02_out[2]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCA0A0A0A)) 
    \APU_Pulse2[timer][3]_i_1 
       (.I0(CPU_Data[3]),
        .I1(\APU_Pulse2[timer][3]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \APU_Pulse2[timer][3]_i_2 
       (.I0(Pulse2_Target00_out[3]),
        .I1(Pulse2_Target1),
        .I2(APU_Pulse2_Out[22]),
        .I3(Pulse2_Target02_out[3]),
        .O(\APU_Pulse2[timer][3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2[timer][3]_i_4 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(Pulse2_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .O(\APU_Pulse2[timer][3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2[timer][3]_i_5 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .O(\APU_Pulse2[timer][3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2[timer][3]_i_6 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .O(\APU_Pulse2[timer][3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2[timer][3]_i_7 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I1(Pulse2_Target1_carry_i_17_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_16_n_0),
        .O(\APU_Pulse2[timer][3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][4]_i_1 
       (.I0(CPU_Data[4]),
        .I1(\APU_Pulse2[timer][4]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][4]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[4]),
        .I2(Pulse2_Target02_out[4]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][5]_i_1 
       (.I0(CPU_Data[5]),
        .I1(\APU_Pulse2[timer][5]_i_2_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][5]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[5]),
        .I2(Pulse2_Target02_out[5]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2[timer][6]_i_1 
       (.I0(\APU_Pulse2[timer][6]_i_2_n_0 ),
        .I1(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I2(CPU_Data[6]),
        .O(\APU_Pulse2[timer][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080088800800)) 
    \APU_Pulse2[timer][6]_i_2 
       (.I0(Reset),
        .I1(CPU_Rst),
        .I2(APU_Pulse2_Out[22]),
        .I3(Pulse2_Target02_out[6]),
        .I4(Pulse2_Target00_out[6]),
        .I5(Pulse2_Target1),
        .O(\APU_Pulse2[timer][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \APU_Pulse2[timer][7]_i_1 
       (.I0(\APU_Pulse2[timer_load] [7]),
        .I1(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .O(\APU_Pulse2[timer][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3A0A0A0A)) 
    \APU_Pulse2[timer][7]_i_2 
       (.I0(CPU_Data[7]),
        .I1(\APU_Pulse2[timer][7]_i_3_n_0 ),
        .I2(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I3(Reset),
        .I4(CPU_Rst),
        .O(\APU_Pulse2[timer][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][7]_i_3 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[7]),
        .I2(Pulse2_Target02_out[7]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse2[timer][8]_i_1 
       (.I0(CPU_Data[0]),
        .I1(\APU_Pulse2[timer][8]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse2[timer_load] [10]),
        .I4(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I5(\APU_Pulse2_reg[timer][8]_0 ),
        .O(\APU_Pulse2[timer][8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][8]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[8]),
        .I2(Pulse2_Target02_out[8]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3030AAFF3030AA00)) 
    \APU_Pulse2[timer][9]_i_1 
       (.I0(CPU_Data[1]),
        .I1(\APU_Pulse2[timer][9]_i_2_n_0 ),
        .I2(\APU_Pulse1[timer][10]_i_2_n_0 ),
        .I3(\APU_Pulse2[timer_load] [10]),
        .I4(\APU_Pulse2[timer][10]_i_3_n_0 ),
        .I5(\APU_Pulse2_reg[timer][9]_0 ),
        .O(\APU_Pulse2[timer][9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBB0F)) 
    \APU_Pulse2[timer][9]_i_2 
       (.I0(Pulse2_Target1),
        .I1(Pulse2_Target00_out[9]),
        .I2(Pulse2_Target02_out[9]),
        .I3(APU_Pulse2_Out[22]),
        .O(\APU_Pulse2[timer][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \APU_Pulse2[timer_load][10]_i_1 
       (.I0(CPU_Addr[4]),
        .I1(CPU_Addr[1]),
        .I2(CPU_Addr[2]),
        .I3(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I4(CPU_Addr[3]),
        .I5(\APU_Pulse2[timer_load][10]_i_2_n_0 ),
        .O(\APU_Pulse2[timer_load] [10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \APU_Pulse2[timer_load][10]_i_2 
       (.I0(CPU_RW),
        .I1(CPU_RomSel),
        .I2(CPU_Addr[0]),
        .O(\APU_Pulse2[timer_load][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \APU_Pulse2[timer_load][7]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I2(CPU_Addr[2]),
        .I3(\APU_Pulse2[timer_load][7]_i_2_n_0 ),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[0]),
        .O(\APU_Pulse2[timer_load] [7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \APU_Pulse2[timer_load][7]_i_2 
       (.I0(CPU_Addr[1]),
        .I1(CPU_RW),
        .I2(CPU_RomSel),
        .O(\APU_Pulse2[timer_load][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFFEF)) 
    \APU_Pulse2[volume][0]_i_1 
       (.I0(\APU_Pulse2[timer_load] [10]),
        .I1(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I2(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I3(APU_Pulse2_Out[30]),
        .I4(APU_Pulse2_Out[36]),
        .I5(APU_Pulse2_Out[27]),
        .O(\APU_Pulse2[volume][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFCFEFCFEFF)) 
    \APU_Pulse2[volume][1]_i_1 
       (.I0(APU_Pulse2_Out[36]),
        .I1(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I2(\APU_Pulse2[timer_load] [10]),
        .I3(\APU_Pulse2[volume][1]_i_2_n_0 ),
        .I4(APU_Pulse2_Out[27]),
        .I5(APU_Pulse2_Out[28]),
        .O(\APU_Pulse2[volume][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse2[volume][1]_i_2 
       (.I0(APU_Pulse2_Out[29]),
        .I1(APU_Pulse2_Out[27]),
        .I2(APU_Pulse2_Out[28]),
        .I3(APU_Pulse2_Out[30]),
        .O(\APU_Pulse2[volume][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEEFFEEFFEEEFE)) 
    \APU_Pulse2[volume][2]_i_1 
       (.I0(\APU_Pulse2[timer_load] [10]),
        .I1(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I2(APU_Pulse2_Out[29]),
        .I3(\APU_Pulse2[volume][2]_i_2_n_0 ),
        .I4(APU_Pulse2_Out[30]),
        .I5(APU_Pulse2_Out[36]),
        .O(\APU_Pulse2[volume][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \APU_Pulse2[volume][2]_i_2 
       (.I0(APU_Pulse2_Out[27]),
        .I1(APU_Pulse2_Out[28]),
        .O(\APU_Pulse2[volume][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA08)) 
    \APU_Pulse2[volume][3]_i_1 
       (.I0(dbg_apu_qtr),
        .I1(\APU_Pulse2[volume][3]_i_3_n_0 ),
        .I2(\APU_Pulse2[volume][3]_i_4_n_0 ),
        .I3(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I4(\APU_Pulse2[timer_load] [10]),
        .O(\APU_Pulse2[volume] ));
  LUT5 #(
    .INIT(32'hFFFFFF2C)) 
    \APU_Pulse2[volume][3]_i_2 
       (.I0(APU_Pulse2_Out[36]),
        .I1(APU_Pulse2_Out[30]),
        .I2(\APU_Pulse2[volume][3]_i_5_n_0 ),
        .I3(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I4(\APU_Pulse2[timer_load] [10]),
        .O(\APU_Pulse2[volume][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse2[volume][3]_i_3 
       (.I0(pulse2_envelope_divider[2]),
        .I1(pulse2_envelope_divider[1]),
        .I2(pulse2_envelope_divider[0]),
        .I3(pulse2_envelope_divider[3]),
        .O(\APU_Pulse2[volume][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse2[volume][3]_i_4 
       (.I0(APU_Pulse2_Out[29]),
        .I1(APU_Pulse2_Out[27]),
        .I2(APU_Pulse2_Out[28]),
        .I3(APU_Pulse2_Out[30]),
        .I4(APU_Pulse2_Out[36]),
        .O(\APU_Pulse2[volume][3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \APU_Pulse2[volume][3]_i_5 
       (.I0(APU_Pulse2_Out[28]),
        .I1(APU_Pulse2_Out[27]),
        .I2(APU_Pulse2_Out[29]),
        .O(\APU_Pulse2[volume][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[15]_INST_0 
       (.I0(APU_Pulse2_Out[31]),
        .I1(APU_Pulse2_Out[35]),
        .I2(APU_Pulse2_Out[27]),
        .O(APU_Pulse2_Message[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[16]_INST_0 
       (.I0(APU_Pulse2_Out[32]),
        .I1(APU_Pulse2_Out[35]),
        .I2(APU_Pulse2_Out[28]),
        .O(APU_Pulse2_Message[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[17]_INST_0 
       (.I0(APU_Pulse2_Out[33]),
        .I1(APU_Pulse2_Out[35]),
        .I2(APU_Pulse2_Out[29]),
        .O(APU_Pulse2_Message[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \APU_Pulse2_Message[18]_INST_0 
       (.I0(APU_Pulse2_Out[34]),
        .I1(APU_Pulse2_Out[35]),
        .I2(APU_Pulse2_Out[30]),
        .O(APU_Pulse2_Message[4]));
  LUT6 #(
    .INIT(64'h000000000000BFFF)) 
    \APU_Pulse2_Message[3]_INST_0 
       (.I0(APU_Pulse2_Out[22]),
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
  LUT4 #(
    .INIT(16'hA656)) 
    \APU_Pulse2_Message[3]_INST_0_i_10 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_10_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_9_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \APU_Pulse2_Message[3]_INST_0_i_11 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_13_n_0),
        .I3(Pulse2_Target1_carry_i_10_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h656A)) 
    \APU_Pulse2_Message[3]_INST_0_i_12 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_13_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Pulse2_Message[3]_INST_0_i_2 
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse2_reg[timer][9]_0 ),
        .I3(\APU_Pulse2_reg[timer][8]_0 ),
        .I4(\APU_Pulse2_Message[3]_INST_0_i_8_n_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \APU_Pulse2_Message[3]_INST_0_i_3 
       (.I0(APU_Pulse2_Out[4]),
        .I1(APU_Pulse2_Out[2]),
        .I2(APU_Pulse2_Out[0]),
        .I3(APU_Pulse2_Out[1]),
        .I4(APU_Pulse2_Out[3]),
        .I5(APU_Pulse2_Out[5]),
        .O(\APU_Pulse2_Message[3]_INST_0_i_3_n_0 ));
  CARRY4 \APU_Pulse2_Message[3]_INST_0_i_4 
       (.CI(\APU_Pulse2_reg[timer][3]_i_3_n_0 ),
        .CO({\APU_Pulse2_Message[3]_INST_0_i_4_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_1 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_2 ,\APU_Pulse2_Message[3]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\APU_Pulse2_reg[timer][7]_0 [7:4]),
        .O(Pulse2_Target02_out[7:4]),
        .S({\APU_Pulse2_Message[3]_INST_0_i_9_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_10_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_11_n_0 ,\APU_Pulse2_Message[3]_INST_0_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h47B8)) 
    \APU_Pulse2_Message[3]_INST_0_i_5 
       (.I0(Pulse2_Target1_carry_i_17_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry__0_i_5_n_0),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(\APU_Pulse2_Message[3]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \APU_Pulse2_Message[3]_INST_0_i_6 
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(Pulse2_Target1_carry__0_i_6_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry__0_i_5_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \APU_Pulse2_Message[3]_INST_0_i_7 
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_11_n_0),
        .I3(Pulse2_Target1_carry__0_i_6_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \APU_Pulse2_Message[3]_INST_0_i_8 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I2(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [4]),
        .O(\APU_Pulse2_Message[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h59A9)) 
    \APU_Pulse2_Message[3]_INST_0_i_9 
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(Pulse2_Target1_carry_i_9_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_11_n_0),
        .O(\APU_Pulse2_Message[3]_INST_0_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[35]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[duty][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[37]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[duty][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[38]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[32]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[33]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[envelope][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[34]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][0]_i_1_n_0 ),
        .Q(APU_Pulse2_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][1]_i_1_n_0 ),
        .Q(APU_Pulse2_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][2]_i_1_n_0 ),
        .Q(APU_Pulse2_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][3]_i_1_n_0 ),
        .Q(APU_Pulse2_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][4]_i_1_n_0 ),
        .Q(APU_Pulse2_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[length_counter][5]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[length_counter][5]_i_2_n_0 ),
        .Q(APU_Pulse2_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty][1]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[36]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(\APU_Pulse2_reg[sweep_shift][2]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(\APU_Pulse2_reg[sweep_shift][2]_0 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(\APU_Pulse2_reg[sweep_shift][2]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][0]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][10] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][10]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][10]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][1]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][2]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][4]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][5]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][6]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][7]_i_2_n_0 ),
        .Q(\APU_Pulse2_reg[timer][7]_0 [7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][8] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][8]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][8]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer][9] 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\APU_Pulse2[timer][9]_i_1_n_0 ),
        .Q(\APU_Pulse2_reg[timer][9]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [7]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load] [10]),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[20]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][0]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse2_Out[27]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][1]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse2_Out[28]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][2]_i_1_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse2_Out[29]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[volume] ),
        .D(\APU_Pulse2[volume][3]_i_2_n_0 ),
        .PRE(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .Q(APU_Pulse2_Out[30]));
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
  LUT6 #(
    .INIT(64'h08080808AA08AAAA)) 
    APU_Quarter_CE_i_1
       (.I0(dbg_apu_tick),
        .I1(APU_Quarter_CE_i_2_n_0),
        .I2(APU_Quarter_CE_i_3_n_0),
        .I3(APU_Quarter_CE_i_4_n_0),
        .I4(APU_Quarter_CE_i_5_n_0),
        .I5(APU_Half_CE_i_3_n_0),
        .O(APU_Quarter_CE12_out));
  LUT5 #(
    .INIT(32'h80100404)) 
    APU_Quarter_CE_i_2
       (.I0(\procFrameCounter.counter_reg [5]),
        .I1(\procFrameCounter.counter_reg [7]),
        .I2(\procFrameCounter.counter_reg [4]),
        .I3(\procFrameCounter.counter_reg [9]),
        .I4(\procFrameCounter.counter_reg [8]),
        .O(APU_Quarter_CE_i_2_n_0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFFFFEEFF)) 
    APU_Quarter_CE_i_3
       (.I0(APU_Quarter_CE_i_6_n_0),
        .I1(APU_Quarter_CE_i_7_n_0),
        .I2(\procFrameCounter.counter_reg [4]),
        .I3(\procFrameCounter.counter_reg [5]),
        .I4(\procFrameCounter.counter_reg [2]),
        .I5(\procFrameCounter.counter_reg [3]),
        .O(APU_Quarter_CE_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    APU_Quarter_CE_i_4
       (.I0(APU_Half_CE_i_10_n_0),
        .I1(\procFrameCounter.counter_reg [14]),
        .I2(\procFrameCounter.counter_reg [9]),
        .I3(\APU_Counter_reg[mode]_0 ),
        .I4(\procFrameCounter.counter_reg [12]),
        .I5(\procFrameCounter.counter_reg [7]),
        .O(APU_Quarter_CE_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    APU_Quarter_CE_i_5
       (.I0(\procFrameCounter.counter_reg [0]),
        .I1(\procFrameCounter.counter_reg [13]),
        .I2(\procFrameCounter.counter_reg [11]),
        .I3(\procFrameCounter.counter_reg [2]),
        .I4(\procFrameCounter.counter_reg [3]),
        .I5(APU_Half_CE_i_7_n_0),
        .O(APU_Quarter_CE_i_5_n_0));
  LUT5 #(
    .INIT(32'hBFFFD5FF)) 
    APU_Quarter_CE_i_6
       (.I0(\procFrameCounter.counter_reg [10]),
        .I1(\procFrameCounter.counter_reg [9]),
        .I2(\procFrameCounter.counter_reg [8]),
        .I3(\procFrameCounter.counter_reg [11]),
        .I4(\procFrameCounter.counter_reg [13]),
        .O(APU_Quarter_CE_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAFE)) 
    APU_Quarter_CE_i_7
       (.I0(APU_Quarter_CE_i_8_n_0),
        .I1(\procFrameCounter.counter_reg [1]),
        .I2(\procFrameCounter.counter_reg [0]),
        .I3(\procFrameCounter.counter_reg [2]),
        .I4(APU_Quarter_CE_i_9_n_0),
        .O(APU_Quarter_CE_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    APU_Quarter_CE_i_8
       (.I0(\procFrameCounter.counter_reg [12]),
        .I1(\procFrameCounter.counter_reg [9]),
        .I2(\procFrameCounter.counter_reg [14]),
        .I3(\procFrameCounter.counter_reg [6]),
        .O(APU_Quarter_CE_i_8_n_0));
  LUT6 #(
    .INIT(64'h707070FF70FF70FF)) 
    APU_Quarter_CE_i_9
       (.I0(\procFrameCounter.counter_reg [0]),
        .I1(\procFrameCounter.counter_reg [1]),
        .I2(\procFrameCounter.counter_reg [2]),
        .I3(\procFrameCounter.counter_reg [9]),
        .I4(\procFrameCounter.counter_reg [8]),
        .I5(\procFrameCounter.counter_reg [12]),
        .O(APU_Quarter_CE_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    APU_Quarter_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Quarter_CE12_out),
        .Q(dbg_apu_qtr));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \APU_Status[dmc_active]_i_1 
       (.I0(\APU_Pulse2[duty][1]_i_2_n_0 ),
        .I1(CPU_Addr[0]),
        .I2(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(CPU_Addr[1]),
        .O(\APU_Status[dmc_active] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[dmc_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Status_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[noise_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Status_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse1_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Status_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse2_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Status_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[triangle_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Status_Out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    APU_Tick_CE_i_1
       (.I0(dbg_apu_tick),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    APU_Tick_CE_reg
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(p_1_in),
        .Q(dbg_apu_tick));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \APU_Triangle[length_counter_halt]_i_1 
       (.I0(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I1(CPU_Addr[4]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[1]),
        .I4(CPU_Addr[0]),
        .I5(\APU_Triangle[length_counter_halt]_i_2_n_0 ),
        .O(\APU_Triangle[length_counter_halt] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \APU_Triangle[length_counter_halt]_i_2 
       (.I0(\APU_Pulse1[sweep_enable]_i_5_n_0 ),
        .I1(CPU_Addr[14]),
        .I2(CPU_Addr[13]),
        .I3(CPU_Addr[3]),
        .I4(\APU_Pulse1[sweep_enable]_i_4_n_0 ),
        .O(\APU_Triangle[length_counter_halt]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \APU_Triangle[timer_load][10]_i_1 
       (.I0(CPU_Addr[4]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[1]),
        .I3(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I4(CPU_Addr[0]),
        .I5(\APU_Triangle[length_counter_halt]_i_2_n_0 ),
        .O(\APU_Triangle[timer_load][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \APU_Triangle[timer_load][7]_i_1 
       (.I0(\APU_Pulse1[sweep_enable]_i_2_n_0 ),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[4]),
        .I4(\APU_Triangle[timer_load][7]_i_2_n_0 ),
        .O(\APU_Triangle[timer_load][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \APU_Triangle[timer_load][7]_i_2 
       (.I0(CPU_RomSel),
        .I1(CPU_RW),
        .I2(CPU_Addr[3]),
        .I3(CPU_Addr[1]),
        .O(\APU_Triangle[timer_load][7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[23]),
        .Q(APU_Triangle_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[24]),
        .Q(APU_Triangle_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[25]),
        .Q(APU_Triangle_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[26]),
        .Q(APU_Triangle_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[27]),
        .Q(APU_Triangle_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[28]),
        .Q(APU_Triangle_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[29]),
        .Q(APU_Triangle_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse1_Target0_carry
       (.CI(1'b0),
        .CO({Pulse1_Target0_carry_n_0,Pulse1_Target0_carry_n_1,Pulse1_Target0_carry_n_2,Pulse1_Target0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\APU_Pulse1_reg[timer][7]_0 [3:0]),
        .O(Pulse1_Target01_out[3:0]),
        .S({Pulse1_Target0_carry_i_1_n_0,Pulse1_Target0_carry_i_2_n_0,Pulse1_Target0_carry_i_3_n_0,Pulse1_Target0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Pulse1_Target0_carry__0
       (.CI(Pulse1_Target0_carry_n_0),
        .CO({Pulse1_Target0_carry__0_n_0,Pulse1_Target0_carry__0_n_1,Pulse1_Target0_carry__0_n_2,Pulse1_Target0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\APU_Pulse1_reg[timer][7]_0 [7:4]),
        .O(Pulse1_Target01_out[7:4]),
        .S({Pulse1_Target0_carry__0_i_1_n_0,Pulse1_Target0_carry__0_i_2_n_0,Pulse1_Target0_carry__0_i_3_n_0,Pulse1_Target0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0002FFFDFFFD0002)) 
    Pulse1_Target0_carry__0_i_1
       (.I0(p_0_in3_in[5]),
        .I1(Pulse1_Target1_carry_i_13_n_0),
        .I2(Pulse1_Target1_carry_i_14_n_0),
        .I3(Pulse1_Target1_carry_i_11_n_0),
        .I4(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I5(Pulse1_Target1_carry_i_9_n_0),
        .O(Pulse1_Target0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry__0_i_2
       (.I0(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I1(Pulse1_Target1_carry_i_11_n_0),
        .I2(Pulse1_Target1_carry_i_10_n_0),
        .O(Pulse1_Target0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    Pulse1_Target0_carry__0_i_3
       (.I0(Pulse1_Target1_carry_i_13_n_0),
        .I1(Pulse1_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I3(p_0_in3_in[5]),
        .O(Pulse1_Target0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry__0_i_4
       (.I0(Pulse1_Target1_carry_i_13_n_0),
        .I1(Pulse1_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse1_reg[timer][7]_0 [4]),
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
    .INIT(64'h99AA9A6566559A65)) 
    Pulse1_Target0_carry__1_i_1
       (.I0(\APU_Pulse1_reg[timer][10]_0 ),
        .I1(Pulse1_Target1_carry__0_i_8_n_0),
        .I2(Pulse1_Target1_carry__0_i_7_n_0),
        .I3(Pulse1_Target1_carry__0_i_6_n_0),
        .I4(Q[0]),
        .I5(Pulse1_Target1_carry__0_i_5_n_0),
        .O(Pulse1_Target0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Pulse1_Target0_carry__1_i_2
       (.I0(APU_Pulse1_Message[1]),
        .I1(p_0_in3_in[9]),
        .I2(Pulse1_Target1_carry__0_i_8_n_0),
        .O(Pulse1_Target0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Pulse1_Target0_carry__1_i_3
       (.I0(Pulse1_Target0_carry__1_i_4_n_0),
        .I1(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000004)) 
    Pulse1_Target0_carry__1_i_4
       (.I0(Pulse1_Target1_carry_i_9_n_0),
        .I1(p_0_in3_in[5]),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(Pulse1_Target1_carry_i_14_n_0),
        .I4(Pulse1_Target1_carry_i_11_n_0),
        .I5(p_0_in3_in[8]),
        .O(Pulse1_Target0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry_i_1
       (.I0(Pulse1_Target0_carry_i_5_n_0),
        .I1(p_0_in3_in[3]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [3]),
        .O(Pulse1_Target0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    Pulse1_Target0_carry_i_2
       (.I0(p_0_in3_in[0]),
        .I1(p_0_in3_in[1]),
        .I2(p_0_in3_in[2]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [2]),
        .O(Pulse1_Target0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Pulse1_Target0_carry_i_3
       (.I0(p_0_in3_in[1]),
        .I1(p_0_in3_in[0]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [1]),
        .O(Pulse1_Target0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Pulse1_Target0_carry_i_4
       (.I0(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I1(p_0_in3_in[0]),
        .O(Pulse1_Target0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hA0800080)) 
    Pulse1_Target0_carry_i_5
       (.I0(Pulse1_Target1_carry_i_24_n_0),
        .I1(Pulse1_Target1_carry__0_i_5_n_0),
        .I2(Pulse1_Target1_carry_i_23_n_0),
        .I3(Q[0]),
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
    .INIT(64'h00000000B8B84B78)) 
    Pulse1_Target1_carry__0_i_1
       (.I0(Pulse1_Target1_carry__0_i_5_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry__0_i_6_n_0),
        .I3(Pulse1_Target1_carry__0_i_7_n_0),
        .I4(Pulse1_Target1_carry__0_i_8_n_0),
        .I5(\APU_Pulse1_reg[timer][10]_0 ),
        .O(Pulse1_Target1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    Pulse1_Target1_carry__0_i_10
       (.I0(Pulse1_Target1_carry_i_11_n_0),
        .I1(Pulse1_Target1_carry_i_14_n_0),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(p_0_in3_in[5]),
        .I4(Pulse1_Target1_carry_i_9_n_0),
        .O(Pulse1_Target1_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    Pulse1_Target1_carry__0_i_11
       (.I0(Pulse1_Target1_carry__0_i_7_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_19_n_0),
        .O(p_0_in3_in[8]));
  LUT5 #(
    .INIT(32'h4144D14D)) 
    Pulse1_Target1_carry__0_i_2
       (.I0(APU_Pulse1_Message[1]),
        .I1(p_0_in3_in[9]),
        .I2(Pulse1_Target1_carry__0_i_10_n_0),
        .I3(p_0_in3_in[8]),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9A959A95659A6A95)) 
    Pulse1_Target1_carry__0_i_3
       (.I0(\APU_Pulse1_reg[timer][10]_0 ),
        .I1(Pulse1_Target1_carry__0_i_5_n_0),
        .I2(Q[0]),
        .I3(Pulse1_Target1_carry__0_i_6_n_0),
        .I4(Pulse1_Target1_carry__0_i_7_n_0),
        .I5(Pulse1_Target1_carry__0_i_8_n_0),
        .O(Pulse1_Target1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h90090690)) 
    Pulse1_Target1_carry__0_i_4
       (.I0(p_0_in3_in[9]),
        .I1(APU_Pulse1_Message[1]),
        .I2(Pulse1_Target1_carry__0_i_10_n_0),
        .I3(p_0_in3_in[8]),
        .I4(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry__0_i_5
       (.I0(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [2]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [0]),
        .O(Pulse1_Target1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry__0_i_6
       (.I0(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][10]_0 ),
        .O(Pulse1_Target1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry__0_i_7
       (.I0(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [2]),
        .I4(Q[2]),
        .I5(APU_Pulse1_Message[1]),
        .O(Pulse1_Target1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    Pulse1_Target1_carry__0_i_8
       (.I0(Pulse1_Target1_carry_i_9_n_0),
        .I1(p_0_in3_in[5]),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(Pulse1_Target1_carry_i_14_n_0),
        .I4(Pulse1_Target1_carry_i_11_n_0),
        .I5(p_0_in3_in[8]),
        .O(Pulse1_Target1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry__0_i_9
       (.I0(Pulse1_Target1_carry__0_i_6_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry__0_i_7_n_0),
        .O(p_0_in3_in[9]));
  LUT5 #(
    .INIT(32'h11141774)) 
    Pulse1_Target1_carry_i_1
       (.I0(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I1(Pulse1_Target1_carry_i_9_n_0),
        .I2(Pulse1_Target1_carry_i_10_n_0),
        .I3(Pulse1_Target1_carry_i_11_n_0),
        .I4(\APU_Pulse1_reg[timer][7]_0 [6]),
        .O(Pulse1_Target1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    Pulse1_Target1_carry_i_10
       (.I0(Pulse1_Target1_carry_i_14_n_0),
        .I1(Pulse1_Target1_carry_i_13_n_0),
        .I2(p_0_in3_in[5]),
        .O(Pulse1_Target1_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    Pulse1_Target1_carry_i_11
       (.I0(Pulse1_Target1_carry_i_20_n_0),
        .I1(Pulse1_Target1_carry_i_21_n_0),
        .I2(Q[0]),
        .O(Pulse1_Target1_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_12
       (.I0(Pulse1_Target1_carry_i_21_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_22_n_0),
        .O(p_0_in3_in[5]));
  LUT6 #(
    .INIT(64'h5FFF7FFFFFFF7FFF)) 
    Pulse1_Target1_carry_i_13
       (.I0(Pulse1_Target1_carry_i_23_n_0),
        .I1(Pulse1_Target1_carry__0_i_5_n_0),
        .I2(Pulse1_Target1_carry_i_24_n_0),
        .I3(Pulse1_Target1_carry_i_25_n_0),
        .I4(Q[0]),
        .I5(Pulse1_Target1_carry_i_26_n_0),
        .O(Pulse1_Target1_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    Pulse1_Target1_carry_i_14
       (.I0(Pulse1_Target1_carry_i_26_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_22_n_0),
        .O(Pulse1_Target1_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_15
       (.I0(Pulse1_Target1_carry_i_26_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_25_n_0),
        .O(p_0_in3_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_16
       (.I0(Pulse1_Target1_carry_i_24_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry__0_i_5_n_0),
        .O(p_0_in3_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_17
       (.I0(Pulse1_Target1_carry_i_23_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_24_n_0),
        .O(p_0_in3_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_18
       (.I0(Pulse1_Target1_carry_i_25_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_23_n_0),
        .O(p_0_in3_in[2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    Pulse1_Target1_carry_i_19
       (.I0(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I1(\APU_Pulse1_reg[timer][10]_0 ),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][8]_0 ),
        .O(Pulse1_Target1_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'h44414DD1)) 
    Pulse1_Target1_carry_i_2
       (.I0(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I1(p_0_in3_in[5]),
        .I2(Pulse1_Target1_carry_i_13_n_0),
        .I3(Pulse1_Target1_carry_i_14_n_0),
        .I4(\APU_Pulse1_reg[timer][7]_0 [4]),
        .O(Pulse1_Target1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    Pulse1_Target1_carry_i_20
       (.I0(\APU_Pulse1_reg[timer][7]_0 [2]),
        .I1(APU_Pulse1_Message[1]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [7]),
        .O(Pulse1_Target1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_21
       (.I0(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I1(\APU_Pulse1_reg[timer][8]_0 ),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][10]_0 ),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [6]),
        .O(Pulse1_Target1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_22
       (.I0(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I2(Q[1]),
        .I3(APU_Pulse1_Message[1]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [5]),
        .O(Pulse1_Target1_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_23
       (.I0(\APU_Pulse1_reg[timer][8]_0 ),
        .I1(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [2]),
        .O(Pulse1_Target1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_24
       (.I0(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [1]),
        .O(Pulse1_Target1_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_25
       (.I0(APU_Pulse1_Message[1]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [3]),
        .O(Pulse1_Target1_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse1_Target1_carry_i_26
       (.I0(\APU_Pulse1_reg[timer][10]_0 ),
        .I1(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I2(Q[1]),
        .I3(\APU_Pulse1_reg[timer][8]_0 ),
        .I4(Q[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [4]),
        .O(Pulse1_Target1_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'h144444441DDDD444)) 
    Pulse1_Target1_carry_i_3
       (.I0(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I1(p_0_in3_in[3]),
        .I2(p_0_in3_in[0]),
        .I3(p_0_in3_in[1]),
        .I4(p_0_in3_in[2]),
        .I5(\APU_Pulse1_reg[timer][7]_0 [2]),
        .O(Pulse1_Target1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1435)) 
    Pulse1_Target1_carry_i_4
       (.I0(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I1(p_0_in3_in[0]),
        .I2(p_0_in3_in[1]),
        .I3(\APU_Pulse1_reg[timer][7]_0 [0]),
        .O(Pulse1_Target1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h06606009)) 
    Pulse1_Target1_carry_i_5
       (.I0(Pulse1_Target1_carry_i_9_n_0),
        .I1(\APU_Pulse1_reg[timer][7]_0 [7]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [6]),
        .I3(Pulse1_Target1_carry_i_11_n_0),
        .I4(Pulse1_Target1_carry_i_10_n_0),
        .O(Pulse1_Target1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h09909006)) 
    Pulse1_Target1_carry_i_6
       (.I0(p_0_in3_in[5]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [5]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [4]),
        .I3(Pulse1_Target1_carry_i_14_n_0),
        .I4(Pulse1_Target1_carry_i_13_n_0),
        .O(Pulse1_Target1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0690900990099009)) 
    Pulse1_Target1_carry_i_7
       (.I0(p_0_in3_in[3]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [2]),
        .I3(p_0_in3_in[2]),
        .I4(p_0_in3_in[1]),
        .I5(p_0_in3_in[0]),
        .O(Pulse1_Target1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    Pulse1_Target1_carry_i_8
       (.I0(p_0_in3_in[1]),
        .I1(\APU_Pulse1_reg[timer][7]_0 [1]),
        .I2(\APU_Pulse1_reg[timer][7]_0 [0]),
        .I3(p_0_in3_in[0]),
        .O(Pulse1_Target1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    Pulse1_Target1_carry_i_9
       (.I0(Pulse1_Target1_carry_i_19_n_0),
        .I1(Q[0]),
        .I2(Pulse1_Target1_carry_i_20_n_0),
        .O(Pulse1_Target1_carry_i_9_n_0));
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
  LUT4 #(
    .INIT(16'hA656)) 
    Pulse2_Target0_carry__0_i_1
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(Pulse2_Target1_carry_i_9_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h59A9)) 
    Pulse2_Target0_carry__0_i_2
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_10_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_9_n_0),
        .O(Pulse2_Target0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA965)) 
    Pulse2_Target0_carry__0_i_3
       (.I0(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_13_n_0),
        .I3(Pulse2_Target1_carry_i_10_n_0),
        .O(Pulse2_Target0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9A95)) 
    Pulse2_Target0_carry__0_i_4
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_13_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
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
    .INIT(16'hB847)) 
    Pulse2_Target0_carry__1_i_1
       (.I0(Pulse2_Target1_carry_i_17_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry__0_i_5_n_0),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(Pulse2_Target0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry__1_i_2
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(Pulse2_Target1_carry__0_i_6_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry__0_i_5_n_0),
        .O(Pulse2_Target0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hA965)) 
    Pulse2_Target0_carry__1_i_3
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_11_n_0),
        .I3(Pulse2_Target1_carry__0_i_6_n_0),
        .O(Pulse2_Target0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry_i_1
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(Pulse2_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .O(Pulse2_Target0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry_i_2
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .O(Pulse2_Target0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry_i_3
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .O(Pulse2_Target0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    Pulse2_Target0_carry_i_4
       (.I0(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I1(Pulse2_Target1_carry_i_17_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_16_n_0),
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
        .DI({1'b0,1'b0,Pulse2_Target1_carry__0_i_1_n_0,Pulse2_Target1_carry__0_i_2_n_0}),
        .O(NLW_Pulse2_Target1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,Pulse2_Target1_carry__0_i_3_n_0,Pulse2_Target1_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h00B8)) 
    Pulse2_Target1_carry__0_i_1
       (.I0(Pulse2_Target1_carry_i_17_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry__0_i_5_n_0),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(Pulse2_Target1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00B8B0FB00B880F8)) 
    Pulse2_Target1_carry__0_i_2
       (.I0(Pulse2_Target1_carry__0_i_5_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry__0_i_6_n_0),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[timer][8]_0 ),
        .I5(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hB847)) 
    Pulse2_Target1_carry__0_i_3
       (.I0(Pulse2_Target1_carry_i_17_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry__0_i_5_n_0),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .O(Pulse2_Target1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8949201080402919)) 
    Pulse2_Target1_carry__0_i_4
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(Pulse2_Target1_carry__0_i_6_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry__0_i_5_n_0),
        .I4(\APU_Pulse2_reg[timer][8]_0 ),
        .I5(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    Pulse2_Target1_carry__0_i_5
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(\APU_Pulse2_reg[timer][10]_0 ),
        .I2(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I3(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I4(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I5(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .O(Pulse2_Target1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    Pulse2_Target1_carry__0_i_6
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [2]),
        .O(Pulse2_Target1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h00540010DDFD1175)) 
    Pulse2_Target1_carry_i_1
       (.I0(Pulse2_Target1_carry_i_9_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_10_n_0),
        .I3(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I4(Pulse2_Target1_carry_i_11_n_0),
        .I5(\APU_Pulse2_reg[timer][7]_0 [7]),
        .O(Pulse2_Target1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_10
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(\APU_Pulse2_reg[timer][8]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][10]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [6]),
        .O(Pulse2_Target1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_11
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(\APU_Pulse2_reg[timer][10]_0 ),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][8]_0 ),
        .O(Pulse2_Target1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_12
       (.I0(\APU_Pulse2_reg[timer][10]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][8]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [4]),
        .O(Pulse2_Target1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_13
       (.I0(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][9]_0 ),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [5]),
        .O(Pulse2_Target1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_14
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [3]),
        .O(Pulse2_Target1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_15
       (.I0(\APU_Pulse2_reg[timer][8]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [2]),
        .O(Pulse2_Target1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Pulse2_Target1_carry_i_16
       (.I0(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [1]),
        .O(Pulse2_Target1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    Pulse2_Target1_carry_i_17
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I2(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I3(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I4(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I5(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .O(Pulse2_Target1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h00E00020FCFE30F2)) 
    Pulse2_Target1_carry_i_2
       (.I0(Pulse2_Target1_carry_i_12_n_0),
        .I1(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I2(Pulse2_Target1_carry_i_13_n_0),
        .I3(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I4(Pulse2_Target1_carry_i_10_n_0),
        .I5(\APU_Pulse2_reg[timer][7]_0 [5]),
        .O(Pulse2_Target1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4500DFC54000DFC0)) 
    Pulse2_Target1_carry_i_3
       (.I0(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I1(Pulse2_Target1_carry_i_12_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_14_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I5(Pulse2_Target1_carry_i_15_n_0),
        .O(Pulse2_Target1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4500DFC54000DFC0)) 
    Pulse2_Target1_carry_i_4
       (.I0(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I1(Pulse2_Target1_carry_i_15_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_16_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I5(Pulse2_Target1_carry_i_17_n_0),
        .O(Pulse2_Target1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h50A90900000959A0)) 
    Pulse2_Target1_carry_i_5
       (.I0(\APU_Pulse2_reg[timer][7]_0 [6]),
        .I1(Pulse2_Target1_carry_i_10_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_9_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [7]),
        .I5(Pulse2_Target1_carry_i_11_n_0),
        .O(Pulse2_Target1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9894020108049291)) 
    Pulse2_Target1_carry_i_6
       (.I0(\APU_Pulse2_reg[timer][7]_0 [4]),
        .I1(Pulse2_Target1_carry_i_13_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [5]),
        .I5(Pulse2_Target1_carry_i_10_n_0),
        .O(Pulse2_Target1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h8949201080402919)) 
    Pulse2_Target1_carry_i_7
       (.I0(\APU_Pulse2_reg[timer][7]_0 [3]),
        .I1(Pulse2_Target1_carry_i_14_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_12_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I5(Pulse2_Target1_carry_i_15_n_0),
        .O(Pulse2_Target1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h8949201080402919)) 
    Pulse2_Target1_carry_i_8
       (.I0(\APU_Pulse2_reg[timer][7]_0 [1]),
        .I1(Pulse2_Target1_carry_i_16_n_0),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [0]),
        .I3(Pulse2_Target1_carry_i_15_n_0),
        .I4(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I5(Pulse2_Target1_carry_i_17_n_0),
        .O(Pulse2_Target1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    Pulse2_Target1_carry_i_9
       (.I0(\APU_Pulse2_reg[timer][9]_0 ),
        .I1(\APU_Pulse2_reg[timer][7]_0 [2]),
        .I2(\APU_Pulse2_reg[sweep_shift][2]_0 [1]),
        .I3(\APU_Pulse2_reg[timer][7]_0 [0]),
        .I4(\APU_Pulse2_reg[sweep_shift][2]_0 [2]),
        .I5(\APU_Pulse2_reg[timer][7]_0 [7]),
        .O(Pulse2_Target1_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    dbg_overflow_1_INST_0
       (.I0(Reset),
        .I1(CPU_Rst),
        .I2(Pulse1_Target05_out[11]),
        .I3(APU_Pulse1_Out[19]),
        .O(dbg_overflow_1));
  LUT4 #(
    .INIT(16'h0080)) 
    dbg_overflow_2_INST_0
       (.I0(Reset),
        .I1(CPU_Rst),
        .I2(Pulse2_Target02_out[11]),
        .I3(APU_Pulse2_Out[22]),
        .O(dbg_overflow_2));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[3]),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE_i_5_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_3 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[2]),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE_i_5_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[0]_i_4 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[1]),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE_i_5_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \procFrameCounter.counter[0]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(\procFrameCounter.counter_reg [0]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_2 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[14]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_3 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[13]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[12]_i_4 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[12]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[4]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[7]),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE_i_5_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_3 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[6]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_4 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[5]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[4]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[4]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAEAA)) 
    \procFrameCounter.counter[8]_i_2 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE2[11]),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE_i_5_n_0),
        .I4(APU_Half_CE_i_3_n_0),
        .O(\procFrameCounter.counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAAAA)) 
    \procFrameCounter.counter[8]_i_3 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE_i_4_n_0),
        .I2(APU_Quarter_CE_i_5_n_0),
        .I3(APU_Half_CE_i_3_n_0),
        .I4(APU_Quarter_CE2[10]),
        .O(\procFrameCounter.counter[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAAAAA)) 
    \procFrameCounter.counter[8]_i_4 
       (.I0(APU_Half_CE_i_6_n_0),
        .I1(APU_Quarter_CE_i_4_n_0),
        .I2(APU_Quarter_CE_i_5_n_0),
        .I3(APU_Half_CE_i_3_n_0),
        .I4(APU_Quarter_CE2[9]),
        .O(\procFrameCounter.counter[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \procFrameCounter.counter[8]_i_5 
       (.I0(APU_Half_CE_i_3_n_0),
        .I1(APU_Quarter_CE_i_5_n_0),
        .I2(APU_Quarter_CE_i_4_n_0),
        .I3(APU_Quarter_CE2[8]),
        .I4(APU_Half_CE_i_6_n_0),
        .O(\procFrameCounter.counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[0] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[11] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[12] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[12]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[14] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[12]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [14]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[1] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[2] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[3] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[0]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[4] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [5]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[6] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_5 ),
        .Q(\procFrameCounter.counter_reg [6]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[7] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[4]_i_1_n_4 ),
        .Q(\procFrameCounter.counter_reg [7]));
  FDCE #(
    .INIT(1'b0)) 
    \procFrameCounter.counter_reg[8] 
       (.C(CPU_M2),
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .CE(dbg_apu_tick),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procFrameCounter.counter_reg[8]_i_1_n_6 ),
        .Q(\procFrameCounter.counter_reg [9]));
  LUT6 #(
    .INIT(64'h88BB88BB88BB88BA)) 
    \procMainLogic.pulse1_envelope_divider[0]_i_1 
       (.I0(APU_Pulse1_Out[28]),
        .I1(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I2(pulse1_envelope_divider[3]),
        .I3(pulse1_envelope_divider[0]),
        .I4(pulse1_envelope_divider[1]),
        .I5(pulse1_envelope_divider[2]),
        .O(\procMainLogic.pulse1_envelope_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB8888BBBB8888BA)) 
    \procMainLogic.pulse1_envelope_divider[1]_i_1 
       (.I0(APU_Pulse1_Out[29]),
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
        .I1(APU_Pulse1_Out[30]),
        .I2(pulse1_envelope_divider[2]),
        .I3(pulse1_envelope_divider[1]),
        .I4(pulse1_envelope_divider[0]),
        .I5(pulse1_envelope_divider[3]),
        .O(\procMainLogic.pulse1_envelope_divider[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD88888888C)) 
    \procMainLogic.pulse1_envelope_divider[3]_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(APU_Pulse1_Out[31]),
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
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[0]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[1] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[1]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[2] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[2]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_divider_reg[3] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_envelope_divider[3]_i_1_n_0 ),
        .Q(pulse1_envelope_divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \procMainLogic.pulse1_envelope_start_i_1 
       (.I0(\APU_Pulse1[volume][3]_i_5_n_0 ),
        .I1(dbg_apu_qtr),
        .O(\procMainLogic.pulse1_envelope_start_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_envelope_start_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
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
        .I5(APU_Pulse1_Out[20]),
        .O(\procMainLogic.pulse1_sweep_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9900000098)) 
    \procMainLogic.pulse1_sweep_divider[1]_i_1 
       (.I0(pulse1_sweep_divider[1]),
        .I1(pulse1_sweep_divider[0]),
        .I2(pulse1_sweep_divider[2]),
        .I3(\APU_Pulse1[sweep_enable] ),
        .I4(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I5(APU_Pulse1_Out[21]),
        .O(\procMainLogic.pulse1_sweep_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8A8AA)) 
    \procMainLogic.pulse1_sweep_divider[2]_i_1 
       (.I0(APU_Pulse1_Out[22]),
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
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[0]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_divider_reg[1] 
       (.C(CPU_M2),
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[1]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_divider_reg[2] 
       (.C(CPU_M2),
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_divider[2]_i_1_n_0 ),
        .Q(pulse1_sweep_divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \procMainLogic.pulse1_sweep_reload_i_1 
       (.I0(\APU_Pulse1[sweep_enable] ),
        .I1(\procMainLogic.pulse1_sweep_reload_reg_n_0 ),
        .I2(dbg_apu_half),
        .O(\procMainLogic.pulse1_sweep_reload_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse1_sweep_reload_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse1_sweep_reload_i_1_n_0 ),
        .Q(\procMainLogic.pulse1_sweep_reload_reg_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    \procMainLogic.pulse2_envelope_divider[0]_i_1 
       (.I0(pulse2_envelope_divider[0]),
        .I1(\APU_Pulse2[timer_load] [10]),
        .I2(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I3(\APU_Pulse2[volume][3]_i_3_n_0 ),
        .I4(APU_Pulse2_Out[31]),
        .O(\procMainLogic.pulse2_envelope_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF900000009)) 
    \procMainLogic.pulse2_envelope_divider[1]_i_1 
       (.I0(pulse2_envelope_divider[1]),
        .I1(pulse2_envelope_divider[0]),
        .I2(\APU_Pulse2[timer_load] [10]),
        .I3(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I4(\APU_Pulse2[volume][3]_i_3_n_0 ),
        .I5(APU_Pulse2_Out[32]),
        .O(\procMainLogic.pulse2_envelope_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0F1F1E0E0F0F1E0)) 
    \procMainLogic.pulse2_envelope_divider[2]_i_1 
       (.I0(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I1(\APU_Pulse2[timer_load] [10]),
        .I2(APU_Pulse2_Out[33]),
        .I3(pulse2_envelope_divider[2]),
        .I4(\procMainLogic.pulse2_envelope_divider[2]_i_2_n_0 ),
        .I5(pulse2_envelope_divider[3]),
        .O(\procMainLogic.pulse2_envelope_divider[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \procMainLogic.pulse2_envelope_divider[2]_i_2 
       (.I0(pulse2_envelope_divider[1]),
        .I1(pulse2_envelope_divider[0]),
        .O(\procMainLogic.pulse2_envelope_divider[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAABA8)) 
    \procMainLogic.pulse2_envelope_divider[3]_i_1 
       (.I0(APU_Pulse2_Out[34]),
        .I1(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I2(\APU_Pulse2[timer_load] [10]),
        .I3(pulse2_envelope_divider[3]),
        .I4(\procMainLogic.pulse2_envelope_divider[3]_i_2_n_0 ),
        .O(\procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \procMainLogic.pulse2_envelope_divider[3]_i_2 
       (.I0(pulse2_envelope_divider[0]),
        .I1(pulse2_envelope_divider[1]),
        .I2(pulse2_envelope_divider[2]),
        .O(\procMainLogic.pulse2_envelope_divider[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[0] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[0]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[1] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[1]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[2] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[2]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_divider_reg[3] 
       (.C(CPU_M2),
        .CE(dbg_apu_qtr),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_divider[3]_i_1_n_0 ),
        .Q(pulse2_envelope_divider[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \procMainLogic.pulse2_envelope_start_i_1 
       (.I0(\APU_Pulse2[timer_load] [10]),
        .I1(\procMainLogic.pulse2_envelope_start_reg_n_0 ),
        .I2(dbg_apu_qtr),
        .O(\procMainLogic.pulse2_envelope_start_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_envelope_start_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_envelope_start_i_1_n_0 ),
        .Q(\procMainLogic.pulse2_envelope_start_reg_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF3300000032)) 
    \procMainLogic.pulse2_sweep_divider[0]_i_1 
       (.I0(pulse2_sweep_divider[1]),
        .I1(pulse2_sweep_divider[0]),
        .I2(pulse2_sweep_divider[2]),
        .I3(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .I4(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I5(APU_Pulse2_Out[23]),
        .O(\procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9900000098)) 
    \procMainLogic.pulse2_sweep_divider[1]_i_1 
       (.I0(pulse2_sweep_divider[1]),
        .I1(pulse2_sweep_divider[0]),
        .I2(pulse2_sweep_divider[2]),
        .I3(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .I4(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I5(APU_Pulse2_Out[24]),
        .O(\procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABA8A8A8A8AA)) 
    \procMainLogic.pulse2_sweep_divider[2]_i_1 
       (.I0(APU_Pulse2_Out[25]),
        .I1(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
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
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[0]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_divider_reg[1] 
       (.C(CPU_M2),
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[1]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_divider_reg[2] 
       (.C(CPU_M2),
        .CE(dbg_apu_half),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_divider[2]_i_1_n_0 ),
        .Q(pulse2_sweep_divider[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \procMainLogic.pulse2_sweep_reload_i_1 
       (.I0(\APU_Pulse2[sweep_enable]_i_1_n_0 ),
        .I1(\procMainLogic.pulse2_sweep_reload_reg_n_0 ),
        .I2(dbg_apu_half),
        .O(\procMainLogic.pulse2_sweep_reload_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \procMainLogic.pulse2_sweep_reload_reg 
       (.C(CPU_M2),
        .CE(1'b1),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(\procMainLogic.pulse2_sweep_reload_i_1_n_0 ),
        .Q(\procMainLogic.pulse2_sweep_reload_reg_n_0 ));
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
