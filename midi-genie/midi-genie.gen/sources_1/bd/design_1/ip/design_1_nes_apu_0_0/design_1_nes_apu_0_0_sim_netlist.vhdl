-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Tue Feb 13 16:00:40 2024
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
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 35 downto 0 );
    APU_Status_Out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \APU_Pulse2_reg[length_counter][5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 35 downto 0 );
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \APU_Counter_reg[mode]_0\ : out STD_LOGIC;
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 4 downto 0 );
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 4 downto 0 );
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 0 to 0 );
    CPU_M2 : in STD_LOGIC;
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_Rst : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_RW : in STD_LOGIC;
    CPU_RomSel : in STD_LOGIC
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
  signal \APU_DMC[load_counter]\ : STD_LOGIC;
  signal \APU_DMC[sample_address]\ : STD_LOGIC;
  signal \APU_DMC[sample_length]\ : STD_LOGIC;
  signal APU_Half_CE14_out : STD_LOGIC;
  signal APU_Half_CE_i_10_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_11_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_12_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_13_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_14_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_2_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_3_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_4_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_5_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_6_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_7_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_8_n_0 : STD_LOGIC;
  signal APU_Half_CE_i_9_n_0 : STD_LOGIC;
  signal APU_Half_CE_reg_n_0 : STD_LOGIC;
  signal \APU_Noise[length_counter]\ : STD_LOGIC;
  signal \APU_Noise[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Noise[loop_noise]\ : STD_LOGIC;
  signal \APU_Pulse1[duty]\ : STD_LOGIC;
  signal \APU_Pulse1[duty]1__0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter]1__0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][0]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_10_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_7_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_8_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter][5]_i_9_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load]\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load][4]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load][4]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[length_counter_load][4]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][7]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][7]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][7]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer_load][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume]\ : STD_LOGIC;
  signal \APU_Pulse1[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[volume][3]_i_6_n_0\ : STD_LOGIC;
  signal \^apu_pulse1_out\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \APU_Pulse2[duty]\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter]1__0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][0]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][0]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][2]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][3]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][4]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][4]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_5_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter][5]_i_6_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[length_counter_load]\ : STD_LOGIC;
  signal \APU_Pulse2[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer_load][9]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume]\ : STD_LOGIC;
  signal \APU_Pulse2[volume][0]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][1]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][2]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[volume][3]_i_6_n_0\ : STD_LOGIC;
  signal \^apu_pulse2_out\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \^apu_pulse2_reg[length_counter][5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal APU_Quarter_CE : STD_LOGIC;
  signal APU_Quarter_CE10_out : STD_LOGIC;
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
  signal APU_Tick_CE : STD_LOGIC;
  signal \APU_Triangle[length_counter]\ : STD_LOGIC;
  signal \APU_Triangle[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][8]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer_load][9]_i_1_n_0\ : STD_LOGIC;
  signal \^apu_triangle_out\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal Pulse1_Envelope_Divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Pulse1_Envelope_Start__0\ : STD_LOGIC;
  signal Pulse2_Envelope_Divider : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Pulse2_Envelope_Start__0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC;
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
  signal \procMainLogic.Pulse1_Envelope_Divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse1_Envelope_Divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse1_Envelope_Divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse1_Envelope_Divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse1_Envelope_Start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse1_Envelope_Start_reg_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Divider[0]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Divider[1]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Divider[2]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Divider[3]_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Start_i_1_n_0\ : STD_LOGIC;
  signal \procMainLogic.Pulse2_Envelope_Start_reg_n_0\ : STD_LOGIC;
  signal \NLW_APU_Quarter_CE2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_APU_Quarter_CE2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_procFrameCounter.counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \APU_Counter[mode]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of APU_Half_CE_i_10 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of APU_Half_CE_i_11 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of APU_Half_CE_i_13 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of APU_Half_CE_i_14 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of APU_Half_CE_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of APU_Half_CE_i_7 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of APU_Half_CE_i_8 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of APU_Half_CE_i_9 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \APU_Pulse1[duty][1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][0]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter][5]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter_load][4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter_load][4]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter_load][4]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \APU_Pulse1[length_counter_load][4]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer_load][9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \APU_Pulse1[volume][3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[15]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[16]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[17]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \APU_Pulse1_Message[18]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[length_counter][5]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer_load][10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer_load][8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \APU_Pulse2[timer_load][9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \APU_Pulse2[volume][3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[15]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[16]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[17]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \APU_Pulse2_Message[18]_INST_0\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of APU_Quarter_CE2_carry : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \APU_Quarter_CE2_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \APU_Triangle[timer_load][10]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \APU_Triangle[timer_load][10]_i_3\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \procFrameCounter.counter_reg[8]_i_1\ : label is 11;
begin
  APU_Counter_Out(0) <= \^apu_counter_out\(0);
  \APU_Counter_reg[mode]_0\ <= \^apu_counter_reg[mode]_0\;
  APU_Pulse1_Out(35 downto 0) <= \^apu_pulse1_out\(35 downto 0);
  APU_Pulse2_Out(35 downto 0) <= \^apu_pulse2_out\(35 downto 0);
  \APU_Pulse2_reg[length_counter][5]_0\(5 downto 0) <= \^apu_pulse2_reg[length_counter][5]_0\(5 downto 0);
  APU_Status_Out(4 downto 0) <= \^apu_status_out\(4 downto 0);
  APU_Triangle_Out(30 downto 0) <= \^apu_triangle_out\(30 downto 0);
  Q(5 downto 0) <= \^q\(5 downto 0);
\APU_Counter[irq_inhibit]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => CPU_Data(6),
      I1 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => CPU_Addr(2),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => \^apu_counter_out\(0),
      O => \APU_Counter[irq_inhibit]_i_1_n_0\
    );
\APU_Counter[mode]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => CPU_Addr(2),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => \^apu_counter_reg[mode]_0\,
      O => \APU_Counter[mode]_i_1_n_0\
    );
\APU_Counter[mode]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => CPU_Addr(3),
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
      INIT => X"0000001000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_DMC[irq_enable]\
    );
\APU_DMC[load_counter][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(3),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_DMC[load_counter]\
    );
\APU_DMC[sample_address][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_DMC[sample_address]\
    );
\APU_DMC[sample_length][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(0),
      I4 => CPU_Addr(3),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
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
      I4 => APU_Tick_CE,
      I5 => APU_Half_CE_i_6_n_0,
      O => APU_Half_CE14_out
    );
APU_Half_CE_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(12),
      I1 => \procFrameCounter.counter_reg\(9),
      I2 => \procFrameCounter.counter_reg\(6),
      I3 => \procFrameCounter.counter_reg\(14),
      O => APU_Half_CE_i_10_n_0
    );
APU_Half_CE_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(11),
      I1 => \procFrameCounter.counter_reg\(13),
      I2 => \procFrameCounter.counter_reg\(0),
      I3 => \procFrameCounter.counter_reg\(3),
      I4 => \procFrameCounter.counter_reg\(2),
      O => APU_Half_CE_i_11_n_0
    );
APU_Half_CE_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(6),
      I1 => \procFrameCounter.counter_reg\(14),
      O => APU_Half_CE_i_12_n_0
    );
APU_Half_CE_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(14),
      I1 => \procFrameCounter.counter_reg\(6),
      I2 => \procFrameCounter.counter_reg\(10),
      O => APU_Half_CE_i_13_n_0
    );
APU_Half_CE_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(9),
      I1 => \procFrameCounter.counter_reg\(7),
      I2 => \procFrameCounter.counter_reg\(4),
      I3 => \procFrameCounter.counter_reg\(8),
      I4 => \procFrameCounter.counter_reg\(12),
      O => APU_Half_CE_i_14_n_0
    );
