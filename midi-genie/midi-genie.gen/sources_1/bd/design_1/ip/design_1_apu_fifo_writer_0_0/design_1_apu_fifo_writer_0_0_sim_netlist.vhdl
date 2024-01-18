-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Jan 17 19:47:52 2024
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
    FifoData : out STD_LOGIC_VECTOR ( 18 downto 0 );
    FifoWrite : out STD_LOGIC;
    Pulse1_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Pulse2_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_apu_fifo_writer_0_0_apu_fifo_writer : entity is "apu_fifo_writer";
end design_1_apu_fifo_writer_0_0_apu_fifo_writer;

architecture STRUCTURE of design_1_apu_fifo_writer_0_0_apu_fifo_writer is
  signal FifoData0 : STD_LOGIC;
  signal \FifoData0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FifoData0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \FifoData0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \FifoData0_carry__0_n_2\ : STD_LOGIC;
  signal \FifoData0_carry__0_n_3\ : STD_LOGIC;
  signal FifoData0_carry_i_1_n_0 : STD_LOGIC;
  signal FifoData0_carry_i_2_n_0 : STD_LOGIC;
  signal FifoData0_carry_i_3_n_0 : STD_LOGIC;
  signal FifoData0_carry_i_4_n_0 : STD_LOGIC;
  signal FifoData0_carry_n_0 : STD_LOGIC;
  signal FifoData0_carry_n_1 : STD_LOGIC;
  signal FifoData0_carry_n_2 : STD_LOGIC;
  signal FifoData0_carry_n_3 : STD_LOGIC;
  signal FifoData1 : STD_LOGIC;
  signal \FifoData1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FifoData1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \FifoData1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \FifoData1_carry__0_n_2\ : STD_LOGIC;
  signal \FifoData1_carry__0_n_3\ : STD_LOGIC;
  signal FifoData1_carry_i_1_n_0 : STD_LOGIC;
  signal FifoData1_carry_i_2_n_0 : STD_LOGIC;
  signal FifoData1_carry_i_3_n_0 : STD_LOGIC;
  signal FifoData1_carry_i_4_n_0 : STD_LOGIC;
  signal FifoData1_carry_n_0 : STD_LOGIC;
  signal FifoData1_carry_n_1 : STD_LOGIC;
  signal FifoData1_carry_n_2 : STD_LOGIC;
  signal FifoData1_carry_n_3 : STD_LOGIC;
  signal \FifoData[18]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_3_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal pulse1_message_last : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal pulse2_message_last : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal pulse2_message_last_0 : STD_LOGIC;
  signal NLW_FifoData0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FifoData0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_FifoData1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FifoData1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FifoData[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FifoData[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FifoData[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FifoData[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FifoData[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FifoData[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FifoData[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FifoData[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FifoData[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FifoData[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FifoData[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FifoData[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FifoData[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FifoData[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FifoData[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FifoData[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FifoData[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FifoData[9]_i_1\ : label is "soft_lutpair4";
begin
FifoData0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FifoData0_carry_n_0,
      CO(2) => FifoData0_carry_n_1,
      CO(1) => FifoData0_carry_n_2,
      CO(0) => FifoData0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_FifoData0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FifoData0_carry_i_1_n_0,
      S(2) => FifoData0_carry_i_2_n_0,
      S(1) => FifoData0_carry_i_3_n_0,
      S(0) => FifoData0_carry_i_4_n_0
    );
\FifoData0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FifoData0_carry_n_0,
      CO(3) => \NLW_FifoData0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => FifoData0,
      CO(1) => \FifoData0_carry__0_n_2\,
      CO(0) => \FifoData0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FifoData0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FifoData0_carry__0_i_1_n_0\,
      S(1) => \FifoData0_carry__0_i_2_n_0\,
      S(0) => \FifoData0_carry__0_i_3_n_0\
    );
\FifoData0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pulse2_message_last(18),
      I1 => Pulse2_Message(18),
      O => \FifoData0_carry__0_i_1_n_0\
    );
\FifoData0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(15),
      I1 => pulse2_message_last(15),
      I2 => pulse2_message_last(17),
      I3 => Pulse2_Message(17),
      I4 => pulse2_message_last(16),
      I5 => Pulse2_Message(16),
      O => \FifoData0_carry__0_i_2_n_0\
    );
\FifoData0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(12),
      I1 => pulse2_message_last(12),
      I2 => pulse2_message_last(14),
      I3 => Pulse2_Message(14),
      I4 => pulse2_message_last(13),
      I5 => Pulse2_Message(13),
      O => \FifoData0_carry__0_i_3_n_0\
    );
FifoData0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(9),
      I1 => pulse2_message_last(9),
      I2 => pulse2_message_last(11),
      I3 => Pulse2_Message(11),
      I4 => pulse2_message_last(10),
      I5 => Pulse2_Message(10),
      O => FifoData0_carry_i_1_n_0
    );
FifoData0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(6),
      I1 => pulse2_message_last(6),
      I2 => pulse2_message_last(8),
      I3 => Pulse2_Message(8),
      I4 => pulse2_message_last(7),
      I5 => Pulse2_Message(7),
      O => FifoData0_carry_i_2_n_0
    );
FifoData0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(3),
      I1 => pulse2_message_last(3),
      I2 => pulse2_message_last(5),
      I3 => Pulse2_Message(5),
      I4 => pulse2_message_last(4),
      I5 => Pulse2_Message(4),
      O => FifoData0_carry_i_3_n_0
    );
FifoData0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(0),
      I1 => pulse2_message_last(0),
      I2 => pulse2_message_last(2),
      I3 => Pulse2_Message(2),
      I4 => pulse2_message_last(1),
      I5 => Pulse2_Message(1),
      O => FifoData0_carry_i_4_n_0
    );
FifoData1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FifoData1_carry_n_0,
      CO(2) => FifoData1_carry_n_1,
      CO(1) => FifoData1_carry_n_2,
      CO(0) => FifoData1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_FifoData1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FifoData1_carry_i_1_n_0,
      S(2) => FifoData1_carry_i_2_n_0,
      S(1) => FifoData1_carry_i_3_n_0,
      S(0) => FifoData1_carry_i_4_n_0
    );
\FifoData1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FifoData1_carry_n_0,
      CO(3) => \NLW_FifoData1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => FifoData1,
      CO(1) => \FifoData1_carry__0_n_2\,
      CO(0) => \FifoData1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FifoData1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FifoData1_carry__0_i_1_n_0\,
      S(1) => \FifoData1_carry__0_i_2_n_0\,
      S(0) => \FifoData1_carry__0_i_3_n_0\
    );
\FifoData1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pulse1_message_last(18),
      I1 => Pulse1_Message(18),
      O => \FifoData1_carry__0_i_1_n_0\
    );
\FifoData1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(15),
      I1 => pulse1_message_last(15),
      I2 => pulse1_message_last(17),
      I3 => Pulse1_Message(17),
      I4 => pulse1_message_last(16),
      I5 => Pulse1_Message(16),
      O => \FifoData1_carry__0_i_2_n_0\
    );
\FifoData1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(12),
      I1 => pulse1_message_last(12),
      I2 => pulse1_message_last(14),
      I3 => Pulse1_Message(14),
      I4 => pulse1_message_last(13),
      I5 => Pulse1_Message(13),
      O => \FifoData1_carry__0_i_3_n_0\
    );
FifoData1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(9),
      I1 => pulse1_message_last(9),
      I2 => pulse1_message_last(11),
      I3 => Pulse1_Message(11),
      I4 => pulse1_message_last(10),
      I5 => Pulse1_Message(10),
      O => FifoData1_carry_i_1_n_0
    );
FifoData1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(6),
      I1 => pulse1_message_last(6),
      I2 => pulse1_message_last(8),
      I3 => Pulse1_Message(8),
      I4 => pulse1_message_last(7),
      I5 => Pulse1_Message(7),
      O => FifoData1_carry_i_2_n_0
    );
FifoData1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(3),
      I1 => pulse1_message_last(3),
      I2 => pulse1_message_last(5),
      I3 => Pulse1_Message(5),
      I4 => pulse1_message_last(4),
      I5 => Pulse1_Message(4),
      O => FifoData1_carry_i_3_n_0
    );
