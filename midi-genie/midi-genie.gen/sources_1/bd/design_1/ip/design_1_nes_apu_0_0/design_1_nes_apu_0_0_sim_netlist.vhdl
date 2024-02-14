-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Feb 14 12:04:21 2024
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
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \APU_Pulse2_reg[timer][10]_0\ : out STD_LOGIC;
    \APU_Pulse2_reg[timer][8]_0\ : out STD_LOGIC;
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 46 downto 0 );
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 52 downto 0 );
    dbg_apu_half : out STD_LOGIC;
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dbg_apu_tick : out STD_LOGIC;
    APU_Status_Out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dbg_apu_qtr : out STD_LOGIC;
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    dbg_overflow_2 : out STD_LOGIC;
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dbg_overflow_1 : out STD_LOGIC;
    \APU_Counter_reg[mode]_0\ : out STD_LOGIC;
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    CPU_RomSel : in STD_LOGIC;
    CPU_RW : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_M2 : in STD_LOGIC;
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_nes_apu_0_0_nes_apu : entity is "nes_apu";
end design_1_nes_apu_0_0_nes_apu;

architecture STRUCTURE of design_1_nes_apu_0_0_nes_apu is
  signal \APU_Counter[irq_inhibit]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Counter[mode]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Counter[mode]_i_2_n_0\ : STD_LOGIC;
  signal \^apu_counter_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^apu_counter_reg[mode]_0\ : STD_LOGIC;
  signal \APU_DMC[irq_enable]\ : STD_LOGIC;
  signal \APU_DMC[irq_enable]_i_2_n_0\ : STD_LOGIC;
  signal \APU_DMC[load_counter]\ : STD_LOGIC;
  signal \APU_DMC[sample_address]\ : STD_LOGIC;
  signal \APU_DMC[sample_length]\ : STD_LOGIC;
  signal APU_Half_CE18_out : STD_LOGIC;
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
  signal \APU_Noise[length_counter]\ : STD_LOGIC;
  signal \APU_Noise[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Noise[length_counter_halt]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Noise[loop_noise]\ : STD_LOGIC;
  signal \APU_Noise[loop_noise]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty]\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_4_n_0\ : STD_LOGIC;
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
  signal \APU_Pulse1[length_counter][4]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load]\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_6_n_0\ : STD_LOGIC;
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
  signal \APU_Pulse1[timer][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][8]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][9]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load]\ : STD_LOGIC_VECTOR ( 10 downto 7 );
  signal \APU_Pulse1[timer_load][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][7]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume]\ : STD_LOGIC;
  signal \APU_Pulse1[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_Message[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^apu_pulse1_out\ : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal \APU_Pulse1_reg[timer][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_1\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_2\ : STD_LOGIC;
  signal \APU_Pulse1_reg[timer][3]_i_3_n_3\ : STD_LOGIC;
  signal \APU_Pulse2[duty]\ : STD_LOGIC;
  signal \APU_Pulse2[duty][1]_i_2_n_0\ : STD_LOGIC;
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
  signal \APU_Pulse2[length_counter][5]_i_8_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse2[sweep_enable]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_5_n_0\ : STD_LOGIC;
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
  signal \APU_Pulse2[timer][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][8]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][9]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load]\ : STD_LOGIC_VECTOR ( 10 downto 7 );
  signal \APU_Pulse2[volume]\ : STD_LOGIC;
  signal \APU_Pulse2[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][2]_i_2_n_0\ : STD_LOGIC;
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
  signal \^apu_pulse2_out\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \^apu_pulse2_reg[timer][10]_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_1\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_2\ : STD_LOGIC;
  signal \APU_Pulse2_reg[timer][3]_i_3_n_3\ : STD_LOGIC;
  signal \^apu_pulse2_reg[timer][8]_0\ : STD_LOGIC;
  signal \^apu_pulse2_reg[timer][9]_0\ : STD_LOGIC;
  signal APU_Quarter_CE12_out : STD_LOGIC;
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
  signal \APU_Status[dmc_active]\ : STD_LOGIC;
  signal \^apu_status_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \APU_Triangle[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Triangle[length_counter_halt]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][7]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][7]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][7]_i_4_n_0\ : STD_LOGIC;
  signal \^apu_triangle_out\ : STD_LOGIC_VECTOR ( 30 downto 0 );
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
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^dbg_apu_half\ : STD_LOGIC;
  signal \^dbg_apu_qtr\ : STD_LOGIC;
  signal \^dbg_apu_tick\ : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_10_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_1_n_2 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_1_n_3 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_2_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_2_n_1 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_2_n_2 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_2_n_3 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_3_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_4_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_5_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_6_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_7_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_8_n_0 : STD_LOGIC;
  signal dbg_overflow_1_INST_0_i_9_n_0 : STD_LOGIC;
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
  signal \procMainLogic.pulse2_envelope_divider[2]_i_2_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_divider[3]_i_2_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_envelope_start_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_reload_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.pulse2_sweep_reload_reg_n_0\ : STD_LOGIC;
  signal pulse1_envelope_divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse1_sweep_divider : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pulse2_envelope_divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse2_sweep_divider : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal NLW_dbg_overflow_1_INST_0_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_dbg_overflow_1_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \APU_Counter[mode]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \APU_DMC[irq_enable]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of APU_Half_CE_i_11 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of APU_Half_CE_i_12 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of APU_Half_CE_i_13 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of APU_Half_CE_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of APU_Half_CE_i_7 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \APU_Noise[length_counter_halt]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \APU_Noise[loop_noise]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \APU_Pulse1[duty][1]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \APU_Pulse1[duty][1]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][2]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][3]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][4]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter_load][4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \APU_Pulse1[sweep_enable]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \APU_Pulse1[sweep_enable]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \APU_Pulse1[volume][3]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[15]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[16]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[17]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[18]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[3]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[3]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[3]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \APU_Pulse2[duty][1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][4]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[sweep_enable]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer][6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][2]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][3]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][3]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][3]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[15]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[16]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[17]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[18]_INST_0\ : label is "soft_lutpair36";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of APU_Quarter_CE2_carry : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of APU_Quarter_CE_i_4 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of APU_Quarter_CE_i_8 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of APU_Quarter_CE_i_9 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \APU_Triangle[timer_load][7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Triangle[timer_load][7]_i_3\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of Pulse1_Target0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Pulse1_Target0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Pulse1_Target0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of Pulse1_Target0_carry_i_5 : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of Pulse1_Target1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \Pulse1_Target1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \Pulse1_Target1_carry__0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_10 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_12 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_14 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_15 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_16 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_18 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_19 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_20 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of Pulse1_Target1_carry_i_21 : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD of Pulse2_Target0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Pulse2_Target0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Pulse2_Target0_carry__1\ : label is 35;
  attribute COMPARATOR_THRESHOLD of Pulse2_Target1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \Pulse2_Target1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_10 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_11 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_12 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of Pulse2_Target1_carry_i_9 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of dbg_overflow_1_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dbg_overflow_1_INST_0_i_10 : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \procMainLogic.pulse1_envelope_start_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \procMainLogic.pulse1_sweep_reload_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \procMainLogic.pulse2_envelope_divider[3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \procMainLogic.pulse2_envelope_start_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \procMainLogic.pulse2_sweep_reload_i_1\ : label is "soft_lutpair29";
begin
  APU_Counter_Out(0) <= \^apu_counter_out\(0);
  \APU_Counter_reg[mode]_0\ <= \^apu_counter_reg[mode]_0\;
  APU_Pulse1_Out(52 downto 0) <= \^apu_pulse1_out\(52 downto 0);
  APU_Pulse2_Out(46 downto 0) <= \^apu_pulse2_out\(46 downto 0);
  \APU_Pulse2_reg[timer][10]_0\ <= \^apu_pulse2_reg[timer][10]_0\;
  \APU_Pulse2_reg[timer][8]_0\ <= \^apu_pulse2_reg[timer][8]_0\;
  \APU_Pulse2_reg[timer][9]_0\ <= \^apu_pulse2_reg[timer][9]_0\;
  APU_Status_Out(4 downto 0) <= \^apu_status_out\(4 downto 0);
  APU_Triangle_Out(30 downto 0) <= \^apu_triangle_out\(30 downto 0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  dbg_apu_half <= \^dbg_apu_half\;
  dbg_apu_qtr <= \^dbg_apu_qtr\;
  dbg_apu_tick <= \^dbg_apu_tick\;
\APU_Counter[irq_inhibit]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => CPU_Data(6),
      I1 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(4),
      I5 => \^apu_counter_out\(0),
      O => \APU_Counter[irq_inhibit]_i_1_n_0\
    );
\APU_Counter[mode]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(4),
      I5 => \^apu_counter_reg[mode]_0\,
      O => \APU_Counter[mode]_i_1_n_0\
    );
\APU_Counter[mode]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      I3 => CPU_Addr(0),
      O => \APU_Counter[mode]_i_2_n_0\
    );
\APU_Counter_reg[irq_inhibit]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Counter[irq_inhibit]_i_1_n_0\,
      Q => \^apu_counter_out\(0)
    );
\APU_Counter_reg[mode]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Counter[mode]_i_1_n_0\,
      Q => \^apu_counter_reg[mode]_0\
    );
\APU_DMC[irq_enable]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(1),
      I3 => CPU_RomSel,
      I4 => CPU_RW,
      I5 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[irq_enable]\
    );
\APU_DMC[irq_enable]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(2),
      O => \APU_DMC[irq_enable]_i_2_n_0\
    );
\APU_DMC[load_counter][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_RomSel,
      I2 => CPU_RW,
      I3 => CPU_Addr(3),
      I4 => CPU_Addr(0),
      I5 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[load_counter]\
    );
\APU_DMC[sample_address][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(4),
      O => \APU_DMC[sample_address]\
    );
\APU_DMC[sample_length][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \APU_DMC[irq_enable]_i_2_n_0\,
      I1 => CPU_Addr(1),
      I2 => CPU_RW,
      I3 => CPU_RomSel,
      I4 => CPU_Addr(0),
      I5 => CPU_Addr(3),
      O => \APU_DMC[sample_length]\
    );
\APU_DMC_reg[dmc_loop]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(27)
    );
\APU_DMC_reg[frequency][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(23)
    );
\APU_DMC_reg[frequency][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(24)
    );
\APU_DMC_reg[frequency][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(25)
    );
\APU_DMC_reg[frequency][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(26)
    );
\APU_DMC_reg[irq_enable]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(28)
    );
\APU_DMC_reg[load_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(16)
    );
\APU_DMC_reg[load_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(17)
    );
\APU_DMC_reg[load_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(18)
    );
\APU_DMC_reg[load_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(19)
    );
\APU_DMC_reg[load_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(20)
    );
\APU_DMC_reg[load_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(21)
    );
\APU_DMC_reg[load_counter][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(22)
    );
\APU_DMC_reg[sample_address][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(8)
    );
\APU_DMC_reg[sample_address][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(9)
    );
\APU_DMC_reg[sample_address][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(10)
    );
\APU_DMC_reg[sample_address][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(11)
    );
\APU_DMC_reg[sample_address][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(12)
    );
\APU_DMC_reg[sample_address][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(13)
    );
\APU_DMC_reg[sample_address][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(14)
    );
\APU_DMC_reg[sample_address][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(15)
    );
\APU_DMC_reg[sample_length][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(0)
    );
\APU_DMC_reg[sample_length][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(1)
    );
\APU_DMC_reg[sample_length][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(2)
    );
\APU_DMC_reg[sample_length][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(3)
    );
\APU_DMC_reg[sample_length][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(4)
    );
\APU_DMC_reg[sample_length][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(5)
    );
\APU_DMC_reg[sample_length][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(6)
    );
\APU_DMC_reg[sample_length][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(7)
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
      I4 => \^dbg_apu_tick\,
      I5 => APU_Half_CE_i_6_n_0,
      O => APU_Half_CE18_out
    );
APU_Half_CE_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(7),
      I1 => \procFrameCounter.counter_reg\(9),
      I2 => \procFrameCounter.counter_reg\(14),
      I3 => \procFrameCounter.counter_reg\(12),
      O => APU_Half_CE_i_10_n_0
    );
APU_Half_CE_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(4),
      I1 => \procFrameCounter.counter_reg\(8),
      O => APU_Half_CE_i_11_n_0
    );
APU_Half_CE_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(4),
      I1 => \procFrameCounter.counter_reg\(8),
      I2 => \procFrameCounter.counter_reg\(12),
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(7),
      O => APU_Half_CE_i_12_n_0
    );
APU_Half_CE_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(2),
      I1 => \procFrameCounter.counter_reg\(3),
      O => APU_Half_CE_i_13_n_0
    );
APU_Half_CE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(3),
      I1 => \procFrameCounter.counter_reg\(2),
      I2 => APU_Half_CE_i_7_n_0,
      I3 => \procFrameCounter.counter_reg\(0),
      I4 => APU_Half_CE_i_8_n_0,
      I5 => \^apu_counter_reg[mode]_0\,
      O => APU_Half_CE_i_2_n_0
    );
APU_Half_CE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD0FFFFFFFFFF"
    )
        port map (
      I0 => APU_Half_CE_i_9_n_0,
      I1 => APU_Half_CE_i_10_n_0,
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => \procFrameCounter.counter_reg\(6),
      I4 => \procFrameCounter.counter_reg\(10),
      I5 => APU_Half_CE_i_11_n_0,
      O => APU_Half_CE_i_3_n_0
    );
