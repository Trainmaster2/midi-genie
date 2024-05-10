-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Thu May  9 15:21:01 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_0_0/design_1_nes_apu_0_0_sim_netlist.vhdl
-- Design      : design_1_nes_apu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_apu_0_0_nes_apu is
  port (
    \APU_Pulse2_reg[timer][9]_0\ : out STD_LOGIC;
    \APU_Pulse2_reg[timer][10]_0\ : out STD_LOGIC;
    \APU_Pulse2_reg[timer][8]_0\ : out STD_LOGIC;
    APU_Noise_Message : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \APU_Pulse1_reg[timer][8]_0\ : out STD_LOGIC;
    \APU_Pulse2_reg[timer][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 6 downto 0 );
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 4 downto 0 );
    APU_Triangle_Message : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Reset : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_RW : in STD_LOGIC;
    CPU_RomSel : in STD_LOGIC;
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_M2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_nes_apu_0_0_nes_apu : entity is "nes_apu";
end design_1_nes_apu_0_0_nes_apu;

architecture STRUCTURE of design_1_nes_apu_0_0_nes_apu is
  signal \APU_Counter[mode]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Counter[mode]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Counter_reg[mode]__0\ : STD_LOGIC;
  signal APU_Half_CE20_out : STD_LOGIC;
  signal APU_Half_CE_i_10_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_11_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_12_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_13_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_2_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_3_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_4_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_5_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_6_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_7_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_8_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_9_n_0 : STD_LOGIC;
  signal APU_Half_CE_reg_n_0 : STD_LOGIC;
  signal \APU_Noise[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][4]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter][5]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Noise[noise_period]\ : STD_LOGIC;
  signal \APU_Noise[noise_period][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[noise_period][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume]\ : STD_LOGIC;
  signal \APU_Noise[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Noise[volume][3]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Noise_reg[constant_volume]__0\ : STD_LOGIC;
  signal \APU_Noise_reg[envelope_n_0_][0]\ : STD_LOGIC;
  signal \APU_Noise_reg[envelope_n_0_][1]\ : STD_LOGIC;
  signal \APU_Noise_reg[envelope_n_0_][2]\ : STD_LOGIC;
  signal \APU_Noise_reg[envelope_n_0_][3]\ : STD_LOGIC;
  signal \APU_Noise_reg[length_counter]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \APU_Noise_reg[length_counter_halt_n_0_]\ : STD_LOGIC;
  signal \APU_Noise_reg[volume]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \APU_Pulse1[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][2]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][4]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_8_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_halt]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_shift][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][3]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][3]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][3]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][6]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][7]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][7]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][8]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][9]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume]\ : STD_LOGIC;
  signal \APU_Pulse1[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_5_n_0\ : STD_LOGIC;
  signal \^apu_pulse1_message\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \APU_Pulse1_Message[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[constant_volume]__0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[envelope_n_0_][0]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[envelope_n_0_][1]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[envelope_n_0_][2]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[envelope_n_0_][3]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[length_counter]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \APU_Pulse1_reg[length_counter_halt_n_0_]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[sweep_enable]__0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[sweep_negate]__0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[sweep_period]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \APU_Pulse1_reg[sweep_shift_n_0_][0]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[sweep_shift_n_0_][1]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[sweep_shift_n_0_][2]\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_1\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_2\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_3\ : STD_LOGIC;
  signal \^apu_pulse1_reg[timer][8]_0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[volume]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \APU_Pulse2[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][4]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter_halt]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse2[timer][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][3]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][6]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][6]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][7]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][7]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][7]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][8]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][9]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume]\ : STD_LOGIC;
  signal \APU_Pulse2[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_Message[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[constant_volume]__0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[envelope_n_0_][0]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[envelope_n_0_][1]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[envelope_n_0_][2]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[envelope_n_0_][3]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[length_counter]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \APU_Pulse2_reg[length_counter_halt_n_0_]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[sweep_enable]__0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[sweep_negate]__0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[sweep_period]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \APU_Pulse2_reg[sweep_shift_n_0_][0]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[sweep_shift_n_0_][1]\ : STD_LOGIC;
  signal \APU_Pulse2_reg[sweep_shift_n_0_][2]\ : STD_LOGIC;
  signal \^apu_pulse2_reg[timer][10]_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_1\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_2\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_3\ : STD_LOGIC;
  signal \^apu_pulse2_reg[timer][7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^apu_pulse2_reg[timer][8]_0\ : STD_LOGIC;
  signal \^apu_pulse2_reg[timer][9]_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[volume]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal APU_Quarter_CE : STD_LOGIC;
  signal APU_Quarter_CE14_out : STD_LOGIC;
  signal APU_Quarter_CE2 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \APU_Quarter_CE2_carry__0_n_0\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__0_n_1\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__0_n_2\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__0_n_3\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__1_n_0\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__1_n_1\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__1_n_2\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__1_n_3\ : STD_LOGIC;
  signal \APU_Quarter_CE2_carry__2_n_3\ : STD_LOGIC;
  signal APU_Quarter_CE2_carry_n_0 : STD_LOGIC;
  signal APU_Quarter_CE2_carry_n_1 : STD_LOGIC;
  signal APU_Quarter_CE2_carry_n_2 : STD_LOGIC;
  signal APU_Quarter_CE2_carry_n_3 : STD_LOGIC;
  signal APU_Quarter_CE_i_2_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_3_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_4_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_5_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_6_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_7_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_8_n_0 : STD_LOGIC;
  signal APU_Quarter_CE_i_9_n_0 : STD_LOGIC;
  signal \APU_Status[noise_active]\ : STD_LOGIC;
  signal \APU_Status_reg[noise_active_n_0_]\ : STD_LOGIC;
  signal \APU_Status_reg[pulse1_active_n_0_]\ : STD_LOGIC;
  signal \APU_Status_reg[pulse2_active_n_0_]\ : STD_LOGIC;
  signal \APU_Status_reg[triangle_active_n_0_]\ : STD_LOGIC;
  signal APU_Tick_CE : STD_LOGIC;
  signal \APU_Triangle[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter][5]_i_8_n_0\ : STD_LOGIC;
  signal \APU_Triangle[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Triangle[linear_counter]\ : STD_LOGIC;
  signal \APU_Triangle[linear_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[linear_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][7]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][7]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][9]_i_1_n_0\ : STD_LOGIC;
  signal \^apu_triangle_message\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \APU_Triangle_Message[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle_Message[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle_reg[length_counter]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \APU_Triangle_reg[length_counter_halt]__0\ : STD_LOGIC;
  signal \APU_Triangle_reg[linear_counter]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \APU_Triangle_reg[linear_counter_load]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Pulse1_Target01_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal Pulse1_Target05_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Pulse1_Target0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_n_1\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_n_2\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__0_n_3\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_n_2\ : STD_LOGIC;
  signal \Pulse1_Target0_carry__1_n_3\ : STD_LOGIC;
  signal Pulse1_Target0_carry_i_1_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_i_2_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_i_3_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_i_4_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_i_5_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_n_0 : STD_LOGIC;
  signal Pulse1_Target0_carry_n_1 : STD_LOGIC;
  signal Pulse1_Target0_carry_n_2 : STD_LOGIC;
  signal Pulse1_Target0_carry_n_3 : STD_LOGIC;
  signal Pulse1_Target1 : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Pulse1_Target1_carry__0_n_3\ : STD_LOGIC;
  signal Pulse1_Target1_carry_i_10_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_13_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_19_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_1_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_20_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_21_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_22_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_23_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_24_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_25_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_26_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_2_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_3_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_4_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_5_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_6_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_7_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_i_8_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_n_0 : STD_LOGIC;
  signal Pulse1_Target1_carry_n_1 : STD_LOGIC;
  signal Pulse1_Target1_carry_n_2 : STD_LOGIC;
  signal Pulse1_Target1_carry_n_3 : STD_LOGIC;
  signal Pulse2_Target00_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal Pulse2_Target02_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Pulse2_Target0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_n_1\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_n_2\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__0_n_3\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__1_n_2\ : STD_LOGIC;
  signal \Pulse2_Target0_carry__1_n_3\ : STD_LOGIC;
  signal Pulse2_Target0_carry_i_1_n_0 : STD_LOGIC;
  signal Pulse2_Target0_carry_i_2_n_0 : STD_LOGIC;
  signal Pulse2_Target0_carry_i_3_n_0 : STD_LOGIC;
  signal Pulse2_Target0_carry_i_4_n_0 : STD_LOGIC;
  signal Pulse2_Target0_carry_n_0 : STD_LOGIC;
  signal Pulse2_Target0_carry_n_1 : STD_LOGIC;
  signal Pulse2_Target0_carry_n_2 : STD_LOGIC;
  signal Pulse2_Target0_carry_n_3 : STD_LOGIC;
  signal Pulse2_Target1 : STD_LOGIC;
  signal \Pulse2_Target1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Pulse2_Target1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Pulse2_Target1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Pulse2_Target1_carry__0_n_3\ : STD_LOGIC;
  signal Pulse2_Target1_carry_i_10_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_11_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_12_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_13_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_14_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_15_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_16_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_17_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_18_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_19_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_1_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_2_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_3_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_4_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_5_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_6_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_7_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_8_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_i_9_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_n_0 : STD_LOGIC;
  signal Pulse2_Target1_carry_n_1 : STD_LOGIC;
  signal Pulse2_Target1_carry_n_2 : STD_LOGIC;
  signal Pulse2_Target1_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal noise_envelope_divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in3_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \procFrameCounter.counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \procFrameCounter.counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \procFrameCounter.counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.noise_envelope_start_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_envelope_start_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_sweep_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_sweep_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_sweep_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_sweep_reload_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse1_sweep_reload_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_start_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_reload_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_reload_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.triangle_linear_reload_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.triangle_linear_reload_i_2_n_0\ : STD_LOGIC;
  signal \procMainLogic.triangle_linear_reload_i_3_n_0\ : STD_LOGIC;
  signal \procMainLogic.triangle_linear_reload_reg_n_0\ : STD_LOGIC;
  signal pulse1_envelope_divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse1_sweep_divider : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pulse2_envelope_divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse2_sweep_divider : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_APU_Pulse1_Message[3]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_APU_Pulse1_Message[3]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_APU_Pulse2_Message[3]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_APU_Pulse2_Message[3]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_APU_Quarter_CE2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_APU_Quarter_CE2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pulse1_Target0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pulse1_Target0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Pulse1_Target1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Pulse1_Target1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pulse1_Target1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Pulse2_Target0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pulse2_Target0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Pulse2_Target1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Pulse2_Target1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pulse2_Target1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \APU_Counter[mode]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of APU_Half_CE_i_11 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of APU_Half_CE_i_12 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of APU_Half_CE_i_13 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of APU_Half_CE_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of APU_Half_CE_i_8 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of APU_Half_CE_i_9 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][2]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][3]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][4]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][4]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][5]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][5]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter][5]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \APU_Noise[noise_period][3]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \APU_Noise_Message[24]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \APU_Noise_Message[25]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \APU_Noise_Message[26]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \APU_Noise_Message[27]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][2]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][3]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][4]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Pulse1[sweep_shift][2]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][7]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[15]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[16]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[17]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[18]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[3]_INST_0_i_13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][10]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][10]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][7]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[15]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[16]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[17]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[18]_INST_0\ : label is "soft_lutpair44";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of APU_Quarter_CE2_carry : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][2]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \APU_Triangle[length_counter][5]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \APU_Triangle[linear_counter][0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \APU_Triangle[linear_counter][1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \APU_Triangle[linear_counter][4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \APU_Triangle[linear_counter][5]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \APU_Triangle[linear_counter][6]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \APU_Triangle[timer][10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \APU_Triangle[timer][9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \APU_Triangle_Message[3]_INST_0\ : label is "soft_lutpair24";
  attribute ADDER_THRESHOLD of Pulse1_Target0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Pulse1_Target0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Pulse1_Target0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of Pulse1_Target0_carry_i_5 : label is "soft_lutpair17";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of Pulse1_Target1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \Pulse1_Target1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \Pulse1_Target1_carry__0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_10 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_12 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_14 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_15 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_16 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_18 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_19 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_20 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_21 : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD of Pulse2_Target0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Pulse2_Target0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Pulse2_Target0_carry__1\ : label is 35;
  attribute COMPARATOR_THRESHOLD of Pulse2_Target1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \Pulse2_Target1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_10 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_11 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_12 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_9 : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \procMainLogic.pulse1_sweep_reload_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \procMainLogic.pulse2_envelope_start_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \procMainLogic.pulse2_sweep_reload_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \procMainLogic.triangle_linear_reload_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \procMainLogic.triangle_linear_reload_i_3\ : label is "soft_lutpair54";
begin
  APU_Pulse1_Message(6 downto 0) <= \^apu_pulse1_message\(6 downto 0);
  \APU_Pulse1_reg[timer][8]_0\ <= \^apu_pulse1_reg[timer][8]_0\;
  \APU_Pulse2_reg[timer][10]_0\ <= \^apu_pulse2_reg[timer][10]_0\;
  \APU_Pulse2_reg[timer][7]_0\(7 downto 0) <= \^apu_pulse2_reg[timer][7]_0\(7 downto 0);
  \APU_Pulse2_reg[timer][8]_0\ <= \^apu_pulse2_reg[timer][8]_0\;
  \APU_Pulse2_reg[timer][9]_0\ <= \^apu_pulse2_reg[timer][9]_0\;
  APU_Triangle_Message(11 downto 0) <= \^apu_triangle_message\(11 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\APU_Counter[mode]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => \APU_Pulse2[timer][7]_i_3_n_0\,
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I5 => \APU_Counter_reg[mode]__0\,
      O => \APU_Counter[mode]_i_1_n_0\
    );
\APU_Counter[mode]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      O => \APU_Counter[mode]_i_2_n_0\
    );
\APU_Counter_reg[mode]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Counter[mode]_i_1_n_0\,
      Q => \APU_Counter_reg[mode]__0\
    );
APU_Half_CE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011F10000"
    )
        port map (
      I0 => APU_Half_CE_i_2_n_0,
      I1 => APU_Half_CE_i_3_n_0,
      I2 => APU_Half_CE_i_4_n_0,
      I3 => APU_Half_CE_i_5_n_0,
      I4 => APU_Tick_CE,
      I5 => APU_Half_CE_i_6_n_0,
      O => APU_Half_CE20_out
    );
APU_Half_CE_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(0),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => APU_Half_CE_i_13_n_0,
      I4 => \procFrameCounter.counter_reg\(13),
      I5 => \procFrameCounter.counter_reg\(11),
      O => APU_Half_CE_i_10_n_0
    );
APU_Half_CE_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(8),
      I1 => \procFrameCounter.counter_reg\(4),
      I2 => \procFrameCounter.counter_reg\(12),
      I3 => \procFrameCounter.counter_reg\(7),
      I4 => \procFrameCounter.counter_reg\(9),
      O => APU_Half_CE_i_11_n_0
    );
APU_Half_CE_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(9),
      I1 => \procFrameCounter.counter_reg\(12),
      O => APU_Half_CE_i_12_n_0
    );
APU_Half_CE_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(2),
      I1 => \procFrameCounter.counter_reg\(3),
      O => APU_Half_CE_i_13_n_0
    );
APU_Half_CE_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => APU_Half_CE_i_7_n_0,
      I1 => APU_Half_CE_i_8_n_0,
      I2 => APU_Half_CE_i_9_n_0,
      I3 => APU_Half_CE_i_10_n_0,
      O => APU_Half_CE_i_2_n_0
    );
APU_Half_CE_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(8),
      I1 => \procFrameCounter.counter_reg\(4),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => \procFrameCounter.counter_reg\(6),
      O => APU_Half_CE_i_3_n_0
    );
APU_Half_CE_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => APU_Half_CE_i_10_n_0,
      I1 => \procFrameCounter.counter_reg\(10),
      I2 => \procFrameCounter.counter_reg\(6),
      I3 => \procFrameCounter.counter_reg\(14),
      O => APU_Half_CE_i_4_n_0
    );
APU_Half_CE_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(9),
      I1 => \procFrameCounter.counter_reg\(8),
      I2 => \procFrameCounter.counter_reg\(7),
      I3 => \procFrameCounter.counter_reg\(12),
      I4 => \procFrameCounter.counter_reg\(4),
      O => APU_Half_CE_i_5_n_0
    );
APU_Half_CE_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(14),
      I1 => \procFrameCounter.counter_reg\(6),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => APU_Half_CE_i_10_n_0,
      I4 => APU_Half_CE_i_11_n_0,
      O => APU_Half_CE_i_6_n_0
    );
APU_Half_CE_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(14),
      I2 => APU_Half_CE_i_12_n_0,
      I3 => \procFrameCounter.counter_reg\(7),
      I4 => \procFrameCounter.counter_reg\(1),
      I5 => \APU_Counter_reg[mode]__0\,
      O => APU_Half_CE_i_7_n_0
    );
APU_Half_CE_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(3),
      I1 => \procFrameCounter.counter_reg\(2),
      I2 => \procFrameCounter.counter_reg\(11),
      I3 => \procFrameCounter.counter_reg\(13),
      I4 => \procFrameCounter.counter_reg\(0),
      O => APU_Half_CE_i_8_n_0
    );
APU_Half_CE_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(7),
      I1 => \procFrameCounter.counter_reg\(12),
      I2 => \APU_Counter_reg[mode]__0\,
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(14),
      O => APU_Half_CE_i_9_n_0
    );
APU_Half_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => APU_Half_CE20_out,
      Q => APU_Half_CE_reg_n_0
    );
\APU_Noise[length_counter][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77744474"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(0),
      I1 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I2 => \APU_Status_reg[noise_active_n_0_]\,
      I3 => CPU_Addr(4),
      I4 => CPU_Data(3),
      O => \APU_Noise[length_counter][0]_i_1_n_0\
    );
\APU_Noise[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909F9F9F90"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(0),
      I1 => \APU_Noise_reg[length_counter]\(1),
      I2 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I3 => \APU_Noise[length_counter][5]_i_6_n_0\,
      I4 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      I5 => \APU_Noise[length_counter][5]_i_5_n_0\,
      O => \APU_Noise[length_counter][1]_i_1_n_0\
    );
