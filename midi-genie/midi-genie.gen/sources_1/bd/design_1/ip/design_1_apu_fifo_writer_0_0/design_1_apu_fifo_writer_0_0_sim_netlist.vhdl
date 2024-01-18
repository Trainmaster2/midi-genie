-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Jan 17 17:16:49 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_apu_fifo_writer_0_0/design_1_apu_fifo_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_apu_fifo_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_apu_fifo_writer_0_0_apu_fifo_writer is
  port (
    \FifoData_reg[15]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    FifoWrite : out STD_LOGIC;
    Pulse2_Timer : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Pulse1_Timer : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Clk : in STD_LOGIC;
    Pulse1_Volume : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Pulse2_Volume : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_apu_fifo_writer_0_0_apu_fifo_writer : entity is "apu_fifo_writer";
end design_1_apu_fifo_writer_0_0_apu_fifo_writer;

architecture STRUCTURE of design_1_apu_fifo_writer_0_0_apu_fifo_writer is
  signal FifoData : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal FifoData0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FifoData13_out : STD_LOGIC;
  signal \FifoData1__1\ : STD_LOGIC;
  signal FifoData2 : STD_LOGIC;
  signal FifoData21_out : STD_LOGIC;
  signal FifoData2_carry_i_1_n_0 : STD_LOGIC;
  signal FifoData2_carry_i_2_n_0 : STD_LOGIC;
  signal FifoData2_carry_i_3_n_0 : STD_LOGIC;
  signal FifoData2_carry_i_4_n_0 : STD_LOGIC;
  signal FifoData2_carry_n_1 : STD_LOGIC;
  signal FifoData2_carry_n_2 : STD_LOGIC;
  signal FifoData2_carry_n_3 : STD_LOGIC;
  signal \FifoData2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \FifoData2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \FifoData2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \FifoData[15]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[4]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[7]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[7]_i_7_n_0\ : STD_LOGIC;
  signal \FifoData[7]_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal p_1_in : STD_LOGIC;
  signal pulse1_timer_last : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pulse1_timer_last_reg_n_0_[10]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[11]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[1]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[2]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[3]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[4]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[5]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[6]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[7]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[8]\ : STD_LOGIC;
  signal \pulse1_timer_last_reg_n_0_[9]\ : STD_LOGIC;
  signal pulse1_volume_last : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pulse1_volume_last[3]_i_1_n_0\ : STD_LOGIC;
  signal pulse2_timer_last : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \pulse2_timer_last[11]_i_1_n_0\ : STD_LOGIC;
  signal \pulse2_timer_last_reg_n_0_[0]\ : STD_LOGIC;
  signal pulse2_volume_last : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pulse2_volume_last_0 : STD_LOGIC;
  signal NLW_FifoData2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FifoData[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FifoData[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FifoData[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FifoData[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FifoData[7]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FifoData[7]_i_6\ : label is "soft_lutpair1";
begin
FifoData2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FifoData21_out,
      CO(2) => FifoData2_carry_n_1,
      CO(1) => FifoData2_carry_n_2,
      CO(0) => FifoData2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_FifoData2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FifoData2_carry_i_1_n_0,
      S(2) => FifoData2_carry_i_2_n_0,
      S(1) => FifoData2_carry_i_3_n_0,
      S(0) => FifoData2_carry_i_4_n_0
    );
FifoData2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Timer(9),
      I1 => \pulse1_timer_last_reg_n_0_[9]\,
      I2 => \pulse1_timer_last_reg_n_0_[11]\,
      I3 => Pulse1_Timer(11),
      I4 => \pulse1_timer_last_reg_n_0_[10]\,
      I5 => Pulse1_Timer(10),
      O => FifoData2_carry_i_1_n_0
    );
FifoData2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Timer(6),
      I1 => \pulse1_timer_last_reg_n_0_[6]\,
      I2 => \pulse1_timer_last_reg_n_0_[8]\,
      I3 => Pulse1_Timer(8),
      I4 => \pulse1_timer_last_reg_n_0_[7]\,
      I5 => Pulse1_Timer(7),
      O => FifoData2_carry_i_2_n_0
    );
FifoData2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Timer(3),
      I1 => \pulse1_timer_last_reg_n_0_[3]\,
      I2 => \pulse1_timer_last_reg_n_0_[5]\,
      I3 => Pulse1_Timer(5),
      I4 => \pulse1_timer_last_reg_n_0_[4]\,
      I5 => Pulse1_Timer(4),
      O => FifoData2_carry_i_3_n_0
    );
FifoData2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Timer(0),
      I1 => pulse1_timer_last(0),
      I2 => \pulse1_timer_last_reg_n_0_[2]\,
      I3 => Pulse1_Timer(2),
      I4 => \pulse1_timer_last_reg_n_0_[1]\,
      I5 => Pulse1_Timer(1),
      O => FifoData2_carry_i_4_n_0
    );