APU_Half_CE_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => APU_Half_CE_i_9_n_0,
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
      I3 => APU_Half_CE_i_9_n_0,
      I4 => APU_Half_CE_i_12_n_0,
      O => APU_Half_CE_i_6_n_0
    );
APU_Half_CE_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(11),
      I1 => \procFrameCounter.counter_reg\(13),
      O => APU_Half_CE_i_7_n_0
    );
APU_Half_CE_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(1),
      I1 => \procFrameCounter.counter_reg\(5),
      I2 => \procFrameCounter.counter_reg\(7),
      I3 => \procFrameCounter.counter_reg\(14),
      I4 => \procFrameCounter.counter_reg\(9),
      I5 => \procFrameCounter.counter_reg\(12),
      O => APU_Half_CE_i_8_n_0
    );
APU_Half_CE_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(0),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => APU_Half_CE_i_13_n_0,
      I4 => \procFrameCounter.counter_reg\(13),
      I5 => \procFrameCounter.counter_reg\(11),
      O => APU_Half_CE_i_9_n_0
    );
APU_Half_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => APU_Half_CE18_out,
      Q => \^dbg_apu_half\
    );
\APU_Noise[length_counter][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => \APU_Noise[length_counter][4]_i_2_n_0\,
      I2 => CPU_Addr(0),
      O => \APU_Noise[length_counter]\
    );
\APU_Noise[length_counter][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(4),
      I5 => CPU_Addr(2),
      O => \APU_Noise[length_counter][4]_i_2_n_0\
    );
\APU_Noise[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(2),
      I5 => \APU_Noise[length_counter_halt]_i_2_n_0\,
      O => \APU_Noise[length_counter_halt]\
    );
\APU_Noise[length_counter_halt]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      I2 => CPU_Addr(3),
      O => \APU_Noise[length_counter_halt]_i_2_n_0\
    );
\APU_Noise[loop_noise]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(3),
      I4 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I5 => \APU_Noise[loop_noise]_i_2_n_0\,
      O => \APU_Noise[loop_noise]\
    );
\APU_Noise[loop_noise]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(0),
      O => \APU_Noise[loop_noise]_i_2_n_0\
    );
\APU_Noise_reg[constant_volume]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => APU_Noise_Out(14)
    );
\APU_Noise_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(0)
    );
\APU_Noise_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => APU_Noise_Out(1)
    );
\APU_Noise_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => APU_Noise_Out(2)
    );
\APU_Noise_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => APU_Noise_Out(3)
    );
\APU_Noise_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_Noise_Out(4)
    );
\APU_Noise_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => APU_Noise_Out(15)
    );
\APU_Noise_reg[loop_noise]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => APU_Noise_Out(9)
    );
\APU_Noise_reg[noise_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_Noise_Out(5)
    );
\APU_Noise_reg[noise_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_Noise_Out(6)
    );
\APU_Noise_reg[noise_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_Noise_Out(7)
    );
\APU_Noise_reg[noise_period][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(8)
    );
\APU_Noise_reg[volume][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => APU_Noise_Out(10)
    );
\APU_Noise_reg[volume][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => APU_Noise_Out(11)
    );
\APU_Noise_reg[volume][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => APU_Noise_Out(12)
    );
\APU_Noise_reg[volume][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(13)
    );
\APU_Pulse1[duty][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I1 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(0),
      O => \APU_Pulse1[duty]\
    );
\APU_Pulse1[duty][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Reset,
      I1 => CPU_Rst,
      O => \APU_Pulse1[duty][1]_i_2_n_0\
    );
\APU_Pulse1[duty][1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(3),
      O => \APU_Pulse1[duty][1]_i_3_n_0\
    );
\APU_Pulse1[duty][1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_RW,
      I1 => CPU_RomSel,
      O => \APU_Pulse1[duty][1]_i_4_n_0\
    );
\APU_Pulse1[length_counter][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => \^apu_pulse1_out\(0),
      I1 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I2 => CPU_Data(0),
      I3 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][0]_i_1_n_0\
    );
\APU_Pulse1[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF200F200F2FFF2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      I1 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I4 => \^apu_pulse1_out\(1),
      I5 => \^apu_pulse1_out\(0),
      O => \APU_Pulse1[length_counter][1]_i_1_n_0\
    );
\APU_Pulse1[length_counter][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CECC0205"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => CPU_Data(3),
      I2 => CPU_Data(7),
      I3 => CPU_Data(6),
      I4 => CPU_Data(4),
      O => \APU_Pulse1[length_counter][1]_i_2_n_0\
    );
\APU_Pulse1[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2FFF2FFF200F2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][2]_i_2_n_0\,
      I1 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter][2]_i_3_n_0\,
      I5 => \^apu_pulse1_out\(2),
      O => \APU_Pulse1[length_counter][2]_i_1_n_0\
    );
\APU_Pulse1[length_counter][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"889A899C"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => CPU_Data(3),
      I2 => CPU_Data(4),
      I3 => CPU_Data(7),
      I4 => CPU_Data(6),
      O => \APU_Pulse1[length_counter][2]_i_2_n_0\
    );
\APU_Pulse1[length_counter][2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^apu_pulse1_out\(0),
      I1 => \^apu_pulse1_out\(1),
      O => \APU_Pulse1[length_counter][2]_i_3_n_0\
    );
\APU_Pulse1[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2FFF2FFF200F2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][3]_i_2_n_0\,
      I1 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      I5 => \^apu_pulse1_out\(3),
      O => \APU_Pulse1[length_counter][3]_i_1_n_0\
    );
\APU_Pulse1[length_counter][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCE1017"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => CPU_Data(3),
      I2 => CPU_Data(7),
      I3 => CPU_Data(4),
      I4 => CPU_Data(6),
      O => \APU_Pulse1[length_counter][3]_i_2_n_0\
    );
\APU_Pulse1[length_counter][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^apu_pulse1_out\(1),
      I1 => \^apu_pulse1_out\(0),
      I2 => \^apu_pulse1_out\(2),
      O => \APU_Pulse1[length_counter][3]_i_3_n_0\
    );
\APU_Pulse1[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF8FF08"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][4]_i_2_n_0\,
      I1 => \^apu_status_out\(0),
      I2 => CPU_Addr(4),
      I3 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I4 => CPU_Data(0),
      I5 => \APU_Pulse1[length_counter][4]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][4]_i_1_n_0\
    );
\APU_Pulse1[length_counter][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3D3E0E4"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => CPU_Data(3),
      I2 => CPU_Data(7),
      I3 => CPU_Data(6),
      I4 => CPU_Data(4),
      O => \APU_Pulse1[length_counter][4]_i_2_n_0\
    );
\APU_Pulse1[length_counter][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \^apu_pulse1_out\(50),
      I1 => \^dbg_apu_half\,
      I2 => \APU_Pulse1[length_counter][4]_i_4_n_0\,
      I3 => \^apu_pulse1_out\(4),
      O => \APU_Pulse1[length_counter][4]_i_3_n_0\
    );
\APU_Pulse1[length_counter][4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse1_out\(3),
      I1 => \^apu_pulse1_out\(2),
      I2 => \^apu_pulse1_out\(0),
      I3 => \^apu_pulse1_out\(1),
      O => \APU_Pulse1[length_counter][4]_i_4_n_0\
    );
\APU_Pulse1[length_counter][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7770"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => CPU_Addr(4),
      I2 => \APU_Status[dmc_active]\,
      I3 => \APU_Pulse1[length_counter_load]\,
      I4 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_1_n_0\
    );
\APU_Pulse1[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606F60"
    )
        port map (
      I0 => \^apu_pulse1_out\(5),
      I1 => \APU_Pulse1_Message[3]_INST_0_i_1_n_0\,
      I2 => \APU_Pulse1[length_counter][5]_i_3_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I5 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_2_n_0\
    );
\APU_Pulse1[length_counter][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => \^apu_pulse1_out\(5),
      I1 => \APU_Pulse1_Message[3]_INST_0_i_1_n_0\,
      I2 => \^dbg_apu_half\,
      I3 => \^apu_pulse1_out\(50),
      O => \APU_Pulse1[length_counter][5]_i_3_n_0\
    );
\APU_Pulse1[length_counter][5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][5]_i_4_n_0\
    );
\APU_Pulse1[length_counter][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => \^apu_status_out\(0),
      O => \APU_Pulse1[length_counter][5]_i_5_n_0\
    );
\APU_Pulse1[length_counter][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080A0512"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => CPU_Data(4),
      I2 => CPU_Data(3),
      I3 => CPU_Data(6),
      I4 => CPU_Data(7),
      O => \APU_Pulse1[length_counter][5]_i_6_n_0\
    );
\APU_Pulse1[length_counter_load][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter_load]\
    );
\APU_Pulse1[length_counter_load][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_RomSel,
      I2 => CPU_RW,
      O => \APU_Pulse1[length_counter_load][4]_i_2_n_0\
    );
\APU_Pulse1[sweep_enable]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(1),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(3),
      I4 => \APU_Pulse1[sweep_enable]_i_3_n_0\,
      O => \APU_Pulse1[sweep_enable]\
    );
\APU_Pulse1[sweep_enable]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => CPU_Addr(9),
      I1 => CPU_Addr(12),
      I2 => CPU_Addr(5),
      I3 => CPU_Addr(8),
      I4 => \APU_Pulse1[sweep_enable]_i_4_n_0\,
      O => \APU_Pulse1[sweep_enable]_i_2_n_0\
    );
\APU_Pulse1[sweep_enable]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(2),
      O => \APU_Pulse1[sweep_enable]_i_3_n_0\
    );
\APU_Pulse1[sweep_enable]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => CPU_Addr(11),
      I1 => CPU_Addr(10),
      I2 => CPU_Addr(13),
      I3 => CPU_Addr(14),
      I4 => CPU_Addr(6),
      I5 => CPU_Addr(7),
      O => \APU_Pulse1[sweep_enable]_i_4_n_0\
    );
\APU_Pulse1[timer][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse1[timer][0]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(0)
    );
\APU_Pulse1[timer][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(0),
      I2 => Pulse1_Target05_out(0),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][0]_i_2_n_0\
    );
\APU_Pulse1[timer][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AAFFC0C0AA00"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse1[timer][10]_i_2_n_0\,
      I2 => \APU_Pulse1[timer][10]_i_3_n_0\,
      I3 => \APU_Pulse1[timer_load]\(10),
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I5 => \^apu_pulse1_out\(16),
      O => \APU_Pulse1[timer][10]_i_1_n_0\
    );
\APU_Pulse1[timer][10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Rst,
      I1 => Reset,
      O => \APU_Pulse1[timer][10]_i_2_n_0\
    );
\APU_Pulse1[timer][10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse1_Target01_out(10),
      I1 => Pulse1_Target1,
      I2 => \^apu_pulse1_out\(36),
      I3 => Pulse1_Target05_out(10),
      O => \APU_Pulse1[timer][10]_i_3_n_0\
    );
\APU_Pulse1[timer][10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055551555"
    )
        port map (
      I0 => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\,
      I1 => Reset,
      I2 => CPU_Rst,
      I3 => Pulse1_Target05_out(11),
      I4 => \^apu_pulse1_out\(36),
      I5 => \APU_Pulse1[timer][10]_i_5_n_0\,
      O => \APU_Pulse1[timer][10]_i_4_n_0\
    );
\APU_Pulse1[timer][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^apu_pulse1_out\(33),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(35),
      I3 => \^dbg_apu_half\,
      I4 => \^apu_pulse1_out\(40),
      I5 => \APU_Pulse1[timer][10]_i_6_n_0\,
      O => \APU_Pulse1[timer][10]_i_5_n_0\
    );
\APU_Pulse1[timer][10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => pulse1_sweep_divider(2),
      I1 => pulse1_sweep_divider(0),
      I2 => pulse1_sweep_divider(1),
      O => \APU_Pulse1[timer][10]_i_6_n_0\
    );
\APU_Pulse1[timer][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse1[timer][1]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(1)
    );
\APU_Pulse1[timer][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(1),
      I2 => Pulse1_Target05_out(1),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][1]_i_2_n_0\
    );
\APU_Pulse1[timer][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse1[timer][2]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(2)
    );
\APU_Pulse1[timer][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(2),
      I2 => Pulse1_Target05_out(2),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][2]_i_2_n_0\
    );
\APU_Pulse1[timer][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => \APU_Pulse1[timer][3]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(3)
    );
\APU_Pulse1[timer][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(3),
      I2 => Pulse1_Target05_out(3),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][3]_i_2_n_0\
    );
\APU_Pulse1[timer][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(9),
      I1 => p_0_in3_in(3),
      O => \APU_Pulse1[timer][3]_i_4_n_0\
    );
\APU_Pulse1[timer][3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(8),
      I1 => p_0_in3_in(2),
      O => \APU_Pulse1[timer][3]_i_5_n_0\
    );
\APU_Pulse1[timer][3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(7),
      I1 => p_0_in3_in(1),
      O => \APU_Pulse1[timer][3]_i_6_n_0\
    );