APU_Half_CE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFD00FDFDFDFD"
    )
        port map (
      I0 => APU_Half_CE_i_7_n_0,
      I1 => APU_Half_CE_i_8_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Half_CE_i_9_n_0,
      I4 => APU_Half_CE_i_10_n_0,
      I5 => APU_Half_CE_i_11_n_0,
      O => APU_Half_CE_i_2_n_0
    );
APU_Half_CE_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(10),
      I1 => \procFrameCounter.counter_reg\(8),
      I2 => \procFrameCounter.counter_reg\(4),
      O => APU_Half_CE_i_3_n_0
    );
APU_Half_CE_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => APU_Half_CE_i_8_n_0,
      I1 => \procFrameCounter.counter_reg\(5),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => \procFrameCounter.counter_reg\(0),
      I4 => \procFrameCounter.counter_reg\(10),
      I5 => APU_Half_CE_i_12_n_0,
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
APU_Half_CE_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => APU_Half_CE_i_13_n_0,
      I1 => \procFrameCounter.counter_reg\(0),
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => \procFrameCounter.counter_reg\(5),
      I4 => APU_Half_CE_i_8_n_0,
      I5 => APU_Half_CE_i_14_n_0,
      O => APU_Half_CE_i_6_n_0
    );
APU_Half_CE_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(1),
      I2 => \procFrameCounter.counter_reg\(0),
      O => APU_Half_CE_i_7_n_0
    );
APU_Half_CE_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(11),
      I1 => \procFrameCounter.counter_reg\(13),
      I2 => \procFrameCounter.counter_reg\(3),
      I3 => \procFrameCounter.counter_reg\(2),
      O => APU_Half_CE_i_8_n_0
    );
APU_Half_CE_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(1),
      I1 => \procFrameCounter.counter_reg\(7),
      I2 => \procFrameCounter.counter_reg\(5),
      I3 => \^apu_counter_reg[mode]_0\,
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
      D => APU_Half_CE14_out,
      Q => APU_Half_CE_reg_n_0
    );
\APU_Noise[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Noise[length_counter]\
    );
\APU_Noise[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => CPU_Addr(2),
      O => \APU_Noise[length_counter_halt]\
    );
\APU_Noise[loop_noise]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(0),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Noise[loop_noise]\
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
      INIT => X"0000000100000000"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(3),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Pulse1[duty]\
    );
\APU_Pulse1[duty][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CPU_Rst,
      I1 => Reset,
      O => \APU_Pulse1[duty][1]_i_2_n_0\
    );
\APU_Pulse1[duty][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => CPU_RW,
      I1 => CPU_RomSel,
      I2 => CPU_Addr(11),
      I3 => CPU_Addr(12),
      I4 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I5 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      O => \APU_Pulse1[duty][1]_i_3_n_0\
    );
\APU_Pulse1[duty][1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => CPU_Addr(7),
      I1 => CPU_Addr(5),
      I2 => CPU_Addr(6),
      O => \APU_Pulse1[duty][1]_i_4_n_0\
    );
\APU_Pulse1[length_counter][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F4F4F4FFF4F4F4"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => \APU_Pulse1[length_counter][0]_i_2_n_0\,
      I2 => \APU_Pulse1[length_counter][0]_i_3_n_0\,
      I3 => APU_Half_CE_reg_n_0,
      I4 => \APU_Pulse1[length_counter]1__0\,
      I5 => \^q\(0),
      O => \APU_Pulse1[length_counter][0]_i_1_n_0\
    );
\APU_Pulse1[length_counter][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^apu_status_out\(0),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][0]_i_2_n_0\
    );
\APU_Pulse1[length_counter][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][0]_i_3_n_0\
    );
\APU_Pulse1[length_counter][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7FF8200"
    )
        port map (
      I0 => \APU_Pulse1[length_counter]1__0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => APU_Half_CE_reg_n_0,
      I4 => \APU_Pulse1[length_counter][1]_i_2_n_0\,
      O => \APU_Pulse1[length_counter][1]_i_1_n_0\
    );
\APU_Pulse1[length_counter][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF600060"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Data(4),
      I2 => \^apu_status_out\(0),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(0),
      O => \APU_Pulse1[length_counter][1]_i_2_n_0\
    );
\APU_Pulse1[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD57FFFFA8020000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter]1__0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse1[length_counter][2]_i_2_n_0\,
      O => \APU_Pulse1[length_counter][2]_i_1_n_0\
    );
\APU_Pulse1[length_counter][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF780000007800"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Data(4),
      I2 => CPU_Data(5),
      I3 => \^apu_status_out\(0),
      I4 => CPU_Addr(4),
      I5 => CPU_Data(0),
      O => \APU_Pulse1[length_counter][2]_i_2_n_0\
    );
\APU_Pulse1[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD57FFFFA8020000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter]1__0\,
      I1 => \^q\(2),
      I2 => \APU_Pulse1[length_counter][3]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse1[length_counter][3]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][3]_i_1_n_0\
    );
\APU_Pulse1[length_counter][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \APU_Pulse1[length_counter][3]_i_2_n_0\
    );
\APU_Pulse1[length_counter][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F800000"
    )
        port map (
      I0 => CPU_Data(4),
      I1 => CPU_Data(3),
      I2 => CPU_Data(5),
      I3 => CPU_Data(6),
      I4 => \APU_Pulse1[length_counter][0]_i_2_n_0\,
      I5 => \APU_Pulse1[length_counter][0]_i_3_n_0\,
      O => \APU_Pulse1[length_counter][3]_i_3_n_0\
    );
\APU_Pulse1[length_counter][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B7FF8400"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_8_n_0\,
      I1 => \APU_Pulse1[length_counter]1__0\,
      I2 => \^q\(4),
      I3 => APU_Half_CE_reg_n_0,
      I4 => \APU_Pulse1[length_counter][4]_i_2_n_0\,
      O => \APU_Pulse1[length_counter][4]_i_1_n_0\
    );
\APU_Pulse1[length_counter][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF600060"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_10_n_0\,
      I1 => CPU_Data(7),
      I2 => \^apu_status_out\(0),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(0),
      O => \APU_Pulse1[length_counter][4]_i_2_n_0\
    );
\APU_Pulse1[length_counter][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => APU_Half_CE_reg_n_0,
      I1 => \APU_Pulse1[length_counter]1__0\,
      I2 => \APU_Pulse1[length_counter][5]_i_4_n_0\,
      I3 => \APU_Pulse1[length_counter][5]_i_5_n_0\,
      I4 => \APU_Pulse1[length_counter][5]_i_6_n_0\,
      I5 => \APU_Pulse1[length_counter][5]_i_7_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_1_n_0\
    );
\APU_Pulse1[length_counter][5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => CPU_Data(6),
      I1 => CPU_Data(4),
      I2 => CPU_Data(3),
      I3 => CPU_Data(5),
      O => \APU_Pulse1[length_counter][5]_i_10_n_0\
    );
\APU_Pulse1[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF1FFFFFE0100000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_8_n_0\,
      I1 => \^q\(4),
      I2 => \APU_Pulse1[length_counter]1__0\,
      I3 => \^q\(5),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse1[length_counter][5]_i_9_n_0\,
      O => \APU_Pulse1[length_counter][5]_i_2_n_0\
    );
\APU_Pulse1[length_counter][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \APU_Pulse1[length_counter][3]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \^apu_pulse1_out\(33),
      O => \APU_Pulse1[length_counter]1__0\
    );
\APU_Pulse1[length_counter][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(1),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][5]_i_4_n_0\
    );
