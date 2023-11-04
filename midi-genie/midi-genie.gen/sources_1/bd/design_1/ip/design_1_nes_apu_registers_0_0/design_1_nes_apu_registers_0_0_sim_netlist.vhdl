-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Nov  3 23:23:32 2023
-- Host        : TM2s-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_registers_0_0/design_1_nes_apu_registers_0_0_sim_netlist.vhdl
-- Design      : design_1_nes_apu_registers_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_apu_registers_0_0_nes_apu_registers is
  port (
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    APU_Status_Out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_M2 : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_RW : in STD_LOGIC;
    CPU_RomSel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_nes_apu_registers_0_0_nes_apu_registers : entity is "nes_apu_registers";
end design_1_nes_apu_registers_0_0_nes_apu_registers;

architecture STRUCTURE of design_1_nes_apu_registers_0_0_nes_apu_registers is
  signal \APU_Counter[irq_inhibit]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Counter[mode]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Counter[mode]_i_2_n_0\ : STD_LOGIC;
  signal \^apu_counter_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \APU_DMC[irq_enable]\ : STD_LOGIC;
  signal \APU_DMC[irq_enable]_i_2_n_0\ : STD_LOGIC;
  signal \APU_DMC[load_counter]\ : STD_LOGIC;
  signal \APU_DMC[sample_address]\ : STD_LOGIC;
  signal \APU_DMC[sample_length]\ : STD_LOGIC;
  signal \APU_Noise[length_counter]\ : STD_LOGIC;
  signal \APU_Noise[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Noise[loop_noise]\ : STD_LOGIC;
  signal \APU_Pulse1[duty]\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[duty][1]_i_4_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_2_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][10]_i_3_n_0\ : STD_LOGIC;
  signal \APU_Pulse1[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[duty]\ : STD_LOGIC;
  signal \APU_Pulse2[sweep_enable]\ : STD_LOGIC;
  signal \APU_Pulse2[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Pulse2[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Status[dmc_active]\ : STD_LOGIC;
  signal \APU_Triangle[length_counter_halt]\ : STD_LOGIC;
  signal \APU_Triangle[timer][10]_i_1_n_0\ : STD_LOGIC;
  signal \APU_Triangle[timer][7]_i_1_n_0\ : STD_LOGIC;
  signal \^apu_triangle_out\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \APU_DMC[irq_enable]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \APU_Pulse1[timer][10]_i_2\ : label is "soft_lutpair0";
begin
  APU_Counter_Out(1 downto 0) <= \^apu_counter_out\(1 downto 0);
  APU_Triangle_Out(30 downto 0) <= \^apu_triangle_out\(30 downto 0);
\APU_Counter[irq_inhibit]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => CPU_Data(6),
      I1 => CPU_Addr(1),
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => \APU_DMC[irq_enable]_i_2_n_0\,
      I4 => \^apu_counter_out\(0),
      O => \APU_Counter[irq_inhibit]_i_1_n_0\
    );
\APU_Counter[mode]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => CPU_Data(7),
      I1 => CPU_Addr(1),
      I2 => \APU_Counter[mode]_i_2_n_0\,
      I3 => \APU_DMC[irq_enable]_i_2_n_0\,
      I4 => \^apu_counter_out\(1),
      O => \APU_Counter[mode]_i_1_n_0\
    );
\APU_Counter[mode]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(2),
      O => \APU_Counter[mode]_i_2_n_0\
    );
\APU_Counter_reg[irq_inhibit]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      D => \APU_Counter[irq_inhibit]_i_1_n_0\,
      Q => \^apu_counter_out\(0),
      R => '0'
    );
\APU_Counter_reg[mode]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => '1',
      D => \APU_Counter[mode]_i_1_n_0\,
      Q => \^apu_counter_out\(1),
      R => '0'
    );
\APU_DMC[irq_enable]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(3),
      I4 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[irq_enable]\
    );
\APU_DMC[irq_enable]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I1 => \APU_Pulse1[timer][10]_i_3_n_0\,
      I2 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I3 => CPU_Addr(4),
      O => \APU_DMC[irq_enable]_i_2_n_0\
    );
\APU_DMC[load_counter][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(2),
      I4 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[load_counter]\
    );
\APU_DMC[sample_address][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(3),
      I4 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[sample_address]\
    );
\APU_DMC[sample_length][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(2),
      I4 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_DMC[sample_length]\
    );
\APU_DMC_reg[dmc_loop]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(27),
      R => '0'
    );