\APU_Pulse1[timer][3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(6),
      I1 => p_0_in3_in(0),
      O => \APU_Pulse1[timer][3]_i_7_n_0\
    );
\APU_Pulse1[timer][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(4),
      I1 => \APU_Pulse1[timer][4]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(4)
    );
\APU_Pulse1[timer][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(4),
      I2 => Pulse1_Target05_out(4),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][4]_i_2_n_0\
    );
\APU_Pulse1[timer][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => \APU_Pulse1[timer][5]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(5)
    );
\APU_Pulse1[timer][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(5),
      I2 => Pulse1_Target05_out(5),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][5]_i_2_n_0\
    );
\APU_Pulse1[timer][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => CPU_Data(6),
      I1 => \APU_Pulse1[timer][6]_i_2_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(6)
    );
\APU_Pulse1[timer][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse1_Target01_out(6),
      I1 => Pulse1_Target1,
      I2 => \^apu_pulse1_out\(36),
      I3 => Pulse1_Target05_out(6),
      O => \APU_Pulse1[timer][6]_i_2_n_0\
    );
\APU_Pulse1[timer][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \APU_Pulse1[timer_load]\(7),
      I1 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => \APU_Pulse1[timer][7]_i_1_n_0\
    );
\APU_Pulse1[timer][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000AAAA"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => \APU_Pulse1[timer][7]_i_3_n_0\,
      I2 => Reset,
      I3 => CPU_Rst,
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      O => p_2_in(7)
    );
\APU_Pulse1[timer][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(7),
      I2 => Pulse1_Target05_out(7),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][7]_i_3_n_0\
    );
\APU_Pulse1[timer][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030AAFF3030AA00"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse1[timer][8]_i_2_n_0\,
      I2 => \APU_Pulse1[timer][10]_i_2_n_0\,
      I3 => \APU_Pulse1[timer_load]\(10),
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I5 => \^apu_pulse1_out\(14),
      O => \APU_Pulse1[timer][8]_i_1_n_0\
    );
\APU_Pulse1[timer][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(8),
      I2 => Pulse1_Target05_out(8),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][8]_i_2_n_0\
    );
\APU_Pulse1[timer][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030AAFF3030AA00"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse1[timer][9]_i_2_n_0\,
      I2 => \APU_Pulse1[timer][10]_i_2_n_0\,
      I3 => \APU_Pulse1[timer_load]\(10),
      I4 => \APU_Pulse1[timer][10]_i_4_n_0\,
      I5 => \^apu_pulse1_out\(15),
      O => \APU_Pulse1[timer][9]_i_1_n_0\
    );
\APU_Pulse1[timer][9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0F"
    )
        port map (
      I0 => Pulse1_Target1,
      I1 => Pulse1_Target01_out(9),
      I2 => Pulse1_Target05_out(9),
      I3 => \^apu_pulse1_out\(36),
      O => \APU_Pulse1[timer][9]_i_2_n_0\
    );
\APU_Pulse1[timer_load][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse1[timer_load]\(10),
      I2 => \^apu_pulse1_out\(32),
      O => \APU_Pulse1[timer_load][10]_i_1_n_0\
    );
\APU_Pulse1[timer_load][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(1),
      I5 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      O => \APU_Pulse1[timer_load]\(10)
    );
\APU_Pulse1[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(4),
      O => \APU_Pulse1[timer_load]\(7)
    );
\APU_Pulse1[timer_load][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      I2 => CPU_Addr(1),
      O => \APU_Pulse1[timer_load][7]_i_2_n_0\
    );
\APU_Pulse1[timer_load][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse1[timer_load]\(10),
      I2 => \^apu_pulse1_out\(30),
      O => \APU_Pulse1[timer_load][8]_i_1_n_0\
    );
\APU_Pulse1[timer_load][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse1[timer_load]\(10),
      I2 => \^apu_pulse1_out\(31),
      O => \APU_Pulse1[timer_load][9]_i_1_n_0\
    );
\APU_Pulse1[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAE"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \^apu_pulse1_out\(43),
      I2 => \^apu_pulse1_out\(41),
      I3 => \^apu_pulse1_out\(42),
      I4 => \^apu_pulse1_out\(44),
      I5 => \^apu_pulse1_out\(50),
      O => \APU_Pulse1[volume][0]_i_1_n_0\
    );
\APU_Pulse1[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFFAAFFAAFFAAE"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \^apu_pulse1_out\(43),
      I2 => \^apu_pulse1_out\(41),
      I3 => \^apu_pulse1_out\(42),
      I4 => \^apu_pulse1_out\(44),
      I5 => \^apu_pulse1_out\(50),
      O => \APU_Pulse1[volume][1]_i_1_n_0\
    );
\APU_Pulse1[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEEEBEEEBEEEA"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \^apu_pulse1_out\(43),
      I2 => \^apu_pulse1_out\(41),
      I3 => \^apu_pulse1_out\(42),
      I4 => \^apu_pulse1_out\(44),
      I5 => \^apu_pulse1_out\(50),
      O => \APU_Pulse1[volume][2]_i_1_n_0\
    );
\APU_Pulse1[volume][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \^dbg_apu_qtr\,
      I1 => \APU_Pulse1[volume][3]_i_3_n_0\,
      I2 => \APU_Pulse1[volume][3]_i_4_n_0\,
      I3 => \APU_Pulse1[volume][3]_i_5_n_0\,
      O => \APU_Pulse1[volume]\
    );
\APU_Pulse1[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEBEEEEEEEA"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \^apu_pulse1_out\(44),
      I2 => \^apu_pulse1_out\(43),
      I3 => \^apu_pulse1_out\(41),
      I4 => \^apu_pulse1_out\(42),
      I5 => \^apu_pulse1_out\(50),
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
\APU_Pulse1[volume][3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse1_out\(43),
      I1 => \^apu_pulse1_out\(41),
      I2 => \^apu_pulse1_out\(42),
      I3 => \^apu_pulse1_out\(44),
      I4 => \^apu_pulse1_out\(50),
      O => \APU_Pulse1[volume][3]_i_4_n_0\
    );
\APU_Pulse1[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => \procMainLogic.pulse1_envelope_start_reg_n_0\,
      I1 => \APU_Pulse1[volume][3]_i_6_n_0\,
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(3),
      I4 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I5 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      O => \APU_Pulse1[volume][3]_i_5_n_0\
    );
\APU_Pulse1[volume][3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[volume][3]_i_6_n_0\
    );
\APU_Pulse1_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(45),
      I1 => \^apu_pulse1_out\(49),
      I2 => \^apu_pulse1_out\(41),
      O => APU_Pulse1_Message(1)
    );
\APU_Pulse1_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(46),
      I1 => \^apu_pulse1_out\(49),
      I2 => \^apu_pulse1_out\(42),
      O => APU_Pulse1_Message(2)
    );
\APU_Pulse1_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(47),
      I1 => \^apu_pulse1_out\(49),
      I2 => \^apu_pulse1_out\(43),
      O => APU_Pulse1_Message(3)
    );
\APU_Pulse1_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(48),
      I1 => \^apu_pulse1_out\(49),
      I2 => \^apu_pulse1_out\(44),
      O => APU_Pulse1_Message(4)
    );
\APU_Pulse1_Message[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^apu_pulse1_out\(5),
      I1 => \APU_Pulse1_Message[3]_INST_0_i_1_n_0\,
      I2 => \APU_Pulse1_Message[3]_INST_0_i_2_n_0\,
      O => APU_Pulse1_Message(0)
    );
\APU_Pulse1_Message[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse1_out\(4),
      I1 => \^apu_pulse1_out\(1),
      I2 => \^apu_pulse1_out\(0),
      I3 => \^apu_pulse1_out\(2),
      I4 => \^apu_pulse1_out\(3),
      O => \APU_Pulse1_Message[3]_INST_0_i_1_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => \^apu_pulse1_out\(36),
      I1 => Pulse1_Target05_out(11),
      I2 => CPU_Rst,
      I3 => Reset,
      I4 => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\,
      O => \APU_Pulse1_Message[3]_INST_0_i_2_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse1_out\(15),
      I1 => \^apu_pulse1_out\(16),
      I2 => \^apu_pulse1_out\(9),
      I3 => \^apu_pulse1_out\(14),
      I4 => \APU_Pulse1_Message[3]_INST_0_i_4_n_0\,
      O => \APU_Pulse1_Message[3]_INST_0_i_3_n_0\
    );
\APU_Pulse1_Message[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse1_out\(13),
      I1 => \^apu_pulse1_out\(10),
      I2 => \^apu_pulse1_out\(12),
      I3 => \^apu_pulse1_out\(11),
      O => \APU_Pulse1_Message[3]_INST_0_i_4_n_0\
    );
\APU_Pulse1_reg[constant_volume]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse1_out\(49)
    );
\APU_Pulse1_reg[duty][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse1_out\(51)
    );
\APU_Pulse1_reg[duty][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse1_out\(52)
    );
\APU_Pulse1_reg[envelope][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse1_out\(45)
    );
\APU_Pulse1_reg[envelope][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse1_out\(46)
    );
\APU_Pulse1_reg[envelope][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse1_out\(47)
    );
\APU_Pulse1_reg[envelope][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse1_out\(48)
    );
\APU_Pulse1_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][0]_i_1_n_0\,
      Q => \^apu_pulse1_out\(0)
    );
\APU_Pulse1_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][1]_i_1_n_0\,
      Q => \^apu_pulse1_out\(1)
    );
\APU_Pulse1_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][2]_i_1_n_0\,
      Q => \^apu_pulse1_out\(2)
    );
\APU_Pulse1_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][3]_i_1_n_0\,
      Q => \^apu_pulse1_out\(3)
    );
\APU_Pulse1_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][4]_i_1_n_0\,
      Q => \^apu_pulse1_out\(4)
    );
\APU_Pulse1_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[length_counter][5]_i_2_n_0\,
      Q => \^apu_pulse1_out\(5)
    );
\APU_Pulse1_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse1_out\(50)
    );
\APU_Pulse1_reg[length_counter_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse1_out\(17)
    );
\APU_Pulse1_reg[length_counter_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse1_out\(18)
    );
\APU_Pulse1_reg[length_counter_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse1_out\(19)
    );
\APU_Pulse1_reg[length_counter_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse1_out\(20)
    );
\APU_Pulse1_reg[length_counter_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse1_out\(21)
    );
\APU_Pulse1_reg[sweep_enable]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse1_out\(40)
    );
\APU_Pulse1_reg[sweep_negate]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse1_out\(36)
    );
\APU_Pulse1_reg[sweep_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse1_out\(37)
    );
\APU_Pulse1_reg[sweep_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse1_out\(38)
    );
\APU_Pulse1_reg[sweep_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse1_out\(39)
    );
\APU_Pulse1_reg[sweep_shift][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse1_out\(33)
    );
\APU_Pulse1_reg[sweep_shift][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse1_out\(34)
    );
\APU_Pulse1_reg[sweep_shift][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse1_out\(35)
    );
\APU_Pulse1_reg[timer][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^apu_pulse1_out\(6)
    );
\APU_Pulse1_reg[timer][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer][10]_i_1_n_0\,
      Q => \^apu_pulse1_out\(16)
    );
\APU_Pulse1_reg[timer][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^apu_pulse1_out\(7)
    );
\APU_Pulse1_reg[timer][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^apu_pulse1_out\(8)
    );
\APU_Pulse1_reg[timer][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^apu_pulse1_out\(9)
    );
\APU_Pulse1_reg[timer][3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \APU_Pulse1_reg[timer][3]_i_3_n_0\,
      CO(2) => \APU_Pulse1_reg[timer][3]_i_3_n_1\,
      CO(1) => \APU_Pulse1_reg[timer][3]_i_3_n_2\,
      CO(0) => \APU_Pulse1_reg[timer][3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse1_out\(9 downto 6),
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(4),
      Q => \^apu_pulse1_out\(10)
    );
\APU_Pulse1_reg[timer][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(5),
      Q => \^apu_pulse1_out\(11)
    );
\APU_Pulse1_reg[timer][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(6),
      Q => \^apu_pulse1_out\(12)
    );
\APU_Pulse1_reg[timer][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_2_in(7),
      Q => \^apu_pulse1_out\(13)
    );
\APU_Pulse1_reg[timer][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer][8]_i_1_n_0\,
      Q => \^apu_pulse1_out\(14)
    );
\APU_Pulse1_reg[timer][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer][9]_i_1_n_0\,
      Q => \^apu_pulse1_out\(15)
    );
\APU_Pulse1_reg[timer_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse1_out\(22)
    );
\APU_Pulse1_reg[timer_load][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer_load][10]_i_1_n_0\,
      Q => \^apu_pulse1_out\(32)
    );
\APU_Pulse1_reg[timer_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse1_out\(23)
    );
\APU_Pulse1_reg[timer_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse1_out\(24)
    );
\APU_Pulse1_reg[timer_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse1_out\(25)
    );
\APU_Pulse1_reg[timer_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse1_out\(26)
    );
\APU_Pulse1_reg[timer_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse1_out\(27)
    );
\APU_Pulse1_reg[timer_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse1_out\(28)
    );
\APU_Pulse1_reg[timer_load][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse1_out\(29)
    );