\APU_Pulse1[length_counter][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I2 => CPU_Addr(12),
      I3 => CPU_Addr(11),
      I4 => \APU_Pulse1[duty]1__0\,
      I5 => CPU_Addr(3),
      O => \APU_Pulse1[length_counter][5]_i_5_n_0\
    );
\APU_Pulse1[length_counter][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      I3 => \APU_Pulse1[length_counter_load][4]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I5 => CPU_Addr(1),
      O => \APU_Pulse1[length_counter][5]_i_6_n_0\
    );
\APU_Pulse1[length_counter][5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Data(0),
      I3 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter][5]_i_7_n_0\
    );
\APU_Pulse1[length_counter][5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \APU_Pulse1[length_counter][5]_i_8_n_0\
    );
\APU_Pulse1[length_counter][5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_10_n_0\,
      I1 => \^apu_status_out\(0),
      I2 => CPU_Data(7),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(0),
      O => \APU_Pulse1[length_counter][5]_i_9_n_0\
    );
\APU_Pulse1[length_counter_load][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => \APU_Pulse1[length_counter_load][4]_i_3_n_0\,
      I2 => \APU_Pulse1[duty]1__0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_5_n_0\,
      I4 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I5 => CPU_Addr(2),
      O => \APU_Pulse1[length_counter_load]\
    );
\APU_Pulse1[length_counter_load][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => CPU_Addr(8),
      I1 => CPU_Addr(13),
      I2 => CPU_Addr(14),
      I3 => CPU_Addr(9),
      I4 => CPU_Addr(10),
      O => \APU_Pulse1[length_counter_load][4]_i_2_n_0\
    );
\APU_Pulse1[length_counter_load][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => CPU_Addr(11),
      I1 => CPU_Addr(12),
      I2 => CPU_Addr(6),
      I3 => CPU_Addr(5),
      I4 => CPU_Addr(7),
      O => \APU_Pulse1[length_counter_load][4]_i_3_n_0\
    );
\APU_Pulse1[length_counter_load][4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPU_RomSel,
      I1 => CPU_RW,
      O => \APU_Pulse1[duty]1__0\
    );
\APU_Pulse1[length_counter_load][4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      O => \APU_Pulse1[length_counter_load][4]_i_5_n_0\
    );
\APU_Pulse1[length_counter_load][4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(0),
      O => \APU_Pulse1[length_counter_load][4]_i_6_n_0\
    );
\APU_Pulse1[sweep_enable]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Pulse1[sweep_enable]\
    );
\APU_Pulse1[timer_load][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse1[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse1_out\(15),
      O => \APU_Pulse1[timer_load][10]_i_1_n_0\
    );
\APU_Pulse1[timer_load][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I1 => \APU_Pulse1[duty]1__0\,
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(3),
      I4 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I5 => \APU_Pulse1[timer_load][7]_i_4_n_0\,
      O => \APU_Pulse1[timer_load][10]_i_2_n_0\
    );
\APU_Pulse1[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(2),
      I2 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I3 => \APU_Pulse1[timer_load][7]_i_3_n_0\,
      I4 => CPU_Addr(3),
      I5 => \APU_Pulse1[timer_load][7]_i_4_n_0\,
      O => \APU_Pulse1[timer_load][7]_i_1_n_0\
    );
\APU_Pulse1[timer_load][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CPU_Addr(11),
      I1 => CPU_Addr(10),
      I2 => CPU_Addr(9),
      I3 => CPU_Addr(8),
      I4 => CPU_Addr(12),
      I5 => CPU_Addr(13),
      O => \APU_Pulse1[timer_load][7]_i_2_n_0\
    );
\APU_Pulse1[timer_load][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      O => \APU_Pulse1[timer_load][7]_i_3_n_0\
    );
\APU_Pulse1[timer_load][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => CPU_Addr(14),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(7),
      I3 => CPU_Addr(5),
      I4 => CPU_Addr(6),
      O => \APU_Pulse1[timer_load][7]_i_4_n_0\
    );
\APU_Pulse1[timer_load][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse1[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse1_out\(13),
      O => \APU_Pulse1[timer_load][8]_i_1_n_0\
    );
\APU_Pulse1[timer_load][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse1[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse1_out\(14),
      O => \APU_Pulse1[timer_load][9]_i_1_n_0\
    );
\APU_Pulse1[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAE"
    )
        port map (
      I0 => \Pulse1_Envelope_Start__0\,
      I1 => \^apu_pulse1_out\(33),
      I2 => \^apu_pulse1_out\(24),
      I3 => \^apu_pulse1_out\(25),
      I4 => \^apu_pulse1_out\(27),
      I5 => \^apu_pulse1_out\(26),
      O => \APU_Pulse1[volume][0]_i_1_n_0\
    );
\APU_Pulse1[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCCCCCCFFFE"
    )
        port map (
      I0 => \^apu_pulse1_out\(33),
      I1 => \Pulse1_Envelope_Start__0\,
      I2 => \^apu_pulse1_out\(26),
      I3 => \^apu_pulse1_out\(27),
      I4 => \^apu_pulse1_out\(25),
      I5 => \^apu_pulse1_out\(24),
      O => \APU_Pulse1[volume][1]_i_1_n_0\
    );
\APU_Pulse1[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCCCCFCCCE"
    )
        port map (
      I0 => \^apu_pulse1_out\(33),
      I1 => \Pulse1_Envelope_Start__0\,
      I2 => \^apu_pulse1_out\(24),
      I3 => \^apu_pulse1_out\(25),
      I4 => \^apu_pulse1_out\(27),
      I5 => \^apu_pulse1_out\(26),
      O => \APU_Pulse1[volume][2]_i_1_n_0\
    );
\APU_Pulse1[volume][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_3_n_0\,
      I1 => \^apu_pulse1_out\(33),
      I2 => \APU_Pulse1[volume][3]_i_4_n_0\,
      I3 => \Pulse1_Envelope_Start__0\,
      I4 => APU_Quarter_CE,
      O => \APU_Pulse1[volume]\
    );
\APU_Pulse1[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCCCCCCCCE"
    )
        port map (
      I0 => \^apu_pulse1_out\(33),
      I1 => \Pulse1_Envelope_Start__0\,
      I2 => \^apu_pulse1_out\(25),
      I3 => \^apu_pulse1_out\(24),
      I4 => \^apu_pulse1_out\(26),
      I5 => \^apu_pulse1_out\(27),
      O => \APU_Pulse1[volume][3]_i_2_n_0\
    );
\APU_Pulse1[volume][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse1_out\(26),
      I1 => \^apu_pulse1_out\(27),
      I2 => \^apu_pulse1_out\(25),
      I3 => \^apu_pulse1_out\(24),
      O => \APU_Pulse1[volume][3]_i_3_n_0\
    );
\APU_Pulse1[volume][3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => Pulse1_Envelope_Divider(2),
      I2 => Pulse1_Envelope_Divider(3),
      I3 => Pulse1_Envelope_Divider(0),
      I4 => Pulse1_Envelope_Divider(1),
      O => \APU_Pulse1[volume][3]_i_4_n_0\
    );
\APU_Pulse1[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \APU_Pulse1[volume][3]_i_6_n_0\,
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      I3 => \APU_Pulse1[length_counter_load][4]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I5 => \procMainLogic.Pulse1_Envelope_Start_reg_n_0\,
      O => \Pulse1_Envelope_Start__0\
    );
\APU_Pulse1[volume][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(1),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(4),
      I4 => CPU_Addr(3),
      O => \APU_Pulse1[volume][3]_i_6_n_0\
    );
\APU_Pulse1_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(28),
      I1 => \^apu_pulse1_out\(32),
      I2 => \^apu_pulse1_out\(24),
      O => APU_Pulse1_Message(1)
    );
\APU_Pulse1_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(29),
      I1 => \^apu_pulse1_out\(32),
      I2 => \^apu_pulse1_out\(25),
      O => APU_Pulse1_Message(2)
    );
\APU_Pulse1_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(30),
      I1 => \^apu_pulse1_out\(32),
      I2 => \^apu_pulse1_out\(26),
      O => APU_Pulse1_Message(3)
    );