\APU_Noise[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606060606F6F6F60"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(2),
      I1 => \APU_Noise[length_counter][2]_i_2_n_0\,
      I2 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I3 => \APU_Noise[length_counter][5]_i_6_n_0\,
      I4 => \APU_Pulse1[length_counter][2]_i_3_n_0\,
      I5 => \APU_Noise[length_counter][5]_i_5_n_0\,
      O => \APU_Noise[length_counter][2]_i_1_n_0\
    );
\APU_Noise[length_counter][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(0),
      I1 => \APU_Noise_reg[length_counter]\(1),
      O => \APU_Noise[length_counter][2]_i_2_n_0\
    );
\APU_Noise[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606060606F6F6F60"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(3),
      I1 => \APU_Noise[length_counter][3]_i_2_n_0\,
      I2 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I3 => \APU_Noise[length_counter][5]_i_6_n_0\,
      I4 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      I5 => \APU_Noise[length_counter][5]_i_5_n_0\,
      O => \APU_Noise[length_counter][3]_i_1_n_0\
    );
\APU_Noise[length_counter][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(1),
      I1 => \APU_Noise_reg[length_counter]\(0),
      I2 => \APU_Noise_reg[length_counter]\(2),
      O => \APU_Noise[length_counter][3]_i_2_n_0\
    );
\APU_Noise[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AA888A888A888"
    )
        port map (
      I0 => \APU_Noise[length_counter][4]_i_2_n_0\,
      I1 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I2 => CPU_Addr(4),
      I3 => CPU_Data(3),
      I4 => \APU_Pulse2[length_counter][4]_i_3_n_0\,
      I5 => \APU_Status_reg[noise_active_n_0_]\,
      O => \APU_Noise[length_counter][4]_i_1_n_0\
    );
\APU_Noise[length_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6FF"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(4),
      I1 => \APU_Noise[length_counter][4]_i_3_n_0\,
      I2 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      I3 => APU_Half_CE_reg_n_0,
      O => \APU_Noise[length_counter][4]_i_2_n_0\
    );
\APU_Noise[length_counter][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(2),
      I1 => \APU_Noise_reg[length_counter]\(0),
      I2 => \APU_Noise_reg[length_counter]\(1),
      I3 => \APU_Noise_reg[length_counter]\(3),
      O => \APU_Noise[length_counter][4]_i_3_n_0\
    );
\APU_Noise[length_counter][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I1 => \APU_Noise[length_counter][5]_i_4_n_0\,
      I2 => \APU_Noise[noise_period][3]_i_2_n_0\,
      O => \APU_Noise[length_counter][5]_i_1_n_0\
    );
\APU_Noise[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FF54FF540054"
    )
        port map (
      I0 => \APU_Noise[length_counter][5]_i_5_n_0\,
      I1 => \APU_Noise[length_counter][5]_i_6_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_7_n_0\,
      I3 => \APU_Noise[length_counter][5]_i_3_n_0\,
      I4 => \APU_Noise[length_counter][5]_i_7_n_0\,
      I5 => \APU_Noise_reg[length_counter]\(5),
      O => \APU_Noise[length_counter][5]_i_2_n_0\
    );
\APU_Noise[length_counter][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \APU_Noise[length_counter][5]_i_7_n_0\,
      I1 => \APU_Noise_reg[length_counter]\(5),
      I2 => APU_Half_CE_reg_n_0,
      I3 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      O => \APU_Noise[length_counter][5]_i_3_n_0\
    );
\APU_Noise[length_counter][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFFFFFFFFDFF"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I2 => CPU_Data(3),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(3),
      O => \APU_Noise[length_counter][5]_i_4_n_0\
    );
\APU_Noise[length_counter][5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Addr(4),
      I2 => \APU_Status_reg[noise_active_n_0_]\,
      O => \APU_Noise[length_counter][5]_i_5_n_0\
    );
\APU_Noise[length_counter][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Addr(4),
      O => \APU_Noise[length_counter][5]_i_6_n_0\
    );
\APU_Noise[length_counter][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(3),
      I1 => \APU_Noise_reg[length_counter]\(1),
      I2 => \APU_Noise_reg[length_counter]\(0),
      I3 => \APU_Noise_reg[length_counter]\(2),
      I4 => \APU_Noise_reg[length_counter]\(4),
      O => \APU_Noise[length_counter][5]_i_7_n_0\
    );
\APU_Noise[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => \APU_Noise[noise_period][3]_i_3_n_0\,
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(4),
      I5 => CPU_Addr(2),
      O => \APU_Noise[length_counter_halt]\
    );
\APU_Noise[noise_period][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => \APU_Noise[noise_period][3]_i_3_n_0\,
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(2),
      O => \APU_Noise[noise_period]\
    );
\APU_Noise[noise_period][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => CPU_Addr(10),
      I1 => CPU_Addr(11),
      I2 => CPU_Addr(8),
      I3 => CPU_Addr(9),
      I4 => \APU_Triangle[timer][7]_i_2_n_0\,
      O => \APU_Noise[noise_period][3]_i_2_n_0\
    );
\APU_Noise[noise_period][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      O => \APU_Noise[noise_period][3]_i_3_n_0\
    );
\APU_Noise[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F5F5F5F5D"
    )
        port map (
      I0 => \APU_Noise[volume][3]_i_5_n_0\,
      I1 => \APU_Noise_reg[volume]\(2),
      I2 => \APU_Noise_reg[volume]\(0),
      I3 => \APU_Noise_reg[volume]\(1),
      I4 => \APU_Noise_reg[volume]\(3),
      I5 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      O => \APU_Noise[volume][0]_i_1_n_0\
    );
\APU_Noise[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5555FFFF5555FD"
    )
        port map (
      I0 => \APU_Noise[volume][3]_i_5_n_0\,
      I1 => \APU_Noise_reg[volume]\(3),
      I2 => \APU_Noise_reg[volume]\(2),
      I3 => \APU_Noise_reg[volume]\(1),
      I4 => \APU_Noise_reg[volume]\(0),
      I5 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      O => \APU_Noise[volume][1]_i_1_n_0\
    );
\APU_Noise[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD7DDD7DDD7DDD5"
    )
        port map (
      I0 => \APU_Noise[volume][3]_i_5_n_0\,
      I1 => \APU_Noise_reg[volume]\(2),
      I2 => \APU_Noise_reg[volume]\(0),
      I3 => \APU_Noise_reg[volume]\(1),
      I4 => \APU_Noise_reg[volume]\(3),
      I5 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      O => \APU_Noise[volume][2]_i_1_n_0\
    );
\APU_Noise[volume][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88808888AAAAAAAA"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \APU_Noise[volume][3]_i_3_n_0\,
      I2 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      I3 => \APU_Noise_reg[volume]\(3),
      I4 => \APU_Noise[volume][3]_i_4_n_0\,
      I5 => \APU_Noise[volume][3]_i_5_n_0\,
      O => \APU_Noise[volume]\
    );
\APU_Noise[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD7DDDDDDD5"
    )
        port map (
      I0 => \APU_Noise[volume][3]_i_5_n_0\,
      I1 => \APU_Noise_reg[volume]\(3),
      I2 => \APU_Noise_reg[volume]\(2),
      I3 => \APU_Noise_reg[volume]\(0),
      I4 => \APU_Noise_reg[volume]\(1),
      I5 => \APU_Noise_reg[length_counter_halt_n_0_]\,
      O => \APU_Noise[volume][3]_i_2_n_0\
    );
\APU_Noise[volume][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => noise_envelope_divider(2),
      I1 => noise_envelope_divider(1),
      I2 => noise_envelope_divider(0),
      I3 => noise_envelope_divider(3),
      O => \APU_Noise[volume][3]_i_3_n_0\
    );
\APU_Noise[volume][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Noise_reg[volume]\(1),
      I1 => \APU_Noise_reg[volume]\(0),
      I2 => \APU_Noise_reg[volume]\(2),
      O => \APU_Noise[volume][3]_i_4_n_0\
    );
\APU_Noise[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555545555555"
    )
        port map (
      I0 => \procMainLogic.noise_envelope_start_reg_n_0\,
      I1 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I2 => CPU_Addr(2),
      I3 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I4 => CPU_Addr(3),
      I5 => \procMainLogic.triangle_linear_reload_i_3_n_0\,
      O => \APU_Noise[volume][3]_i_5_n_0\
    );
\APU_Noise_Message[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][0]\,
      I1 => \APU_Noise_reg[constant_volume]__0\,
      I2 => \APU_Noise_reg[volume]\(0),
      O => APU_Noise_Message(6)
    );
\APU_Noise_Message[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][1]\,
      I1 => \APU_Noise_reg[constant_volume]__0\,
      I2 => \APU_Noise_reg[volume]\(1),
      O => APU_Noise_Message(7)
    );
\APU_Noise_Message[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][2]\,
      I1 => \APU_Noise_reg[constant_volume]__0\,
      I2 => \APU_Noise_reg[volume]\(2),
      O => APU_Noise_Message(8)
    );
\APU_Noise_Message[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][3]\,
      I1 => \APU_Noise_reg[constant_volume]__0\,
      I2 => \APU_Noise_reg[volume]\(3),
      O => APU_Noise_Message(9)
    );
\APU_Noise_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \APU_Noise_reg[length_counter]\(5),
      I1 => \APU_Noise_reg[length_counter]\(4),
      I2 => \APU_Noise_reg[length_counter]\(2),
      I3 => \APU_Noise_reg[length_counter]\(0),
      I4 => \APU_Noise_reg[length_counter]\(1),
      I5 => \APU_Noise_reg[length_counter]\(3),
      O => APU_Noise_Message(0)
    );
\APU_Noise_reg[constant_volume]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Noise_reg[constant_volume]__0\
    );
\APU_Noise_reg[envelope][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Noise_reg[envelope_n_0_][0]\
    );
\APU_Noise_reg[envelope][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Noise_reg[envelope_n_0_][1]\
    );
\APU_Noise_reg[envelope][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Noise_reg[envelope_n_0_][2]\
    );
\APU_Noise_reg[envelope][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Noise_reg[envelope_n_0_][3]\
    );
\APU_Noise_reg[length_counter][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      D => \APU_Noise[length_counter][0]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Noise_reg[length_counter]\(0)
    );
\APU_Noise_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[length_counter][1]_i_1_n_0\,
      Q => \APU_Noise_reg[length_counter]\(1)
    );
\APU_Noise_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[length_counter][2]_i_1_n_0\,
      Q => \APU_Noise_reg[length_counter]\(2)
    );
\APU_Noise_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[length_counter][3]_i_1_n_0\,
      Q => \APU_Noise_reg[length_counter]\(3)
    );
\APU_Noise_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[length_counter][4]_i_1_n_0\,
      Q => \APU_Noise_reg[length_counter]\(4)
    );
\APU_Noise_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[length_counter][5]_i_2_n_0\,
      Q => \APU_Noise_reg[length_counter]\(5)
    );
\APU_Noise_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Noise_reg[length_counter_halt_n_0_]\
    );
\APU_Noise_reg[noise_mode]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[noise_period]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_Noise_Message(1)
    );
\APU_Noise_reg[noise_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[noise_period]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_Noise_Message(2)
    );
\APU_Noise_reg[noise_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[noise_period]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_Noise_Message(3)
    );
\APU_Noise_reg[noise_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[noise_period]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_Noise_Message(4)
    );
\APU_Noise_reg[noise_period][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[noise_period]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_Noise_Message(5)
    );
\APU_Noise_reg[volume][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[volume]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[volume][0]_i_1_n_0\,
      Q => \APU_Noise_reg[volume]\(0)
    );
\APU_Noise_reg[volume][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[volume]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[volume][1]_i_1_n_0\,
      Q => \APU_Noise_reg[volume]\(1)
    );
\APU_Noise_reg[volume][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[volume]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[volume][2]_i_1_n_0\,
      Q => \APU_Noise_reg[volume]\(2)
    );
\APU_Noise_reg[volume][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[volume]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Noise[volume][3]_i_2_n_0\,
      Q => \APU_Noise_reg[volume]\(3)
    );
\APU_Pulse1[length_counter][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(0),
      I1 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I2 => CPU_Data(0),
      I3 => CPU_Addr(4),
      I4 => \APU_Status_reg[pulse1_active_n_0_]\,
      O => \APU_Pulse1[length_counter][0]_i_1_n_0\
    );
\APU_Pulse1[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F909F909090"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(0),
      I1 => \APU_Pulse1_reg[length_counter]\(1),
      I2 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I5 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      O => \APU_Pulse1[length_counter][1]_i_1_n_0\
    );
\APU_Pulse1[length_counter][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F404F011"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Data(5),
      I2 => CPU_Data(3),
      I3 => CPU_Data(4),
      I4 => CPU_Data(6),
      O => \APU_Pulse1[length_counter][1]_i_2_n_0\
    );
\APU_Pulse1[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F606F606060"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(2),
      I1 => \APU_Pulse1[length_counter][2]_i_2_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I5 => \APU_Pulse1[length_counter][2]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][2]_i_1_n_0\
    );
\APU_Pulse1[length_counter][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(0),
      I1 => \APU_Pulse1_reg[length_counter]\(1),
      O => \APU_Pulse1[length_counter][2]_i_2_n_0\
    );
\APU_Pulse1[length_counter][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC11CD42"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Data(5),
      I2 => CPU_Data(6),
      I3 => CPU_Data(3),
      I4 => CPU_Data(4),
      O => \APU_Pulse1[length_counter][2]_i_3_n_0\
    );
\APU_Pulse1[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F606F606060"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(3),
      I1 => \APU_Pulse1[length_counter][3]_i_2_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I5 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][3]_i_1_n_0\
    );
\APU_Pulse1[length_counter][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(1),
      I1 => \APU_Pulse1_reg[length_counter]\(0),
      I2 => \APU_Pulse1_reg[length_counter]\(2),
      O => \APU_Pulse1[length_counter][3]_i_2_n_0\
    );
\APU_Pulse1[length_counter][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F702F417"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Data(5),
      I2 => CPU_Data(3),
      I3 => CPU_Data(6),
      I4 => CPU_Data(4),
      O => \APU_Pulse1[length_counter][3]_i_3_n_0\
    );
\APU_Pulse1[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00444000BBFFFFBB"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I1 => APU_Half_CE_reg_n_0,
      I2 => \APU_Pulse1_reg[length_counter]\(5),
      I3 => \APU_Pulse1[length_counter][4]_i_2_n_0\,
      I4 => \APU_Pulse1_reg[length_counter]\(4),
      I5 => \APU_Pulse1[length_counter][4]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][4]_i_1_n_0\
    );
\APU_Pulse1[length_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(2),
      I1 => \APU_Pulse1_reg[length_counter]\(0),
      I2 => \APU_Pulse1_reg[length_counter]\(1),
      I3 => \APU_Pulse1_reg[length_counter]\(3),
      O => \APU_Pulse1[length_counter][4]_i_2_n_0\
    );
\APU_Pulse1[length_counter][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07F7"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][4]_i_3_n_0\,
      I1 => \APU_Status_reg[pulse1_active_n_0_]\,
      I2 => CPU_Addr(4),
      I3 => CPU_Data(0),
      O => \APU_Pulse1[length_counter][4]_i_3_n_0\
    );
\APU_Pulse1[length_counter][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFBAAAAAAAAAAA"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I1 => CPU_Data(0),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(1),
      I5 => \APU_Pulse2[timer][10]_i_4_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_1_n_0\
    );
\APU_Pulse1[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CAA0CAA0CAA0C08"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I1 => \APU_Pulse1_reg[length_counter]\(5),
      I2 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I5 => \APU_Pulse1[length_counter][5]_i_7_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_2_n_0\
    );
\APU_Pulse1[length_counter][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I1 => APU_Half_CE_reg_n_0,
      I2 => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_3_n_0\
    );
\APU_Pulse1[length_counter][5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => CPU_Addr(4),
      I2 => \APU_Status_reg[pulse1_active_n_0_]\,
      O => \APU_Pulse1[length_counter][5]_i_4_n_0\
    );
\APU_Pulse1[length_counter][5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_8_n_0\,
      I1 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I2 => APU_Half_CE_reg_n_0,
      O => \APU_Pulse1[length_counter][5]_i_5_n_0\
    );
\APU_Pulse1[length_counter][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][5]_i_6_n_0\
    );
\APU_Pulse1[length_counter][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0091018C"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Data(5),
      I2 => CPU_Data(4),
      I3 => CPU_Data(3),
      I4 => CPU_Data(6),
      O => \APU_Pulse1[length_counter][5]_i_7_n_0\
    );
\APU_Pulse1[length_counter][5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(3),
      I1 => \APU_Pulse1_reg[length_counter]\(1),
      I2 => \APU_Pulse1_reg[length_counter]\(0),
      I3 => \APU_Pulse1_reg[length_counter]\(2),
      I4 => \APU_Pulse1_reg[length_counter]\(4),
      O => \APU_Pulse1[length_counter][5]_i_8_n_0\
    );
\APU_Pulse1[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \APU_Pulse2[timer][7]_i_3_n_0\,
      I1 => \APU_Pulse1[length_counter_halt]_i_2_n_0\,
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(0),
      I5 => CPU_Addr(2),
      O => \APU_Pulse1[length_counter_halt]\
    );
\APU_Pulse1[length_counter_halt]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      O => \APU_Pulse1[length_counter_halt]_i_2_n_0\
    );
\APU_Pulse1[sweep_shift][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(3),
      I4 => CPU_Addr(4),
      I5 => CPU_Addr(1),
      O => \APU_Pulse1[sweep_enable]\
    );
\APU_Pulse1[sweep_shift][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      O => \APU_Pulse1[sweep_shift][2]_i_2_n_0\
    );
\APU_Pulse1[timer][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][0]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(0),
      O => p_2_in(0)
    );
\APU_Pulse1[timer][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(0),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(0),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][0]_i_2_n_0\
    );
\APU_Pulse1[timer][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \APU_Pulse1[timer][10]_i_3_n_0\,
      I1 => CPU_Data(2),
      I2 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I3 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I4 => \^apu_pulse1_message\(2),
      O => \APU_Pulse1[timer][10]_i_1_n_0\
    );