FifoData1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(0),
      I1 => pulse1_message_last(0),
      I2 => pulse1_message_last(2),
      I3 => Pulse1_Message(2),
      I4 => pulse1_message_last(1),
      I5 => Pulse1_Message(1),
      O => FifoData1_carry_i_4_n_0
    );
\FifoData[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(0),
      I1 => Pulse2_Message(0),
      I2 => FifoData1,
      O => p_1_in(0)
    );
\FifoData[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(10),
      I1 => Pulse2_Message(10),
      I2 => FifoData1,
      O => p_1_in(10)
    );
\FifoData[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(11),
      I1 => Pulse2_Message(11),
      I2 => FifoData1,
      O => p_1_in(11)
    );
\FifoData[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(12),
      I1 => Pulse2_Message(12),
      I2 => FifoData1,
      O => p_1_in(12)
    );
\FifoData[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(13),
      I1 => Pulse2_Message(13),
      I2 => FifoData1,
      O => p_1_in(13)
    );
\FifoData[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(14),
      I1 => Pulse2_Message(14),
      I2 => FifoData1,
      O => p_1_in(14)
    );
\FifoData[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(15),
      I1 => Pulse2_Message(15),
      I2 => FifoData1,
      O => p_1_in(15)
    );
\FifoData[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(16),
      I1 => Pulse2_Message(16),
      I2 => FifoData1,
      O => p_1_in(16)
    );