\APU_Pulse1_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse1_out\(31),
      I1 => \^apu_pulse1_out\(32),
      I2 => \^apu_pulse1_out\(27),
      O => APU_Pulse1_Message(4)
    );
\APU_Pulse1_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => APU_Pulse1_Message(0)
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
      Q => \^apu_pulse1_out\(32)
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
      Q => \^apu_pulse1_out\(34)
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
      Q => \^apu_pulse1_out\(35)
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
      Q => \^apu_pulse1_out\(28)
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
      Q => \^apu_pulse1_out\(29)
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
      Q => \^apu_pulse1_out\(30)
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
      Q => \^apu_pulse1_out\(31)
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
      Q => \^q\(0)
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
      Q => \^q\(1)
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
      Q => \^q\(2)
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
      Q => \^q\(3)
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
      Q => \^q\(4)
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
      Q => \^q\(5)
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
      Q => \^apu_pulse1_out\(33)
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
      Q => \^apu_pulse1_out\(0)
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
      Q => \^apu_pulse1_out\(1)
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
      Q => \^apu_pulse1_out\(2)
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
      Q => \^apu_pulse1_out\(3)
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
      Q => \^apu_pulse1_out\(4)
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
      Q => \^apu_pulse1_out\(23)
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
      Q => \^apu_pulse1_out\(19)
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
      Q => \^apu_pulse1_out\(20)
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
      Q => \^apu_pulse1_out\(21)
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
      Q => \^apu_pulse1_out\(22)
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
      Q => \^apu_pulse1_out\(16)
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
      Q => \^apu_pulse1_out\(17)
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
      Q => \^apu_pulse1_out\(18)
    );
\APU_Pulse1_reg[timer_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse1_out\(5)
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
      Q => \^apu_pulse1_out\(15)
    );
\APU_Pulse1_reg[timer_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse1_out\(6)
    );
\APU_Pulse1_reg[timer_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse1_out\(7)
    );
\APU_Pulse1_reg[timer_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse1_out\(8)
    );
\APU_Pulse1_reg[timer_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse1_out\(9)
    );
\APU_Pulse1_reg[timer_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse1_out\(10)
    );
\APU_Pulse1_reg[timer_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse1_out\(11)
    );
\APU_Pulse1_reg[timer_load][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse1_out\(12)
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
      Q => \^apu_pulse1_out\(13)
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
      Q => \^apu_pulse1_out\(14)
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
      Q => \^apu_pulse1_out\(24)
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
      Q => \^apu_pulse1_out\(25)
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
      Q => \^apu_pulse1_out\(26)
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
      Q => \^apu_pulse1_out\(27)
    );
\APU_Pulse2[duty][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => CPU_Addr(2),
      O => \APU_Pulse2[duty]\
    );
\APU_Pulse2[length_counter][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F4F4F4FFF4F4F4"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => \APU_Pulse2[length_counter][0]_i_2_n_0\,
      I2 => \APU_Pulse2[length_counter][0]_i_3_n_0\,
      I3 => \APU_Pulse2[length_counter]1__0\,
      I4 => APU_Half_CE_reg_n_0,
      I5 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      O => \APU_Pulse2[length_counter][0]_i_1_n_0\
    );
\APU_Pulse2[length_counter][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^apu_status_out\(1),
      I1 => CPU_Addr(4),
      O => \APU_Pulse2[length_counter][0]_i_2_n_0\
    );
\APU_Pulse2[length_counter][0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => CPU_Addr(4),
      O => \APU_Pulse2[length_counter][0]_i_3_n_0\
    );
\APU_Pulse2[length_counter][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7FF8200"
    )
        port map (
      I0 => \APU_Pulse2[length_counter]1__0\,
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(1),
      I3 => APU_Half_CE_reg_n_0,
      I4 => \APU_Pulse2[length_counter][1]_i_2_n_0\,
      O => \APU_Pulse2[length_counter][1]_i_1_n_0\
    );
\APU_Pulse2[length_counter][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF600060"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Data(4),
      I2 => \^apu_status_out\(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(1),
      O => \APU_Pulse2[length_counter][1]_i_2_n_0\
    );
\APU_Pulse2[length_counter][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD57FFFFA8020000"
    )
        port map (
      I0 => \APU_Pulse2[length_counter]1__0\,
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(1),
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(2),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse2[length_counter][2]_i_2_n_0\,
      O => \APU_Pulse2[length_counter][2]_i_1_n_0\
    );
\APU_Pulse2[length_counter][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF780000007800"
    )
        port map (
      I0 => CPU_Data(3),
      I1 => CPU_Data(4),
      I2 => CPU_Data(5),
      I3 => \^apu_status_out\(1),
      I4 => CPU_Addr(4),
      I5 => CPU_Data(1),
      O => \APU_Pulse2[length_counter][2]_i_2_n_0\
    );
\APU_Pulse2[length_counter][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD57FFFFA8020000"
    )
        port map (
      I0 => \APU_Pulse2[length_counter]1__0\,
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(2),
      I2 => \APU_Pulse2[length_counter][3]_i_2_n_0\,
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(3),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse2[length_counter][3]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][3]_i_1_n_0\
    );
\APU_Pulse2[length_counter][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(1),
      O => \APU_Pulse2[length_counter][3]_i_2_n_0\
    );
\APU_Pulse2[length_counter][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F800000"
    )
        port map (
      I0 => CPU_Data(4),
      I1 => CPU_Data(3),
      I2 => CPU_Data(5),
      I3 => CPU_Data(6),
      I4 => \APU_Pulse2[length_counter][0]_i_2_n_0\,
      I5 => \APU_Pulse2[length_counter][0]_i_3_n_0\,
      O => \APU_Pulse2[length_counter][3]_i_3_n_0\
    );
\APU_Pulse2[length_counter][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B7FF8400"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I1 => \APU_Pulse2[length_counter]1__0\,
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(4),
      I3 => APU_Half_CE_reg_n_0,
      I4 => \APU_Pulse2[length_counter][4]_i_2_n_0\,
      O => \APU_Pulse2[length_counter][4]_i_1_n_0\
    );
\APU_Pulse2[length_counter][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF600060"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_10_n_0\,
      I1 => CPU_Data(7),
      I2 => \^apu_status_out\(1),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(1),
      O => \APU_Pulse2[length_counter][4]_i_2_n_0\
    );
\APU_Pulse2[length_counter][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I1 => \APU_Pulse2[length_counter][5]_i_3_n_0\,
      I2 => APU_Half_CE_reg_n_0,
      I3 => \APU_Pulse2[length_counter]1__0\,
      O => \APU_Pulse2[length_counter][5]_i_1_n_0\
    );
\APU_Pulse2[length_counter][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF1FFFFFE0100000"
    )
        port map (
      I0 => \APU_Pulse2[length_counter][5]_i_5_n_0\,
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(4),
      I2 => \APU_Pulse2[length_counter]1__0\,
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(5),
      I4 => APU_Half_CE_reg_n_0,
      I5 => \APU_Pulse2[length_counter][5]_i_6_n_0\,
      O => \APU_Pulse2[length_counter][5]_i_2_n_0\
    );
\APU_Pulse2[length_counter][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0026000000000000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(4),
      I2 => CPU_Data(1),
      I3 => CPU_Addr(3),
      I4 => CPU_Addr(2),
      I5 => CPU_Addr(0),
      O => \APU_Pulse2[length_counter][5]_i_3_n_0\
    );