\APU_Pulse1[timer][10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Reset,
      I1 => CPU_Rst,
      O => \APU_Pulse1[timer][10]_i_2_n_0\
    );
\APU_Pulse1[timer][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(10),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(10),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][10]_i_3_n_0\
    );
\APU_Pulse1[timer][10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(2),
      O => \APU_Pulse1[timer][10]_i_4_n_0\
    );
\APU_Pulse1[timer][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055551555"
    )
        port map (
      I0 => \APU_Pulse1_Message[3]_INST_0_i_2_n_0\,
      I1 => Reset,
      I2 => CPU_Rst,
      I3 => Pulse1_Target05_out(11),
      I4 => \APU_Pulse1_reg[sweep_negate]__0\,
      I5 => \APU_Pulse1[timer][10]_i_6_n_0\,
      O => \APU_Pulse1[timer][10]_i_5_n_0\
    );
\APU_Pulse1[timer][10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777FFFFFFFFF"
    )
        port map (
      I0 => APU_Half_CE_reg_n_0,
      I1 => \APU_Pulse1_reg[sweep_enable]__0\,
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => \APU_Pulse1[timer][10]_i_7_n_0\,
      O => \APU_Pulse1[timer][10]_i_6_n_0\
    );
\APU_Pulse1[timer][10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => pulse1_sweep_divider(2),
      I1 => pulse1_sweep_divider(0),
      I2 => pulse1_sweep_divider(1),
      O => \APU_Pulse1[timer][10]_i_7_n_0\
    );
\APU_Pulse1[timer][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][1]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(1),
      O => p_2_in(1)
    );
\APU_Pulse1[timer][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(1),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(1),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][1]_i_2_n_0\
    );
\APU_Pulse1[timer][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][2]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(2),
      O => p_2_in(2)
    );
\APU_Pulse1[timer][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(2),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(2),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][2]_i_2_n_0\
    );
\APU_Pulse1[timer][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][3]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(3),
      O => p_2_in(3)
    );
\APU_Pulse1[timer][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(3),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(3),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][3]_i_2_n_0\
    );
\APU_Pulse1[timer][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => p_0_in3_in(3),
      O => \APU_Pulse1[timer][3]_i_4_n_0\
    );
\APU_Pulse1[timer][3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => p_0_in3_in(2),
      O => \APU_Pulse1[timer][3]_i_5_n_0\
    );
\APU_Pulse1[timer][3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_0_in3_in(1),
      O => \APU_Pulse1[timer][3]_i_6_n_0\
    );
\APU_Pulse1[timer][3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in3_in(0),
      O => \APU_Pulse1[timer][3]_i_7_n_0\
    );
\APU_Pulse1[timer][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][4]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(4),
      O => p_2_in(4)
    );
\APU_Pulse1[timer][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(4),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(4),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][4]_i_2_n_0\
    );
\APU_Pulse1[timer][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][5]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(5),
      O => p_2_in(5)
    );
\APU_Pulse1[timer][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(5),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(5),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][5]_i_2_n_0\
    );
\APU_Pulse1[timer][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][6]_i_2_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(6),
      O => p_2_in(6)
    );
\APU_Pulse1[timer][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(6),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(6),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][6]_i_2_n_0\
    );
\APU_Pulse1[timer][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(4),
      I5 => \APU_Pulse1[timer][7]_i_3_n_0\,
      O => \APU_Pulse1[timer][7]_i_1_n_0\
    );
\APU_Pulse1[timer][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1[timer][7]_i_4_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I2 => CPU_Data(7),
      O => p_2_in(7)
    );
\APU_Pulse1[timer][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => CPU_RW,
      I3 => CPU_RomSel,
      O => \APU_Pulse1[timer][7]_i_3_n_0\
    );
\APU_Pulse1[timer][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(7),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(7),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][7]_i_4_n_0\
    );
\APU_Pulse1[timer][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \APU_Pulse1[timer][8]_i_2_n_0\,
      I1 => CPU_Data(0),
      I2 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I3 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I4 => \^apu_pulse1_reg[timer][8]_0\,
      O => \APU_Pulse1[timer][8]_i_1_n_0\
    );
\APU_Pulse1[timer][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(8),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(8),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][8]_i_2_n_0\
    );
\APU_Pulse1[timer][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \APU_Pulse1[timer][9]_i_2_n_0\,
      I1 => CPU_Data(1),
      I2 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I3 => \APU_Pulse1[timer][10]_i_5_n_0\,
      I4 => \^apu_pulse1_message\(1),
      O => \APU_Pulse1[timer][9]_i_1_n_0\
    );
\APU_Pulse1[timer][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse1_Target05_out(9),
      I1 => \APU_Pulse1_reg[sweep_negate]__0\,
      I2 => Pulse1_Target1,
      I3 => Pulse1_Target01_out(9),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse1[timer][9]_i_2_n_0\
    );
\APU_Pulse1[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAE"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse1_reg[volume]\(2),
      I2 => \APU_Pulse1_reg[volume]\(0),
      I3 => \APU_Pulse1_reg[volume]\(1),
      I4 => \APU_Pulse1_reg[volume]\(3),
      I5 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      O => \APU_Pulse1[volume][0]_i_1_n_0\
    );
\APU_Pulse1[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCFFFFCCCCFE"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I1 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I2 => \APU_Pulse1_reg[volume]\(2),
      I3 => \APU_Pulse1_reg[volume]\(0),
      I4 => \APU_Pulse1_reg[volume]\(1),
      I5 => \APU_Pulse1_reg[volume]\(3),
      O => \APU_Pulse1[volume][1]_i_1_n_0\
    );
\APU_Pulse1[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEEEBEEEBEEEA"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse1_reg[volume]\(2),
      I2 => \APU_Pulse1_reg[volume]\(0),
      I3 => \APU_Pulse1_reg[volume]\(1),
      I4 => \APU_Pulse1_reg[volume]\(3),
      I5 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      O => \APU_Pulse1[volume][2]_i_1_n_0\
    );
\APU_Pulse1[volume][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88808888"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \APU_Pulse1[volume][3]_i_3_n_0\,
      I2 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I3 => \APU_Pulse1_reg[volume]\(3),
      I4 => \APU_Pulse1[volume][3]_i_4_n_0\,
      I5 => \APU_Pulse1[volume][3]_i_5_n_0\,
      O => \APU_Pulse1[volume]\
    );
\APU_Pulse1[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCCCC2"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter_halt_n_0_]\,
      I1 => \APU_Pulse1_reg[volume]\(3),
      I2 => \APU_Pulse1_reg[volume]\(1),
      I3 => \APU_Pulse1_reg[volume]\(0),
      I4 => \APU_Pulse1_reg[volume]\(2),
      I5 => \APU_Pulse1[volume][3]_i_5_n_0\,
      O => \APU_Pulse1[volume][3]_i_2_n_0\
    );
\APU_Pulse1[volume][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pulse1_envelope_divider(2),
      I1 => pulse1_envelope_divider(1),
      I2 => pulse1_envelope_divider(0),
      I3 => pulse1_envelope_divider(3),
      O => \APU_Pulse1[volume][3]_i_3_n_0\
    );
\APU_Pulse1[volume][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Pulse1_reg[volume]\(1),
      I1 => \APU_Pulse1_reg[volume]\(0),
      I2 => \APU_Pulse1_reg[volume]\(2),
      O => \APU_Pulse1[volume][3]_i_4_n_0\
    );
\APU_Pulse1[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \procMainLogic.pulse1_envelope_start_reg_n_0\,
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => \APU_Pulse2[timer][7]_i_3_n_0\,
      I5 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      O => \APU_Pulse1[volume][3]_i_5_n_0\
    );
\APU_Pulse1_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][0]\,
      I1 => \APU_Pulse1_reg[constant_volume]__0\,
      I2 => \APU_Pulse1_reg[volume]\(0),
      O => \^apu_pulse1_message\(3)
    );
\APU_Pulse1_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][1]\,
      I1 => \APU_Pulse1_reg[constant_volume]__0\,
      I2 => \APU_Pulse1_reg[volume]\(1),
      O => \^apu_pulse1_message\(4)
    );
\APU_Pulse1_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][2]\,
      I1 => \APU_Pulse1_reg[constant_volume]__0\,
      I2 => \APU_Pulse1_reg[volume]\(2),
      O => \^apu_pulse1_message\(5)
    );
\APU_Pulse1_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][3]\,
      I1 => \APU_Pulse1_reg[constant_volume]__0\,
      I2 => \APU_Pulse1_reg[volume]\(3),
      O => \^apu_pulse1_message\(6)
    );
\APU_Pulse1_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BFFF"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_negate]__0\,
      I1 => Pulse1_Target05_out(11),
      I2 => CPU_Rst,
      I3 => Reset,
      I4 => \APU_Pulse1_Message[3]_INST_0_i_2_n_0\,
      I5 => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\,
      O => \^apu_pulse1_message\(0)
    );
\APU_Pulse1_Message[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Pulse1_Message[3]_INST_0_i_4_n_0\,
      CO(3) => Pulse1_Target05_out(11),
      CO(2) => \NLW_APU_Pulse1_Message[3]_INST_0_i_1_CO_UNCONNECTED\(2),
      CO(1) => \APU_Pulse1_Message[3]_INST_0_i_1_n_2\,
      CO(0) => \APU_Pulse1_Message[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => \^apu_pulse1_message\(2 downto 1),
      DI(0) => \^apu_pulse1_reg[timer][8]_0\,
      O(3) => \NLW_APU_Pulse1_Message[3]_INST_0_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => Pulse1_Target05_out(10 downto 8),
      S(3) => '1',
      S(2) => \APU_Pulse1_Message[3]_INST_0_i_5_n_0\,
      S(1) => \APU_Pulse1_Message[3]_INST_0_i_6_n_0\,
      S(0) => \APU_Pulse1_Message[3]_INST_0_i_7_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => p_0_in3_in(6),
      O => \APU_Pulse1_Message[3]_INST_0_i_10_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => p_0_in3_in(5),
      O => \APU_Pulse1_Message[3]_INST_0_i_11_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => p_0_in3_in(4),
      O => \APU_Pulse1_Message[3]_INST_0_i_12_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse1_message\(2),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse1_reg[timer][8]_0\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      O => \APU_Pulse1_Message[3]_INST_0_i_13_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \^apu_pulse1_message\(2),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \APU_Pulse1_Message[3]_INST_0_i_8_n_0\,
      O => \APU_Pulse1_Message[3]_INST_0_i_2_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Pulse1_reg[length_counter]\(4),
      I1 => \APU_Pulse1_reg[length_counter]\(2),
      I2 => \APU_Pulse1_reg[length_counter]\(0),
      I3 => \APU_Pulse1_reg[length_counter]\(1),
      I4 => \APU_Pulse1_reg[length_counter]\(3),
      I5 => \APU_Pulse1_reg[length_counter]\(5),
      O => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Pulse1_reg[timer][3]_i_3_n_0\,
      CO(3) => \APU_Pulse1_Message[3]_INST_0_i_4_n_0\,
      CO(2) => \APU_Pulse1_Message[3]_INST_0_i_4_n_1\,
      CO(1) => \APU_Pulse1_Message[3]_INST_0_i_4_n_2\,
      CO(0) => \APU_Pulse1_Message[3]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => Pulse1_Target05_out(7 downto 4),
      S(3) => \APU_Pulse1_Message[3]_INST_0_i_9_n_0\,
      S(2) => \APU_Pulse1_Message[3]_INST_0_i_10_n_0\,
      S(1) => \APU_Pulse1_Message[3]_INST_0_i_11_n_0\,
      S(0) => \APU_Pulse1_Message[3]_INST_0_i_12_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I2 => \^apu_pulse1_message\(2),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      O => \APU_Pulse1_Message[3]_INST_0_i_5_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C9C8CCC8"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I1 => \^apu_pulse1_message\(1),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I4 => \^apu_pulse1_message\(2),
      O => \APU_Pulse1_Message[3]_INST_0_i_6_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C998C8CCCC98C8"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I1 => \^apu_pulse1_reg[timer][8]_0\,
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse1_message\(2),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => \^apu_pulse1_message\(1),
      O => \APU_Pulse1_Message[3]_INST_0_i_7_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(4),
      I2 => \^apu_pulse1_reg[timer][8]_0\,
      I3 => \^q\(3),
      O => \APU_Pulse1_Message[3]_INST_0_i_8_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I1 => \^q\(7),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse1_message\(1),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => \APU_Pulse1_Message[3]_INST_0_i_13_n_0\,
      O => \APU_Pulse1_Message[3]_INST_0_i_9_n_0\
    );
\APU_Pulse1_reg[constant_volume]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Pulse1_reg[constant_volume]__0\
    );
\APU_Pulse1_reg[envelope][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Pulse1_reg[envelope_n_0_][0]\
    );
\APU_Pulse1_reg[envelope][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Pulse1_reg[envelope_n_0_][1]\
    );
\APU_Pulse1_reg[envelope][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Pulse1_reg[envelope_n_0_][2]\
    );
\APU_Pulse1_reg[envelope][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Pulse1_reg[envelope_n_0_][3]\
    );
\APU_Pulse1_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][0]_i_1_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(0)
    );
\APU_Pulse1_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][1]_i_1_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(1)
    );
\APU_Pulse1_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][2]_i_1_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(2)
    );
\APU_Pulse1_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][3]_i_1_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(3)
    );
\APU_Pulse1_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][4]_i_1_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(4)
    );
\APU_Pulse1_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][5]_i_2_n_0\,
      Q => \APU_Pulse1_reg[length_counter]\(5)
    );
\APU_Pulse1_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Pulse1_reg[length_counter_halt_n_0_]\
    );
\APU_Pulse1_reg[sweep_enable]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \APU_Pulse1_reg[sweep_enable]__0\
    );
\APU_Pulse1_reg[sweep_negate]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Pulse1_reg[sweep_negate]__0\
    );
\APU_Pulse1_reg[sweep_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Pulse1_reg[sweep_period]\(0)
    );
\APU_Pulse1_reg[sweep_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Pulse1_reg[sweep_period]\(1)
    );
\APU_Pulse1_reg[sweep_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \APU_Pulse1_reg[sweep_period]\(2)
    );
\APU_Pulse1_reg[sweep_shift][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Pulse1_reg[sweep_shift_n_0_][0]\
    );
\APU_Pulse1_reg[sweep_shift][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Pulse1_reg[sweep_shift_n_0_][1]\
    );
\APU_Pulse1_reg[sweep_shift][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Pulse1_reg[sweep_shift_n_0_][2]\
    );
\APU_Pulse1_reg[timer][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^q\(0)
    );
\APU_Pulse1_reg[timer][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[timer][10]_i_1_n_0\,
      Q => \^apu_pulse1_message\(2)
    );
\APU_Pulse1_reg[timer][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^q\(1)
    );
\APU_Pulse1_reg[timer][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^q\(2)
    );
\APU_Pulse1_reg[timer][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^q\(3)
    );
\APU_Pulse1_reg[timer][3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \APU_Pulse1_reg[timer][3]_i_3_n_0\,
      CO(2) => \APU_Pulse1_reg[timer][3]_i_3_n_1\,
      CO(1) => \APU_Pulse1_reg[timer][3]_i_3_n_2\,
      CO(0) => \APU_Pulse1_reg[timer][3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => Pulse1_Target05_out(3 downto 0),
      S(3) => \APU_Pulse1[timer][3]_i_4_n_0\,
      S(2) => \APU_Pulse1[timer][3]_i_5_n_0\,
      S(1) => \APU_Pulse1[timer][3]_i_6_n_0\,
      S(0) => \APU_Pulse1[timer][3]_i_7_n_0\
    );
\APU_Pulse1_reg[timer][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(4),
      Q => \^q\(4)
    );
\APU_Pulse1_reg[timer][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(5),
      Q => \^q\(5)
    );
\APU_Pulse1_reg[timer][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(6),
      Q => \^q\(6)
    );
\APU_Pulse1_reg[timer][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_2_in(7),
      Q => \^q\(7)
    );
\APU_Pulse1_reg[timer][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[timer][8]_i_1_n_0\,
      Q => \^apu_pulse1_reg[timer][8]_0\
    );
\APU_Pulse1_reg[timer][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse1[timer][9]_i_1_n_0\,
      Q => \^apu_pulse1_message\(1)
    );
\APU_Pulse1_reg[volume][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[volume]\,
      D => \APU_Pulse1[volume][0]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse1_reg[volume]\(0)
    );
\APU_Pulse1_reg[volume][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[volume]\,
      D => \APU_Pulse1[volume][1]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse1_reg[volume]\(1)
    );
\APU_Pulse1_reg[volume][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[volume]\,
      D => \APU_Pulse1[volume][2]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse1_reg[volume]\(2)
    );
\APU_Pulse1_reg[volume][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[volume]\,
      D => \APU_Pulse1[volume][3]_i_2_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse1_reg[volume]\(3)
    );
\APU_Pulse2[length_counter][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(0),
      I1 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I2 => CPU_Data(1),
      I3 => CPU_Addr(4),
      I4 => \APU_Status_reg[pulse2_active_n_0_]\,
      O => \APU_Pulse2[length_counter][0]_i_1_n_0\
    );
\APU_Pulse2[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F909F909090"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(0),
      I1 => \APU_Pulse2_reg[length_counter]\(1),
      I2 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I5 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      O => \APU_Pulse2[length_counter][1]_i_1_n_0\
    );
\APU_Pulse2[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F606F606060"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(2),
      I1 => \APU_Pulse2[length_counter][2]_i_2_n_0\,
      I2 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I5 => \APU_Pulse1[length_counter][2]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][2]_i_1_n_0\
    );
\APU_Pulse2[length_counter][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(0),
      I1 => \APU_Pulse2_reg[length_counter]\(1),
      O => \APU_Pulse2[length_counter][2]_i_2_n_0\
    );
\APU_Pulse2[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F606F606060"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(3),
      I1 => \APU_Pulse2[length_counter][3]_i_2_n_0\,
      I2 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I5 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][3]_i_1_n_0\
    );