\FifoData[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(17),
      I1 => Pulse2_Message(17),
      I2 => FifoData1,
      O => p_1_in(17)
    );
\FifoData[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => FifoData1,
      I1 => FifoData0,
      O => \FifoData[18]_i_1_n_0\
    );
\FifoData[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(18),
      I1 => Pulse2_Message(18),
      I2 => FifoData1,
      O => p_1_in(18)
    );
\FifoData[18]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset,
      O => \FifoData[18]_i_3_n_0\
    );
\FifoData[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(1),
      I1 => Pulse2_Message(1),
      I2 => FifoData1,
      O => p_1_in(1)
    );
\FifoData[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(2),
      I1 => Pulse2_Message(2),
      I2 => FifoData1,
      O => p_1_in(2)
    );
\FifoData[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(3),
      I1 => Pulse2_Message(3),
      I2 => FifoData1,
      O => p_1_in(3)
    );
\FifoData[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(4),
      I1 => Pulse2_Message(4),
      I2 => FifoData1,
      O => p_1_in(4)
    );
\FifoData[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(5),
      I1 => Pulse2_Message(5),
      I2 => FifoData1,
      O => p_1_in(5)
    );
\FifoData[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(6),
      I1 => Pulse2_Message(6),
      I2 => FifoData1,
      O => p_1_in(6)
    );
\FifoData[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(7),
      I1 => Pulse2_Message(7),
      I2 => FifoData1,
      O => p_1_in(7)
    );
\FifoData[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(8),
      I1 => Pulse2_Message(8),
      I2 => FifoData1,
      O => p_1_in(8)
    );
\FifoData[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Pulse1_Message(9),
      I1 => Pulse2_Message(9),
      I2 => FifoData1,
      O => p_1_in(9)
    );
\FifoData_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(0),
      Q => FifoData(0)
    );
\FifoData_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(10),
      Q => FifoData(10)
    );
\FifoData_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(11),
      Q => FifoData(11)
    );
\FifoData_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(12),
      Q => FifoData(12)
    );
\FifoData_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(13),
      Q => FifoData(13)
    );
\FifoData_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(14),
      Q => FifoData(14)
    );
\FifoData_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(15),
      Q => FifoData(15)
    );
\FifoData_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(16),
      Q => FifoData(16)
    );
\FifoData_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(17),
      Q => FifoData(17)
    );
\FifoData_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(18),
      Q => FifoData(18)
    );
\FifoData_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(1),
      Q => FifoData(1)
    );
\FifoData_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(2),
      Q => FifoData(2)
    );
\FifoData_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(3),
      Q => FifoData(3)
    );
\FifoData_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(4),
      Q => FifoData(4)
    );