\APU_DMC_reg[frequency][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(23),
      R => '0'
    );
\APU_DMC_reg[frequency][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(24),
      R => '0'
    );
\APU_DMC_reg[frequency][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(25),
      R => '0'
    );
\APU_DMC_reg[frequency][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(26),
      R => '0'
    );
\APU_DMC_reg[irq_enable]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[irq_enable]\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(28),
      R => '0'
    );
\APU_DMC_reg[load_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(16),
      R => '0'
    );
\APU_DMC_reg[load_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(17),
      R => '0'
    );
\APU_DMC_reg[load_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(18),
      R => '0'
    );
\APU_DMC_reg[load_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(19),
      R => '0'
    );
\APU_DMC_reg[load_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(20),
      R => '0'
    );
\APU_DMC_reg[load_counter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(21),
      R => '0'
    );
\APU_DMC_reg[load_counter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[load_counter]\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(22),
      R => '0'
    );
\APU_DMC_reg[sample_address][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(8),
      R => '0'
    );
\APU_DMC_reg[sample_address][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(9),
      R => '0'
    );
\APU_DMC_reg[sample_address][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(10),
      R => '0'
    );
\APU_DMC_reg[sample_address][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(11),
      R => '0'
    );
\APU_DMC_reg[sample_address][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(12),
      R => '0'
    );
\APU_DMC_reg[sample_address][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(13),
      R => '0'
    );
\APU_DMC_reg[sample_address][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(14),
      R => '0'
    );
\APU_DMC_reg[sample_address][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_address]\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(15),
      R => '0'
    );
\APU_DMC_reg[sample_length][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(0),
      Q => APU_DMC_Out(0),
      R => '0'
    );
\APU_DMC_reg[sample_length][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(1),
      Q => APU_DMC_Out(1),
      R => '0'
    );
\APU_DMC_reg[sample_length][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(2),
      Q => APU_DMC_Out(2),
      R => '0'
    );
\APU_DMC_reg[sample_length][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(3),
      Q => APU_DMC_Out(3),
      R => '0'
    );
\APU_DMC_reg[sample_length][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(4),
      Q => APU_DMC_Out(4),
      R => '0'
    );
\APU_DMC_reg[sample_length][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(5),
      Q => APU_DMC_Out(5),
      R => '0'
    );
\APU_DMC_reg[sample_length][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(6),
      Q => APU_DMC_Out(6),
      R => '0'
    );
\APU_DMC_reg[sample_length][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_DMC[sample_length]\,
      D => CPU_Data(7),
      Q => APU_DMC_Out(7),
      R => '0'
    );
\APU_Noise[length_counter][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Noise[length_counter]\
    );
\APU_Noise[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Noise[length_counter_halt]\
    );
\APU_Noise[loop_noise]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => CPU_Addr(0),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Noise[loop_noise]\
    );
\APU_Noise_reg[constant_volume]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(4),
      Q => APU_Noise_Out(14),
      R => '0'
    );
\APU_Noise_reg[length_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(0),
      R => '0'
    );
\APU_Noise_reg[length_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      D => CPU_Data(4),
      Q => APU_Noise_Out(1),
      R => '0'
    );
\APU_Noise_reg[length_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      D => CPU_Data(5),
      Q => APU_Noise_Out(2),
      R => '0'
    );
\APU_Noise_reg[length_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      D => CPU_Data(6),
      Q => APU_Noise_Out(3),
      R => '0'
    );
\APU_Noise_reg[length_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter]\,
      D => CPU_Data(7),
      Q => APU_Noise_Out(4),
      R => '0'
    );
\APU_Noise_reg[length_counter_halt]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(5),
      Q => APU_Noise_Out(15),
      R => '0'
    );
\APU_Noise_reg[loop_noise]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      D => CPU_Data(7),
      Q => APU_Noise_Out(9),
      R => '0'
    );
\APU_Noise_reg[noise_period][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      D => CPU_Data(0),
      Q => APU_Noise_Out(5),
      R => '0'
    );
\APU_Noise_reg[noise_period][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      D => CPU_Data(1),
      Q => APU_Noise_Out(6),
      R => '0'
    );
\APU_Noise_reg[noise_period][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      D => CPU_Data(2),
      Q => APU_Noise_Out(7),
      R => '0'
    );
\APU_Noise_reg[noise_period][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[loop_noise]\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(8),
      R => '0'
    );
\APU_Noise_reg[volume][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(0),
      Q => APU_Noise_Out(10),
      R => '0'
    );