\APU_Pulse2[length_counter][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(1),
      I1 => \APU_Pulse2_reg[length_counter]\(0),
      I2 => \APU_Pulse2_reg[length_counter]\(2),
      O => \APU_Pulse2[length_counter][3]_i_2_n_0\
    );
\APU_Pulse2[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CAA3CAA3CAA3C00"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      I1 => \APU_Pulse2[length_counter][4]_i_2_n_0\,
      I2 => \APU_Pulse2_reg[length_counter]\(4),
      I3 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse2[length_counter][4]_i_3_n_0\,
      I5 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      O => \APU_Pulse2[length_counter][4]_i_1_n_0\
    );
\APU_Pulse2[length_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(2),
      I1 => \APU_Pulse2_reg[length_counter]\(0),
      I2 => \APU_Pulse2_reg[length_counter]\(1),
      I3 => \APU_Pulse2_reg[length_counter]\(3),
      O => \APU_Pulse2[length_counter][4]_i_2_n_0\
    );
\APU_Pulse2[length_counter][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA57AB88"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Data(5),
      I2 => CPU_Data(6),
      I3 => CPU_Data(3),
      I4 => CPU_Data(4),
      O => \APU_Pulse2[length_counter][4]_i_3_n_0\
    );
\APU_Pulse2[length_counter][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEEEAAAAAAAAAA"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I1 => CPU_Addr(2),
      I2 => CPU_Data(1),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(4),
      I5 => \APU_Pulse2[timer][10]_i_4_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_1_n_0\
    );
\APU_Pulse2[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FFA800A800A8A8"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_7_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_6_n_0\,
      I4 => \APU_Pulse2_reg[length_counter]\(5),
      I5 => \APU_Pulse2[length_counter][5]_i_7_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_2_n_0\
    );
\APU_Pulse2[length_counter][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \APU_Pulse2_Message[3]_INST_0_i_3_n_0\,
      I1 => APU_Half_CE_reg_n_0,
      I2 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      O => \APU_Pulse2[length_counter][5]_i_3_n_0\
    );
\APU_Pulse2[length_counter][5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => CPU_Addr(4),
      I2 => \APU_Status_reg[pulse2_active_n_0_]\,
      O => \APU_Pulse2[length_counter][5]_i_4_n_0\
    );
\APU_Pulse2[length_counter][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => CPU_Addr(4),
      O => \APU_Pulse2[length_counter][5]_i_5_n_0\
    );
\APU_Pulse2[length_counter][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      I1 => APU_Half_CE_reg_n_0,
      O => \APU_Pulse2[length_counter][5]_i_6_n_0\
    );
\APU_Pulse2[length_counter][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(4),
      I1 => \APU_Pulse2_reg[length_counter]\(3),
      I2 => \APU_Pulse2_reg[length_counter]\(1),
      I3 => \APU_Pulse2_reg[length_counter]\(0),
      I4 => \APU_Pulse2_reg[length_counter]\(2),
      O => \APU_Pulse2[length_counter][5]_i_7_n_0\
    );
\APU_Pulse2[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_halt]_i_2_n_0\,
      I1 => \APU_Pulse2[length_counter_halt]_i_2_n_0\,
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(3),
      O => \APU_Pulse2[length_counter_halt]\
    );
\APU_Pulse2[length_counter_halt]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Triangle[timer][7]_i_2_n_0\,
      I1 => CPU_Addr(9),
      I2 => CPU_Addr(8),
      I3 => CPU_Addr(11),
      I4 => CPU_Addr(10),
      I5 => CPU_Addr(0),
      O => \APU_Pulse2[length_counter_halt]_i_2_n_0\
    );
\APU_Pulse2[sweep_shift][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(3),
      O => \APU_Pulse2[sweep_enable]\
    );
\APU_Pulse2[timer][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][0]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(0),
      O => \APU_Pulse2[timer][0]_i_1_n_0\
    );
\APU_Pulse2[timer][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(0),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(0),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][0]_i_2_n_0\
    );
\APU_Pulse2[timer][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
        port map (
      I0 => \APU_Pulse2[timer][10]_i_2_n_0\,
      I1 => CPU_Data(2),
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => \APU_Pulse2[timer][10]_i_4_n_0\,
      I4 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I5 => \^apu_pulse2_reg[timer][10]_0\,
      O => \APU_Pulse2[timer][10]_i_1_n_0\
    );
\APU_Pulse2[timer][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(10),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(10),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][10]_i_2_n_0\
    );
\APU_Pulse2[timer][10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => CPU_Addr(1),
      I2 => CPU_Addr(2),
      O => \APU_Pulse2[timer][10]_i_3_n_0\
    );
\APU_Pulse2[timer][10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I2 => CPU_RomSel,
      I3 => CPU_RW,
      I4 => CPU_Addr(0),
      O => \APU_Pulse2[timer][10]_i_4_n_0\
    );
\APU_Pulse2[timer][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055551555"
    )
        port map (
      I0 => \APU_Pulse2_Message[3]_INST_0_i_2_n_0\,
      I1 => Reset,
      I2 => CPU_Rst,
      I3 => Pulse2_Target02_out(11),
      I4 => \APU_Pulse2_reg[sweep_negate]__0\,
      I5 => \APU_Pulse2[timer][10]_i_6_n_0\,
      O => \APU_Pulse2[timer][10]_i_5_n_0\
    );
\APU_Pulse2[timer][10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \APU_Pulse2[timer][10]_i_7_n_0\,
      I1 => APU_Half_CE_reg_n_0,
      I2 => \APU_Pulse2_reg[sweep_enable]__0\,
      I3 => pulse2_sweep_divider(2),
      I4 => pulse2_sweep_divider(0),
      I5 => pulse2_sweep_divider(1),
      O => \APU_Pulse2[timer][10]_i_6_n_0\
    );
\APU_Pulse2[timer][10]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      O => \APU_Pulse2[timer][10]_i_7_n_0\
    );
\APU_Pulse2[timer][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][1]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(1),
      O => \APU_Pulse2[timer][1]_i_1_n_0\
    );
\APU_Pulse2[timer][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(1),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(1),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][1]_i_2_n_0\
    );
\APU_Pulse2[timer][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][2]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(2),
      O => \APU_Pulse2[timer][2]_i_1_n_0\
    );
\APU_Pulse2[timer][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(2),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(2),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][2]_i_2_n_0\
    );
\APU_Pulse2[timer][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][3]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(3),
      O => \APU_Pulse2[timer][3]_i_1_n_0\
    );
\APU_Pulse2[timer][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(3),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(3),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][3]_i_2_n_0\
    );
\APU_Pulse2[timer][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(3),
      I1 => Pulse2_Target1_carry_i_14_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_13_n_0,
      O => \APU_Pulse2[timer][3]_i_4_n_0\
    );
\APU_Pulse2[timer][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(2),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_14_n_0,
      O => \APU_Pulse2[timer][3]_i_5_n_0\
    );
\APU_Pulse2[timer][3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(1),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_15_n_0,
      O => \APU_Pulse2[timer][3]_i_6_n_0\
    );
\APU_Pulse2[timer][3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_16_n_0,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse2_Target1_carry_i_17_n_0,
      I3 => \^apu_pulse2_reg[timer][7]_0\(0),
      O => \APU_Pulse2[timer][3]_i_7_n_0\
    );
\APU_Pulse2[timer][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][4]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(4),
      O => \APU_Pulse2[timer][4]_i_1_n_0\
    );
\APU_Pulse2[timer][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(4),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(4),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][4]_i_2_n_0\
    );
\APU_Pulse2[timer][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][5]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(5),
      O => \APU_Pulse2[timer][5]_i_1_n_0\
    );
\APU_Pulse2[timer][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(5),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(5),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][5]_i_2_n_0\
    );
\APU_Pulse2[timer][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][6]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(6),
      O => \APU_Pulse2[timer][6]_i_1_n_0\
    );
\APU_Pulse2[timer][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(6),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(6),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][6]_i_2_n_0\
    );
\APU_Pulse2[timer][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I2 => CPU_RomSel,
      I3 => CPU_RW,
      I4 => CPU_Addr(0),
      I5 => \APU_Pulse2[timer][7]_i_3_n_0\,
      O => \APU_Pulse2[timer][7]_i_1_n_0\
    );
\APU_Pulse2[timer][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][7]_i_4_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I2 => CPU_Data(7),
      O => \APU_Pulse2[timer][7]_i_2_n_0\
    );
\APU_Pulse2[timer][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Triangle[timer][7]_i_2_n_0\,
      I1 => CPU_Addr(9),
      I2 => CPU_Addr(8),
      I3 => CPU_Addr(11),
      I4 => CPU_Addr(10),
      I5 => CPU_Addr(3),
      O => \APU_Pulse2[timer][7]_i_3_n_0\
    );
\APU_Pulse2[timer][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(7),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(7),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][7]_i_4_n_0\
    );
\APU_Pulse2[timer][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
        port map (
      I0 => \APU_Pulse2[timer][8]_i_2_n_0\,
      I1 => CPU_Data(0),
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => \APU_Pulse2[timer][10]_i_4_n_0\,
      I4 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => \APU_Pulse2[timer][8]_i_1_n_0\
    );
\APU_Pulse2[timer][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(8),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(8),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][8]_i_2_n_0\
    );
\APU_Pulse2[timer][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0C00"
    )
        port map (
      I0 => \APU_Pulse2[timer][9]_i_2_n_0\,
      I1 => CPU_Data(1),
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => \APU_Pulse2[timer][10]_i_4_n_0\,
      I4 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I5 => \^apu_pulse2_reg[timer][9]_0\,
      O => \APU_Pulse2[timer][9]_i_1_n_0\
    );
\APU_Pulse2[timer][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(9),
      I1 => \APU_Pulse2_reg[sweep_negate]__0\,
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(9),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][9]_i_2_n_0\
    );
\APU_Pulse2[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAE"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse2_reg[volume]\(2),
      I2 => \APU_Pulse2_reg[volume]\(0),
      I3 => \APU_Pulse2_reg[volume]\(1),
      I4 => \APU_Pulse2_reg[volume]\(3),
      I5 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      O => \APU_Pulse2[volume][0]_i_1_n_0\
    );
\APU_Pulse2[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCFFFFCCCCFE"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      I1 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I2 => \APU_Pulse2_reg[volume]\(2),
      I3 => \APU_Pulse2_reg[volume]\(0),
      I4 => \APU_Pulse2_reg[volume]\(1),
      I5 => \APU_Pulse2_reg[volume]\(3),
      O => \APU_Pulse2[volume][1]_i_1_n_0\
    );
\APU_Pulse2[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEEEBEEEBEEEA"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse2_reg[volume]\(2),
      I2 => \APU_Pulse2_reg[volume]\(0),
      I3 => \APU_Pulse2_reg[volume]\(1),
      I4 => \APU_Pulse2_reg[volume]\(3),
      I5 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      O => \APU_Pulse2[volume][2]_i_1_n_0\
    );
\APU_Pulse2[volume][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88808888"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \APU_Pulse2[volume][3]_i_3_n_0\,
      I2 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      I3 => \APU_Pulse2_reg[volume]\(3),
      I4 => \APU_Pulse2[volume][3]_i_4_n_0\,
      I5 => \APU_Pulse2[volume][3]_i_5_n_0\,
      O => \APU_Pulse2[volume]\
    );
\APU_Pulse2[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCCCC2"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter_halt_n_0_]\,
      I1 => \APU_Pulse2_reg[volume]\(3),
      I2 => \APU_Pulse2_reg[volume]\(1),
      I3 => \APU_Pulse2_reg[volume]\(0),
      I4 => \APU_Pulse2_reg[volume]\(2),
      I5 => \APU_Pulse2[volume][3]_i_5_n_0\,
      O => \APU_Pulse2[volume][3]_i_2_n_0\
    );
\APU_Pulse2[volume][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pulse2_envelope_divider(2),
      I1 => pulse2_envelope_divider(1),
      I2 => pulse2_envelope_divider(0),
      I3 => pulse2_envelope_divider(3),
      O => \APU_Pulse2[volume][3]_i_3_n_0\
    );
\APU_Pulse2[volume][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Pulse2_reg[volume]\(1),
      I1 => \APU_Pulse2_reg[volume]\(0),
      I2 => \APU_Pulse2_reg[volume]\(2),
      O => \APU_Pulse2[volume][3]_i_4_n_0\
    );
\APU_Pulse2[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAAAAAA"
    )
        port map (
      I0 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(2),
      I4 => \APU_Pulse2[timer][7]_i_3_n_0\,
      I5 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      O => \APU_Pulse2[volume][3]_i_5_n_0\
    );
\APU_Pulse2_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][0]\,
      I1 => \APU_Pulse2_reg[constant_volume]__0\,
      I2 => \APU_Pulse2_reg[volume]\(0),
      O => APU_Pulse2_Message(1)
    );
\APU_Pulse2_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][1]\,
      I1 => \APU_Pulse2_reg[constant_volume]__0\,
      I2 => \APU_Pulse2_reg[volume]\(1),
      O => APU_Pulse2_Message(2)
    );
\APU_Pulse2_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][2]\,
      I1 => \APU_Pulse2_reg[constant_volume]__0\,
      I2 => \APU_Pulse2_reg[volume]\(2),
      O => APU_Pulse2_Message(3)
    );
\APU_Pulse2_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][3]\,
      I1 => \APU_Pulse2_reg[constant_volume]__0\,
      I2 => \APU_Pulse2_reg[volume]\(3),
      O => APU_Pulse2_Message(4)
    );
\APU_Pulse2_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFFF00000000"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_negate]__0\,
      I1 => Pulse2_Target02_out(11),
      I2 => CPU_Rst,
      I3 => Reset,
      I4 => \APU_Pulse2_Message[3]_INST_0_i_2_n_0\,
      I5 => \APU_Pulse2_Message[3]_INST_0_i_3_n_0\,
      O => APU_Pulse2_Message(0)
    );
\APU_Pulse2_Message[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Pulse2_Message[3]_INST_0_i_4_n_0\,
      CO(3) => Pulse2_Target02_out(11),
      CO(2) => \NLW_APU_Pulse2_Message[3]_INST_0_i_1_CO_UNCONNECTED\(2),
      CO(1) => \APU_Pulse2_Message[3]_INST_0_i_1_n_2\,
      CO(0) => \APU_Pulse2_Message[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^apu_pulse2_reg[timer][10]_0\,
      DI(1) => \^apu_pulse2_reg[timer][9]_0\,
      DI(0) => \^apu_pulse2_reg[timer][8]_0\,
      O(3) => \NLW_APU_Pulse2_Message[3]_INST_0_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => Pulse2_Target02_out(10 downto 8),
      S(3) => '1',
      S(2) => \APU_Pulse2_Message[3]_INST_0_i_5_n_0\,
      S(1) => \APU_Pulse2_Message[3]_INST_0_i_6_n_0\,
      S(0) => \APU_Pulse2_Message[3]_INST_0_i_7_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(6),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_10_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(5),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_11_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_11_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(4),
      I1 => Pulse2_Target1_carry_i_13_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_12_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_12_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][8]_0\,
      I1 => \^apu_pulse2_reg[timer][7]_0\(7),
      I2 => \^apu_pulse2_reg[timer][7]_0\(6),
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \APU_Pulse2_Message[3]_INST_0_i_8_n_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_2_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \APU_Pulse2_reg[length_counter]\(5),
      I1 => \APU_Pulse2_reg[length_counter]\(2),
      I2 => \APU_Pulse2_reg[length_counter]\(0),
      I3 => \APU_Pulse2_reg[length_counter]\(1),
      I4 => \APU_Pulse2_reg[length_counter]\(3),
      I5 => \APU_Pulse2_reg[length_counter]\(4),
      O => \APU_Pulse2_Message[3]_INST_0_i_3_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Pulse2_reg[timer][3]_i_3_n_0\,
      CO(3) => \APU_Pulse2_Message[3]_INST_0_i_4_n_0\,
      CO(2) => \APU_Pulse2_Message[3]_INST_0_i_4_n_1\,
      CO(1) => \APU_Pulse2_Message[3]_INST_0_i_4_n_2\,
      CO(0) => \APU_Pulse2_Message[3]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse2_reg[timer][7]_0\(7 downto 4),
      O(3 downto 0) => Pulse2_Target02_out(7 downto 4),
      S(3) => \APU_Pulse2_Message[3]_INST_0_i_9_n_0\,
      S(2) => \APU_Pulse2_Message[3]_INST_0_i_10_n_0\,
      S(1) => \APU_Pulse2_Message[3]_INST_0_i_11_n_0\,
      S(0) => \APU_Pulse2_Message[3]_INST_0_i_12_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      O => \APU_Pulse2_Message[3]_INST_0_i_5_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA04FE00"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \^apu_pulse2_reg[timer][10]_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_6_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C998C8CCCC98C8"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I1 => \^apu_pulse2_reg[timer][8]_0\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][10]_0\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I5 => \^apu_pulse2_reg[timer][9]_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_7_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(4),
      I1 => \^apu_pulse2_reg[timer][7]_0\(3),
      I2 => \^apu_pulse2_reg[timer][10]_0\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(5),
      O => \APU_Pulse2_Message[3]_INST_0_i_8_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I1 => \^apu_pulse2_reg[timer][7]_0\(7),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse2_Target1_carry_i_9_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_9_n_0\
    );
\APU_Pulse2_reg[constant_volume]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Pulse2_reg[constant_volume]__0\
    );
\APU_Pulse2_reg[envelope][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Pulse2_reg[envelope_n_0_][0]\
    );
\APU_Pulse2_reg[envelope][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Pulse2_reg[envelope_n_0_][1]\
    );
\APU_Pulse2_reg[envelope][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Pulse2_reg[envelope_n_0_][2]\
    );
\APU_Pulse2_reg[envelope][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Pulse2_reg[envelope_n_0_][3]\
    );
\APU_Pulse2_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][0]_i_1_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(0)
    );
\APU_Pulse2_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][1]_i_1_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(1)
    );
\APU_Pulse2_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][2]_i_1_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(2)
    );
\APU_Pulse2_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][3]_i_1_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(3)
    );