\FifoData2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FifoData2,
      CO(2) => \FifoData2_inferred__0/i__carry_n_1\,
      CO(1) => \FifoData2_inferred__0/i__carry_n_2\,
      CO(0) => \FifoData2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FifoData2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\FifoData[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001F1F1F1F1F"
    )
        port map (
      I0 => \pulse2_timer_last_reg_n_0_[0]\,
      I1 => Pulse2_Timer(0),
      I2 => FifoData2,
      I3 => pulse1_timer_last(0),
      I4 => Pulse1_Timer(0),
      I5 => FifoData21_out,
      O => FifoData0_out(0)
    );
\FifoData[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(6),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(6),
      O => FifoData0_out(10)
    );
\FifoData[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(7),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(7),
      O => FifoData0_out(11)
    );
\FifoData[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(8),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(8),
      O => FifoData0_out(12)
    );
\FifoData[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(9),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(9),
      O => FifoData0_out(13)
    );
\FifoData[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(10),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(10),
      O => FifoData0_out(14)
    );
\FifoData[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFA8FFA8A8A8"
    )
        port map (
      I0 => FifoData21_out,
      I1 => Pulse1_Timer(0),
      I2 => pulse1_timer_last(0),
      I3 => FifoData2,
      I4 => Pulse2_Timer(0),
      I5 => \pulse2_timer_last_reg_n_0_[0]\,
      O => p_0_in(15)
    );
\FifoData[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(11),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(11),
      O => FifoData0_out(15)
    );
\FifoData[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset,
      O => \FifoData[15]_i_3_n_0\
    );
\FifoData[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD55"
    )
        port map (
      I0 => \FifoData[7]_i_3_n_0\,
      I1 => \pulse2_timer_last_reg_n_0_[0]\,
      I2 => Pulse2_Timer(0),
      I3 => FifoData2,
      I4 => FifoData13_out,
      O => FifoData0_out(1)
    );
\FifoData[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFC0"
    )
        port map (
      I0 => pulse1_timer_last(0),
      I1 => Pulse1_Timer(0),
      I2 => FifoData21_out,
      I3 => \FifoData[4]_i_2_n_0\,
      O => FifoData0_out(4)
    );
\FifoData[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFC0DFDFDFC0C0C0"
    )
        port map (
      I0 => \pulse2_timer_last_reg_n_0_[0]\,
      I1 => Pulse2_Timer(0),
      I2 => FifoData2,
      I3 => Pulse1_Volume(0),
      I4 => \FifoData[7]_i_3_n_0\,
      I5 => Pulse2_Volume(0),
      O => \FifoData[4]_i_2_n_0\
    );
\FifoData[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Pulse1_Timer(1),
      I1 => FifoData13_out,
      I2 => Pulse2_Timer(1),
      I3 => \FifoData1__1\,
      I4 => FifoData(5),
      O => FifoData0_out(5)
    );
\FifoData[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Volume(1),
      I1 => \FifoData[7]_i_3_n_0\,
      I2 => Pulse2_Volume(1),
      O => FifoData(5)
    );