\APU_Pulse1_reg[timer_load][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer_load][8]_i_1_n_0\,
      Q => \^apu_pulse1_out\(30)
    );
\APU_Pulse1_reg[timer_load][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse1[timer_load][9]_i_1_n_0\,
      Q => \^apu_pulse1_out\(31)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse1_out\(41)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse1_out\(42)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse1_out\(43)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse1_out\(44)
    );
\APU_Pulse2[duty][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \APU_Pulse2[duty][1]_i_2_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => CPU_RomSel,
      I5 => CPU_RW,
      O => \APU_Pulse2[duty]\
    );
\APU_Pulse2[duty][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(2),
      O => \APU_Pulse2[duty][1]_i_2_n_0\
    );
\APU_Pulse2[length_counter][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => \^apu_pulse2_out\(0),
      I1 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I2 => CPU_Data(1),
      I3 => CPU_Addr(4),
      O => \APU_Pulse2[length_counter][0]_i_1_n_0\
    );
\APU_Pulse2[length_counter][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF200F200F2FFF2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse2[length_counter][5]_i_7_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I4 => \^apu_pulse2_out\(1),
      I5 => \^apu_pulse2_out\(0),
      O => \APU_Pulse2[length_counter][1]_i_1_n_0\
    );
\APU_Pulse2[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2FFF2FFF200F2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][2]_i_2_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse2[length_counter][5]_i_7_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse2[length_counter][2]_i_2_n_0\,
      I5 => \^apu_pulse2_out\(2),
      O => \APU_Pulse2[length_counter][2]_i_1_n_0\
    );
\APU_Pulse2[length_counter][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^apu_pulse2_out\(0),
      I1 => \^apu_pulse2_out\(1),
      O => \APU_Pulse2[length_counter][2]_i_2_n_0\
    );
\APU_Pulse2[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2FFF2FFF200F2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][3]_i_2_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I2 => \APU_Pulse2[length_counter][5]_i_7_n_0\,
      I3 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I4 => \APU_Pulse2[length_counter][3]_i_2_n_0\,
      I5 => \^apu_pulse2_out\(3),
      O => \APU_Pulse2[length_counter][3]_i_1_n_0\
    );
\APU_Pulse2[length_counter][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^apu_pulse2_out\(1),
      I1 => \^apu_pulse2_out\(0),
      I2 => \^apu_pulse2_out\(2),
      O => \APU_Pulse2[length_counter][3]_i_2_n_0\
    );
\APU_Pulse2[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00444000BBFFFFBB"
    )
        port map (
      I0 => \^apu_pulse2_out\(44),
      I1 => \^dbg_apu_half\,
      I2 => \^apu_pulse2_out\(5),
      I3 => \APU_Pulse2[length_counter][4]_i_2_n_0\,
      I4 => \^apu_pulse2_out\(4),
      I5 => \APU_Pulse2[length_counter][4]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][4]_i_1_n_0\
    );
\APU_Pulse2[length_counter][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^apu_pulse2_out\(2),
      I1 => \^apu_pulse2_out\(0),
      I2 => \^apu_pulse2_out\(1),
      I3 => \^apu_pulse2_out\(3),
      O => \APU_Pulse2[length_counter][4]_i_2_n_0\
    );
\APU_Pulse2[length_counter][4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4777"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => CPU_Addr(4),
      I2 => \^apu_status_out\(1),
      I3 => \APU_Pulse1[length_counter][4]_i_2_n_0\,
      O => \APU_Pulse2[length_counter][4]_i_3_n_0\
    );
\APU_Pulse2[length_counter][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABEEAAAA"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I1 => CPU_Addr(1),
      I2 => CPU_Data(1),
      I3 => CPU_Addr(4),
      I4 => \APU_Pulse2[length_counter][5]_i_4_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_1_n_0\
    );
\APU_Pulse2[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000F0FFFF22F2"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I2 => \^apu_pulse2_out\(5),
      I3 => \APU_Pulse2[length_counter][5]_i_6_n_0\,
      I4 => \APU_Pulse2[length_counter][5]_i_7_n_0\,
      I5 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_2_n_0\
    );
\APU_Pulse2[length_counter][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^apu_pulse2_out\(44),
      I1 => \^dbg_apu_half\,
      I2 => \APU_Pulse2_Message[3]_INST_0_i_3_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_3_n_0\
    );
\APU_Pulse2[length_counter][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(2),
      I3 => CPU_RW,
      I4 => CPU_RomSel,
      I5 => CPU_Addr(0),
      O => \APU_Pulse2[length_counter][5]_i_4_n_0\
    );
\APU_Pulse2[length_counter][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => \^apu_status_out\(1),
      O => \APU_Pulse2[length_counter][5]_i_5_n_0\
    );
\APU_Pulse2[length_counter][5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_8_n_0\,
      I1 => \^apu_pulse2_out\(44),
      I2 => \^dbg_apu_half\,
      O => \APU_Pulse2[length_counter][5]_i_6_n_0\
    );
\APU_Pulse2[length_counter][5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => CPU_Addr(4),
      O => \APU_Pulse2[length_counter][5]_i_7_n_0\
    );
\APU_Pulse2[length_counter][5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse2_out\(3),
      I1 => \^apu_pulse2_out\(1),
      I2 => \^apu_pulse2_out\(0),
      I3 => \^apu_pulse2_out\(2),
      I4 => \^apu_pulse2_out\(4),
      O => \APU_Pulse2[length_counter][5]_i_8_n_0\
    );
\APU_Pulse2[sweep_enable]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      I2 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I3 => \APU_Pulse2[sweep_enable]_i_2_n_0\,
      O => \APU_Pulse2[sweep_enable]\
    );
\APU_Pulse2[sweep_enable]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(3),
      I2 => CPU_RW,
      I3 => CPU_RomSel,
      I4 => CPU_Addr(1),
      O => \APU_Pulse2[sweep_enable]_i_2_n_0\
    );
\APU_Pulse2[timer][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][0]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I2 => CPU_Data(0),
      O => \APU_Pulse2[timer][0]_i_1_n_0\
    );
\APU_Pulse2[timer][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(0),
      I1 => \^apu_pulse2_out\(30),
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(0),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][0]_i_2_n_0\
    );
\APU_Pulse2[timer][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \APU_Pulse2[timer][10]_i_2_n_0\,
      I1 => CPU_Data(2),
      I2 => \APU_Pulse2[timer_load]\(10),
      I3 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I4 => \^apu_pulse2_reg[timer][10]_0\,
      O => \APU_Pulse2[timer][10]_i_1_n_0\
    );
\APU_Pulse2[timer][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080088800800"
    )
        port map (
      I0 => Reset,
      I1 => CPU_Rst,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(10),
      I4 => Pulse2_Target00_out(10),
      I5 => Pulse2_Target1,
      O => \APU_Pulse2[timer][10]_i_2_n_0\
    );
\APU_Pulse2[timer][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055551555"
    )
        port map (
      I0 => \APU_Pulse2_Message[3]_INST_0_i_2_n_0\,
      I1 => Reset,
      I2 => CPU_Rst,
      I3 => Pulse2_Target02_out(11),
      I4 => \^apu_pulse2_out\(30),
      I5 => \APU_Pulse2[timer][10]_i_4_n_0\,
      O => \APU_Pulse2[timer][10]_i_3_n_0\
    );
\APU_Pulse2[timer][10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \^dbg_apu_half\,
      I1 => \^apu_pulse2_out\(34),
      I2 => \APU_Pulse2[timer][10]_i_5_n_0\,
      I3 => pulse2_sweep_divider(1),
      I4 => pulse2_sweep_divider(0),
      I5 => pulse2_sweep_divider(2),
      O => \APU_Pulse2[timer][10]_i_4_n_0\
    );
\APU_Pulse2[timer][10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \APU_Pulse2[timer][10]_i_5_n_0\
    );
\APU_Pulse2[timer][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0A0A0A"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse2[timer][1]_i_2_n_0\,
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => Reset,
      I4 => CPU_Rst,
      O => \APU_Pulse2[timer][1]_i_1_n_0\
    );
\APU_Pulse2[timer][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(1),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(1),
      O => \APU_Pulse2[timer][1]_i_2_n_0\
    );
\APU_Pulse2[timer][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0A0A0A"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse2[timer][2]_i_2_n_0\,
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => Reset,
      I4 => CPU_Rst,
      O => \APU_Pulse2[timer][2]_i_1_n_0\
    );
\APU_Pulse2[timer][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(2),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(2),
      O => \APU_Pulse2[timer][2]_i_2_n_0\
    );
\APU_Pulse2[timer][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0A0A0A"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => \APU_Pulse2[timer][3]_i_2_n_0\,
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => Reset,
      I4 => CPU_Rst,
      O => \APU_Pulse2[timer][3]_i_1_n_0\
    );
\APU_Pulse2[timer][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(3),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(3),
      O => \APU_Pulse2[timer][3]_i_2_n_0\
    );
\APU_Pulse2[timer][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_out\(9),
      I1 => Pulse2_Target1_carry_i_14_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_13_n_0,
      O => \APU_Pulse2[timer][3]_i_4_n_0\
    );
\APU_Pulse2[timer][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_out\(8),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_14_n_0,
      O => \APU_Pulse2[timer][3]_i_5_n_0\
    );
\APU_Pulse2[timer][3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \^apu_pulse2_out\(7),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_15_n_0,
      O => \APU_Pulse2[timer][3]_i_6_n_0\
    );
\APU_Pulse2[timer][3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_16_n_0,
      I1 => \^q\(0),
      I2 => Pulse2_Target1_carry_i_17_n_0,
      I3 => \^apu_pulse2_out\(6),
      O => \APU_Pulse2[timer][3]_i_7_n_0\
    );
\APU_Pulse2[timer][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0A0A0A"
    )
        port map (
      I0 => CPU_Data(4),
      I1 => \APU_Pulse2[timer][4]_i_2_n_0\,
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => Reset,
      I4 => CPU_Rst,
      O => \APU_Pulse2[timer][4]_i_1_n_0\
    );
\APU_Pulse2[timer][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(4),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(4),
      O => \APU_Pulse2[timer][4]_i_2_n_0\
    );
\APU_Pulse2[timer][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0A0A0A"
    )
        port map (
      I0 => CPU_Data(5),
      I1 => \APU_Pulse2[timer][5]_i_2_n_0\,
      I2 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I3 => Reset,
      I4 => CPU_Rst,
      O => \APU_Pulse2[timer][5]_i_1_n_0\
    );
\APU_Pulse2[timer][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(5),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(5),
      O => \APU_Pulse2[timer][5]_i_2_n_0\
    );
\APU_Pulse2[timer][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][6]_i_2_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I2 => CPU_Data(6),
      O => \APU_Pulse2[timer][6]_i_1_n_0\
    );
\APU_Pulse2[timer][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(6),
      I1 => \^apu_pulse2_out\(30),
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(6),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][6]_i_2_n_0\
    );
\APU_Pulse2[timer][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \APU_Pulse2[timer_load]\(7),
      I1 => \APU_Pulse2[timer][10]_i_3_n_0\,
      O => \APU_Pulse2[timer][7]_i_1_n_0\
    );
\APU_Pulse2[timer][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \APU_Pulse2[timer][7]_i_3_n_0\,
      I1 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I2 => CPU_Data(7),
      O => \APU_Pulse2[timer][7]_i_2_n_0\
    );
\APU_Pulse2[timer][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(7),
      I1 => \^apu_pulse2_out\(30),
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(7),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][7]_i_3_n_0\
    );
\APU_Pulse2[timer][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AAFFC0C0AA00"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse2[timer][8]_i_2_n_0\,
      I2 => \APU_Pulse1[timer][10]_i_2_n_0\,
      I3 => \APU_Pulse2[timer_load]\(10),
      I4 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => \APU_Pulse2[timer][8]_i_1_n_0\
    );
\APU_Pulse2[timer][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Pulse2_Target00_out(8),
      I1 => Pulse2_Target1,
      I2 => \^apu_pulse2_out\(30),
      I3 => Pulse2_Target02_out(8),
      O => \APU_Pulse2[timer][8]_i_2_n_0\
    );
\APU_Pulse2[timer][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \APU_Pulse2[timer][9]_i_2_n_0\,
      I1 => CPU_Data(1),
      I2 => \APU_Pulse2[timer_load]\(10),
      I3 => \APU_Pulse2[timer][10]_i_3_n_0\,
      I4 => \^apu_pulse2_reg[timer][9]_0\,
      O => \APU_Pulse2[timer][9]_i_1_n_0\
    );
\APU_Pulse2[timer][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22000000000000"
    )
        port map (
      I0 => Pulse2_Target02_out(9),
      I1 => \^apu_pulse2_out\(30),
      I2 => Pulse2_Target1,
      I3 => Pulse2_Target00_out(9),
      I4 => Reset,
      I5 => CPU_Rst,
      O => \APU_Pulse2[timer][9]_i_2_n_0\
    );
\APU_Pulse2[timer_load][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I4 => CPU_Addr(1),
      I5 => CPU_Addr(4),
      O => \APU_Pulse2[timer_load]\(10)
    );
\APU_Pulse2[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(2),
      I3 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I4 => CPU_Addr(4),
      I5 => CPU_Addr(0),
      O => \APU_Pulse2[timer_load]\(7)
    );