\APU_Pulse2_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][4]_i_1_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(4)
    );
\APU_Pulse2_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][5]_i_2_n_0\,
      Q => \APU_Pulse2_reg[length_counter]\(5)
    );
\APU_Pulse2_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Pulse2_reg[length_counter_halt_n_0_]\
    );
\APU_Pulse2_reg[sweep_enable]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \APU_Pulse2_reg[sweep_enable]__0\
    );
\APU_Pulse2_reg[sweep_negate]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Pulse2_reg[sweep_negate]__0\
    );
\APU_Pulse2_reg[sweep_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Pulse2_reg[sweep_period]\(0)
    );
\APU_Pulse2_reg[sweep_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Pulse2_reg[sweep_period]\(1)
    );
\APU_Pulse2_reg[sweep_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \APU_Pulse2_reg[sweep_period]\(2)
    );
\APU_Pulse2_reg[sweep_shift][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Pulse2_reg[sweep_shift_n_0_][0]\
    );
\APU_Pulse2_reg[sweep_shift][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Pulse2_reg[sweep_shift_n_0_][1]\
    );
\APU_Pulse2_reg[sweep_shift][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Pulse2_reg[sweep_shift_n_0_][2]\
    );
\APU_Pulse2_reg[timer][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][0]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(0)
    );
\APU_Pulse2_reg[timer][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][10]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][10]_0\
    );
\APU_Pulse2_reg[timer][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][1]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(1)
    );
\APU_Pulse2_reg[timer][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][2]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(2)
    );
\APU_Pulse2_reg[timer][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][3]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(3)
    );
\APU_Pulse2_reg[timer][3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \APU_Pulse2_reg[timer][3]_i_3_n_0\,
      CO(2) => \APU_Pulse2_reg[timer][3]_i_3_n_1\,
      CO(1) => \APU_Pulse2_reg[timer][3]_i_3_n_2\,
      CO(0) => \APU_Pulse2_reg[timer][3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse2_reg[timer][7]_0\(3 downto 0),
      O(3 downto 0) => Pulse2_Target02_out(3 downto 0),
      S(3) => \APU_Pulse2[timer][3]_i_4_n_0\,
      S(2) => \APU_Pulse2[timer][3]_i_5_n_0\,
      S(1) => \APU_Pulse2[timer][3]_i_6_n_0\,
      S(0) => \APU_Pulse2[timer][3]_i_7_n_0\
    );
\APU_Pulse2_reg[timer][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][4]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(4)
    );
\APU_Pulse2_reg[timer][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][5]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(5)
    );
\APU_Pulse2_reg[timer][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][6]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(6)
    );
\APU_Pulse2_reg[timer][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][7]_i_2_n_0\,
      Q => \^apu_pulse2_reg[timer][7]_0\(7)
    );
\APU_Pulse2_reg[timer][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][8]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][8]_0\
    );
\APU_Pulse2_reg[timer][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Pulse2[timer][9]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][9]_0\
    );
\APU_Pulse2_reg[volume][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[volume]\,
      D => \APU_Pulse2[volume][0]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse2_reg[volume]\(0)
    );
\APU_Pulse2_reg[volume][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[volume]\,
      D => \APU_Pulse2[volume][1]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse2_reg[volume]\(1)
    );
\APU_Pulse2_reg[volume][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[volume]\,
      D => \APU_Pulse2[volume][2]_i_1_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse2_reg[volume]\(2)
    );
\APU_Pulse2_reg[volume][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[volume]\,
      D => \APU_Pulse2[volume][3]_i_2_n_0\,
      PRE => \APU_Pulse1[timer][10]_i_2_n_0\,
      Q => \APU_Pulse2_reg[volume]\(3)
    );
APU_Quarter_CE2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => APU_Quarter_CE2_carry_n_0,
      CO(2) => APU_Quarter_CE2_carry_n_1,
      CO(1) => APU_Quarter_CE2_carry_n_2,
      CO(0) => APU_Quarter_CE2_carry_n_3,
      CYINIT => \procFrameCounter.counter_reg\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => APU_Quarter_CE2(4 downto 1),
      S(3 downto 0) => \procFrameCounter.counter_reg\(4 downto 1)
    );
\APU_Quarter_CE2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => APU_Quarter_CE2_carry_n_0,
      CO(3) => \APU_Quarter_CE2_carry__0_n_0\,
      CO(2) => \APU_Quarter_CE2_carry__0_n_1\,
      CO(1) => \APU_Quarter_CE2_carry__0_n_2\,
      CO(0) => \APU_Quarter_CE2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => APU_Quarter_CE2(8 downto 5),
      S(3 downto 0) => \procFrameCounter.counter_reg\(8 downto 5)
    );
\APU_Quarter_CE2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Quarter_CE2_carry__0_n_0\,
      CO(3) => \APU_Quarter_CE2_carry__1_n_0\,
      CO(2) => \APU_Quarter_CE2_carry__1_n_1\,
      CO(1) => \APU_Quarter_CE2_carry__1_n_2\,
      CO(0) => \APU_Quarter_CE2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => APU_Quarter_CE2(12 downto 9),
      S(3 downto 0) => \procFrameCounter.counter_reg\(12 downto 9)
    );
\APU_Quarter_CE2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Quarter_CE2_carry__1_n_0\,
      CO(3 downto 1) => \NLW_APU_Quarter_CE2_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \APU_Quarter_CE2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_APU_Quarter_CE2_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => APU_Quarter_CE2(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \procFrameCounter.counter_reg\(14 downto 13)
    );
APU_Quarter_CE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A008AAAAA"
    )
        port map (
      I0 => APU_Tick_CE,
      I1 => APU_Quarter_CE_i_2_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Half_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => APU_Quarter_CE14_out
    );
APU_Quarter_CE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => APU_Half_CE_i_10_n_0,
      I1 => \procFrameCounter.counter_reg\(14),
      I2 => \procFrameCounter.counter_reg\(9),
      I3 => \APU_Counter_reg[mode]__0\,
      I4 => \procFrameCounter.counter_reg\(12),
      I5 => \procFrameCounter.counter_reg\(7),
      O => APU_Quarter_CE_i_2_n_0
    );
APU_Quarter_CE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(0),
      I1 => \procFrameCounter.counter_reg\(13),
      I2 => \procFrameCounter.counter_reg\(11),
      I3 => \procFrameCounter.counter_reg\(2),
      I4 => \procFrameCounter.counter_reg\(3),
      I5 => APU_Half_CE_i_7_n_0,
      O => APU_Quarter_CE_i_3_n_0
    );
APU_Quarter_CE_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FEFFBFB"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(7),
      I2 => \procFrameCounter.counter_reg\(4),
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(8),
      O => APU_Quarter_CE_i_4_n_0
    );
APU_Quarter_CE_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEFFEEFFFEFFF"
    )
        port map (
      I0 => APU_Quarter_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_7_n_0,
      I2 => \procFrameCounter.counter_reg\(2),
      I3 => \procFrameCounter.counter_reg\(3),
      I4 => \procFrameCounter.counter_reg\(4),
      I5 => \procFrameCounter.counter_reg\(5),
      O => APU_Quarter_CE_i_5_n_0
    );
APU_Quarter_CE_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7DFDFDF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(11),
      I1 => \procFrameCounter.counter_reg\(13),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(8),
      O => APU_Quarter_CE_i_6_n_0
    );
APU_Quarter_CE_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEEE"
    )
        port map (
      I0 => APU_Quarter_CE_i_8_n_0,
      I1 => \procFrameCounter.counter_reg\(2),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => \procFrameCounter.counter_reg\(0),
      I4 => APU_Quarter_CE_i_9_n_0,
      O => APU_Quarter_CE_i_7_n_0
    );
APU_Quarter_CE_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(14),
      I1 => \procFrameCounter.counter_reg\(6),
      I2 => \procFrameCounter.counter_reg\(12),
      I3 => \procFrameCounter.counter_reg\(9),
      O => APU_Quarter_CE_i_8_n_0
    );
APU_Quarter_CE_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"545454FF54FF54FF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(2),
      I1 => \procFrameCounter.counter_reg\(0),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(8),
      I5 => \procFrameCounter.counter_reg\(12),
      O => APU_Quarter_CE_i_9_n_0
    );
APU_Quarter_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => APU_Quarter_CE14_out,
      Q => APU_Quarter_CE
    );
\APU_Status[pulse1_active]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \APU_Pulse2[timer][10]_i_4_n_0\,
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(1),
      O => \APU_Status[noise_active]\
    );
\APU_Status_reg[noise_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[noise_active]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Status_reg[noise_active_n_0_]\
    );
\APU_Status_reg[pulse1_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[noise_active]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Status_reg[pulse1_active_n_0_]\
    );
\APU_Status_reg[pulse2_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[noise_active]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Status_reg[pulse2_active_n_0_]\
    );
\APU_Status_reg[triangle_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[noise_active]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Status_reg[triangle_active_n_0_]\
    );
APU_Tick_CE_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => APU_Tick_CE,
      O => p_1_in
    );
APU_Tick_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_1_in,
      Q => APU_Tick_CE
    );
\APU_Triangle[length_counter][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFB8B8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => CPU_Addr(4),
      I2 => \APU_Status_reg[triangle_active_n_0_]\,
      I3 => \APU_Triangle_reg[length_counter]\(0),
      I4 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      O => \APU_Triangle[length_counter][0]_i_1_n_0\
    );
\APU_Triangle[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF9090909090"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(0),
      I1 => \APU_Triangle_reg[length_counter]\(1),
      I2 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      I4 => \APU_Triangle[length_counter][5]_i_5_n_0\,
      I5 => \APU_Triangle[length_counter][5]_i_6_n_0\,
      O => \APU_Triangle[length_counter][1]_i_1_n_0\
    );
\APU_Triangle[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF6060606060"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(2),
      I1 => \APU_Triangle[length_counter][2]_i_2_n_0\,
      I2 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][2]_i_3_n_0\,
      I4 => \APU_Triangle[length_counter][5]_i_5_n_0\,
      I5 => \APU_Triangle[length_counter][5]_i_6_n_0\,
      O => \APU_Triangle[length_counter][2]_i_1_n_0\
    );
\APU_Triangle[length_counter][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(0),
      I1 => \APU_Triangle_reg[length_counter]\(1),
      O => \APU_Triangle[length_counter][2]_i_2_n_0\
    );
\APU_Triangle[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF6060606060"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(3),
      I1 => \APU_Triangle[length_counter][3]_i_2_n_0\,
      I2 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      I4 => \APU_Triangle[length_counter][5]_i_5_n_0\,
      I5 => \APU_Triangle[length_counter][5]_i_6_n_0\,
      O => \APU_Triangle[length_counter][3]_i_1_n_0\
    );
\APU_Triangle[length_counter][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(1),
      I1 => \APU_Triangle_reg[length_counter]\(0),
      I2 => \APU_Triangle_reg[length_counter]\(2),
      O => \APU_Triangle[length_counter][3]_i_2_n_0\
    );
\APU_Triangle[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFFFE0E0E0E0E0"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][4]_i_3_n_0\,
      I1 => \APU_Triangle[length_counter][5]_i_5_n_0\,
      I2 => \APU_Triangle[length_counter][5]_i_6_n_0\,
      I3 => \APU_Triangle_reg[length_counter]\(4),
      I4 => \APU_Triangle[length_counter][4]_i_2_n_0\,
      I5 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      O => \APU_Triangle[length_counter][4]_i_1_n_0\
    );
\APU_Triangle[length_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(2),
      I1 => \APU_Triangle_reg[length_counter]\(0),
      I2 => \APU_Triangle_reg[length_counter]\(1),
      I3 => \APU_Triangle_reg[length_counter]\(3),
      O => \APU_Triangle[length_counter][4]_i_2_n_0\
    );
\APU_Triangle[length_counter][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      I1 => \APU_Triangle[length_counter][5]_i_4_n_0\,
      I2 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I3 => CPU_RomSel,
      I4 => CPU_RW,
      I5 => CPU_Addr(0),
      O => \APU_Triangle[length_counter][5]_i_1_n_0\
    );
\APU_Triangle[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFE0E0E0E0E0E0"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_7_n_0\,
      I1 => \APU_Triangle[length_counter][5]_i_5_n_0\,
      I2 => \APU_Triangle[length_counter][5]_i_6_n_0\,
      I3 => \APU_Triangle[length_counter][5]_i_7_n_0\,
      I4 => \APU_Triangle_reg[length_counter]\(5),
      I5 => \APU_Triangle[length_counter][5]_i_8_n_0\,
      O => \APU_Triangle[length_counter][5]_i_2_n_0\
    );
\APU_Triangle[length_counter][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \APU_Triangle_Message[3]_INST_0_i_2_n_0\,
      I1 => APU_Half_CE_reg_n_0,
      I2 => \APU_Triangle_reg[length_counter_halt]__0\,
      O => \APU_Triangle[length_counter][5]_i_3_n_0\
    );
\APU_Triangle[length_counter][5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBCFFF"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(3),
      I4 => CPU_Addr(2),
      O => \APU_Triangle[length_counter][5]_i_4_n_0\
    );
\APU_Triangle[length_counter][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => CPU_Addr(4),
      O => \APU_Triangle[length_counter][5]_i_5_n_0\
    );
\APU_Triangle[length_counter][5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \APU_Status_reg[triangle_active_n_0_]\,
      I1 => CPU_Addr(4),
      I2 => CPU_Data(2),
      I3 => \APU_Triangle[length_counter][5]_i_3_n_0\,
      O => \APU_Triangle[length_counter][5]_i_6_n_0\
    );
\APU_Triangle[length_counter][5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter_halt]__0\,
      I1 => APU_Half_CE_reg_n_0,
      O => \APU_Triangle[length_counter][5]_i_7_n_0\
    );
\APU_Triangle[length_counter][5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(4),
      I1 => \APU_Triangle_reg[length_counter]\(3),
      I2 => \APU_Triangle_reg[length_counter]\(1),
      I3 => \APU_Triangle_reg[length_counter]\(0),
      I4 => \APU_Triangle_reg[length_counter]\(2),
      O => \APU_Triangle[length_counter][5]_i_8_n_0\
    );
\APU_Triangle[linear_counter][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(0),
      I1 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I2 => \APU_Triangle_reg[linear_counter_load]\(0),
      O => p_0_in(0)
    );
\APU_Triangle[linear_counter][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(0),
      I1 => \APU_Triangle_reg[linear_counter]\(1),
      I2 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I3 => \APU_Triangle_reg[linear_counter_load]\(1),
      O => p_0_in(1)
    );
\APU_Triangle[linear_counter][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(2),
      I1 => \APU_Triangle_reg[linear_counter]\(1),
      I2 => \APU_Triangle_reg[linear_counter]\(0),
      I3 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I4 => \APU_Triangle_reg[linear_counter_load]\(2),
      O => p_0_in(2)
    );
\APU_Triangle[linear_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(3),
      I1 => \APU_Triangle_reg[linear_counter]\(2),
      I2 => \APU_Triangle_reg[linear_counter]\(0),
      I3 => \APU_Triangle_reg[linear_counter]\(1),
      I4 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I5 => \APU_Triangle_reg[linear_counter_load]\(3),
      O => p_0_in(3)
    );
\APU_Triangle[linear_counter][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(4),
      I1 => \APU_Triangle[linear_counter][4]_i_2_n_0\,
      I2 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I3 => \APU_Triangle_reg[linear_counter_load]\(4),
      O => p_0_in(4)
    );
\APU_Triangle[linear_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(2),
      I1 => \APU_Triangle_reg[linear_counter]\(0),
      I2 => \APU_Triangle_reg[linear_counter]\(1),
      I3 => \APU_Triangle_reg[linear_counter]\(3),
      O => \APU_Triangle[linear_counter][4]_i_2_n_0\
    );
\APU_Triangle[linear_counter][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(5),
      I1 => \APU_Triangle[linear_counter][5]_i_2_n_0\,
      I2 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I3 => \APU_Triangle_reg[linear_counter_load]\(5),
      O => p_0_in(5)
    );
\APU_Triangle[linear_counter][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(3),
      I1 => \APU_Triangle_reg[linear_counter]\(1),
      I2 => \APU_Triangle_reg[linear_counter]\(0),
      I3 => \APU_Triangle_reg[linear_counter]\(2),
      I4 => \APU_Triangle_reg[linear_counter]\(4),
      O => \APU_Triangle[linear_counter][5]_i_2_n_0\
    );
\APU_Triangle[linear_counter][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I2 => \APU_Triangle_Message[3]_INST_0_i_1_n_0\,
      I3 => \APU_Triangle_reg[linear_counter]\(6),
      O => \APU_Triangle[linear_counter]\
    );
\APU_Triangle[linear_counter][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(6),
      I1 => \APU_Triangle_Message[3]_INST_0_i_1_n_0\,
      I2 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      I3 => \APU_Triangle_reg[linear_counter_load]\(6),
      O => p_0_in(6)
    );
\APU_Triangle[linear_counter_load][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Triangle[timer][7]_i_2_n_0\,
      I1 => \APU_Triangle[timer][7]_i_3_n_0\,
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(0),
      I5 => CPU_Addr(2),
      O => \APU_Triangle[length_counter_halt]\
    );
\APU_Triangle[timer][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Triangle[timer][10]_i_2_n_0\,
      I2 => \^apu_triangle_message\(11),
      O => \APU_Triangle[timer][10]_i_1_n_0\
    );
\APU_Triangle[timer][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \APU_Triangle[timer][7]_i_2_n_0\,
      I1 => CPU_Addr(0),
      I2 => \APU_Triangle[timer][7]_i_3_n_0\,
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(4),
      O => \APU_Triangle[timer][10]_i_2_n_0\
    );
\APU_Triangle[timer][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \APU_Triangle[timer][7]_i_2_n_0\,
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(4),
      I5 => \APU_Triangle[timer][7]_i_3_n_0\,
      O => \APU_Triangle[timer][7]_i_1_n_0\
    );
\APU_Triangle[timer][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => CPU_Addr(13),
      I1 => CPU_Addr(6),
      I2 => CPU_Addr(5),
      I3 => CPU_Addr(7),
      I4 => CPU_Addr(12),
      I5 => CPU_Addr(14),
      O => \APU_Triangle[timer][7]_i_2_n_0\
    );