\APU_Pulse2[length_counter][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \^apu_pulse2_reg[length_counter][5]_0\(3),
      I1 => \APU_Pulse2[length_counter][3]_i_2_n_0\,
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(2),
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(4),
      I4 => \^apu_pulse2_reg[length_counter][5]_0\(5),
      I5 => \^apu_pulse2_out\(33),
      O => \APU_Pulse2[length_counter]1__0\
    );
\APU_Pulse2[length_counter][5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse2_reg[length_counter][5]_0\(2),
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(1),
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(3),
      O => \APU_Pulse2[length_counter][5]_i_5_n_0\
    );
\APU_Pulse2[length_counter][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \APU_Pulse1[length_counter][5]_i_10_n_0\,
      I1 => \^apu_status_out\(1),
      I2 => CPU_Data(7),
      I3 => CPU_Addr(4),
      I4 => CPU_Data(1),
      O => \APU_Pulse2[length_counter][5]_i_6_n_0\
    );
\APU_Pulse2[length_counter_load][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I1 => \APU_Pulse1[length_counter_load][4]_i_3_n_0\,
      I2 => \APU_Pulse1[duty]1__0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[length_counter_load][4]_i_5_n_0\,
      O => \APU_Pulse2[length_counter_load]\
    );
\APU_Pulse2[sweep_enable]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => CPU_Addr(2),
      O => \APU_Pulse2[sweep_enable]\
    );
\APU_Pulse2[timer_load][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Pulse2[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse2_out\(15),
      O => \APU_Pulse2[timer_load][10]_i_1_n_0\
    );
\APU_Pulse2[timer_load][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => \APU_Pulse1[duty]1__0\,
      I2 => \APU_Pulse1[length_counter_load][4]_i_5_n_0\,
      I3 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I4 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I5 => \APU_Triangle[timer_load][10]_i_3_n_0\,
      O => \APU_Pulse2[timer_load][10]_i_2_n_0\
    );
\APU_Pulse2[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \APU_Pulse1[timer_load][7]_i_3_n_0\,
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(2),
      I4 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I5 => \APU_Pulse1[timer_load][7]_i_4_n_0\,
      O => \APU_Pulse2[timer_load][7]_i_1_n_0\
    );
\APU_Pulse2[timer_load][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Pulse2[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse2_out\(13),
      O => \APU_Pulse2[timer_load][8]_i_1_n_0\
    );
\APU_Pulse2[timer_load][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Pulse2[timer_load][10]_i_2_n_0\,
      I2 => \^apu_pulse2_out\(14),
      O => \APU_Pulse2[timer_load][9]_i_1_n_0\
    );
\APU_Pulse2[volume][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAE"
    )
        port map (
      I0 => \Pulse2_Envelope_Start__0\,
      I1 => \^apu_pulse2_out\(33),
      I2 => \^apu_pulse2_out\(24),
      I3 => \^apu_pulse2_out\(25),
      I4 => \^apu_pulse2_out\(27),
      I5 => \^apu_pulse2_out\(26),
      O => \APU_Pulse2[volume][0]_i_1_n_0\
    );
\APU_Pulse2[volume][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCCCCCCFFFE"
    )
        port map (
      I0 => \^apu_pulse2_out\(33),
      I1 => \Pulse2_Envelope_Start__0\,
      I2 => \^apu_pulse2_out\(26),
      I3 => \^apu_pulse2_out\(27),
      I4 => \^apu_pulse2_out\(25),
      I5 => \^apu_pulse2_out\(24),
      O => \APU_Pulse2[volume][1]_i_1_n_0\
    );
\APU_Pulse2[volume][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFCCCCFCCCE"
    )
        port map (
      I0 => \^apu_pulse2_out\(33),
      I1 => \Pulse2_Envelope_Start__0\,
      I2 => \^apu_pulse2_out\(24),
      I3 => \^apu_pulse2_out\(25),
      I4 => \^apu_pulse2_out\(27),
      I5 => \^apu_pulse2_out\(26),
      O => \APU_Pulse2[volume][2]_i_1_n_0\
    );
\APU_Pulse2[volume][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_3_n_0\,
      I1 => \^apu_pulse2_out\(33),
      I2 => \APU_Pulse2[volume][3]_i_4_n_0\,
      I3 => APU_Quarter_CE,
      I4 => \Pulse2_Envelope_Start__0\,
      O => \APU_Pulse2[volume]\
    );
\APU_Pulse2[volume][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCCCCCCCCE"
    )
        port map (
      I0 => \^apu_pulse2_out\(33),
      I1 => \Pulse2_Envelope_Start__0\,
      I2 => \^apu_pulse2_out\(25),
      I3 => \^apu_pulse2_out\(24),
      I4 => \^apu_pulse2_out\(26),
      I5 => \^apu_pulse2_out\(27),
      O => \APU_Pulse2[volume][3]_i_2_n_0\
    );
\APU_Pulse2[volume][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^apu_pulse2_out\(26),
      I1 => \^apu_pulse2_out\(27),
      I2 => \^apu_pulse2_out\(25),
      I3 => \^apu_pulse2_out\(24),
      O => \APU_Pulse2[volume][3]_i_3_n_0\
    );
\APU_Pulse2[volume][3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => APU_Quarter_CE,
      I1 => Pulse2_Envelope_Divider(2),
      I2 => Pulse2_Envelope_Divider(3),
      I3 => Pulse2_Envelope_Divider(0),
      I4 => Pulse2_Envelope_Divider(1),
      O => \APU_Pulse2[volume][3]_i_4_n_0\
    );
\APU_Pulse2[volume][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \APU_Pulse2[volume][3]_i_6_n_0\,
      I1 => CPU_RW,
      I2 => CPU_RomSel,
      I3 => \APU_Pulse1[length_counter_load][4]_i_3_n_0\,
      I4 => \APU_Pulse1[length_counter_load][4]_i_2_n_0\,
      I5 => \procMainLogic.Pulse2_Envelope_Start_reg_n_0\,
      O => \Pulse2_Envelope_Start__0\
    );
\APU_Pulse2[volume][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(0),
      I4 => CPU_Addr(1),
      O => \APU_Pulse2[volume][3]_i_6_n_0\
    );
\APU_Pulse2_Message[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(28),
      I1 => \^apu_pulse2_out\(32),
      I2 => \^apu_pulse2_out\(24),
      O => APU_Pulse2_Message(1)
    );
\APU_Pulse2_Message[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(29),
      I1 => \^apu_pulse2_out\(32),
      I2 => \^apu_pulse2_out\(25),
      O => APU_Pulse2_Message(2)
    );
\APU_Pulse2_Message[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(30),
      I1 => \^apu_pulse2_out\(32),
      I2 => \^apu_pulse2_out\(26),
      O => APU_Pulse2_Message(3)
    );
\APU_Pulse2_Message[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^apu_pulse2_out\(31),
      I1 => \^apu_pulse2_out\(32),
      I2 => \^apu_pulse2_out\(27),
      O => APU_Pulse2_Message(4)
    );
\APU_Pulse2_Message[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^apu_pulse2_reg[length_counter][5]_0\(5),
      I1 => \^apu_pulse2_reg[length_counter][5]_0\(4),
      I2 => \^apu_pulse2_reg[length_counter][5]_0\(2),
      I3 => \^apu_pulse2_reg[length_counter][5]_0\(0),
      I4 => \^apu_pulse2_reg[length_counter][5]_0\(1),
      I5 => \^apu_pulse2_reg[length_counter][5]_0\(3),
      O => APU_Pulse2_Message(0)
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
      Q => \^apu_pulse2_out\(32)
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
      Q => \^apu_pulse2_out\(34)
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
      Q => \^apu_pulse2_out\(35)
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
      Q => \^apu_pulse2_out\(28)
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
      Q => \^apu_pulse2_out\(29)
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
      Q => \^apu_pulse2_out\(30)
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
      Q => \^apu_pulse2_out\(31)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(0)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(1)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(2)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(3)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(4)
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
      Q => \^apu_pulse2_reg[length_counter][5]_0\(5)
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
      Q => \^apu_pulse2_out\(33)
    );
\APU_Pulse2_reg[length_counter_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(0)
    );
\APU_Pulse2_reg[length_counter_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(1)
    );
\APU_Pulse2_reg[length_counter_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(2)
    );
\APU_Pulse2_reg[length_counter_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(3)
    );
\APU_Pulse2_reg[length_counter_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[length_counter_load]\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(4)
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
      Q => \^apu_pulse2_out\(23)
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
      Q => \^apu_pulse2_out\(19)
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
      Q => \^apu_pulse2_out\(20)
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
      Q => \^apu_pulse2_out\(21)
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
      Q => \^apu_pulse2_out\(22)
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
      Q => \^apu_pulse2_out\(16)
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
      Q => \^apu_pulse2_out\(17)
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
      Q => \^apu_pulse2_out\(18)
    );
\APU_Pulse2_reg[timer_load][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(0),
      Q => \^apu_pulse2_out\(5)
    );
\APU_Pulse2_reg[timer_load][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer_load][10]_i_1_n_0\,
      Q => \^apu_pulse2_out\(15)
    );
\APU_Pulse2_reg[timer_load][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(1),
      Q => \^apu_pulse2_out\(6)
    );
\APU_Pulse2_reg[timer_load][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(2),
      Q => \^apu_pulse2_out\(7)
    );
\APU_Pulse2_reg[timer_load][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(3),
      Q => \^apu_pulse2_out\(8)
    );
\APU_Pulse2_reg[timer_load][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(4),
      Q => \^apu_pulse2_out\(9)
    );
\APU_Pulse2_reg[timer_load][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(5),
      Q => \^apu_pulse2_out\(10)
    );
\APU_Pulse2_reg[timer_load][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(6),
      Q => \^apu_pulse2_out\(11)
    );
\APU_Pulse2_reg[timer_load][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer_load][7]_i_1_n_0\,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => CPU_Data(7),
      Q => \^apu_pulse2_out\(12)
    );