\APU_Pulse2[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFFFFEF"
    )
        port map (
      I0 => \APU_Pulse2[timer_load]\(10),
      I1 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I2 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I3 => \^apu_pulse2_out\(38),
      I4 => \^apu_pulse2_out\(44),
      I5 => \^apu_pulse2_out\(35),
      O => \APU_Pulse2[volume][0]_i_1_n_0\
    );
\APU_Pulse2[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFCFEFCFEFF"
    )
        port map (
      I0 => \^apu_pulse2_out\(44),
      I1 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I2 => \APU_Pulse2[timer_load]\(10),
      I3 => \APU_Pulse2[volume][1]_i_2_n_0\,
      I4 => \^apu_pulse2_out\(35),
      I5 => \^apu_pulse2_out\(36),
      O => \APU_Pulse2[volume][1]_i_1_n_0\
    );
\APU_Pulse2[volume][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^apu_pulse2_out\(37),
      I1 => \^apu_pulse2_out\(35),
      I2 => \^apu_pulse2_out\(36),
      I3 => \^apu_pulse2_out\(38),
      O => \APU_Pulse2[volume][1]_i_2_n_0\
    );
\APU_Pulse2[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEEFFEEFFEEEFE"
    )
        port map (
      I0 => \APU_Pulse2[timer_load]\(10),
      I1 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I2 => \^apu_pulse2_out\(37),
      I3 => \APU_Pulse2[volume][2]_i_2_n_0\,
      I4 => \^apu_pulse2_out\(38),
      I5 => \^apu_pulse2_out\(44),
      O => \APU_Pulse2[volume][2]_i_1_n_0\
    );
\APU_Pulse2[volume][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^apu_pulse2_out\(35),
      I1 => \^apu_pulse2_out\(36),
      O => \APU_Pulse2[volume][2]_i_2_n_0\
    );
\APU_Pulse2[volume][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA08"
    )
        port map (
      I0 => \^dbg_apu_qtr\,
      I1 => \APU_Pulse2[volume][3]_i_3_n_0\,
      I2 => \APU_Pulse2[volume][3]_i_4_n_0\,
      I3 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I4 => \APU_Pulse2[timer_load]\(10),
      O => \APU_Pulse2[volume]\
    );
\APU_Pulse2[volume][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF2C"
    )
        port map (
      I0 => \^apu_pulse2_out\(44),
      I1 => \^apu_pulse2_out\(38),
      I2 => \APU_Pulse2[volume][3]_i_5_n_0\,
      I3 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I4 => \APU_Pulse2[timer_load]\(10),
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
\APU_Pulse2[volume][3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse2_out\(37),
      I1 => \^apu_pulse2_out\(35),
      I2 => \^apu_pulse2_out\(36),
      I3 => \^apu_pulse2_out\(38),
      I4 => \^apu_pulse2_out\(44),
      O => \APU_Pulse2[volume][3]_i_4_n_0\
    );
\APU_Pulse2[volume][3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^apu_pulse2_out\(36),
      I1 => \^apu_pulse2_out\(35),
      I2 => \^apu_pulse2_out\(37),
      O => \APU_Pulse2[volume][3]_i_5_n_0\
    );
\APU_Pulse2_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(39),
      I1 => \^apu_pulse2_out\(43),
      I2 => \^apu_pulse2_out\(35),
      O => APU_Pulse2_Message(1)
    );
\APU_Pulse2_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(40),
      I1 => \^apu_pulse2_out\(43),
      I2 => \^apu_pulse2_out\(36),
      O => APU_Pulse2_Message(2)
    );
\APU_Pulse2_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(41),
      I1 => \^apu_pulse2_out\(43),
      I2 => \^apu_pulse2_out\(37),
      O => APU_Pulse2_Message(3)
    );
\APU_Pulse2_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(42),
      I1 => \^apu_pulse2_out\(43),
      I2 => \^apu_pulse2_out\(38),
      O => APU_Pulse2_Message(4)
    );
\APU_Pulse2_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BFFF"
    )
        port map (
      I0 => \^apu_pulse2_out\(30),
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
      I0 => \^apu_pulse2_out\(12),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_10_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_out\(11),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_11_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_11_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \^apu_pulse2_out\(10),
      I1 => Pulse2_Target1_carry_i_13_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_12_n_0,
      O => \APU_Pulse2_Message[3]_INST_0_i_12_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^apu_pulse2_out\(9),
      I1 => \^apu_pulse2_reg[timer][10]_0\,
      I2 => \^apu_pulse2_reg[timer][9]_0\,
      I3 => \^apu_pulse2_reg[timer][8]_0\,
      I4 => \APU_Pulse2_Message[3]_INST_0_i_8_n_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_2_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^apu_pulse2_out\(4),
      I1 => \^apu_pulse2_out\(2),
      I2 => \^apu_pulse2_out\(0),
      I3 => \^apu_pulse2_out\(1),
      I4 => \^apu_pulse2_out\(3),
      I5 => \^apu_pulse2_out\(5),
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
      DI(3 downto 0) => \^apu_pulse2_out\(13 downto 10),
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
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \APU_Pulse2_Message[3]_INST_0_i_5_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA04FE00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \^apu_pulse2_reg[timer][10]_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_6_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C998C8CCCC98C8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^apu_pulse2_reg[timer][8]_0\,
      I2 => \^q\(1),
      I3 => \^apu_pulse2_reg[timer][10]_0\,
      I4 => \^q\(0),
      I5 => \^apu_pulse2_reg[timer][9]_0\,
      O => \APU_Pulse2_Message[3]_INST_0_i_7_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse2_out\(11),
      I1 => \^apu_pulse2_out\(10),
      I2 => \^apu_pulse2_out\(13),
      I3 => \^apu_pulse2_out\(12),
      O => \APU_Pulse2_Message[3]_INST_0_i_8_n_0\
    );
\APU_Pulse2_Message[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^apu_pulse2_out\(13),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \^q\(0),
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
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(43)
    );
\APU_Pulse2_reg[duty][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(45)
    );
\APU_Pulse2_reg[duty][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(46)
    );
\APU_Pulse2_reg[envelope][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse2_out\(39)
    );
\APU_Pulse2_reg[envelope][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse2_out\(40)
    );
\APU_Pulse2_reg[envelope][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse2_out\(41)
    );
\APU_Pulse2_reg[envelope][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(42)
    );
\APU_Pulse2_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][0]_i_1_n_0\,
      Q => \^apu_pulse2_out\(0)
    );
\APU_Pulse2_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][1]_i_1_n_0\,
      Q => \^apu_pulse2_out\(1)
    );
\APU_Pulse2_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][2]_i_1_n_0\,
      Q => \^apu_pulse2_out\(2)
    );
\APU_Pulse2_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][3]_i_1_n_0\,
      Q => \^apu_pulse2_out\(3)
    );
\APU_Pulse2_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][4]_i_1_n_0\,
      Q => \^apu_pulse2_out\(4)
    );
\APU_Pulse2_reg[length_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter][5]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[length_counter][5]_i_2_n_0\,
      Q => \^apu_pulse2_out\(5)
    );
\APU_Pulse2_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(44)
    );
\APU_Pulse2_reg[length_counter_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(14)
    );
\APU_Pulse2_reg[length_counter_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(15)
    );
\APU_Pulse2_reg[length_counter_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(16)
    );
\APU_Pulse2_reg[length_counter_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(17)
    );
\APU_Pulse2_reg[length_counter_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(18)
    );
\APU_Pulse2_reg[sweep_enable]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(34)
    );
\APU_Pulse2_reg[sweep_negate]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(30)
    );
\APU_Pulse2_reg[sweep_period][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(31)
    );
\APU_Pulse2_reg[sweep_period][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(32)
    );
\APU_Pulse2_reg[sweep_period][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(33)
    );
\APU_Pulse2_reg[sweep_shift][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^q\(0)
    );
\APU_Pulse2_reg[sweep_shift][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^q\(1)
    );
\APU_Pulse2_reg[sweep_shift][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^q\(2)
    );
\APU_Pulse2_reg[timer][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][0]_i_1_n_0\,
      Q => \^apu_pulse2_out\(6)
    );
\APU_Pulse2_reg[timer][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][1]_i_1_n_0\,
      Q => \^apu_pulse2_out\(7)
    );
\APU_Pulse2_reg[timer][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][2]_i_1_n_0\,
      Q => \^apu_pulse2_out\(8)
    );
\APU_Pulse2_reg[timer][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][3]_i_1_n_0\,
      Q => \^apu_pulse2_out\(9)
    );
\APU_Pulse2_reg[timer][3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \APU_Pulse2_reg[timer][3]_i_3_n_0\,
      CO(2) => \APU_Pulse2_reg[timer][3]_i_3_n_1\,
      CO(1) => \APU_Pulse2_reg[timer][3]_i_3_n_2\,
      CO(0) => \APU_Pulse2_reg[timer][3]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse2_out\(9 downto 6),
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][4]_i_1_n_0\,
      Q => \^apu_pulse2_out\(10)
    );
\APU_Pulse2_reg[timer][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][5]_i_1_n_0\,
      Q => \^apu_pulse2_out\(11)
    );
\APU_Pulse2_reg[timer][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][6]_i_1_n_0\,
      Q => \^apu_pulse2_out\(12)
    );
\APU_Pulse2_reg[timer][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][7]_i_2_n_0\,
      Q => \^apu_pulse2_out\(13)
    );
\APU_Pulse2_reg[timer][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer][9]_i_1_n_0\,
      Q => \^apu_pulse2_reg[timer][9]_0\
    );
\APU_Pulse2_reg[timer_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse2_out\(19)
    );
\APU_Pulse2_reg[timer_load][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse2_out\(29)
    );
\APU_Pulse2_reg[timer_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse2_out\(20)
    );
\APU_Pulse2_reg[timer_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse2_out\(21)
    );
\APU_Pulse2_reg[timer_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(22)
    );
\APU_Pulse2_reg[timer_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(23)
    );
\APU_Pulse2_reg[timer_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(24)
    );
\APU_Pulse2_reg[timer_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(25)
    );
\APU_Pulse2_reg[timer_load][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(7),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(26)
    );
\APU_Pulse2_reg[timer_load][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse2_out\(27)
    );
\APU_Pulse2_reg[timer_load][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load]\(10),
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse2_out\(28)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse2_out\(35)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse2_out\(36)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse2_out\(37)
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
      PRE => \APU_Pulse1[duty][1]_i_2_n_0\,
      Q => \^apu_pulse2_out\(38)
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
      INIT => X"888888888888A8AA"
    )
        port map (
      I0 => \^dbg_apu_tick\,
      I1 => APU_Quarter_CE_i_2_n_0,
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => APU_Quarter_CE12_out
    );
APU_Quarter_CE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000520"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(8),
      I1 => \procFrameCounter.counter_reg\(9),
      I2 => \procFrameCounter.counter_reg\(4),
      I3 => \procFrameCounter.counter_reg\(7),
      I4 => \procFrameCounter.counter_reg\(5),
      I5 => APU_Quarter_CE_i_6_n_0,
      O => APU_Quarter_CE_i_2_n_0
    );
APU_Quarter_CE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => APU_Half_CE_i_8_n_0,
      I1 => \procFrameCounter.counter_reg\(0),
      I2 => \procFrameCounter.counter_reg\(13),
      I3 => \procFrameCounter.counter_reg\(11),
      I4 => \procFrameCounter.counter_reg\(2),
      I5 => \procFrameCounter.counter_reg\(3),
      O => APU_Quarter_CE_i_3_n_0
    );
APU_Quarter_CE_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(8),
      I1 => \procFrameCounter.counter_reg\(4),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => \procFrameCounter.counter_reg\(6),
      O => APU_Quarter_CE_i_4_n_0
    );
APU_Quarter_CE_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AAAAAAAAAA"
    )
        port map (
      I0 => \^apu_counter_reg[mode]_0\,
      I1 => \procFrameCounter.counter_reg\(7),
      I2 => \procFrameCounter.counter_reg\(9),
      I3 => \procFrameCounter.counter_reg\(14),
      I4 => \procFrameCounter.counter_reg\(12),
      I5 => APU_Half_CE_i_9_n_0,
      O => APU_Quarter_CE_i_5_n_0
    );
APU_Quarter_CE_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEEFFF"
    )
        port map (
      I0 => APU_Quarter_CE_i_7_n_0,
      I1 => APU_Quarter_CE_i_8_n_0,
      I2 => \procFrameCounter.counter_reg\(12),
      I3 => \procFrameCounter.counter_reg\(8),
      I4 => \procFrameCounter.counter_reg\(9),
      I5 => APU_Quarter_CE_i_9_n_0,
      O => APU_Quarter_CE_i_6_n_0
    );
APU_Quarter_CE_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFE"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(6),
      I1 => \procFrameCounter.counter_reg\(14),
      I2 => \procFrameCounter.counter_reg\(2),
      I3 => \procFrameCounter.counter_reg\(1),
      I4 => \procFrameCounter.counter_reg\(0),
      O => APU_Quarter_CE_i_7_n_0
    );
APU_Quarter_CE_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF3"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(4),
      I1 => \procFrameCounter.counter_reg\(5),
      I2 => \procFrameCounter.counter_reg\(2),
      I3 => \procFrameCounter.counter_reg\(3),
      O => APU_Quarter_CE_i_8_n_0
    );