\APU_Triangle[timer][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => CPU_Addr(10),
      I1 => CPU_Addr(11),
      I2 => CPU_Addr(8),
      I3 => CPU_Addr(9),
      I4 => \APU_Pulse1[length_counter_halt]_i_2_n_0\,
      I5 => CPU_Addr(3),
      O => \APU_Triangle[timer][7]_i_3_n_0\
    );
\APU_Triangle[timer][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Triangle[timer][10]_i_2_n_0\,
      I2 => \^apu_triangle_message\(9),
      O => \APU_Triangle[timer][8]_i_1_n_0\
    );
\APU_Triangle[timer][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Triangle[timer][10]_i_2_n_0\,
      I2 => \^apu_triangle_message\(10),
      O => \APU_Triangle[timer][9]_i_1_n_0\
    );
\APU_Triangle_Message[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(6),
      I1 => \APU_Triangle_Message[3]_INST_0_i_1_n_0\,
      I2 => \APU_Triangle_Message[3]_INST_0_i_2_n_0\,
      O => \^apu_triangle_message\(0)
    );
\APU_Triangle_Message[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Triangle_reg[linear_counter]\(4),
      I1 => \APU_Triangle_reg[linear_counter]\(2),
      I2 => \APU_Triangle_reg[linear_counter]\(0),
      I3 => \APU_Triangle_reg[linear_counter]\(1),
      I4 => \APU_Triangle_reg[linear_counter]\(3),
      I5 => \APU_Triangle_reg[linear_counter]\(5),
      O => \APU_Triangle_Message[3]_INST_0_i_1_n_0\
    );
\APU_Triangle_Message[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Triangle_reg[length_counter]\(5),
      I1 => \APU_Triangle_reg[length_counter]\(2),
      I2 => \APU_Triangle_reg[length_counter]\(0),
      I3 => \APU_Triangle_reg[length_counter]\(1),
      I4 => \APU_Triangle_reg[length_counter]\(3),
      I5 => \APU_Triangle_reg[length_counter]\(4),
      O => \APU_Triangle_Message[3]_INST_0_i_2_n_0\
    );
\APU_Triangle_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][0]_i_1_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(0)
    );
\APU_Triangle_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][1]_i_1_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(1)
    );
\APU_Triangle_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][2]_i_1_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(2)
    );
\APU_Triangle_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][3]_i_1_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(3)
    );
\APU_Triangle_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][4]_i_1_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(4)
    );
\APU_Triangle_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[length_counter][5]_i_2_n_0\,
      Q => \APU_Triangle_reg[length_counter]\(5)
    );
\APU_Triangle_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \APU_Triangle_reg[length_counter_halt]__0\
    );
\APU_Triangle_reg[linear_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(0),
      Q => \APU_Triangle_reg[linear_counter]\(0)
    );
\APU_Triangle_reg[linear_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(1),
      Q => \APU_Triangle_reg[linear_counter]\(1)
    );
\APU_Triangle_reg[linear_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(2),
      Q => \APU_Triangle_reg[linear_counter]\(2)
    );
\APU_Triangle_reg[linear_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(3),
      Q => \APU_Triangle_reg[linear_counter]\(3)
    );
\APU_Triangle_reg[linear_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(4),
      Q => \APU_Triangle_reg[linear_counter]\(4)
    );
\APU_Triangle_reg[linear_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(5),
      Q => \APU_Triangle_reg[linear_counter]\(5)
    );
\APU_Triangle_reg[linear_counter][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[linear_counter]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => p_0_in(6),
      Q => \APU_Triangle_reg[linear_counter]\(6)
    );
\APU_Triangle_reg[linear_counter_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \APU_Triangle_reg[linear_counter_load]\(0)
    );
\APU_Triangle_reg[linear_counter_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \APU_Triangle_reg[linear_counter_load]\(1)
    );
\APU_Triangle_reg[linear_counter_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \APU_Triangle_reg[linear_counter_load]\(2)
    );
\APU_Triangle_reg[linear_counter_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \APU_Triangle_reg[linear_counter_load]\(3)
    );
\APU_Triangle_reg[linear_counter_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \APU_Triangle_reg[linear_counter_load]\(4)
    );
\APU_Triangle_reg[linear_counter_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \APU_Triangle_reg[linear_counter_load]\(5)
    );
\APU_Triangle_reg[linear_counter_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \APU_Triangle_reg[linear_counter_load]\(6)
    );
\APU_Triangle_reg[timer][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_message\(1)
    );
\APU_Triangle_reg[timer][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[timer][10]_i_1_n_0\,
      Q => \^apu_triangle_message\(11)
    );
\APU_Triangle_reg[timer][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_message\(2)
    );
\APU_Triangle_reg[timer][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_message\(3)
    );
\APU_Triangle_reg[timer][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_message\(4)
    );
\APU_Triangle_reg[timer][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_message\(5)
    );
\APU_Triangle_reg[timer][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_message\(6)
    );
\APU_Triangle_reg[timer][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_message\(7)
    );
\APU_Triangle_reg[timer][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_message\(8)
    );
\APU_Triangle_reg[timer][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[timer][8]_i_1_n_0\,
      Q => \^apu_triangle_message\(9)
    );
\APU_Triangle_reg[timer][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \APU_Triangle[timer][9]_i_1_n_0\,
      Q => \^apu_triangle_message\(10)
    );
Pulse1_Target0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Pulse1_Target0_carry_n_0,
      CO(2) => Pulse1_Target0_carry_n_1,
      CO(1) => Pulse1_Target0_carry_n_2,
      CO(0) => Pulse1_Target0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => Pulse1_Target01_out(3 downto 0),
      S(3) => Pulse1_Target0_carry_i_1_n_0,
      S(2) => Pulse1_Target0_carry_i_2_n_0,
      S(1) => Pulse1_Target0_carry_i_3_n_0,
      S(0) => Pulse1_Target0_carry_i_4_n_0
    );
\Pulse1_Target0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Pulse1_Target0_carry_n_0,
      CO(3) => \Pulse1_Target0_carry__0_n_0\,
      CO(2) => \Pulse1_Target0_carry__0_n_1\,
      CO(1) => \Pulse1_Target0_carry__0_n_2\,
      CO(0) => \Pulse1_Target0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => Pulse1_Target01_out(7 downto 4),
      S(3) => \Pulse1_Target0_carry__0_i_1_n_0\,
      S(2) => \Pulse1_Target0_carry__0_i_2_n_0\,
      S(1) => \Pulse1_Target0_carry__0_i_3_n_0\,
      S(0) => \Pulse1_Target0_carry__0_i_4_n_0\
    );
\Pulse1_Target0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080007FFF"
    )
        port map (
      I0 => p_0_in3_in(6),
      I1 => p_0_in3_in(5),
      I2 => Pulse1_Target1_carry_i_13_n_0,
      I3 => p_0_in3_in(4),
      I4 => \^q\(7),
      I5 => p_0_in3_in(7),
      O => \Pulse1_Target0_carry__0_i_1_n_0\
    );
\Pulse1_Target0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(6),
      I1 => p_0_in3_in(6),
      I2 => Pulse1_Target1_carry_i_10_n_0,
      O => \Pulse1_Target0_carry__0_i_2_n_0\
    );
\Pulse1_Target0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_13_n_0,
      I1 => p_0_in3_in(4),
      I2 => \^q\(5),
      I3 => p_0_in3_in(5),
      O => \Pulse1_Target0_carry__0_i_3_n_0\
    );
\Pulse1_Target0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_13_n_0,
      I1 => p_0_in3_in(4),
      I2 => \^q\(4),
      O => \Pulse1_Target0_carry__0_i_4_n_0\
    );
\Pulse1_Target0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pulse1_Target0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_Pulse1_Target0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Pulse1_Target0_carry__1_n_2\,
      CO(0) => \Pulse1_Target0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^apu_pulse1_message\(1),
      DI(0) => \^apu_pulse1_reg[timer][8]_0\,
      O(3) => \NLW_Pulse1_Target0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => Pulse1_Target01_out(10 downto 8),
      S(3) => '0',
      S(2) => \Pulse1_Target0_carry__1_i_1_n_0\,
      S(1) => \Pulse1_Target0_carry__1_i_2_n_0\,
      S(0) => \Pulse1_Target0_carry__1_i_3_n_0\
    );
\Pulse1_Target0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00C7FFF7"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \^apu_pulse1_message\(2),
      I5 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      O => \Pulse1_Target0_carry__1_i_1_n_0\
    );
\Pulse1_Target0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555AA655595"
    )
        port map (
      I0 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I1 => \^apu_pulse1_message\(2),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \^apu_pulse1_message\(1),
      I5 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      O => \Pulse1_Target0_carry__1_i_2_n_0\
    );
\Pulse1_Target0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pulse1_Target0_carry__1_i_4_n_0\,
      I1 => \^apu_pulse1_reg[timer][8]_0\,
      O => \Pulse1_Target0_carry__1_i_3_n_0\
    );
\Pulse1_Target0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_0_in3_in(7),
      I1 => p_0_in3_in(6),
      I2 => p_0_in3_in(5),
      I3 => Pulse1_Target1_carry_i_13_n_0,
      I4 => p_0_in3_in(4),
      I5 => p_0_in3_in(8),
      O => \Pulse1_Target0_carry__1_i_4_n_0\
    );
Pulse1_Target0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Pulse1_Target0_carry_i_5_n_0,
      I1 => p_0_in3_in(3),
      I2 => \^q\(3),
      O => Pulse1_Target0_carry_i_1_n_0
    );
Pulse1_Target0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => p_0_in3_in(1),
      I1 => p_0_in3_in(0),
      I2 => p_0_in3_in(2),
      I3 => \^q\(2),
      O => Pulse1_Target0_carry_i_2_n_0
    );
Pulse1_Target0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in3_in(0),
      I1 => p_0_in3_in(1),
      I2 => \^q\(1),
      O => Pulse1_Target0_carry_i_3_n_0
    );
Pulse1_Target0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in3_in(0),
      O => Pulse1_Target0_carry_i_4_n_0
    );
Pulse1_Target0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_24_n_0,
      I1 => Pulse1_Target1_carry_i_23_n_0,
      I2 => Pulse1_Target1_carry_i_22_n_0,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I4 => Pulse1_Target1_carry_i_25_n_0,
      O => Pulse1_Target0_carry_i_5_n_0
    );
Pulse1_Target1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Pulse1_Target1_carry_n_0,
      CO(2) => Pulse1_Target1_carry_n_1,
      CO(1) => Pulse1_Target1_carry_n_2,
      CO(0) => Pulse1_Target1_carry_n_3,
      CYINIT => '1',
      DI(3) => Pulse1_Target1_carry_i_1_n_0,
      DI(2) => Pulse1_Target1_carry_i_2_n_0,
      DI(1) => Pulse1_Target1_carry_i_3_n_0,
      DI(0) => Pulse1_Target1_carry_i_4_n_0,
      O(3 downto 0) => NLW_Pulse1_Target1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Pulse1_Target1_carry_i_5_n_0,
      S(2) => Pulse1_Target1_carry_i_6_n_0,
      S(1) => Pulse1_Target1_carry_i_7_n_0,
      S(0) => Pulse1_Target1_carry_i_8_n_0
    );
\Pulse1_Target1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Pulse1_Target1_carry_n_0,
      CO(3 downto 2) => \NLW_Pulse1_Target1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => Pulse1_Target1,
      CO(0) => \Pulse1_Target1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Pulse1_Target1_carry__0_i_1_n_0\,
      DI(0) => \Pulse1_Target1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_Pulse1_Target1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \Pulse1_Target1_carry__0_i_3_n_0\,
      S(0) => \Pulse1_Target1_carry__0_i_4_n_0\
    );
\Pulse1_Target1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I2 => \^apu_pulse1_message\(1),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I4 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I5 => \^apu_pulse1_message\(2),
      O => \Pulse1_Target1_carry__0_i_1_n_0\
    );
\Pulse1_Target1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \Pulse1_Target1_carry__0_i_6_n_0\,
      I2 => p_0_in3_in(8),
      I3 => p_0_in3_in(9),
      I4 => \^apu_pulse1_reg[timer][8]_0\,
      O => \Pulse1_Target1_carry__0_i_2_n_0\
    );
\Pulse1_Target1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3732333737373337"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I1 => \^apu_pulse1_message\(2),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I4 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I5 => \^apu_pulse1_message\(1),
      O => \Pulse1_Target1_carry__0_i_3_n_0\
    );
\Pulse1_Target1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => p_0_in3_in(9),
      I1 => \^apu_pulse1_message\(1),
      I2 => \Pulse1_Target1_carry__0_i_6_n_0\,
      I3 => p_0_in3_in(8),
      I4 => \^apu_pulse1_reg[timer][8]_0\,
      O => \Pulse1_Target1_carry__0_i_4_n_0\
    );
\Pulse1_Target1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in3_in(7),
      I1 => p_0_in3_in(6),
      I2 => p_0_in3_in(5),
      I3 => Pulse1_Target1_carry_i_13_n_0,
      I4 => p_0_in3_in(4),
      I5 => p_0_in3_in(8),
      O => \Pulse1_Target1_carry__0_i_5_n_0\
    );
\Pulse1_Target1_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in3_in(4),
      I1 => Pulse1_Target1_carry_i_13_n_0,
      I2 => p_0_in3_in(5),
      I3 => p_0_in3_in(6),
      I4 => p_0_in3_in(7),
      O => \Pulse1_Target1_carry__0_i_6_n_0\
    );
\Pulse1_Target1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => \^apu_pulse1_message\(2),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I4 => \^apu_pulse1_reg[timer][8]_0\,
      I5 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      O => p_0_in3_in(8)
    );
\Pulse1_Target1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^apu_pulse1_message\(2),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I3 => \^apu_pulse1_message\(1),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      O => p_0_in3_in(9)
    );
Pulse1_Target1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4144D14D"
    )
        port map (
      I0 => \^q\(7),
      I1 => p_0_in3_in(7),
      I2 => Pulse1_Target1_carry_i_10_n_0,
      I3 => p_0_in3_in(6),
      I4 => \^q\(6),
      O => Pulse1_Target1_carry_i_1_n_0
    );
Pulse1_Target1_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in3_in(4),
      I1 => Pulse1_Target1_carry_i_13_n_0,
      I2 => p_0_in3_in(5),
      O => Pulse1_Target1_carry_i_10_n_0
    );
Pulse1_Target1_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^q\(7),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse1_Target1_carry_i_20_n_0,
      O => p_0_in3_in(6)
    );
Pulse1_Target1_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_20_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_21_n_0,
      O => p_0_in3_in(5)
    );
Pulse1_Target1_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000800000008000"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_22_n_0,
      I1 => Pulse1_Target1_carry_i_23_n_0,
      I2 => Pulse1_Target1_carry_i_24_n_0,
      I3 => Pulse1_Target1_carry_i_25_n_0,
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse1_Target1_carry_i_26_n_0,
      O => Pulse1_Target1_carry_i_13_n_0
    );
Pulse1_Target1_carry_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_21_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_26_n_0,
      O => p_0_in3_in(4)
    );
Pulse1_Target1_carry_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_26_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_25_n_0,
      O => p_0_in3_in(3)
    );
Pulse1_Target1_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_22_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_24_n_0,
      O => p_0_in3_in(1)
    );
Pulse1_Target1_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_24_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_23_n_0,
      O => p_0_in3_in(0)
    );
Pulse1_Target1_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_25_n_0,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse1_Target1_carry_i_22_n_0,
      O => p_0_in3_in(2)
    );
Pulse1_Target1_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^q\(7),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      O => Pulse1_Target1_carry_i_19_n_0
    );
Pulse1_Target1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14441DD4"
    )
        port map (
      I0 => \^q\(5),
      I1 => p_0_in3_in(5),
      I2 => Pulse1_Target1_carry_i_13_n_0,
      I3 => p_0_in3_in(4),
      I4 => \^q\(4),
      O => Pulse1_Target1_carry_i_2_n_0
    );
Pulse1_Target1_carry_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^apu_pulse1_reg[timer][8]_0\,
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse1_message\(2),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \^q\(6),
      O => Pulse1_Target1_carry_i_20_n_0
    );
Pulse1_Target1_carry_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^q\(7),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse1_message\(1),
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \^q\(5),
      O => Pulse1_Target1_carry_i_21_n_0
    );
Pulse1_Target1_carry_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_reg[timer][8]_0\,
      I1 => \^q\(4),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^q\(6),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I5 => \^q\(2),
      O => Pulse1_Target1_carry_i_22_n_0
    );
Pulse1_Target1_carry_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^q\(4),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I5 => \^q\(0),
      O => Pulse1_Target1_carry_i_23_n_0
    );
Pulse1_Target1_carry_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^q\(5),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I5 => \^q\(1),
      O => Pulse1_Target1_carry_i_24_n_0
    );
Pulse1_Target1_carry_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_message\(1),
      I1 => \^q\(5),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^q\(7),
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I5 => \^q\(3),
      O => Pulse1_Target1_carry_i_25_n_0
    );
Pulse1_Target1_carry_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_message\(2),
      I1 => \^q\(6),
      I2 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse1_reg[timer][8]_0\,
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I5 => \^q\(4),
      O => Pulse1_Target1_carry_i_26_n_0
    );
Pulse1_Target1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"144444441DDDD444"
    )
        port map (
      I0 => \^q\(3),
      I1 => p_0_in3_in(3),
      I2 => p_0_in3_in(1),
      I3 => p_0_in3_in(0),
      I4 => p_0_in3_in(2),
      I5 => \^q\(2),
      O => Pulse1_Target1_carry_i_3_n_0
    );
Pulse1_Target1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"141D"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_0_in3_in(1),
      I2 => p_0_in3_in(0),
      I3 => \^q\(0),
      O => Pulse1_Target1_carry_i_4_n_0
    );
Pulse1_Target1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090690"
    )
        port map (
      I0 => p_0_in3_in(7),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => p_0_in3_in(6),
      I4 => Pulse1_Target1_carry_i_10_n_0,
      O => Pulse1_Target1_carry_i_5_n_0
    );