\FifoData_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(5),
      Q => FifoData(5)
    );
\FifoData_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(6),
      Q => FifoData(6)
    );
\FifoData_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(7),
      Q => FifoData(7)
    );
\FifoData_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(8),
      Q => FifoData(8)
    );
\FifoData_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => p_1_in(9),
      Q => FifoData(9)
    );
FifoWrite_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[18]_i_1_n_0\,
      Q => FifoWrite
    );
\pulse1_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(0),
      Q => pulse1_message_last(0)
    );
\pulse1_message_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(10),
      Q => pulse1_message_last(10)
    );
\pulse1_message_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(11),
      Q => pulse1_message_last(11)
    );
\pulse1_message_last_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(12),
      Q => pulse1_message_last(12)
    );
\pulse1_message_last_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(13),
      Q => pulse1_message_last(13)
    );
\pulse1_message_last_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(14),
      Q => pulse1_message_last(14)
    );
\pulse1_message_last_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(15),
      Q => pulse1_message_last(15)
    );
\pulse1_message_last_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(16),
      Q => pulse1_message_last(16)
    );
\pulse1_message_last_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(17),
      Q => pulse1_message_last(17)
    );
\pulse1_message_last_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(18),
      Q => pulse1_message_last(18)
    );
\pulse1_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(1),
      Q => pulse1_message_last(1)
    );
\pulse1_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(2),
      Q => pulse1_message_last(2)
    );
\pulse1_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(3),
      Q => pulse1_message_last(3)
    );
\pulse1_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(4),
      Q => pulse1_message_last(4)
    );
\pulse1_message_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(5),
      Q => pulse1_message_last(5)
    );
\pulse1_message_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(6),
      Q => pulse1_message_last(6)
    );
\pulse1_message_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(7),
      Q => pulse1_message_last(7)
    );
\pulse1_message_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(8),
      Q => pulse1_message_last(8)
    );
\pulse1_message_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => FifoData1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(9),
      Q => pulse1_message_last(9)
    );
\pulse2_message_last[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FifoData0,
      I1 => FifoData1,
      O => pulse2_message_last_0
    );
\pulse2_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(0),
      Q => pulse2_message_last(0)
    );
\pulse2_message_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(10),
      Q => pulse2_message_last(10)
    );
\pulse2_message_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(11),
      Q => pulse2_message_last(11)
    );
\pulse2_message_last_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(12),
      Q => pulse2_message_last(12)
    );
\pulse2_message_last_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(13),
      Q => pulse2_message_last(13)
    );
\pulse2_message_last_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(14),
      Q => pulse2_message_last(14)
    );
\pulse2_message_last_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(15),
      Q => pulse2_message_last(15)
    );
\pulse2_message_last_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(16),
      Q => pulse2_message_last(16)
    );
\pulse2_message_last_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(17),
      Q => pulse2_message_last(17)
    );
\pulse2_message_last_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(18),
      Q => pulse2_message_last(18)
    );
\pulse2_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(1),
      Q => pulse2_message_last(1)
    );
\pulse2_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(2),
      Q => pulse2_message_last(2)
    );
\pulse2_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(3),
      Q => pulse2_message_last(3)
    );
\pulse2_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(4),
      Q => pulse2_message_last(4)
    );
\pulse2_message_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(5),
      Q => pulse2_message_last(5)
    );
\pulse2_message_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(6),
      Q => pulse2_message_last(6)
    );
\pulse2_message_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(7),
      Q => pulse2_message_last(7)
    );
\pulse2_message_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(8),
      Q => pulse2_message_last(8)
    );
\pulse2_message_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(9),
      Q => pulse2_message_last(9)
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
    Pulse1_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Pulse2_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 18 downto 0 );
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
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_apu_fifo_writer_0_0_apu_fifo_writer
     port map (
      Clk => Clk,
      FifoData(18 downto 0) => FifoData(18 downto 0),
      FifoWrite => FifoWrite,
      Pulse1_Message(18 downto 0) => Pulse1_Message(18 downto 0),
      Pulse2_Message(18 downto 0) => Pulse2_Message(18 downto 0),
      Reset => Reset
    );
end STRUCTURE;