\FifoData[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Pulse1_Timer(2),
      I1 => FifoData13_out,
      I2 => Pulse2_Timer(2),
      I3 => \FifoData1__1\,
      I4 => FifoData(6),
      O => FifoData0_out(6)
    );
\FifoData[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Volume(2),
      I1 => \FifoData[7]_i_3_n_0\,
      I2 => Pulse2_Volume(2),
      O => FifoData(6)
    );
\FifoData[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => FifoData13_out,
      I1 => \FifoData[7]_i_3_n_0\,
      I2 => p_1_in,
      I3 => \pulse2_timer_last_reg_n_0_[0]\,
      I4 => Pulse2_Timer(0),
      I5 => FifoData2,
      O => p_0_in(7)
    );
\FifoData[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Pulse1_Timer(3),
      I1 => FifoData13_out,
      I2 => Pulse2_Timer(3),
      I3 => \FifoData1__1\,
      I4 => FifoData(7),
      O => FifoData0_out(7)
    );
\FifoData[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => Pulse1_Volume(3),
      I1 => pulse1_volume_last(3),
      I2 => \FifoData[7]_i_7_n_0\,
      O => \FifoData[7]_i_3_n_0\
    );
\FifoData[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => Pulse2_Volume(3),
      I1 => pulse2_volume_last(3),
      I2 => \FifoData[7]_i_8_n_0\,
      O => p_1_in
    );
\FifoData[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \pulse2_timer_last_reg_n_0_[0]\,
      I1 => Pulse2_Timer(0),
      I2 => FifoData2,
      O => \FifoData1__1\
    );
\FifoData[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Pulse1_Volume(3),
      I1 => \FifoData[7]_i_3_n_0\,
      I2 => Pulse2_Volume(3),
      O => FifoData(7)
    );
\FifoData[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Pulse1_Volume(0),
      I1 => pulse1_volume_last(0),
      I2 => pulse1_volume_last(2),
      I3 => Pulse1_Volume(2),
      I4 => pulse1_volume_last(1),
      I5 => Pulse1_Volume(1),
      O => \FifoData[7]_i_7_n_0\
    );
\FifoData[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Pulse2_Volume(0),
      I1 => pulse2_volume_last(0),
      I2 => pulse2_volume_last(2),
      I3 => Pulse2_Volume(2),
      I4 => pulse2_volume_last(1),
      I5 => Pulse2_Volume(1),
      O => \FifoData[7]_i_8_n_0\
    );
\FifoData[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(4),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(4),
      O => FifoData0_out(8)
    );
\FifoData[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => Pulse1_Timer(5),
      I1 => pulse1_timer_last(0),
      I2 => Pulse1_Timer(0),
      I3 => FifoData21_out,
      I4 => Pulse2_Timer(5),
      O => FifoData0_out(9)
    );
\FifoData_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(0),
      Q => \FifoData_reg[15]_0\(0)
    );
\FifoData_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(10),
      Q => \FifoData_reg[15]_0\(8)
    );
\FifoData_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(11),
      Q => \FifoData_reg[15]_0\(9)
    );
\FifoData_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(12),
      Q => \FifoData_reg[15]_0\(10)
    );
\FifoData_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(13),
      Q => \FifoData_reg[15]_0\(11)
    );
\FifoData_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(14),
      Q => \FifoData_reg[15]_0\(12)
    );
\FifoData_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(15),
      Q => \FifoData_reg[15]_0\(13)
    );
\FifoData_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(1),
      Q => \FifoData_reg[15]_0\(1)
    );
\FifoData_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(4),
      Q => \FifoData_reg[15]_0\(2)
    );
\FifoData_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(5),
      Q => \FifoData_reg[15]_0\(3)
    );
\FifoData_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(6),
      Q => \FifoData_reg[15]_0\(4)
    );
\FifoData_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(7),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(7),
      Q => \FifoData_reg[15]_0\(5)
    );