\APU_Noise_reg[volume][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(1),
      Q => APU_Noise_Out(11),
      R => '0'
    );
\APU_Noise_reg[volume][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(2),
      Q => APU_Noise_Out(12),
      R => '0'
    );
\APU_Noise_reg[volume][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Noise[length_counter_halt]\,
      D => CPU_Data(3),
      Q => APU_Noise_Out(13),
      R => '0'
    );
\APU_Pulse1[duty][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Pulse1[duty]\
    );
\APU_Pulse1[duty][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I1 => CPU_Addr(8),
      I2 => CPU_Addr(7),
      I3 => CPU_Addr(6),
      I4 => CPU_Addr(5),
      I5 => \APU_Pulse1[duty][1]_i_4_n_0\,
      O => \APU_Pulse1[duty][1]_i_2_n_0\
    );
\APU_Pulse1[duty][1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => CPU_Addr(12),
      I1 => CPU_Addr(11),
      I2 => CPU_Addr(10),
      I3 => CPU_Addr(9),
      O => \APU_Pulse1[duty][1]_i_3_n_0\
    );
\APU_Pulse1[duty][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CPU_RW,
      I1 => CPU_RomSel,
      I2 => CPU_Addr(13),
      I3 => CPU_Addr(14),
      O => \APU_Pulse1[duty][1]_i_4_n_0\
    );
\APU_Pulse1[sweep_enable]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Pulse1[sweep_enable]\
    );
\APU_Pulse1[timer][10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Pulse1[timer][10]_i_1_n_0\
    );
\APU_Pulse1[timer][10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => CPU_Addr(4),
      I1 => \APU_Pulse1[duty][1]_i_3_n_0\,
      I2 => \APU_Pulse1[timer][10]_i_3_n_0\,
      I3 => \APU_Pulse1[duty][1]_i_4_n_0\,
      I4 => CPU_Addr(1),
      O => \APU_Pulse1[timer][10]_i_2_n_0\
    );
\APU_Pulse1[timer][10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => CPU_Addr(8),
      I1 => CPU_Addr(7),
      I2 => CPU_Addr(6),
      I3 => CPU_Addr(5),
      O => \APU_Pulse1[timer][10]_i_3_n_0\
    );
\APU_Pulse1[timer][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(2),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Pulse1[timer][7]_i_1_n_0\
    );
\APU_Pulse1_reg[constant_volume]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(4),
      Q => APU_Pulse1_Out(28),
      R => '0'
    );
\APU_Pulse1_reg[duty][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(6),
      Q => APU_Pulse1_Out(30),
      R => '0'
    );
\APU_Pulse1_reg[duty][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(7),
      Q => APU_Pulse1_Out(31),
      R => '0'
    );
\APU_Pulse1_reg[length_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(3),
      Q => APU_Pulse1_Out(0),
      R => '0'
    );
\APU_Pulse1_reg[length_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(4),
      Q => APU_Pulse1_Out(1),
      R => '0'
    );
\APU_Pulse1_reg[length_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(5),
      Q => APU_Pulse1_Out(2),
      R => '0'
    );
\APU_Pulse1_reg[length_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(6),
      Q => APU_Pulse1_Out(3),
      R => '0'
    );
\APU_Pulse1_reg[length_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(7),
      Q => APU_Pulse1_Out(4),
      R => '0'
    );
\APU_Pulse1_reg[length_counter_halt]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(5),
      Q => APU_Pulse1_Out(29),
      R => '0'
    );
\APU_Pulse1_reg[sweep_enable]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(7),
      Q => APU_Pulse1_Out(23),
      R => '0'
    );
\APU_Pulse1_reg[sweep_negate]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(3),
      Q => APU_Pulse1_Out(19),
      R => '0'
    );
\APU_Pulse1_reg[sweep_period][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(4),
      Q => APU_Pulse1_Out(20),
      R => '0'
    );
\APU_Pulse1_reg[sweep_period][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(5),
      Q => APU_Pulse1_Out(21),
      R => '0'
    );
\APU_Pulse1_reg[sweep_period][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(6),
      Q => APU_Pulse1_Out(22),
      R => '0'
    );
\APU_Pulse1_reg[sweep_shift][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(0),
      Q => APU_Pulse1_Out(16),
      R => '0'
    );
\APU_Pulse1_reg[sweep_shift][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(1),
      Q => APU_Pulse1_Out(17),
      R => '0'
    );