\APU_Pulse2_reg[timer_load][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer_load][8]_i_1_n_0\,
      Q => \^apu_pulse2_out\(13)
    );
\APU_Pulse2_reg[timer_load][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Pulse2[timer_load][9]_i_1_n_0\,
      Q => \^apu_pulse2_out\(14)
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
      Q => \^apu_pulse2_out\(24)
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
      Q => \^apu_pulse2_out\(25)
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
      Q => \^apu_pulse2_out\(26)
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
      Q => \^apu_pulse2_out\(27)
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
      INIT => X"88888888A8AAA8A8"
    )
        port map (
      I0 => APU_Tick_CE,
      I1 => APU_Quarter_CE_i_2_n_0,
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Half_CE_i_3_n_0,
      O => APU_Quarter_CE10_out
    );
APU_Quarter_CE_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008002"
    )
        port map (
      I0 => APU_Quarter_CE_i_6_n_0,
      I1 => \procFrameCounter.counter_reg\(1),
      I2 => \procFrameCounter.counter_reg\(0),
      I3 => \procFrameCounter.counter_reg\(2),
      I4 => APU_Quarter_CE_i_7_n_0,
      I5 => APU_Quarter_CE_i_8_n_0,
      O => APU_Quarter_CE_i_2_n_0
    );
APU_Quarter_CE_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => APU_Half_CE_i_11_n_0,
      I1 => APU_Half_CE_i_10_n_0,
      I2 => \procFrameCounter.counter_reg\(1),
      I3 => \procFrameCounter.counter_reg\(7),
      I4 => \procFrameCounter.counter_reg\(5),
      I5 => \^apu_counter_reg[mode]_0\,
      O => APU_Quarter_CE_i_3_n_0
    );
APU_Quarter_CE_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(14),
      I1 => \procFrameCounter.counter_reg\(9),
      I2 => \procFrameCounter.counter_reg\(12),
      I3 => \procFrameCounter.counter_reg\(7),
      I4 => \^apu_counter_reg[mode]_0\,
      I5 => \procFrameCounter.counter_reg\(6),
      O => APU_Quarter_CE_i_4_n_0
    );
APU_Quarter_CE_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(0),
      I1 => \procFrameCounter.counter_reg\(1),
      I2 => \procFrameCounter.counter_reg\(5),
      I3 => APU_Quarter_CE_i_9_n_0,
      I4 => \procFrameCounter.counter_reg\(13),
      I5 => \procFrameCounter.counter_reg\(11),
      O => APU_Quarter_CE_i_5_n_0
    );
APU_Quarter_CE_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80100404"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(5),
      I1 => \procFrameCounter.counter_reg\(7),
      I2 => \procFrameCounter.counter_reg\(4),
      I3 => \procFrameCounter.counter_reg\(9),
      I4 => \procFrameCounter.counter_reg\(8),
      O => APU_Quarter_CE_i_6_n_0
    );
APU_Quarter_CE_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEFFFEFFEEFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(14),
      I1 => \procFrameCounter.counter_reg\(6),
      I2 => \procFrameCounter.counter_reg\(3),
      I3 => \procFrameCounter.counter_reg\(2),
      I4 => \procFrameCounter.counter_reg\(5),
      I5 => \procFrameCounter.counter_reg\(4),
      O => APU_Quarter_CE_i_7_n_0
    );
APU_Quarter_CE_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDEFFFFFFF7FFFFF"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(8),
      I1 => \procFrameCounter.counter_reg\(12),
      I2 => \procFrameCounter.counter_reg\(10),
      I3 => \procFrameCounter.counter_reg\(13),
      I4 => \procFrameCounter.counter_reg\(11),
      I5 => \procFrameCounter.counter_reg\(9),
      O => APU_Quarter_CE_i_8_n_0
    );
APU_Quarter_CE_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \procFrameCounter.counter_reg\(2),
      I1 => \procFrameCounter.counter_reg\(3),
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
      D => APU_Quarter_CE10_out,
      Q => APU_Quarter_CE
    );
\APU_Status[dmc_active]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I5 => CPU_Addr(2),
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
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => p_1_in,
      Q => APU_Tick_CE
    );
\APU_Triangle[length_counter][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(4),
      I3 => CPU_Addr(3),
      I4 => CPU_Addr(2),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Triangle[length_counter]\
    );
\APU_Triangle[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(4),
      I2 => CPU_Addr(1),
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(0),
      I5 => \APU_Pulse1[duty][1]_i_3_n_0\,
      O => \APU_Triangle[length_counter_halt]\
    );
\APU_Triangle[timer_load][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => CPU_Data(2),
      I1 => \APU_Triangle[timer_load][10]_i_2_n_0\,
      I2 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I4 => \APU_Triangle[timer_load][10]_i_3_n_0\,
      I5 => \^apu_triangle_out\(22),
      O => \APU_Triangle[timer_load][10]_i_1_n_0\
    );
\APU_Triangle[timer_load][10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_RomSel,
      I2 => CPU_RW,
      I3 => CPU_Addr(2),
      I4 => CPU_Addr(4),
      O => \APU_Triangle[timer_load][10]_i_2_n_0\
    );
\APU_Triangle[timer_load][10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => CPU_Addr(6),
      I1 => CPU_Addr(5),
      I2 => CPU_Addr(7),
      I3 => CPU_Addr(14),
      O => \APU_Triangle[timer_load][10]_i_3_n_0\
    );