Pulse1_Target1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => p_0_in3_in(5),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => p_0_in3_in(4),
      I4 => Pulse1_Target1_carry_i_13_n_0,
      O => Pulse1_Target1_carry_i_6_n_0
    );
Pulse1_Target1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0690900990099009"
    )
        port map (
      I0 => p_0_in3_in(3),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => p_0_in3_in(2),
      I4 => p_0_in3_in(0),
      I5 => p_0_in3_in(1),
      O => Pulse1_Target1_carry_i_7_n_0
    );
Pulse1_Target1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => p_0_in3_in(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => p_0_in3_in(0),
      O => Pulse1_Target1_carry_i_8_n_0
    );
Pulse1_Target1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^apu_pulse1_message\(2),
      I1 => \APU_Pulse1_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse1_reg[timer][8]_0\,
      I3 => \APU_Pulse1_reg[sweep_shift_n_0_][2]\,
      I4 => \APU_Pulse1_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse1_Target1_carry_i_19_n_0,
      O => p_0_in3_in(7)
    );
Pulse2_Target0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Pulse2_Target0_carry_n_0,
      CO(2) => Pulse2_Target0_carry_n_1,
      CO(1) => Pulse2_Target0_carry_n_2,
      CO(0) => Pulse2_Target0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^apu_pulse2_reg[timer][7]_0\(3 downto 0),
      O(3 downto 0) => Pulse2_Target00_out(3 downto 0),
      S(3) => Pulse2_Target0_carry_i_1_n_0,
      S(2) => Pulse2_Target0_carry_i_2_n_0,
      S(1) => Pulse2_Target0_carry_i_3_n_0,
      S(0) => Pulse2_Target0_carry_i_4_n_0
    );
\Pulse2_Target0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Pulse2_Target0_carry_n_0,
      CO(3) => \Pulse2_Target0_carry__0_n_0\,
      CO(2) => \Pulse2_Target0_carry__0_n_1\,
      CO(1) => \Pulse2_Target0_carry__0_n_2\,
      CO(0) => \Pulse2_Target0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse2_reg[timer][7]_0\(7 downto 4),
      O(3 downto 0) => Pulse2_Target00_out(7 downto 4),
      S(3) => \Pulse2_Target0_carry__0_i_1_n_0\,
      S(2) => \Pulse2_Target0_carry__0_i_2_n_0\,
      S(1) => \Pulse2_Target0_carry__0_i_3_n_0\,
      S(0) => \Pulse2_Target0_carry__0_i_4_n_0\
    );
\Pulse2_Target0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_19_n_0,
      O => \Pulse2_Target0_carry__0_i_1_n_0\
    );
\Pulse2_Target0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(6),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      O => \Pulse2_Target0_carry__0_i_2_n_0\
    );
\Pulse2_Target0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(5),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_11_n_0,
      O => \Pulse2_Target0_carry__0_i_3_n_0\
    );
\Pulse2_Target0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(4),
      I1 => Pulse2_Target1_carry_i_13_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_12_n_0,
      O => \Pulse2_Target0_carry__0_i_4_n_0\
    );
\Pulse2_Target0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pulse2_Target0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_Pulse2_Target0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Pulse2_Target0_carry__1_n_2\,
      CO(0) => \Pulse2_Target0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^apu_pulse2_reg[timer][9]_0\,
      DI(0) => \^apu_pulse2_reg[timer][8]_0\,
      O(3) => \NLW_Pulse2_Target0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => Pulse2_Target00_out(10 downto 8),
      S(3) => '0',
      S(2) => \Pulse2_Target0_carry__1_i_1_n_0\,
      S(1) => \Pulse2_Target0_carry__1_i_2_n_0\,
      S(0) => \Pulse2_Target0_carry__1_i_3_n_0\
    );
\Pulse2_Target0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \^apu_pulse2_reg[timer][10]_0\,
      O => \Pulse2_Target0_carry__1_i_1_n_0\
    );
\Pulse2_Target0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333393F"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \^apu_pulse2_reg[timer][9]_0\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      O => \Pulse2_Target0_carry__1_i_2_n_0\
    );
\Pulse2_Target0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF30BBCF77"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \^apu_pulse2_reg[timer][10]_0\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I4 => \^apu_pulse2_reg[timer][8]_0\,
      I5 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      O => \Pulse2_Target0_carry__1_i_3_n_0\
    );
Pulse2_Target0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(3),
      I1 => Pulse2_Target1_carry_i_14_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target0_carry_i_1_n_0
    );
Pulse2_Target0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(2),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_14_n_0,
      O => Pulse2_Target0_carry_i_2_n_0
    );
Pulse2_Target0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(1),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_15_n_0,
      O => Pulse2_Target0_carry_i_3_n_0
    );
Pulse2_Target0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_16_n_0,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse2_Target1_carry_i_17_n_0,
      I3 => \^apu_pulse2_reg[timer][7]_0\(0),
      O => Pulse2_Target0_carry_i_4_n_0
    );
Pulse2_Target1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Pulse2_Target1_carry_n_0,
      CO(2) => Pulse2_Target1_carry_n_1,
      CO(1) => Pulse2_Target1_carry_n_2,
      CO(0) => Pulse2_Target1_carry_n_3,
      CYINIT => '1',
      DI(3) => Pulse2_Target1_carry_i_1_n_0,
      DI(2) => Pulse2_Target1_carry_i_2_n_0,
      DI(1) => Pulse2_Target1_carry_i_3_n_0,
      DI(0) => Pulse2_Target1_carry_i_4_n_0,
      O(3 downto 0) => NLW_Pulse2_Target1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Pulse2_Target1_carry_i_5_n_0,
      S(2) => Pulse2_Target1_carry_i_6_n_0,
      S(1) => Pulse2_Target1_carry_i_7_n_0,
      S(0) => Pulse2_Target1_carry_i_8_n_0
    );
\Pulse2_Target1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Pulse2_Target1_carry_n_0,
      CO(3 downto 2) => \NLW_Pulse2_Target1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => Pulse2_Target1,
      CO(0) => \Pulse2_Target1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Pulse2_Target1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_Pulse2_Target1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \Pulse2_Target1_carry__0_i_2_n_0\,
      S(0) => \Pulse2_Target1_carry__0_i_3_n_0\
    );
\Pulse2_Target1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000020A00"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \^apu_pulse2_reg[timer][9]_0\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => \Pulse2_Target1_carry__0_i_1_n_0\
    );
\Pulse2_Target1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \^apu_pulse2_reg[timer][10]_0\,
      O => \Pulse2_Target1_carry__0_i_2_n_0\
    );
\Pulse2_Target1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555510B34537"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => \^apu_pulse2_reg[timer][10]_0\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I4 => \^apu_pulse2_reg[timer][8]_0\,
      I5 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      O => \Pulse2_Target1_carry__0_i_3_n_0\
    );
Pulse2_Target1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500DFC54000DFC0"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(6),
      I1 => Pulse2_Target1_carry_i_9_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_10_n_0,
      I4 => \^apu_pulse2_reg[timer][7]_0\(7),
      I5 => Pulse2_Target1_carry_i_11_n_0,
      O => Pulse2_Target1_carry_i_1_n_0
    );
Pulse2_Target1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse2_reg[timer][7]_0\(7),
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      O => Pulse2_Target1_carry_i_10_n_0
    );
Pulse2_Target1_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][8]_0\,
      I1 => \^apu_pulse2_reg[timer][10]_0\,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(6),
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      O => Pulse2_Target1_carry_i_11_n_0
    );
Pulse2_Target1_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(7),
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse2_reg[timer][9]_0\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I4 => \^apu_pulse2_reg[timer][7]_0\(5),
      O => Pulse2_Target1_carry_i_12_n_0
    );
Pulse2_Target1_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \^apu_pulse2_reg[timer][7]_0\(6),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(4),
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => Pulse2_Target1_carry_i_13_n_0
    );
Pulse2_Target1_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D331DCC1DFF1D"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(3),
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I2 => \^apu_pulse2_reg[timer][7]_0\(7),
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I4 => \^apu_pulse2_reg[timer][7]_0\(5),
      I5 => \^apu_pulse2_reg[timer][9]_0\,
      O => Pulse2_Target1_carry_i_14_n_0
    );
Pulse2_Target1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][8]_0\,
      I1 => \^apu_pulse2_reg[timer][7]_0\(4),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(6),
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I5 => \^apu_pulse2_reg[timer][7]_0\(2),
      O => Pulse2_Target1_carry_i_15_n_0
    );
Pulse2_Target1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(7),
      I1 => \^apu_pulse2_reg[timer][7]_0\(3),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(5),
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I5 => \^apu_pulse2_reg[timer][7]_0\(1),
      O => Pulse2_Target1_carry_i_16_n_0
    );
Pulse2_Target1_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(6),
      I1 => \^apu_pulse2_reg[timer][7]_0\(2),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][7]_0\(4),
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I5 => \^apu_pulse2_reg[timer][7]_0\(0),
      O => Pulse2_Target1_carry_i_17_n_0
    );
Pulse2_Target1_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse2_reg[timer][7]_0\(7),
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse2_Target1_carry_i_11_n_0,
      O => Pulse2_Target1_carry_i_18_n_0
    );
Pulse2_Target1_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      I1 => \^apu_pulse2_reg[timer][7]_0\(7),
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I5 => Pulse2_Target1_carry_i_9_n_0,
      O => Pulse2_Target1_carry_i_19_n_0
    );
Pulse2_Target1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000DFC04500DFC5"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(4),
      I1 => Pulse2_Target1_carry_i_11_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_12_n_0,
      I4 => \^apu_pulse2_reg[timer][7]_0\(5),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_2_n_0
    );
Pulse2_Target1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100451157DDDF"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_14_n_0,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I2 => Pulse2_Target1_carry_i_15_n_0,
      I3 => \^apu_pulse2_reg[timer][7]_0\(2),
      I4 => Pulse2_Target1_carry_i_13_n_0,
      I5 => \^apu_pulse2_reg[timer][7]_0\(3),
      O => Pulse2_Target1_carry_i_3_n_0
    );
Pulse2_Target1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15007F3510007F30"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(0),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_16_n_0,
      I4 => \^apu_pulse2_reg[timer][7]_0\(1),
      I5 => Pulse2_Target1_carry_i_17_n_0,
      O => Pulse2_Target1_carry_i_4_n_0
    );
Pulse2_Target1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(6),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      I2 => Pulse2_Target1_carry_i_19_n_0,
      O => Pulse2_Target1_carry_i_5_n_0
    );
Pulse2_Target1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040291989492010"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(5),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_11_n_0,
      I4 => \^apu_pulse2_reg[timer][7]_0\(4),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_6_n_0
    );
Pulse2_Target1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000656A050A60600"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(2),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_14_n_0,
      I4 => \^apu_pulse2_reg[timer][7]_0\(3),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_7_n_0
    );
Pulse2_Target1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4989408010201929"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][7]_0\(1),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \APU_Pulse2_reg[sweep_shift_n_0_][0]\,
      I3 => Pulse2_Target1_carry_i_15_n_0,
      I4 => Pulse2_Target1_carry_i_17_n_0,
      I5 => \^apu_pulse2_reg[timer][7]_0\(0),
      O => Pulse2_Target1_carry_i_8_n_0
    );
Pulse2_Target1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \APU_Pulse2_reg[sweep_shift_n_0_][1]\,
      I2 => \^apu_pulse2_reg[timer][8]_0\,
      I3 => \APU_Pulse2_reg[sweep_shift_n_0_][2]\,
      O => Pulse2_Target1_carry_i_9_n_0
    );
\procFrameCounter.counter[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(3),
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_2_n_0\
    );
\procFrameCounter.counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(2),
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_3_n_0\
    );
\procFrameCounter.counter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(1),
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_4_n_0\
    );
\procFrameCounter.counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => \procFrameCounter.counter_reg\(0),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[0]_i_5_n_0\
    );
\procFrameCounter.counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(14),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_2_n_0\
    );
\procFrameCounter.counter[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(13),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_3_n_0\
    );
\procFrameCounter.counter[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(12),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(7),
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[4]_i_2_n_0\
    );
\procFrameCounter.counter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(6),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_3_n_0\
    );
\procFrameCounter.counter[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(5),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(4),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_5_n_0\
    );
\procFrameCounter.counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(11),
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[8]_i_2_n_0\
    );
\procFrameCounter.counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_2_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Half_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(10),
      O => \procFrameCounter.counter[8]_i_3_n_0\
    );
\procFrameCounter.counter[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_2_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Half_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(9),
      O => \procFrameCounter.counter[8]_i_4_n_0\
    );
\procFrameCounter.counter[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_2_n_0,
      I3 => APU_Quarter_CE2(8),
      I4 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[8]_i_5_n_0\
    );
\procFrameCounter.counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_7\,
      Q => \procFrameCounter.counter_reg\(0)
    );
\procFrameCounter.counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \procFrameCounter.counter_reg[0]_i_1_n_0\,
      CO(2) => \procFrameCounter.counter_reg[0]_i_1_n_1\,
      CO(1) => \procFrameCounter.counter_reg[0]_i_1_n_2\,
      CO(0) => \procFrameCounter.counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => APU_Half_CE_i_6_n_0,
      O(3) => \procFrameCounter.counter_reg[0]_i_1_n_4\,
      O(2) => \procFrameCounter.counter_reg[0]_i_1_n_5\,
      O(1) => \procFrameCounter.counter_reg[0]_i_1_n_6\,
      O(0) => \procFrameCounter.counter_reg[0]_i_1_n_7\,
      S(3) => \procFrameCounter.counter[0]_i_2_n_0\,
      S(2) => \procFrameCounter.counter[0]_i_3_n_0\,
      S(1) => \procFrameCounter.counter[0]_i_4_n_0\,
      S(0) => \procFrameCounter.counter[0]_i_5_n_0\
    );
\procFrameCounter.counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(10)
    );
\procFrameCounter.counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(11)
    );
\procFrameCounter.counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[12]_i_1_n_7\,
      Q => \procFrameCounter.counter_reg\(12)
    );
\procFrameCounter.counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \procFrameCounter.counter_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \procFrameCounter.counter_reg[12]_i_1_n_2\,
      CO(0) => \procFrameCounter.counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \procFrameCounter.counter_reg[12]_i_1_n_5\,
      O(1) => \procFrameCounter.counter_reg[12]_i_1_n_6\,
      O(0) => \procFrameCounter.counter_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2) => \procFrameCounter.counter[12]_i_2_n_0\,
      S(1) => \procFrameCounter.counter[12]_i_3_n_0\,
      S(0) => \procFrameCounter.counter[12]_i_4_n_0\
    );
\procFrameCounter.counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[12]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(13)
    );
\procFrameCounter.counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[12]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(14)
    );
\procFrameCounter.counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(1)
    );
\procFrameCounter.counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(2)
    );
\procFrameCounter.counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(3)
    );
\procFrameCounter.counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_7\,
      Q => \procFrameCounter.counter_reg\(4)
    );
\procFrameCounter.counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \procFrameCounter.counter_reg[0]_i_1_n_0\,
      CO(3) => \procFrameCounter.counter_reg[4]_i_1_n_0\,
      CO(2) => \procFrameCounter.counter_reg[4]_i_1_n_1\,
      CO(1) => \procFrameCounter.counter_reg[4]_i_1_n_2\,
      CO(0) => \procFrameCounter.counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \procFrameCounter.counter_reg[4]_i_1_n_4\,
      O(2) => \procFrameCounter.counter_reg[4]_i_1_n_5\,
      O(1) => \procFrameCounter.counter_reg[4]_i_1_n_6\,
      O(0) => \procFrameCounter.counter_reg[4]_i_1_n_7\,
      S(3) => \procFrameCounter.counter[4]_i_2_n_0\,
      S(2) => \procFrameCounter.counter[4]_i_3_n_0\,
      S(1) => \procFrameCounter.counter[4]_i_4_n_0\,
      S(0) => \procFrameCounter.counter[4]_i_5_n_0\
    );
\procFrameCounter.counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(5)
    );
\procFrameCounter.counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(6)
    );
\procFrameCounter.counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(7)
    );
\procFrameCounter.counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_7\,
      Q => \procFrameCounter.counter_reg\(8)
    );
\procFrameCounter.counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \procFrameCounter.counter_reg[4]_i_1_n_0\,
      CO(3) => \procFrameCounter.counter_reg[8]_i_1_n_0\,
      CO(2) => \procFrameCounter.counter_reg[8]_i_1_n_1\,
      CO(1) => \procFrameCounter.counter_reg[8]_i_1_n_2\,
      CO(0) => \procFrameCounter.counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \procFrameCounter.counter_reg[8]_i_1_n_4\,
      O(2) => \procFrameCounter.counter_reg[8]_i_1_n_5\,
      O(1) => \procFrameCounter.counter_reg[8]_i_1_n_6\,
      O(0) => \procFrameCounter.counter_reg[8]_i_1_n_7\,
      S(3) => \procFrameCounter.counter[8]_i_2_n_0\,
      S(2) => \procFrameCounter.counter[8]_i_3_n_0\,
      S(1) => \procFrameCounter.counter[8]_i_4_n_0\,
      S(0) => \procFrameCounter.counter[8]_i_5_n_0\
    );
\procFrameCounter.counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(9)
    );
\procMainLogic.noise_envelope_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0EAAAAAAAA"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][0]\,
      I1 => noise_envelope_divider(3),
      I2 => noise_envelope_divider(0),
      I3 => noise_envelope_divider(1),
      I4 => noise_envelope_divider(2),
      I5 => \APU_Noise[volume][3]_i_5_n_0\,
      O => \procMainLogic.noise_envelope_divider[0]_i_1_n_0\
    );
\procMainLogic.noise_envelope_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00EAAAAAAAA"
    )
        port map (
      I0 => \APU_Noise_reg[envelope_n_0_][1]\,
      I1 => noise_envelope_divider(3),
      I2 => noise_envelope_divider(0),
      I3 => noise_envelope_divider(1),
      I4 => noise_envelope_divider(2),
      I5 => \APU_Noise[volume][3]_i_5_n_0\,
      O => \procMainLogic.noise_envelope_divider[1]_i_1_n_0\
    );