\APU_Pulse1_reg[sweep_shift][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[sweep_enable]\,
      D => CPU_Data(2),
      Q => APU_Pulse1_Out(18),
      R => '0'
    );
\APU_Pulse1_reg[timer][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(0),
      Q => APU_Pulse1_Out(5),
      R => '0'
    );
\APU_Pulse1_reg[timer][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(2),
      Q => APU_Pulse1_Out(15),
      R => '0'
    );
\APU_Pulse1_reg[timer][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(1),
      Q => APU_Pulse1_Out(6),
      R => '0'
    );
\APU_Pulse1_reg[timer][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(2),
      Q => APU_Pulse1_Out(7),
      R => '0'
    );
\APU_Pulse1_reg[timer][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(3),
      Q => APU_Pulse1_Out(8),
      R => '0'
    );
\APU_Pulse1_reg[timer][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(4),
      Q => APU_Pulse1_Out(9),
      R => '0'
    );
\APU_Pulse1_reg[timer][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(5),
      Q => APU_Pulse1_Out(10),
      R => '0'
    );
\APU_Pulse1_reg[timer][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(6),
      Q => APU_Pulse1_Out(11),
      R => '0'
    );
\APU_Pulse1_reg[timer][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][7]_i_1_n_0\,
      D => CPU_Data(7),
      Q => APU_Pulse1_Out(12),
      R => '0'
    );
\APU_Pulse1_reg[timer][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(0),
      Q => APU_Pulse1_Out(13),
      R => '0'
    );
\APU_Pulse1_reg[timer][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[timer][10]_i_1_n_0\,
      D => CPU_Data(1),
      Q => APU_Pulse1_Out(14),
      R => '0'
    );
\APU_Pulse1_reg[volume][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(0),
      Q => APU_Pulse1_Out(24),
      R => '0'
    );
\APU_Pulse1_reg[volume][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(1),
      Q => APU_Pulse1_Out(25),
      R => '0'
    );
\APU_Pulse1_reg[volume][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(2),
      Q => APU_Pulse1_Out(26),
      R => '0'
    );
\APU_Pulse1_reg[volume][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse1[duty]\,
      D => CPU_Data(3),
      Q => APU_Pulse1_Out(27),
      R => '0'
    );
\APU_Pulse2[duty][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Pulse2[duty]\
    );
\APU_Pulse2[sweep_enable]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Pulse2[sweep_enable]\
    );
\APU_Pulse2[timer][10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Pulse2[timer][10]_i_1_n_0\
    );
\APU_Pulse2[timer][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(2),
      I2 => CPU_Addr(0),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Pulse2[timer][7]_i_1_n_0\
    );
\APU_Pulse2_reg[constant_volume]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(4),
      Q => APU_Pulse2_Out(28),
      R => '0'
    );
\APU_Pulse2_reg[duty][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(6),
      Q => APU_Pulse2_Out(30),
      R => '0'
    );
\APU_Pulse2_reg[duty][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(7),
      Q => APU_Pulse2_Out(31),
      R => '0'
    );
\APU_Pulse2_reg[length_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(3),
      Q => APU_Pulse2_Out(0),
      R => '0'
    );
\APU_Pulse2_reg[length_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(4),
      Q => APU_Pulse2_Out(1),
      R => '0'
    );
\APU_Pulse2_reg[length_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(5),
      Q => APU_Pulse2_Out(2),
      R => '0'
    );
\APU_Pulse2_reg[length_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(6),
      Q => APU_Pulse2_Out(3),
      R => '0'
    );
\APU_Pulse2_reg[length_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(7),
      Q => APU_Pulse2_Out(4),
      R => '0'
    );
\APU_Pulse2_reg[length_counter_halt]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(5),
      Q => APU_Pulse2_Out(29),
      R => '0'
    );
\APU_Pulse2_reg[sweep_enable]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(7),
      Q => APU_Pulse2_Out(23),
      R => '0'
    );
\APU_Pulse2_reg[sweep_negate]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(3),
      Q => APU_Pulse2_Out(19),
      R => '0'
    );
\APU_Pulse2_reg[sweep_period][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(4),
      Q => APU_Pulse2_Out(20),
      R => '0'
    );
\APU_Pulse2_reg[sweep_period][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(5),
      Q => APU_Pulse2_Out(21),
      R => '0'
    );
\APU_Pulse2_reg[sweep_period][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(6),
      Q => APU_Pulse2_Out(22),
      R => '0'
    );
\APU_Pulse2_reg[sweep_shift][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(0),
      Q => APU_Pulse2_Out(16),
      R => '0'
    );