\APU_Triangle[timer_load][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(2),
      I2 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I3 => CPU_Addr(3),
      I4 => \APU_Pulse1[timer_load][7]_i_3_n_0\,
      I5 => \APU_Pulse1[timer_load][7]_i_4_n_0\,
      O => \APU_Triangle[timer_load][7]_i_1_n_0\
    );
\APU_Triangle[timer_load][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => CPU_Data(0),
      I1 => \APU_Triangle[timer_load][10]_i_2_n_0\,
      I2 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I4 => \APU_Triangle[timer_load][10]_i_3_n_0\,
      I5 => \^apu_triangle_out\(20),
      O => \APU_Triangle[timer_load][8]_i_1_n_0\
    );
\APU_Triangle[timer_load][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => CPU_Data(1),
      I1 => \APU_Triangle[timer_load][10]_i_2_n_0\,
      I2 => \APU_Pulse1[timer_load][7]_i_2_n_0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I4 => \APU_Triangle[timer_load][10]_i_3_n_0\,
      I5 => \^apu_triangle_out\(21),
      O => \APU_Triangle[timer_load][9]_i_1_n_0\
    );
\APU_Triangle_reg[length_counter][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => \APU_Triangle[length_counter]\,
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
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Triangle[timer_load][10]_i_1_n_0\,
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
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Triangle[timer_load][8]_i_1_n_0\,
      Q => \^apu_triangle_out\(20)
    );
\APU_Triangle_reg[timer_load][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \APU_Triangle[timer_load][9]_i_1_n_0\,
      Q => \^apu_triangle_out\(21)
    );
\procFrameCounter.counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAAAEAE"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(3),
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_2_n_0\
    );
\procFrameCounter.counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAAAEAE"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(2),
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_3_n_0\
    );
\procFrameCounter.counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAAAEAE"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(1),
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[0]_i_4_n_0\
    );
\procFrameCounter.counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAFB"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => \procFrameCounter.counter_reg\(0),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[0]_i_5_n_0\
    );
\procFrameCounter.counter[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(14),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_2_n_0\
    );
\procFrameCounter.counter[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(13),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_3_n_0\
    );
\procFrameCounter.counter[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(12),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[12]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBABBAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_5_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      I5 => APU_Quarter_CE2(7),
      O => \procFrameCounter.counter[4]_i_2_n_0\
    );
\procFrameCounter.counter[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(6),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_3_n_0\
    );
\procFrameCounter.counter[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(5),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_4_n_0\
    );
\procFrameCounter.counter[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
      I4 => APU_Quarter_CE2(4),
      I5 => APU_Half_CE_i_6_n_0,
      O => \procFrameCounter.counter[4]_i_5_n_0\
    );
\procFrameCounter.counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAAAEAE"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE2(11),
      I2 => APU_Quarter_CE_i_3_n_0,
      I3 => APU_Quarter_CE_i_4_n_0,
      I4 => APU_Quarter_CE_i_5_n_0,
      I5 => APU_Half_CE_i_3_n_0,
      O => \procFrameCounter.counter[8]_i_2_n_0\
    );
\procFrameCounter.counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBABBAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_5_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      I5 => APU_Quarter_CE2(10),
      O => \procFrameCounter.counter[8]_i_3_n_0\
    );
\procFrameCounter.counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBABBAAAAAAAA"
    )
        port map (
      I0 => APU_Half_CE_i_6_n_0,
      I1 => APU_Quarter_CE_i_3_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_5_n_0,
      I4 => APU_Half_CE_i_3_n_0,
      I5 => APU_Quarter_CE2(9),
      O => \procFrameCounter.counter[8]_i_4_n_0\
    );
\procFrameCounter.counter[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFB0000"
    )
        port map (
      I0 => APU_Half_CE_i_3_n_0,
      I1 => APU_Quarter_CE_i_5_n_0,
      I2 => APU_Quarter_CE_i_4_n_0,
      I3 => APU_Quarter_CE_i_3_n_0,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
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
      CE => APU_Tick_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procFrameCounter.counter_reg[8]_i_1_n_6\,
      Q => \procFrameCounter.counter_reg\(9)
    );
\procMainLogic.Pulse1_Envelope_Divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0F0F0F0E"
    )
        port map (
      I0 => \^apu_pulse1_out\(28),
      I1 => Pulse1_Envelope_Divider(3),
      I2 => Pulse1_Envelope_Divider(0),
      I3 => Pulse1_Envelope_Divider(1),
      I4 => Pulse1_Envelope_Divider(2),
      I5 => \Pulse1_Envelope_Start__0\,
      O => \procMainLogic.Pulse1_Envelope_Divider[0]_i_1_n_0\
    );
\procMainLogic.Pulse1_Envelope_Divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8888DDDD8888DC"
    )
        port map (
      I0 => \Pulse1_Envelope_Start__0\,
      I1 => \^apu_pulse1_out\(29),
      I2 => Pulse1_Envelope_Divider(2),
      I3 => Pulse1_Envelope_Divider(1),
      I4 => Pulse1_Envelope_Divider(0),
      I5 => Pulse1_Envelope_Divider(3),
      O => \procMainLogic.Pulse1_Envelope_Divider[1]_i_1_n_0\
    );
\procMainLogic.Pulse1_Envelope_Divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8D8D88DD8D8D88C"
    )
        port map (
      I0 => \Pulse1_Envelope_Start__0\,
      I1 => \^apu_pulse1_out\(30),
      I2 => Pulse1_Envelope_Divider(2),
      I3 => Pulse1_Envelope_Divider(1),
      I4 => Pulse1_Envelope_Divider(0),
      I5 => Pulse1_Envelope_Divider(3),
      O => \procMainLogic.Pulse1_Envelope_Divider[2]_i_1_n_0\
    );
\procMainLogic.Pulse1_Envelope_Divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAB55540000"
    )
        port map (
      I0 => \Pulse1_Envelope_Start__0\,
      I1 => Pulse1_Envelope_Divider(2),
      I2 => Pulse1_Envelope_Divider(1),
      I3 => Pulse1_Envelope_Divider(0),
      I4 => Pulse1_Envelope_Divider(3),
      I5 => \^apu_pulse1_out\(31),
      O => \procMainLogic.Pulse1_Envelope_Divider[3]_i_1_n_0\
    );
\procMainLogic.Pulse1_Envelope_Divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse1_Envelope_Divider[0]_i_1_n_0\,
      Q => Pulse1_Envelope_Divider(0)
    );
\procMainLogic.Pulse1_Envelope_Divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse1_Envelope_Divider[1]_i_1_n_0\,
      Q => Pulse1_Envelope_Divider(1)
    );
\procMainLogic.Pulse1_Envelope_Divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse1_Envelope_Divider[2]_i_1_n_0\,
      Q => Pulse1_Envelope_Divider(2)
    );
\procMainLogic.Pulse1_Envelope_Divider_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse1_Envelope_Divider[3]_i_1_n_0\,
      Q => Pulse1_Envelope_Divider(3)
    );
\procMainLogic.Pulse1_Envelope_Start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => \procMainLogic.Pulse1_Envelope_Start_reg_n_0\,
      I1 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I2 => \APU_Pulse1[length_counter_load][4]_i_5_n_0\,
      I3 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I4 => CPU_Addr(2),
      I5 => APU_Quarter_CE,
      O => \procMainLogic.Pulse1_Envelope_Start_i_1_n_0\
    );
\procMainLogic.Pulse1_Envelope_Start_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse1_Envelope_Start_i_1_n_0\,
      Q => \procMainLogic.Pulse1_Envelope_Start_reg_n_0\
    );