APU_Quarter_CE_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB4FFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(12),
      I1 => \procFrameCounter.counter_reg\(8),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => \procFrameCounter.counter_reg\(13),
      I4 => \procFrameCounter.counter_reg\(11),
      O => APU_Quarter_CE_i_9_n_0
    );
APU_Quarter_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => APU_Quarter_CE12_out,
      Q => \^dbg_apu_qtr\
    );
\APU_Status[dmc_active]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => \APU_Pulse1[sweep_enable]_i_2_n_0\,
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(4),
      I5 => CPU_Addr(1),
      O => \APU_Status[dmc_active]\
    );
\APU_Status_reg[dmc_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_status_out\(4)
    );
\APU_Status_reg[noise_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_status_out\(3)
    );
\APU_Status_reg[pulse1_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_status_out\(0)
    );
\APU_Status_reg[pulse2_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_status_out\(1)
    );
\APU_Status_reg[triangle_active]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_status_out\(2)
    );
APU_Tick_CE_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dbg_apu_tick\,
      O => p_1_in
    );
APU_Tick_CE_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_1_in,
      Q => \^dbg_apu_tick\
    );
\APU_Triangle[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(0),
      I5 => \APU_Triangle[length_counter_halt]_i_2_n_0\,
      O => \APU_Triangle[length_counter_halt]\
    );
\APU_Triangle[length_counter_halt]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \APU_Pulse1[sweep_enable]_i_4_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(8),
      I3 => CPU_Addr(5),
      I4 => CPU_Addr(12),
      I5 => CPU_Addr(9),
      O => \APU_Triangle[length_counter_halt]_i_2_n_0\
    );
\APU_Triangle[timer_load][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(0),
      I4 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I5 => \APU_Triangle[length_counter_halt]_i_2_n_0\,
      O => \APU_Triangle[timer_load][10]_i_1_n_0\
    );
\APU_Triangle[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \APU_Triangle[timer_load][7]_i_2_n_0\,
      I1 => \APU_Triangle[timer_load][7]_i_3_n_0\,
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(14),
      I4 => CPU_Addr(13),
      I5 => \APU_Triangle[timer_load][7]_i_4_n_0\,
      O => \APU_Triangle[timer_load][7]_i_1_n_0\
    );
\APU_Triangle[timer_load][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(3),
      I2 => CPU_RW,
      I3 => CPU_RomSel,
      O => \APU_Triangle[timer_load][7]_i_2_n_0\
    );
\APU_Triangle[timer_load][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CPU_Addr(8),
      I1 => CPU_Addr(5),
      I2 => CPU_Addr(12),
      I3 => CPU_Addr(9),
      O => \APU_Triangle[timer_load][7]_i_3_n_0\
    );
\APU_Triangle[timer_load][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CPU_Addr(7),
      I1 => CPU_Addr(6),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(0),
      I4 => CPU_Addr(10),
      I5 => CPU_Addr(11),
      O => \APU_Triangle[timer_load][7]_i_4_n_0\
    );
\APU_Triangle_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(7)
    );
\APU_Triangle_reg[length_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(8)
    );
\APU_Triangle_reg[length_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(9)
    );
\APU_Triangle_reg[length_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(10)
    );
\APU_Triangle_reg[length_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(11)
    );
\APU_Triangle_reg[length_counter_halt]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(30)
    );
\APU_Triangle_reg[linear_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(23),
      Q => \^apu_triangle_out\(0)
    );
\APU_Triangle_reg[linear_counter][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(24),
      Q => \^apu_triangle_out\(1)
    );
\APU_Triangle_reg[linear_counter][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(25),
      Q => \^apu_triangle_out\(2)
    );
\APU_Triangle_reg[linear_counter][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(26),
      Q => \^apu_triangle_out\(3)
    );
\APU_Triangle_reg[linear_counter][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(27),
      Q => \^apu_triangle_out\(4)
    );
\APU_Triangle_reg[linear_counter][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(28),
      Q => \^apu_triangle_out\(5)
    );
\APU_Triangle_reg[linear_counter][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \^apu_triangle_out\(29),
      Q => \^apu_triangle_out\(6)
    );
\APU_Triangle_reg[linear_counter_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(23)
    );
\APU_Triangle_reg[linear_counter_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(24)
    );
\APU_Triangle_reg[linear_counter_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(25)
    );
\APU_Triangle_reg[linear_counter_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(26)
    );
\APU_Triangle_reg[linear_counter_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(27)
    );
\APU_Triangle_reg[linear_counter_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(28)
    );
\APU_Triangle_reg[linear_counter_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(29)
    );
\APU_Triangle_reg[timer_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(12)
    );
\APU_Triangle_reg[timer_load][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(22)
    );
\APU_Triangle_reg[timer_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(13)
    );
\APU_Triangle_reg[timer_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(14)
    );
\APU_Triangle_reg[timer_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(15)
    );
\APU_Triangle_reg[timer_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(16)
    );
\APU_Triangle_reg[timer_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(17)
    );
\APU_Triangle_reg[timer_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(18)
    );
\APU_Triangle_reg[timer_load][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(19)
    );
\APU_Triangle_reg[timer_load][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(20)
    );
\APU_Triangle_reg[timer_load][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer_load][10]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(21)
    );
Pulse1_Target0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Pulse1_Target0_carry_n_0,
      CO(2) => Pulse1_Target0_carry_n_1,
      CO(1) => Pulse1_Target0_carry_n_2,
      CO(0) => Pulse1_Target0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^apu_pulse1_out\(9 downto 6),
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
      DI(3 downto 0) => \^apu_pulse1_out\(13 downto 10),
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
      I4 => \^apu_pulse1_out\(13),
      I5 => p_0_in3_in(7),
      O => \Pulse1_Target0_carry__0_i_1_n_0\
    );
\Pulse1_Target0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^apu_pulse1_out\(12),
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
      I2 => \^apu_pulse1_out\(11),
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
      I2 => \^apu_pulse1_out\(10),
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
      DI(1 downto 0) => \^apu_pulse1_out\(15 downto 14),
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
      I0 => \^apu_pulse1_out\(15),
      I1 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I2 => \^apu_pulse1_out\(33),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(16),
      I5 => \^apu_pulse1_out\(34),
      O => \Pulse1_Target0_carry__1_i_1_n_0\
    );
\Pulse1_Target0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5555AA655595"
    )
        port map (
      I0 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I1 => \^apu_pulse1_out\(16),
      I2 => \^apu_pulse1_out\(33),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(15),
      I5 => \^apu_pulse1_out\(34),
      O => \Pulse1_Target0_carry__1_i_2_n_0\
    );
\Pulse1_Target0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Pulse1_Target0_carry__1_i_4_n_0\,
      I1 => \^apu_pulse1_out\(14),
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
      I2 => \^apu_pulse1_out\(9),
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
      I3 => \^apu_pulse1_out\(8),
      O => Pulse1_Target0_carry_i_2_n_0
    );
Pulse1_Target0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in3_in(0),
      I1 => p_0_in3_in(1),
      I2 => \^apu_pulse1_out\(7),
      O => Pulse1_Target0_carry_i_3_n_0
    );
Pulse1_Target0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(6),
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
      I3 => \^apu_pulse1_out\(33),
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
      I0 => \^apu_pulse1_out\(33),
      I1 => \^apu_pulse1_out\(35),
      I2 => \^apu_pulse1_out\(15),
      I3 => \^apu_pulse1_out\(34),
      I4 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I5 => \^apu_pulse1_out\(16),
      O => \Pulse1_Target1_carry__0_i_1_n_0\
    );
\Pulse1_Target1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15403D54"
    )
        port map (
      I0 => \^apu_pulse1_out\(15),
      I1 => \Pulse1_Target1_carry__0_i_6_n_0\,
      I2 => p_0_in3_in(8),
      I3 => p_0_in3_in(9),
      I4 => \^apu_pulse1_out\(14),
      O => \Pulse1_Target1_carry__0_i_2_n_0\
    );
\Pulse1_Target1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3732333737373337"
    )
        port map (
      I0 => \^apu_pulse1_out\(34),
      I1 => \^apu_pulse1_out\(16),
      I2 => \^apu_pulse1_out\(35),
      I3 => \^apu_pulse1_out\(33),
      I4 => \Pulse1_Target1_carry__0_i_5_n_0\,
      I5 => \^apu_pulse1_out\(15),
      O => \Pulse1_Target1_carry__0_i_3_n_0\
    );
\Pulse1_Target1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => p_0_in3_in(9),
      I1 => \^apu_pulse1_out\(15),
      I2 => \Pulse1_Target1_carry__0_i_6_n_0\,
      I3 => p_0_in3_in(8),
      I4 => \^apu_pulse1_out\(14),
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
      I0 => \^apu_pulse1_out\(15),
      I1 => \^apu_pulse1_out\(33),
      I2 => \^apu_pulse1_out\(16),
      I3 => \^apu_pulse1_out\(34),
      I4 => \^apu_pulse1_out\(14),
      I5 => \^apu_pulse1_out\(35),
      O => p_0_in3_in(8)
    );
\Pulse1_Target1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^apu_pulse1_out\(16),
      I1 => \^apu_pulse1_out\(33),
      I2 => \^apu_pulse1_out\(35),
      I3 => \^apu_pulse1_out\(15),
      I4 => \^apu_pulse1_out\(34),
      O => p_0_in3_in(9)
    );
Pulse1_Target1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4144D14D"
    )
        port map (
      I0 => \^apu_pulse1_out\(13),
      I1 => p_0_in3_in(7),
      I2 => Pulse1_Target1_carry_i_10_n_0,
      I3 => p_0_in3_in(6),
      I4 => \^apu_pulse1_out\(12),
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
      I0 => \^apu_pulse1_out\(15),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(13),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(33),
      I5 => Pulse1_Target1_carry_i_20_n_0,
      O => p_0_in3_in(6)
    );
Pulse1_Target1_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_20_n_0,
      I1 => \^apu_pulse1_out\(33),
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
      I4 => \^apu_pulse1_out\(33),
      I5 => Pulse1_Target1_carry_i_26_n_0,
      O => Pulse1_Target1_carry_i_13_n_0
    );
Pulse1_Target1_carry_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_21_n_0,
      I1 => \^apu_pulse1_out\(33),
      I2 => Pulse1_Target1_carry_i_26_n_0,
      O => p_0_in3_in(4)
    );
Pulse1_Target1_carry_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_26_n_0,
      I1 => \^apu_pulse1_out\(33),
      I2 => Pulse1_Target1_carry_i_25_n_0,
      O => p_0_in3_in(3)
    );
Pulse1_Target1_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_22_n_0,
      I1 => \^apu_pulse1_out\(33),
      I2 => Pulse1_Target1_carry_i_24_n_0,
      O => p_0_in3_in(1)
    );
Pulse1_Target1_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_24_n_0,
      I1 => \^apu_pulse1_out\(33),
      I2 => Pulse1_Target1_carry_i_23_n_0,
      O => p_0_in3_in(0)
    );
Pulse1_Target1_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Target1_carry_i_25_n_0,
      I1 => \^apu_pulse1_out\(33),
      I2 => Pulse1_Target1_carry_i_22_n_0,
      O => p_0_in3_in(2)
    );
Pulse1_Target1_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(15),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(13),
      I3 => \^apu_pulse1_out\(35),
      O => Pulse1_Target1_carry_i_19_n_0
    );
Pulse1_Target1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14441DD4"
    )
        port map (
      I0 => \^apu_pulse1_out\(11),
      I1 => p_0_in3_in(5),
      I2 => Pulse1_Target1_carry_i_13_n_0,
      I3 => p_0_in3_in(4),
      I4 => \^apu_pulse1_out\(10),
      O => Pulse1_Target1_carry_i_2_n_0
    );
Pulse1_Target1_carry_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^apu_pulse1_out\(14),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(16),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(12),
      O => Pulse1_Target1_carry_i_20_n_0
    );
Pulse1_Target1_carry_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^apu_pulse1_out\(13),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(15),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(11),
      O => Pulse1_Target1_carry_i_21_n_0
    );
Pulse1_Target1_carry_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_out\(14),
      I1 => \^apu_pulse1_out\(10),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(12),
      I4 => \^apu_pulse1_out\(35),
      I5 => \^apu_pulse1_out\(8),
      O => Pulse1_Target1_carry_i_22_n_0
    );
Pulse1_Target1_carry_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_out\(12),
      I1 => \^apu_pulse1_out\(8),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(10),
      I4 => \^apu_pulse1_out\(35),
      I5 => \^apu_pulse1_out\(6),
      O => Pulse1_Target1_carry_i_23_n_0
    );
Pulse1_Target1_carry_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_out\(13),
      I1 => \^apu_pulse1_out\(9),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(11),
      I4 => \^apu_pulse1_out\(35),
      I5 => \^apu_pulse1_out\(7),
      O => Pulse1_Target1_carry_i_24_n_0
    );
Pulse1_Target1_carry_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_out\(15),
      I1 => \^apu_pulse1_out\(11),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(13),
      I4 => \^apu_pulse1_out\(35),
      I5 => \^apu_pulse1_out\(9),
      O => Pulse1_Target1_carry_i_25_n_0
    );