\APU_Pulse2_reg[sweep_shift][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(1),
      Q => APU_Pulse2_Out(17),
      R => '0'
    );
\APU_Pulse2_reg[sweep_shift][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[sweep_enable]\,
      D => CPU_Data(2),
      Q => APU_Pulse2_Out(18),
      R => '0'
    );
\APU_Pulse2_reg[timer][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(0),
      Q => APU_Pulse2_Out(5),
      R => '0'
    );
\APU_Pulse2_reg[timer][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(2),
      Q => APU_Pulse2_Out(15),
      R => '0'
    );
\APU_Pulse2_reg[timer][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(1),
      Q => APU_Pulse2_Out(6),
      R => '0'
    );
\APU_Pulse2_reg[timer][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(2),
      Q => APU_Pulse2_Out(7),
      R => '0'
    );
\APU_Pulse2_reg[timer][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(3),
      Q => APU_Pulse2_Out(8),
      R => '0'
    );
\APU_Pulse2_reg[timer][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(4),
      Q => APU_Pulse2_Out(9),
      R => '0'
    );
\APU_Pulse2_reg[timer][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(5),
      Q => APU_Pulse2_Out(10),
      R => '0'
    );
\APU_Pulse2_reg[timer][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(6),
      Q => APU_Pulse2_Out(11),
      R => '0'
    );
\APU_Pulse2_reg[timer][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][7]_i_1_n_0\,
      D => CPU_Data(7),
      Q => APU_Pulse2_Out(12),
      R => '0'
    );
\APU_Pulse2_reg[timer][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(0),
      Q => APU_Pulse2_Out(13),
      R => '0'
    );
\APU_Pulse2_reg[timer][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[timer][10]_i_1_n_0\,
      D => CPU_Data(1),
      Q => APU_Pulse2_Out(14),
      R => '0'
    );
\APU_Pulse2_reg[volume][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(0),
      Q => APU_Pulse2_Out(24),
      R => '0'
    );
\APU_Pulse2_reg[volume][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(1),
      Q => APU_Pulse2_Out(25),
      R => '0'
    );
\APU_Pulse2_reg[volume][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(2),
      Q => APU_Pulse2_Out(26),
      R => '0'
    );
\APU_Pulse2_reg[volume][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Pulse2[duty]\,
      D => CPU_Data(3),
      Q => APU_Pulse2_Out(27),
      R => '0'
    );
\APU_Status[dmc_active]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => CPU_Addr(1),
      I1 => CPU_Addr(3),
      I2 => CPU_Addr(0),
      I3 => CPU_Addr(2),
      I4 => \APU_DMC[irq_enable]_i_2_n_0\,
      O => \APU_Status[dmc_active]\
    );
\APU_Status_reg[dmc_active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      D => CPU_Data(4),
      Q => APU_Status_Out(4),
      R => '0'
    );
\APU_Status_reg[noise_active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      D => CPU_Data(3),
      Q => APU_Status_Out(3),
      R => '0'
    );
\APU_Status_reg[pulse1_active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      D => CPU_Data(0),
      Q => APU_Status_Out(0),
      R => '0'
    );
\APU_Status_reg[pulse2_active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      D => CPU_Data(1),
      Q => APU_Status_Out(1),
      R => '0'
    );
\APU_Status_reg[triangle_active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Status[dmc_active]\,
      D => CPU_Data(2),
      Q => APU_Status_Out(2),
      R => '0'
    );
\APU_Triangle[length_counter_halt]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(1),
      I4 => \APU_Pulse1[duty][1]_i_2_n_0\,
      I5 => CPU_Addr(4),
      O => \APU_Triangle[length_counter_halt]\
    );
\APU_Triangle[timer][10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => CPU_Addr(2),
      I1 => CPU_Addr(0),
      I2 => CPU_Addr(3),
      I3 => \APU_Pulse1[timer][10]_i_2_n_0\,
      O => \APU_Triangle[timer][10]_i_1_n_0\
    );
\APU_Triangle[timer][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => CPU_Addr(3),
      I1 => \APU_Pulse1[timer][10]_i_2_n_0\,
      I2 => CPU_Addr(2),
      I3 => CPU_Addr(0),
      O => \APU_Triangle[timer][7]_i_1_n_0\
    );
\APU_Triangle_reg[length_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(7),
      R => '0'
    );
\APU_Triangle_reg[length_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(8),
      R => '0'
    );