\procMainLogic.noise_envelope_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9FFFFA9A80000"
    )
        port map (
      I0 => noise_envelope_divider(2),
      I1 => noise_envelope_divider(1),
      I2 => noise_envelope_divider(0),
      I3 => noise_envelope_divider(3),
      I4 => \APU_Noise[volume][3]_i_5_n_0\,
      I5 => \APU_Noise_reg[envelope_n_0_][2]\,
      O => \procMainLogic.noise_envelope_divider[2]_i_1_n_0\
    );
\procMainLogic.noise_envelope_divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE000000"
    )
        port map (
      I0 => noise_envelope_divider(2),
      I1 => noise_envelope_divider(1),
      I2 => noise_envelope_divider(0),
      I3 => noise_envelope_divider(3),
      I4 => \APU_Noise[volume][3]_i_5_n_0\,
      I5 => \APU_Noise_reg[envelope_n_0_][3]\,
      O => \procMainLogic.noise_envelope_divider[3]_i_1_n_0\
    );
\procMainLogic.noise_envelope_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.noise_envelope_divider[0]_i_1_n_0\,
      Q => noise_envelope_divider(0)
    );
\procMainLogic.noise_envelope_divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.noise_envelope_divider[1]_i_1_n_0\,
      Q => noise_envelope_divider(1)
    );
\procMainLogic.noise_envelope_divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.noise_envelope_divider[2]_i_1_n_0\,
      Q => noise_envelope_divider(2)
    );
\procMainLogic.noise_envelope_divider_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.noise_envelope_divider[3]_i_1_n_0\,
      Q => noise_envelope_divider(3)
    );
\procMainLogic.noise_envelope_start_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF1000"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \APU_Noise[volume][3]_i_5_n_0\,
      I2 => CPU_Rst,
      I3 => Reset,
      I4 => \procMainLogic.noise_envelope_start_reg_n_0\,
      O => \procMainLogic.noise_envelope_start_i_1_n_0\
    );
\procMainLogic.noise_envelope_start_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      D => \procMainLogic.noise_envelope_start_i_1_n_0\,
      Q => \procMainLogic.noise_envelope_start_reg_n_0\,
      R => '0'
    );
\procMainLogic.pulse1_envelope_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BB88BB88BA"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][0]\,
      I1 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I2 => pulse1_envelope_divider(3),
      I3 => pulse1_envelope_divider(0),
      I4 => pulse1_envelope_divider(1),
      I5 => pulse1_envelope_divider(2),
      O => \procMainLogic.pulse1_envelope_divider[0]_i_1_n_0\
    );
\procMainLogic.pulse1_envelope_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8888BBBB8888BA"
    )
        port map (
      I0 => \APU_Pulse1_reg[envelope_n_0_][1]\,
      I1 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I2 => pulse1_envelope_divider(3),
      I3 => pulse1_envelope_divider(0),
      I4 => pulse1_envelope_divider(1),
      I5 => pulse1_envelope_divider(2),
      O => \procMainLogic.pulse1_envelope_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse1_envelope_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8D8D88DD8D8D88C"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse1_reg[envelope_n_0_][2]\,
      I2 => pulse1_envelope_divider(2),
      I3 => pulse1_envelope_divider(1),
      I4 => pulse1_envelope_divider(0),
      I5 => pulse1_envelope_divider(3),
      O => \procMainLogic.pulse1_envelope_divider[2]_i_1_n_0\
    );
\procMainLogic.pulse1_envelope_divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD88888888C"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse1_reg[envelope_n_0_][3]\,
      I2 => pulse1_envelope_divider(2),
      I3 => pulse1_envelope_divider(1),
      I4 => pulse1_envelope_divider(0),
      I5 => pulse1_envelope_divider(3),
      O => \procMainLogic.pulse1_envelope_divider[3]_i_1_n_0\
    );
\procMainLogic.pulse1_envelope_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_divider[0]_i_1_n_0\,
      Q => pulse1_envelope_divider(0)
    );
\procMainLogic.pulse1_envelope_divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_divider[1]_i_1_n_0\,
      Q => pulse1_envelope_divider(1)
    );
\procMainLogic.pulse1_envelope_divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_divider[2]_i_1_n_0\,
      Q => pulse1_envelope_divider(2)
    );
\procMainLogic.pulse1_envelope_divider_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_divider[3]_i_1_n_0\,
      Q => pulse1_envelope_divider(3)
    );
\procMainLogic.pulse1_envelope_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => APU_Quarter_CE,
      O => \procMainLogic.pulse1_envelope_start_i_1_n_0\
    );
\procMainLogic.pulse1_envelope_start_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_start_i_1_n_0\,
      Q => \procMainLogic.pulse1_envelope_start_reg_n_0\
    );
\procMainLogic.pulse1_sweep_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3300000032"
    )
        port map (
      I0 => pulse1_sweep_divider(1),
      I1 => pulse1_sweep_divider(0),
      I2 => pulse1_sweep_divider(2),
      I3 => \APU_Pulse1[sweep_enable]\,
      I4 => \procMainLogic.pulse1_sweep_reload_reg_n_0\,
      I5 => \APU_Pulse1_reg[sweep_period]\(0),
      O => \procMainLogic.pulse1_sweep_divider[0]_i_1_n_0\
    );
\procMainLogic.pulse1_sweep_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF9900000098"
    )
        port map (
      I0 => pulse1_sweep_divider(1),
      I1 => pulse1_sweep_divider(0),
      I2 => pulse1_sweep_divider(2),
      I3 => \APU_Pulse1[sweep_enable]\,
      I4 => \procMainLogic.pulse1_sweep_reload_reg_n_0\,
      I5 => \APU_Pulse1_reg[sweep_period]\(1),
      O => \procMainLogic.pulse1_sweep_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse1_sweep_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABA8A8A8A8AA"
    )
        port map (
      I0 => \APU_Pulse1_reg[sweep_period]\(2),
      I1 => \APU_Pulse1[sweep_enable]\,
      I2 => \procMainLogic.pulse1_sweep_reload_reg_n_0\,
      I3 => pulse1_sweep_divider(0),
      I4 => pulse1_sweep_divider(1),
      I5 => pulse1_sweep_divider(2),
      O => \procMainLogic.pulse1_sweep_divider[2]_i_1_n_0\
    );
\procMainLogic.pulse1_sweep_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_sweep_divider[0]_i_1_n_0\,
      Q => pulse1_sweep_divider(0)
    );
\procMainLogic.pulse1_sweep_divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_sweep_divider[1]_i_1_n_0\,
      Q => pulse1_sweep_divider(1)
    );
\procMainLogic.pulse1_sweep_divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_sweep_divider[2]_i_1_n_0\,
      Q => pulse1_sweep_divider(2)
    );
\procMainLogic.pulse1_sweep_reload_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]\,
      I1 => \procMainLogic.pulse1_sweep_reload_reg_n_0\,
      I2 => APU_Half_CE_reg_n_0,
      O => \procMainLogic.pulse1_sweep_reload_i_1_n_0\
    );
\procMainLogic.pulse1_sweep_reload_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse1_sweep_reload_i_1_n_0\,
      Q => \procMainLogic.pulse1_sweep_reload_reg_n_0\
    );
\procMainLogic.pulse2_envelope_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BB88BB88BA"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][0]\,
      I1 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I2 => pulse2_envelope_divider(3),
      I3 => pulse2_envelope_divider(0),
      I4 => pulse2_envelope_divider(1),
      I5 => pulse2_envelope_divider(2),
      O => \procMainLogic.pulse2_envelope_divider[0]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8888BBBB8888BA"
    )
        port map (
      I0 => \APU_Pulse2_reg[envelope_n_0_][1]\,
      I1 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I2 => pulse2_envelope_divider(3),
      I3 => pulse2_envelope_divider(0),
      I4 => pulse2_envelope_divider(1),
      I5 => pulse2_envelope_divider(2),
      O => \procMainLogic.pulse2_envelope_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8D8D88DD8D8D88C"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse2_reg[envelope_n_0_][2]\,
      I2 => pulse2_envelope_divider(2),
      I3 => pulse2_envelope_divider(1),
      I4 => pulse2_envelope_divider(0),
      I5 => pulse2_envelope_divider(3),
      O => \procMainLogic.pulse2_envelope_divider[2]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD88888888C"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I1 => \APU_Pulse2_reg[envelope_n_0_][3]\,
      I2 => pulse2_envelope_divider(2),
      I3 => pulse2_envelope_divider(1),
      I4 => pulse2_envelope_divider(0),
      I5 => pulse2_envelope_divider(3),
      O => \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_divider[0]_i_1_n_0\,
      Q => pulse2_envelope_divider(0)
    );
\procMainLogic.pulse2_envelope_divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_divider[1]_i_1_n_0\,
      Q => pulse2_envelope_divider(1)
    );
\procMainLogic.pulse2_envelope_divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_divider[2]_i_1_n_0\,
      Q => pulse2_envelope_divider(2)
    );
\procMainLogic.pulse2_envelope_divider_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\,
      Q => pulse2_envelope_divider(3)
    );
\procMainLogic.pulse2_envelope_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I1 => APU_Quarter_CE,
      O => \procMainLogic.pulse2_envelope_start_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_start_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_start_i_1_n_0\,
      Q => \procMainLogic.pulse2_envelope_start_reg_n_0\
    );
\procMainLogic.pulse2_sweep_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3300000032"
    )
        port map (
      I0 => pulse2_sweep_divider(1),
      I1 => pulse2_sweep_divider(0),
      I2 => pulse2_sweep_divider(2),
      I3 => \APU_Pulse2[sweep_enable]\,
      I4 => \procMainLogic.pulse2_sweep_reload_reg_n_0\,
      I5 => \APU_Pulse2_reg[sweep_period]\(0),
      O => \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0\
    );
\procMainLogic.pulse2_sweep_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF9900000098"
    )
        port map (
      I0 => pulse2_sweep_divider(1),
      I1 => pulse2_sweep_divider(0),
      I2 => pulse2_sweep_divider(2),
      I3 => \APU_Pulse2[sweep_enable]\,
      I4 => \procMainLogic.pulse2_sweep_reload_reg_n_0\,
      I5 => \APU_Pulse2_reg[sweep_period]\(1),
      O => \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse2_sweep_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABA8A8A8A8AA"
    )
        port map (
      I0 => \APU_Pulse2_reg[sweep_period]\(2),
      I1 => \APU_Pulse2[sweep_enable]\,
      I2 => \procMainLogic.pulse2_sweep_reload_reg_n_0\,
      I3 => pulse2_sweep_divider(0),
      I4 => pulse2_sweep_divider(1),
      I5 => pulse2_sweep_divider(2),
      O => \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0\
    );
\procMainLogic.pulse2_sweep_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0\,
      Q => pulse2_sweep_divider(0)
    );
\procMainLogic.pulse2_sweep_divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0\,
      Q => pulse2_sweep_divider(1)
    );
\procMainLogic.pulse2_sweep_divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Half_CE_reg_n_0,
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0\,
      Q => pulse2_sweep_divider(2)
    );
\procMainLogic.pulse2_sweep_reload_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \APU_Pulse2[sweep_enable]\,
      I1 => \procMainLogic.pulse2_sweep_reload_reg_n_0\,
      I2 => APU_Half_CE_reg_n_0,
      O => \procMainLogic.pulse2_sweep_reload_i_1_n_0\
    );
\procMainLogic.pulse2_sweep_reload_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.pulse2_sweep_reload_i_1_n_0\,
      Q => \procMainLogic.pulse2_sweep_reload_reg_n_0\
    );
\procMainLogic.triangle_linear_reload_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => \APU_Triangle_reg[length_counter_halt]__0\,
      I2 => \procMainLogic.triangle_linear_reload_i_2_n_0\,
      O => \procMainLogic.triangle_linear_reload_i_1_n_0\
    );
\procMainLogic.triangle_linear_reload_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554555555"
    )
        port map (
      I0 => \procMainLogic.triangle_linear_reload_reg_n_0\,
      I1 => CPU_Addr(2),
      I2 => \APU_Pulse1[sweep_shift][2]_i_2_n_0\,
      I3 => \APU_Noise[noise_period][3]_i_2_n_0\,
      I4 => CPU_Addr(3),
      I5 => \procMainLogic.triangle_linear_reload_i_3_n_0\,
      O => \procMainLogic.triangle_linear_reload_i_2_n_0\
    );
\procMainLogic.triangle_linear_reload_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => CPU_Addr(1),
      O => \procMainLogic.triangle_linear_reload_i_3_n_0\
    );
\procMainLogic.triangle_linear_reload_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[timer][10]_i_2_n_0\,
      D => \procMainLogic.triangle_linear_reload_i_1_n_0\,
      Q => \procMainLogic.triangle_linear_reload_reg_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_apu_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CPU_Clk : in STD_LOGIC;
    CPU_M2 : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_RomSel : in STD_LOGIC;
    CPU_RW : in STD_LOGIC;
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    APU_Triangle_Message : out STD_LOGIC_VECTOR ( 14 downto 0 );
    APU_Noise_Message : out STD_LOGIC_VECTOR ( 27 downto 0 );
    APU_DMC_Message : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_nes_apu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_nes_apu_0_0 : entity is "design_1_nes_apu_0_0,nes_apu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_nes_apu_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_nes_apu_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_nes_apu_0_0 : entity is "nes_apu,Vivado 2022.2.2";
end design_1_nes_apu_0_0;

architecture STRUCTURE of design_1_nes_apu_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^apu_noise_message\ : STD_LOGIC_VECTOR ( 27 downto 3 );
  signal \^apu_pulse1_message\ : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal \^apu_pulse2_message\ : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal \^apu_triangle_message\ : STD_LOGIC_VECTOR ( 14 downto 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CPU_Clk : signal is "xilinx.com:signal:clock:1.0 CPU_Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CPU_Clk : signal is "XIL_INTERFACENAME CPU_Clk, ASSOCIATED_RESET CPU_Rst, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of CPU_Rst : signal is "xilinx.com:signal:reset:1.0 CPU_Rst RST";
  attribute X_INTERFACE_PARAMETER of CPU_Rst : signal is "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  APU_DMC_Message(3) <= \<const0>\;
  APU_DMC_Message(2) <= \<const1>\;
  APU_DMC_Message(1) <= \<const0>\;
  APU_DMC_Message(0) <= \<const0>\;
  APU_Noise_Message(27 downto 24) <= \^apu_noise_message\(27 downto 24);
  APU_Noise_Message(23) <= \<const0>\;
  APU_Noise_Message(22) <= \<const0>\;
  APU_Noise_Message(21) <= \<const0>\;
  APU_Noise_Message(20) <= \<const0>\;
  APU_Noise_Message(19) <= \<const0>\;
  APU_Noise_Message(18) <= \<const0>\;
  APU_Noise_Message(17) <= \<const0>\;
  APU_Noise_Message(16) <= \<const0>\;
  APU_Noise_Message(15) <= \<const0>\;
  APU_Noise_Message(14) <= \<const0>\;
  APU_Noise_Message(13) <= \<const0>\;
  APU_Noise_Message(12) <= \<const0>\;
  APU_Noise_Message(11) <= \<const0>\;
  APU_Noise_Message(10) <= \<const0>\;
  APU_Noise_Message(9) <= \<const0>\;
  APU_Noise_Message(8 downto 3) <= \^apu_noise_message\(8 downto 3);
  APU_Noise_Message(2) <= \<const0>\;
  APU_Noise_Message(1) <= \<const1>\;
  APU_Noise_Message(0) <= \<const1>\;
  APU_Pulse1_Message(18 downto 3) <= \^apu_pulse1_message\(18 downto 3);
  APU_Pulse1_Message(2) <= \<const0>\;
  APU_Pulse1_Message(1) <= \<const0>\;
  APU_Pulse1_Message(0) <= \<const0>\;
  APU_Pulse2_Message(18 downto 3) <= \^apu_pulse2_message\(18 downto 3);
  APU_Pulse2_Message(2) <= \<const0>\;
  APU_Pulse2_Message(1) <= \<const0>\;
  APU_Pulse2_Message(0) <= \<const1>\;
  APU_Triangle_Message(14 downto 3) <= \^apu_triangle_message\(14 downto 3);
  APU_Triangle_Message(2) <= \<const0>\;
  APU_Triangle_Message(1) <= \<const1>\;
  APU_Triangle_Message(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_nes_apu_0_0_nes_apu
     port map (
      APU_Noise_Message(9 downto 6) => \^apu_noise_message\(27 downto 24),
      APU_Noise_Message(5 downto 0) => \^apu_noise_message\(8 downto 3),
      APU_Pulse1_Message(6 downto 1) => \^apu_pulse1_message\(18 downto 13),
      APU_Pulse1_Message(0) => \^apu_pulse1_message\(3),
      \APU_Pulse1_reg[timer][8]_0\ => \^apu_pulse1_message\(12),
      APU_Pulse2_Message(4 downto 1) => \^apu_pulse2_message\(18 downto 15),
      APU_Pulse2_Message(0) => \^apu_pulse2_message\(3),
      \APU_Pulse2_reg[timer][10]_0\ => \^apu_pulse2_message\(14),
      \APU_Pulse2_reg[timer][7]_0\(7 downto 0) => \^apu_pulse2_message\(11 downto 4),
      \APU_Pulse2_reg[timer][8]_0\ => \^apu_pulse2_message\(12),
      \APU_Pulse2_reg[timer][9]_0\ => \^apu_pulse2_message\(13),
      APU_Triangle_Message(11 downto 0) => \^apu_triangle_message\(14 downto 3),
      CPU_Addr(14 downto 0) => CPU_Addr(14 downto 0),
      CPU_Data(7 downto 0) => CPU_Data(7 downto 0),
      CPU_M2 => CPU_M2,
      CPU_RW => CPU_RW,
      CPU_RomSel => CPU_RomSel,
      CPU_Rst => CPU_Rst,
      Q(7 downto 0) => \^apu_pulse1_message\(11 downto 4),
      Reset => Reset
    );
end STRUCTURE;