\FifoData_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(8),
      Q => \FifoData_reg[15]_0\(6)
    );
\FifoData_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => p_0_in(15),
      CLR => \FifoData[15]_i_3_n_0\,
      D => FifoData0_out(9),
      Q => \FifoData_reg[15]_0\(7)
    );
FifoWrite_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \FifoData[15]_i_3_n_0\,
      D => p_0_in(7),
      Q => FifoWrite
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Timer(9),
      I1 => pulse2_timer_last(9),
      I2 => pulse2_timer_last(11),
      I3 => Pulse2_Timer(11),
      I4 => pulse2_timer_last(10),
      I5 => Pulse2_Timer(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Timer(6),
      I1 => pulse2_timer_last(6),
      I2 => pulse2_timer_last(8),
      I3 => Pulse2_Timer(8),
      I4 => pulse2_timer_last(7),
      I5 => Pulse2_Timer(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Timer(3),
      I1 => pulse2_timer_last(3),
      I2 => pulse2_timer_last(5),
      I3 => Pulse2_Timer(5),
      I4 => pulse2_timer_last(4),
      I5 => Pulse2_Timer(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Timer(0),
      I1 => \pulse2_timer_last_reg_n_0_[0]\,
      I2 => pulse2_timer_last(2),
      I3 => Pulse2_Timer(2),
      I4 => pulse2_timer_last(1),
      I5 => Pulse2_Timer(1),
      O => \i__carry_i_4_n_0\
    );
\pulse1_timer_last[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => pulse1_timer_last(0),
      I1 => Pulse1_Timer(0),
      I2 => FifoData21_out,
      O => FifoData13_out
    );
\pulse1_timer_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(0),
      Q => pulse1_timer_last(0)
    );
\pulse1_timer_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(10),
      Q => \pulse1_timer_last_reg_n_0_[10]\
    );
\pulse1_timer_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(11),
      Q => \pulse1_timer_last_reg_n_0_[11]\
    );
\pulse1_timer_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(1),
      Q => \pulse1_timer_last_reg_n_0_[1]\
    );
\pulse1_timer_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(2),
      Q => \pulse1_timer_last_reg_n_0_[2]\
    );
\pulse1_timer_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(3),
      Q => \pulse1_timer_last_reg_n_0_[3]\
    );
\pulse1_timer_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(4),
      Q => \pulse1_timer_last_reg_n_0_[4]\
    );
\pulse1_timer_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(5),
      Q => \pulse1_timer_last_reg_n_0_[5]\
    );
\pulse1_timer_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(6),
      Q => \pulse1_timer_last_reg_n_0_[6]\
    );
\pulse1_timer_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(7),
      Q => \pulse1_timer_last_reg_n_0_[7]\
    );
\pulse1_timer_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(8),
      Q => \pulse1_timer_last_reg_n_0_[8]\
    );
\pulse1_timer_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData13_out,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Timer(9),
      Q => \pulse1_timer_last_reg_n_0_[9]\
    );
\pulse1_volume_last[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005700"
    )
        port map (
      I0 => FifoData2,
      I1 => Pulse2_Timer(0),
      I2 => \pulse2_timer_last_reg_n_0_[0]\,
      I3 => \FifoData[7]_i_3_n_0\,
      I4 => FifoData13_out,
      O => \pulse1_volume_last[3]_i_1_n_0\
    );
\pulse1_volume_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse1_volume_last[3]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Volume(0),
      Q => pulse1_volume_last(0)
    );
\pulse1_volume_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse1_volume_last[3]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Volume(1),
      Q => pulse1_volume_last(1)
    );
\pulse1_volume_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse1_volume_last[3]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Volume(2),
      Q => pulse1_volume_last(2)
    );
\pulse1_volume_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse1_volume_last[3]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse1_Volume(3),
      Q => pulse1_volume_last(3)
    );