Pulse1_Target1_carry_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse1_out\(16),
      I1 => \^apu_pulse1_out\(12),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(14),
      I4 => \^apu_pulse1_out\(35),
      I5 => \^apu_pulse1_out\(10),
      O => Pulse1_Target1_carry_i_26_n_0
    );
Pulse1_Target1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"144444441DDDD444"
    )
        port map (
      I0 => \^apu_pulse1_out\(9),
      I1 => p_0_in3_in(3),
      I2 => p_0_in3_in(1),
      I3 => p_0_in3_in(0),
      I4 => p_0_in3_in(2),
      I5 => \^apu_pulse1_out\(8),
      O => Pulse1_Target1_carry_i_3_n_0
    );
Pulse1_Target1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"141D"
    )
        port map (
      I0 => \^apu_pulse1_out\(7),
      I1 => p_0_in3_in(1),
      I2 => p_0_in3_in(0),
      I3 => \^apu_pulse1_out\(6),
      O => Pulse1_Target1_carry_i_4_n_0
    );
Pulse1_Target1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090690"
    )
        port map (
      I0 => p_0_in3_in(7),
      I1 => \^apu_pulse1_out\(13),
      I2 => \^apu_pulse1_out\(12),
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
      I1 => \^apu_pulse1_out\(11),
      I2 => \^apu_pulse1_out\(10),
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
      I1 => \^apu_pulse1_out\(9),
      I2 => \^apu_pulse1_out\(8),
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
      I1 => \^apu_pulse1_out\(7),
      I2 => \^apu_pulse1_out\(6),
      I3 => p_0_in3_in(0),
      O => Pulse1_Target1_carry_i_8_n_0
    );
Pulse1_Target1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^apu_pulse1_out\(16),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(14),
      I3 => \^apu_pulse1_out\(35),
      I4 => \^apu_pulse1_out\(33),
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
      DI(3 downto 0) => \^apu_pulse2_out\(9 downto 6),
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
      DI(3 downto 0) => \^apu_pulse2_out\(13 downto 10),
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
      I0 => \^apu_pulse2_out\(12),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      O => \Pulse2_Target0_carry__0_i_2_n_0\
    );
\Pulse2_Target0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^apu_pulse2_out\(11),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_11_n_0,
      O => \Pulse2_Target0_carry__0_i_3_n_0\
    );
\Pulse2_Target0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \^apu_pulse2_out\(10),
      I1 => Pulse2_Target1_carry_i_13_n_0,
      I2 => \^q\(0),
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
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
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
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \Pulse2_Target0_carry__1_i_2_n_0\
    );
\Pulse2_Target0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF30BBCF77"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \^q\(0),
      I2 => \^apu_pulse2_reg[timer][10]_0\,
      I3 => \^q\(1),
      I4 => \^apu_pulse2_reg[timer][8]_0\,
      I5 => \^q\(2),
      O => \Pulse2_Target0_carry__1_i_3_n_0\
    );
Pulse2_Target0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_out\(9),
      I1 => Pulse2_Target1_carry_i_14_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target0_carry_i_1_n_0
    );
Pulse2_Target0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^apu_pulse2_out\(8),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_14_n_0,
      O => Pulse2_Target0_carry_i_2_n_0
    );
Pulse2_Target0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \^apu_pulse2_out\(7),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_15_n_0,
      O => Pulse2_Target0_carry_i_3_n_0
    );
Pulse2_Target0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_16_n_0,
      I1 => \^q\(0),
      I2 => Pulse2_Target1_carry_i_17_n_0,
      I3 => \^apu_pulse2_out\(6),
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
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => \Pulse2_Target1_carry__0_i_1_n_0\
    );
\Pulse2_Target1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^apu_pulse2_reg[timer][10]_0\,
      O => \Pulse2_Target1_carry__0_i_2_n_0\
    );
\Pulse2_Target1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555510B34537"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \^q\(0),
      I2 => \^apu_pulse2_reg[timer][10]_0\,
      I3 => \^q\(1),
      I4 => \^apu_pulse2_reg[timer][8]_0\,
      I5 => \^q\(2),
      O => \Pulse2_Target1_carry__0_i_3_n_0\
    );
Pulse2_Target1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500DFC54000DFC0"
    )
        port map (
      I0 => \^apu_pulse2_out\(12),
      I1 => Pulse2_Target1_carry_i_9_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_10_n_0,
      I4 => \^apu_pulse2_out\(13),
      I5 => Pulse2_Target1_carry_i_11_n_0,
      O => Pulse2_Target1_carry_i_1_n_0
    );
Pulse2_Target1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \^q\(1),
      I2 => \^apu_pulse2_out\(13),
      I3 => \^q\(2),
      O => Pulse2_Target1_carry_i_10_n_0
    );
Pulse2_Target1_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][8]_0\,
      I1 => \^apu_pulse2_reg[timer][10]_0\,
      I2 => \^q\(2),
      I3 => \^apu_pulse2_out\(12),
      I4 => \^q\(1),
      O => Pulse2_Target1_carry_i_11_n_0
    );
Pulse2_Target1_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^apu_pulse2_out\(13),
      I1 => \^q\(1),
      I2 => \^apu_pulse2_reg[timer][9]_0\,
      I3 => \^q\(2),
      I4 => \^apu_pulse2_out\(11),
      O => Pulse2_Target1_carry_i_12_n_0
    );
Pulse2_Target1_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \^apu_pulse2_out\(12),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_out\(10),
      I4 => \^q\(2),
      I5 => \^apu_pulse2_reg[timer][8]_0\,
      O => Pulse2_Target1_carry_i_13_n_0
    );
Pulse2_Target1_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001D331DCC1DFF1D"
    )
        port map (
      I0 => \^apu_pulse2_out\(9),
      I1 => \^q\(2),
      I2 => \^apu_pulse2_out\(13),
      I3 => \^q\(1),
      I4 => \^apu_pulse2_out\(11),
      I5 => \^apu_pulse2_reg[timer][9]_0\,
      O => Pulse2_Target1_carry_i_14_n_0
    );
Pulse2_Target1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][8]_0\,
      I1 => \^apu_pulse2_out\(10),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_out\(12),
      I4 => \^q\(2),
      I5 => \^apu_pulse2_out\(8),
      O => Pulse2_Target1_carry_i_15_n_0
    );
Pulse2_Target1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse2_out\(13),
      I1 => \^apu_pulse2_out\(9),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_out\(11),
      I4 => \^q\(2),
      I5 => \^apu_pulse2_out\(7),
      O => Pulse2_Target1_carry_i_16_n_0
    );
Pulse2_Target1_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^apu_pulse2_out\(12),
      I1 => \^apu_pulse2_out\(8),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_out\(10),
      I4 => \^q\(2),
      I5 => \^apu_pulse2_out\(6),
      O => Pulse2_Target1_carry_i_17_n_0
    );
Pulse2_Target1_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][9]_0\,
      I1 => \^q\(1),
      I2 => \^apu_pulse2_out\(13),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => Pulse2_Target1_carry_i_11_n_0,
      O => Pulse2_Target1_carry_i_18_n_0
    );
Pulse2_Target1_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^apu_pulse2_out\(13),
      I2 => \^q\(1),
      I3 => \^apu_pulse2_reg[timer][9]_0\,
      I4 => \^q\(0),
      I5 => Pulse2_Target1_carry_i_9_n_0,
      O => Pulse2_Target1_carry_i_19_n_0
    );
Pulse2_Target1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000DFC04500DFC5"
    )
        port map (
      I0 => \^apu_pulse2_out\(10),
      I1 => Pulse2_Target1_carry_i_11_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_12_n_0,
      I4 => \^apu_pulse2_out\(11),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_2_n_0
    );
Pulse2_Target1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100451157DDDF"
    )
        port map (
      I0 => Pulse2_Target1_carry_i_14_n_0,
      I1 => \^q\(0),
      I2 => Pulse2_Target1_carry_i_15_n_0,
      I3 => \^apu_pulse2_out\(8),
      I4 => Pulse2_Target1_carry_i_13_n_0,
      I5 => \^apu_pulse2_out\(9),
      O => Pulse2_Target1_carry_i_3_n_0
    );
Pulse2_Target1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15007F3510007F30"
    )
        port map (
      I0 => \^apu_pulse2_out\(6),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_16_n_0,
      I4 => \^apu_pulse2_out\(7),
      I5 => Pulse2_Target1_carry_i_17_n_0,
      O => Pulse2_Target1_carry_i_4_n_0
    );
Pulse2_Target1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \^apu_pulse2_out\(12),
      I1 => Pulse2_Target1_carry_i_18_n_0,
      I2 => Pulse2_Target1_carry_i_19_n_0,
      O => Pulse2_Target1_carry_i_5_n_0
    );
Pulse2_Target1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040291989492010"
    )
        port map (
      I0 => \^apu_pulse2_out\(11),
      I1 => Pulse2_Target1_carry_i_12_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_11_n_0,
      I4 => \^apu_pulse2_out\(10),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_6_n_0
    );
Pulse2_Target1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000656A050A60600"
    )
        port map (
      I0 => \^apu_pulse2_out\(8),
      I1 => Pulse2_Target1_carry_i_15_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_14_n_0,
      I4 => \^apu_pulse2_out\(9),
      I5 => Pulse2_Target1_carry_i_13_n_0,
      O => Pulse2_Target1_carry_i_7_n_0
    );
Pulse2_Target1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4989408010201929"
    )
        port map (
      I0 => \^apu_pulse2_out\(7),
      I1 => Pulse2_Target1_carry_i_16_n_0,
      I2 => \^q\(0),
      I3 => Pulse2_Target1_carry_i_15_n_0,
      I4 => Pulse2_Target1_carry_i_17_n_0,
      I5 => \^apu_pulse2_out\(6),
      O => Pulse2_Target1_carry_i_8_n_0
    );
Pulse2_Target1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse2_reg[timer][10]_0\,
      I1 => \^q\(1),
      I2 => \^apu_pulse2_reg[timer][8]_0\,
      I3 => \^q\(2),
      O => Pulse2_Target1_carry_i_9_n_0
    );
dbg_overflow_1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Reset,
      I1 => CPU_Rst,
      I2 => Pulse1_Target05_out(11),
      I3 => \^apu_pulse1_out\(36),
      O => dbg_overflow_1
    );
dbg_overflow_1_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => dbg_overflow_1_INST_0_i_2_n_0,
      CO(3) => Pulse1_Target05_out(11),
      CO(2) => NLW_dbg_overflow_1_INST_0_i_1_CO_UNCONNECTED(2),
      CO(1) => dbg_overflow_1_INST_0_i_1_n_2,
      CO(0) => dbg_overflow_1_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^apu_pulse1_out\(16 downto 14),
      O(3) => NLW_dbg_overflow_1_INST_0_i_1_O_UNCONNECTED(3),
      O(2 downto 0) => Pulse1_Target05_out(10 downto 8),
      S(3) => '1',
      S(2) => dbg_overflow_1_INST_0_i_3_n_0,
      S(1) => dbg_overflow_1_INST_0_i_4_n_0,
      S(0) => dbg_overflow_1_INST_0_i_5_n_0
    );
dbg_overflow_1_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(16),
      I1 => \^apu_pulse1_out\(34),
      I2 => \^apu_pulse1_out\(14),
      I3 => \^apu_pulse1_out\(35),
      O => dbg_overflow_1_INST_0_i_10_n_0
    );
dbg_overflow_1_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => \APU_Pulse1_reg[timer][3]_i_3_n_0\,
      CO(3) => dbg_overflow_1_INST_0_i_2_n_0,
      CO(2) => dbg_overflow_1_INST_0_i_2_n_1,
      CO(1) => dbg_overflow_1_INST_0_i_2_n_2,
      CO(0) => dbg_overflow_1_INST_0_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^apu_pulse1_out\(13 downto 10),
      O(3 downto 0) => Pulse1_Target05_out(7 downto 4),
      S(3) => dbg_overflow_1_INST_0_i_6_n_0,
      S(2) => dbg_overflow_1_INST_0_i_7_n_0,
      S(1) => dbg_overflow_1_INST_0_i_8_n_0,
      S(0) => dbg_overflow_1_INST_0_i_9_n_0
    );
dbg_overflow_1_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^apu_pulse1_out\(33),
      I1 => \^apu_pulse1_out\(35),
      I2 => \^apu_pulse1_out\(16),
      I3 => \^apu_pulse1_out\(34),
      O => dbg_overflow_1_INST_0_i_3_n_0
    );
dbg_overflow_1_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C9C8CCC8"
    )
        port map (
      I0 => \^apu_pulse1_out\(34),
      I1 => \^apu_pulse1_out\(15),
      I2 => \^apu_pulse1_out\(35),
      I3 => \^apu_pulse1_out\(33),
      I4 => \^apu_pulse1_out\(16),
      O => dbg_overflow_1_INST_0_i_4_n_0
    );
dbg_overflow_1_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C9C998C8CCCC98C8"
    )
        port map (
      I0 => \^apu_pulse1_out\(35),
      I1 => \^apu_pulse1_out\(14),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(16),
      I4 => \^apu_pulse1_out\(33),
      I5 => \^apu_pulse1_out\(15),
      O => dbg_overflow_1_INST_0_i_5_n_0
    );