\APU_Triangle_reg[length_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(9),
      R => '0'
    );
\APU_Triangle_reg[length_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(10),
      R => '0'
    );
\APU_Triangle_reg[length_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(11),
      R => '0'
    );
\APU_Triangle_reg[length_counter_halt]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(30),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(23),
      Q => \^apu_triangle_out\(0),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(24),
      Q => \^apu_triangle_out\(1),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(25),
      Q => \^apu_triangle_out\(2),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(26),
      Q => \^apu_triangle_out\(3),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(27),
      Q => \^apu_triangle_out\(4),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(28),
      Q => \^apu_triangle_out\(5),
      R => '0'
    );
\APU_Triangle_reg[linear_counter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => \^apu_triangle_out\(29),
      Q => \^apu_triangle_out\(6),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(23),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(24),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(25),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(26),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(27),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(28),
      R => '0'
    );
\APU_Triangle_reg[linear_counter_load][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[length_counter_halt]\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(29),
      R => '0'
    );
\APU_Triangle_reg[timer][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(12),
      R => '0'
    );
\APU_Triangle_reg[timer][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(22),
      R => '0'
    );
\APU_Triangle_reg[timer][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(13),
      R => '0'
    );
\APU_Triangle_reg[timer][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(2),
      Q => \^apu_triangle_out\(14),
      R => '0'
    );
\APU_Triangle_reg[timer][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(3),
      Q => \^apu_triangle_out\(15),
      R => '0'
    );
\APU_Triangle_reg[timer][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(4),
      Q => \^apu_triangle_out\(16),
      R => '0'
    );
\APU_Triangle_reg[timer][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(5),
      Q => \^apu_triangle_out\(17),
      R => '0'
    );
\APU_Triangle_reg[timer][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(6),
      Q => \^apu_triangle_out\(18),
      R => '0'
    );
\APU_Triangle_reg[timer][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][7]_i_1_n_0\,
      D => CPU_Data(7),
      Q => \^apu_triangle_out\(19),
      R => '0'
    );
\APU_Triangle_reg[timer][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(0),
      Q => \^apu_triangle_out\(20),
      R => '0'
    );
\APU_Triangle_reg[timer][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CPU_M2,
      CE => \APU_Triangle[timer][10]_i_1_n_0\,
      D => CPU_Data(1),
      Q => \^apu_triangle_out\(21),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_apu_registers_0_0 is
  port (
    Clk : in STD_LOGIC;
    CPU_Clk : in STD_LOGIC;
    CPU_M2 : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_RomSel : in STD_LOGIC;
    CPU_RW : in STD_LOGIC;
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    APU_Status_Out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Update : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_nes_apu_registers_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_nes_apu_registers_0_0 : entity is "design_1_nes_apu_registers_0_0,nes_apu_registers,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_nes_apu_registers_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_nes_apu_registers_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_nes_apu_registers_0_0 : entity is "nes_apu_registers,Vivado 2022.2";
end design_1_nes_apu_registers_0_0;

architecture STRUCTURE of design_1_nes_apu_registers_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^apu_status_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CPU_Clk : signal is "xilinx.com:signal:clock:1.0 CPU_Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CPU_Clk : signal is "XIL_INTERFACENAME CPU_Clk, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  APU_Status_Out(6) <= \<const0>\;
  APU_Status_Out(5) <= \<const0>\;
  APU_Status_Out(4 downto 0) <= \^apu_status_out\(4 downto 0);
  Update <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_nes_apu_registers_0_0_nes_apu_registers
     port map (
      APU_Counter_Out(1 downto 0) => APU_Counter_Out(1 downto 0),
      APU_DMC_Out(28 downto 0) => APU_DMC_Out(28 downto 0),
      APU_Noise_Out(15 downto 0) => APU_Noise_Out(15 downto 0),
      APU_Pulse1_Out(31 downto 0) => APU_Pulse1_Out(31 downto 0),
      APU_Pulse2_Out(31 downto 0) => APU_Pulse2_Out(31 downto 0),
      APU_Status_Out(4 downto 0) => \^apu_status_out\(4 downto 0),
      APU_Triangle_Out(30 downto 0) => APU_Triangle_Out(30 downto 0),
      CPU_Addr(14 downto 0) => CPU_Addr(14 downto 0),
      CPU_Data(7 downto 0) => CPU_Data(7 downto 0),
      CPU_M2 => CPU_M2,
      CPU_RW => CPU_RW,
      CPU_RomSel => CPU_RomSel
    );
end STRUCTURE;