\pulse2_timer_last[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A800A800A8A8A8"
    )
        port map (
      I0 => FifoData2,
      I1 => Pulse2_Timer(0),
      I2 => \pulse2_timer_last_reg_n_0_[0]\,
      I3 => FifoData21_out,
      I4 => Pulse1_Timer(0),
      I5 => pulse1_timer_last(0),
      O => \pulse2_timer_last[11]_i_1_n_0\
    );
\pulse2_timer_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(0),
      Q => \pulse2_timer_last_reg_n_0_[0]\
    );
\pulse2_timer_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(10),
      Q => pulse2_timer_last(10)
    );
\pulse2_timer_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(11),
      Q => pulse2_timer_last(11)
    );
\pulse2_timer_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(1),
      Q => pulse2_timer_last(1)
    );
\pulse2_timer_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(2),
      Q => pulse2_timer_last(2)
    );
\pulse2_timer_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(3),
      Q => pulse2_timer_last(3)
    );
\pulse2_timer_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(4),
      Q => pulse2_timer_last(4)
    );
\pulse2_timer_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(5),
      Q => pulse2_timer_last(5)
    );
\pulse2_timer_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(6),
      Q => pulse2_timer_last(6)
    );
\pulse2_timer_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(7),
      Q => pulse2_timer_last(7)
    );
\pulse2_timer_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(8),
      Q => pulse2_timer_last(8)
    );
\pulse2_timer_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \pulse2_timer_last[11]_i_1_n_0\,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Timer(9),
      Q => pulse2_timer_last(9)
    );
\pulse2_volume_last[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001F0000"
    )
        port map (
      I0 => \pulse2_timer_last_reg_n_0_[0]\,
      I1 => Pulse2_Timer(0),
      I2 => FifoData2,
      I3 => FifoData13_out,
      I4 => p_1_in,
      I5 => \FifoData[7]_i_3_n_0\,
      O => pulse2_volume_last_0
    );
\pulse2_volume_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_volume_last_0,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Volume(0),
      Q => pulse2_volume_last(0)
    );
\pulse2_volume_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_volume_last_0,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Volume(1),
      Q => pulse2_volume_last(1)
    );
\pulse2_volume_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_volume_last_0,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Volume(2),
      Q => pulse2_volume_last(2)
    );
\pulse2_volume_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_volume_last_0,
      CLR => \FifoData[15]_i_3_n_0\,
      D => Pulse2_Volume(3),
      Q => pulse2_volume_last(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_apu_fifo_writer_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Pulse1_Timer : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Pulse1_Volume : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Pulse2_Timer : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Pulse2_Volume : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FifoWrite : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_apu_fifo_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_apu_fifo_writer_0_0 : entity is "design_1_apu_fifo_writer_0_0,apu_fifo_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_apu_fifo_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_apu_fifo_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_apu_fifo_writer_0_0 : entity is "apu_fifo_writer,Vivado 2022.2.2";
end design_1_apu_fifo_writer_0_0;

architecture STRUCTURE of design_1_apu_fifo_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fifodata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  FifoData(15 downto 4) <= \^fifodata\(15 downto 4);
  FifoData(3) <= \<const0>\;
  FifoData(2) <= \<const0>\;
  FifoData(1 downto 0) <= \^fifodata\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_apu_fifo_writer_0_0_apu_fifo_writer
     port map (
      Clk => Clk,
      \FifoData_reg[15]_0\(13 downto 2) => \^fifodata\(15 downto 4),
      \FifoData_reg[15]_0\(1 downto 0) => \^fifodata\(1 downto 0),
      FifoWrite => FifoWrite,
      Pulse1_Timer(11 downto 0) => Pulse1_Timer(11 downto 0),
      Pulse1_Volume(3 downto 0) => Pulse1_Volume(3 downto 0),
      Pulse2_Timer(11 downto 0) => Pulse2_Timer(11 downto 0),
      Pulse2_Volume(3 downto 0) => Pulse2_Volume(3 downto 0),
      Reset => Reset
    );
end STRUCTURE;