\procMainLogic.Pulse2_Envelope_Divider[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0F0F0F0E"
    )
        port map (
      I0 => \^apu_pulse2_out\(28),
      I1 => Pulse2_Envelope_Divider(3),
      I2 => Pulse2_Envelope_Divider(0),
      I3 => Pulse2_Envelope_Divider(1),
      I4 => Pulse2_Envelope_Divider(2),
      I5 => \Pulse2_Envelope_Start__0\,
      O => \procMainLogic.Pulse2_Envelope_Divider[0]_i_1_n_0\
    );
\procMainLogic.Pulse2_Envelope_Divider[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8888DDDD8888DC"
    )
        port map (
      I0 => \Pulse2_Envelope_Start__0\,
      I1 => \^apu_pulse2_out\(29),
      I2 => Pulse2_Envelope_Divider(2),
      I3 => Pulse2_Envelope_Divider(1),
      I4 => Pulse2_Envelope_Divider(0),
      I5 => Pulse2_Envelope_Divider(3),
      O => \procMainLogic.Pulse2_Envelope_Divider[1]_i_1_n_0\
    );
\procMainLogic.Pulse2_Envelope_Divider[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8D8D88DD8D8D88C"
    )
        port map (
      I0 => \Pulse2_Envelope_Start__0\,
      I1 => \^apu_pulse2_out\(30),
      I2 => Pulse2_Envelope_Divider(2),
      I3 => Pulse2_Envelope_Divider(1),
      I4 => Pulse2_Envelope_Divider(0),
      I5 => Pulse2_Envelope_Divider(3),
      O => \procMainLogic.Pulse2_Envelope_Divider[2]_i_1_n_0\
    );
\procMainLogic.Pulse2_Envelope_Divider[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAB55540000"
    )
        port map (
      I0 => \Pulse2_Envelope_Start__0\,
      I1 => Pulse2_Envelope_Divider(2),
      I2 => Pulse2_Envelope_Divider(1),
      I3 => Pulse2_Envelope_Divider(0),
      I4 => Pulse2_Envelope_Divider(3),
      I5 => \^apu_pulse2_out\(31),
      O => \procMainLogic.Pulse2_Envelope_Divider[3]_i_1_n_0\
    );
\procMainLogic.Pulse2_Envelope_Divider_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse2_Envelope_Divider[0]_i_1_n_0\,
      Q => Pulse2_Envelope_Divider(0)
    );
\procMainLogic.Pulse2_Envelope_Divider_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse2_Envelope_Divider[1]_i_1_n_0\,
      Q => Pulse2_Envelope_Divider(1)
    );
\procMainLogic.Pulse2_Envelope_Divider_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse2_Envelope_Divider[2]_i_1_n_0\,
      Q => Pulse2_Envelope_Divider(2)
    );
\procMainLogic.Pulse2_Envelope_Divider_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => APU_Quarter_CE,
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse2_Envelope_Divider[3]_i_1_n_0\,
      Q => Pulse2_Envelope_Divider(3)
    );
\procMainLogic.Pulse2_Envelope_Start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAEAA"
    )
        port map (
      I0 => \procMainLogic.Pulse2_Envelope_Start_reg_n_0\,
      I1 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I2 => \APU_Pulse1[length_counter_load][4]_i_6_n_0\,
      I3 => CPU_Addr(2),
      I4 => \APU_Pulse1[length_counter_load][4]_i_5_n_0\,
      I5 => APU_Quarter_CE,
      O => \procMainLogic.Pulse2_Envelope_Start_i_1_n_0\
    );
\procMainLogic.Pulse2_Envelope_Start_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      CLR => \APU_Pulse1[duty][1]_i_2_n_0\,
      D => \procMainLogic.Pulse2_Envelope_Start_i_1_n_0\,
      Q => \procMainLogic.Pulse2_Envelope_Start_reg_n_0\
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
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 18 downto 0 )
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
  APU_Pulse1_Message(18 downto 15) <= \^apu_pulse1_message\(18 downto 15);
  APU_Pulse1_Message(14 downto 4) <= \^apu_pulse1_out\(32 downto 22);
  APU_Pulse1_Message(3) <= \^apu_pulse1_message\(3);
  APU_Pulse1_Message(2) <= \<const0>\;
  APU_Pulse1_Message(1) <= \<const0>\;
  APU_Pulse1_Message(0) <= \<const0>\;
  APU_Pulse1_Out(52 downto 17) <= \^apu_pulse1_out\(52 downto 17);
  APU_Pulse1_Out(16) <= \<const0>\;
  APU_Pulse1_Out(15) <= \<const0>\;
  APU_Pulse1_Out(14) <= \<const0>\;
  APU_Pulse1_Out(13) <= \<const0>\;
  APU_Pulse1_Out(12) <= \<const0>\;
  APU_Pulse1_Out(11) <= \<const0>\;
  APU_Pulse1_Out(10) <= \<const0>\;
  APU_Pulse1_Out(9) <= \<const0>\;
  APU_Pulse1_Out(8) <= \<const0>\;
  APU_Pulse1_Out(7) <= \<const0>\;
  APU_Pulse1_Out(6) <= \<const0>\;
  APU_Pulse1_Out(5 downto 0) <= \^apu_pulse1_out\(5 downto 0);
  APU_Pulse2_Message(18 downto 15) <= \^apu_pulse2_message\(18 downto 15);
  APU_Pulse2_Message(14 downto 4) <= \^apu_pulse2_out\(32 downto 22);
  APU_Pulse2_Message(3) <= \^apu_pulse2_message\(3);
  APU_Pulse2_Message(2) <= \<const0>\;
  APU_Pulse2_Message(1) <= \<const0>\;
  APU_Pulse2_Message(0) <= \<const1>\;
  APU_Pulse2_Out(52 downto 17) <= \^apu_pulse2_out\(52 downto 17);
  APU_Pulse2_Out(16) <= \<const0>\;
  APU_Pulse2_Out(15) <= \<const0>\;
  APU_Pulse2_Out(14) <= \<const0>\;
  APU_Pulse2_Out(13) <= \<const0>\;
  APU_Pulse2_Out(12) <= \<const0>\;
  APU_Pulse2_Out(11) <= \<const0>\;
  APU_Pulse2_Out(10) <= \<const0>\;
  APU_Pulse2_Out(9) <= \<const0>\;
  APU_Pulse2_Out(8) <= \<const0>\;
  APU_Pulse2_Out(7) <= \<const0>\;
  APU_Pulse2_Out(6) <= \<const0>\;
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
      APU_Pulse1_Out(35 downto 0) => \^apu_pulse1_out\(52 downto 17),
      APU_Pulse2_Message(4 downto 1) => \^apu_pulse2_message\(18 downto 15),
      APU_Pulse2_Message(0) => \^apu_pulse2_message\(3),
      APU_Pulse2_Out(35 downto 0) => \^apu_pulse2_out\(52 downto 17),
      \APU_Pulse2_reg[length_counter][5]_0\(5 downto 0) => \^apu_pulse2_out\(5 downto 0),
      APU_Status_Out(4 downto 0) => \^apu_status_out\(4 downto 0),
      APU_Triangle_Out(30 downto 0) => \^apu_triangle_out\(41 downto 11),
      CPU_Addr(14 downto 0) => CPU_Addr(14 downto 0),
      CPU_Data(7 downto 0) => CPU_Data(7 downto 0),
      CPU_M2 => CPU_M2,
      CPU_RW => CPU_RW,
      CPU_RomSel => CPU_RomSel,
      CPU_Rst => CPU_Rst,
      Q(5 downto 0) => \^apu_pulse1_out\(5 downto 0),
      Reset => Reset
    );
end STRUCTURE;