dbg_overflow_1_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333398C8CCCC98C8"
    )
        port map (
      I0 => \^apu_pulse1_out\(35),
      I1 => \^apu_pulse1_out\(13),
      I2 => \^apu_pulse1_out\(34),
      I3 => \^apu_pulse1_out\(15),
      I4 => \^apu_pulse1_out\(33),
      I5 => dbg_overflow_1_INST_0_i_10_n_0,
      O => dbg_overflow_1_INST_0_i_6_n_0
    );
dbg_overflow_1_INST_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(12),
      I1 => p_0_in3_in(6),
      O => dbg_overflow_1_INST_0_i_7_n_0
    );
dbg_overflow_1_INST_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(11),
      I1 => p_0_in3_in(5),
      O => dbg_overflow_1_INST_0_i_8_n_0
    );
dbg_overflow_1_INST_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^apu_pulse1_out\(10),
      I1 => p_0_in3_in(4),
      O => dbg_overflow_1_INST_0_i_9_n_0
    );
dbg_overflow_2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Reset,
      I1 => CPU_Rst,
      I2 => Pulse2_Target02_out(11),
      I3 => \^apu_pulse2_out\(30),
      O => dbg_overflow_2
    );
\procFrameCounter.counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(3),
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => \procFrameCounter.counter[0]_i_2_n_0\
    );
\procFrameCounter.counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(2),
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => \procFrameCounter.counter[0]_i_3_n_0\
    );
\procFrameCounter.counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(1),
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => \procFrameCounter.counter[0]_i_4_n_0\
    );
\procFrameCounter.counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EEFE"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => \procFrameCounter.counter_reg\(0),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[0]_i_5_n_0\
    );
\procFrameCounter.counter[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(14),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_2_n_0\
    );
\procFrameCounter.counter[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(13),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_3_n_0\
    );
\procFrameCounter.counter[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(12),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBAAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => \^apu_counter_reg[mode]_0\,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Quarter_CE2(7),
      O => \procFrameCounter.counter[4]_i_2_n_0\
    );
\procFrameCounter.counter[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(6),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_3_n_0\
    );
\procFrameCounter.counter[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(5),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(4),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_5_n_0\
    );
\procFrameCounter.counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEAEAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(11),
      I2 => \^apu_counter_reg[mode]_0\,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE_i_4_n_0,
      I5 => APU_Quarter_CE_i_5_n_0,
      O => \procFrameCounter.counter[8]_i_2_n_0\
    );
\procFrameCounter.counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBAAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => \^apu_counter_reg[mode]_0\,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Quarter_CE2(10),
      O => \procFrameCounter.counter[8]_i_3_n_0\
    );
\procFrameCounter.counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBAAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => \^apu_counter_reg[mode]_0\,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Quarter_CE2(9),
      O => \procFrameCounter.counter[8]_i_4_n_0\
    );
\procFrameCounter.counter[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => APU_Quarter_CE_i_5_n_0,
      I1 => APU_Quarter_CE_i_4_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => \^apu_counter_reg[mode]_0\,
      I4 => APU_Quarter_CE2(8),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[8]_i_5_n_0\
    );
\procFrameCounter.counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(10)
    );
\procFrameCounter.counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(11)
    );
\procFrameCounter.counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[12]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(13)
    );
\procFrameCounter.counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[12]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(14)
    );
\procFrameCounter.counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(1)
    );
\procFrameCounter.counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(2)
    );
\procFrameCounter.counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[0]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(3)
    );
\procFrameCounter.counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(5)
    );
\procFrameCounter.counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_5\,
      Q => \procFrameCounter.counter_reg\(6)
    );
\procFrameCounter.counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[4]_i_1_n_4\,
      Q => \procFrameCounter.counter_reg\(7)
    );
\procFrameCounter.counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_tick\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(9)
    );
\procMainLogic.pulse1_envelope_divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BB88BB88BA"
    )
        port map (
      I0 => \^apu_pulse1_out\(45),
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
      I0 => \^apu_pulse1_out\(46),
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
      I1 => \^apu_pulse1_out\(47),
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
      I1 => \^apu_pulse1_out\(48),
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.pulse1_envelope_divider[3]_i_1_n_0\,
      Q => pulse1_envelope_divider(3)
    );
\procMainLogic.pulse1_envelope_start_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_5_n_0\,
      I1 => \^dbg_apu_qtr\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      I5 => \^apu_pulse1_out\(37),
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
      I5 => \^apu_pulse1_out\(38),
      O => \procMainLogic.pulse1_sweep_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse1_sweep_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABA8A8A8A8AA"
    )
        port map (
      I0 => \^apu_pulse1_out\(39),
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      I2 => \^dbg_apu_half\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.pulse1_sweep_reload_i_1_n_0\,
      Q => \procMainLogic.pulse1_sweep_reload_reg_n_0\
    );
\procMainLogic.pulse2_envelope_divider[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0001"
    )
        port map (
      I0 => pulse2_envelope_divider(0),
      I1 => \APU_Pulse2[timer_load]\(10),
      I2 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I3 => \APU_Pulse2[volume][3]_i_3_n_0\,
      I4 => \^apu_pulse2_out\(39),
      O => \procMainLogic.pulse2_envelope_divider[0]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF900000009"
    )
        port map (
      I0 => pulse2_envelope_divider(1),
      I1 => pulse2_envelope_divider(0),
      I2 => \APU_Pulse2[timer_load]\(10),
      I3 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I4 => \APU_Pulse2[volume][3]_i_3_n_0\,
      I5 => \^apu_pulse2_out\(40),
      O => \procMainLogic.pulse2_envelope_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F1F1E0E0F0F1E0"
    )
        port map (
      I0 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I1 => \APU_Pulse2[timer_load]\(10),
      I2 => \^apu_pulse2_out\(41),
      I3 => pulse2_envelope_divider(2),
      I4 => \procMainLogic.pulse2_envelope_divider[2]_i_2_n_0\,
      I5 => pulse2_envelope_divider(3),
      O => \procMainLogic.pulse2_envelope_divider[2]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse2_envelope_divider(1),
      I1 => pulse2_envelope_divider(0),
      O => \procMainLogic.pulse2_envelope_divider[2]_i_2_n_0\
    );
\procMainLogic.pulse2_envelope_divider[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAABA8"
    )
        port map (
      I0 => \^apu_pulse2_out\(42),
      I1 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I2 => \APU_Pulse2[timer_load]\(10),
      I3 => pulse2_envelope_divider(3),
      I4 => \procMainLogic.pulse2_envelope_divider[3]_i_2_n_0\,
      O => \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\
    );
\procMainLogic.pulse2_envelope_divider[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => pulse2_envelope_divider(0),
      I1 => pulse2_envelope_divider(1),
      I2 => pulse2_envelope_divider(2),
      O => \procMainLogic.pulse2_envelope_divider[3]_i_2_n_0\
    );
\procMainLogic.pulse2_envelope_divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_qtr\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.pulse2_envelope_divider[3]_i_1_n_0\,
      Q => pulse2_envelope_divider(3)
    );
\procMainLogic.pulse2_envelope_start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \APU_Pulse2[timer_load]\(10),
      I1 => \procMainLogic.pulse2_envelope_start_reg_n_0\,
      I2 => \^dbg_apu_qtr\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      I5 => \^apu_pulse2_out\(31),
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
      I5 => \^apu_pulse2_out\(32),
      O => \procMainLogic.pulse2_sweep_divider[1]_i_1_n_0\
    );
\procMainLogic.pulse2_sweep_divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABA8A8A8A8AA"
    )
        port map (
      I0 => \^apu_pulse2_out\(33),
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      CE => \^dbg_apu_half\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
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
      I2 => \^dbg_apu_half\,
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.pulse2_sweep_reload_i_1_n_0\,
      Q => \procMainLogic.pulse2_sweep_reload_reg_n_0\
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
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 52 downto 0 );
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 52 downto 0 );
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 41 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    APU_Status_Out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dbg_apu_tick : out STD_LOGIC;
    dbg_apu_half : out STD_LOGIC;
    dbg_apu_qtr : out STD_LOGIC;
    dbg_overflow_1 : out STD_LOGIC;
    dbg_overflow_2 : out STD_LOGIC
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
  signal \^apu_pulse1_message\ : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal \^apu_pulse1_out\ : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal \^apu_pulse2_message\ : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal \^apu_pulse2_out\ : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal \^apu_status_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^apu_triangle_out\ : STD_LOGIC_VECTOR ( 41 downto 11 );
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
  APU_Pulse1_Message(18 downto 3) <= \^apu_pulse1_message\(18 downto 3);
  APU_Pulse1_Message(2) <= \<const0>\;
  APU_Pulse1_Message(1) <= \<const0>\;
  APU_Pulse1_Message(0) <= \<const0>\;
  APU_Pulse1_Out(52 downto 17) <= \^apu_pulse1_out\(52 downto 17);
  APU_Pulse1_Out(16 downto 6) <= \^apu_pulse1_message\(14 downto 4);
  APU_Pulse1_Out(5 downto 0) <= \^apu_pulse1_out\(5 downto 0);
  APU_Pulse2_Message(18 downto 3) <= \^apu_pulse2_message\(18 downto 3);
  APU_Pulse2_Message(2) <= \<const0>\;
  APU_Pulse2_Message(1) <= \<const0>\;
  APU_Pulse2_Message(0) <= \<const1>\;
  APU_Pulse2_Out(52 downto 17) <= \^apu_pulse2_out\(52 downto 17);
  APU_Pulse2_Out(16 downto 6) <= \^apu_pulse2_message\(14 downto 4);
  APU_Pulse2_Out(5 downto 0) <= \^apu_pulse2_out\(5 downto 0);
  APU_Status_Out(6) <= \<const0>\;
  APU_Status_Out(5) <= \<const0>\;
  APU_Status_Out(4 downto 0) <= \^apu_status_out\(4 downto 0);
  APU_Triangle_Out(41 downto 11) <= \^apu_triangle_out\(41 downto 11);
  APU_Triangle_Out(10) <= \<const0>\;
  APU_Triangle_Out(9) <= \<const0>\;
  APU_Triangle_Out(8) <= \<const0>\;
  APU_Triangle_Out(7) <= \<const0>\;
  APU_Triangle_Out(6) <= \<const0>\;
  APU_Triangle_Out(5) <= \<const0>\;
  APU_Triangle_Out(4) <= \<const0>\;
  APU_Triangle_Out(3) <= \<const0>\;
  APU_Triangle_Out(2) <= \<const0>\;
  APU_Triangle_Out(1) <= \<const0>\;
  APU_Triangle_Out(0) <= \<const0>\;
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
      APU_Counter_Out(0) => APU_Counter_Out(0),
      \APU_Counter_reg[mode]_0\ => APU_Counter_Out(1),
      APU_DMC_Out(28 downto 0) => APU_DMC_Out(28 downto 0),
      APU_Noise_Out(15 downto 0) => APU_Noise_Out(15 downto 0),
      APU_Pulse1_Message(4 downto 1) => \^apu_pulse1_message\(18 downto 15),
      APU_Pulse1_Message(0) => \^apu_pulse1_message\(3),
      APU_Pulse1_Out(52 downto 17) => \^apu_pulse1_out\(52 downto 17),
      APU_Pulse1_Out(16 downto 6) => \^apu_pulse1_message\(14 downto 4),
      APU_Pulse1_Out(5 downto 0) => \^apu_pulse1_out\(5 downto 0),
      APU_Pulse2_Message(4 downto 1) => \^apu_pulse2_message\(18 downto 15),
      APU_Pulse2_Message(0) => \^apu_pulse2_message\(3),
      APU_Pulse2_Out(46 downto 30) => \^apu_pulse2_out\(52 downto 36),
      APU_Pulse2_Out(29 downto 14) => \^apu_pulse2_out\(32 downto 17),
      APU_Pulse2_Out(13 downto 6) => \^apu_pulse2_message\(11 downto 4),
      APU_Pulse2_Out(5 downto 0) => \^apu_pulse2_out\(5 downto 0),
      \APU_Pulse2_reg[timer][10]_0\ => \^apu_pulse2_message\(14),
      \APU_Pulse2_reg[timer][8]_0\ => \^apu_pulse2_message\(12),
      \APU_Pulse2_reg[timer][9]_0\ => \^apu_pulse2_message\(13),
      APU_Status_Out(4 downto 0) => \^apu_status_out\(4 downto 0),
      APU_Triangle_Out(30 downto 0) => \^apu_triangle_out\(41 downto 11),
      CPU_Addr(14 downto 0) => CPU_Addr(14 downto 0),
      CPU_Data(7 downto 0) => CPU_Data(7 downto 0),
      CPU_M2 => CPU_M2,
      CPU_RW => CPU_RW,
      CPU_RomSel => CPU_RomSel,
      CPU_Rst => CPU_Rst,
      Q(2 downto 0) => \^apu_pulse2_out\(35 downto 33),
      Reset => Reset,
      dbg_apu_half => dbg_apu_half,
      dbg_apu_qtr => dbg_apu_qtr,
      dbg_apu_tick => dbg_apu_tick,
      dbg_overflow_1 => dbg_overflow_1,
      dbg_overflow_2 => dbg_overflow_2
    );
end STRUCTURE;
