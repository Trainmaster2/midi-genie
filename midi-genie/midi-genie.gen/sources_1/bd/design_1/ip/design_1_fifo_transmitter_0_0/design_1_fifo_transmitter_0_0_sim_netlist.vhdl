-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Tue Jan  9 23:57:22 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_fifo_transmitter_0_0/design_1_fifo_transmitter_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_transmitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_transmitter_0_0_fifo_transmitter is
  port (
    read_buf_reg_0 : out STD_LOGIC;
    Midi : out STD_LOGIC;
    Clk : in STD_LOGIC;
    FifoData : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Reset : in STD_LOGIC;
    FifoEmpty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_transmitter_0_0_fifo_transmitter : entity is "fifo_transmitter";
end design_1_fifo_transmitter_0_0_fifo_transmitter;

architecture STRUCTURE of design_1_fifo_transmitter_0_0_fifo_transmitter is
  signal Midi0_out : STD_LOGIC;
  signal Midi_i_10_n_0 : STD_LOGIC;
  signal Midi_i_13_n_0 : STD_LOGIC;
  signal Midi_i_14_n_0 : STD_LOGIC;
  signal Midi_i_15_n_0 : STD_LOGIC;
  signal Midi_i_16_n_0 : STD_LOGIC;
  signal Midi_i_1_n_0 : STD_LOGIC;
  signal Midi_i_3_n_0 : STD_LOGIC;
  signal Midi_i_5_n_0 : STD_LOGIC;
  signal Midi_i_6_n_0 : STD_LOGIC;
  signal Midi_i_7_n_0 : STD_LOGIC;
  signal Midi_i_8_n_0 : STD_LOGIC;
  signal Midi_i_9_n_0 : STD_LOGIC;
  signal Midi_reg_i_11_n_0 : STD_LOGIC;
  signal Midi_reg_i_12_n_0 : STD_LOGIC;
  signal Midi_reg_i_4_n_0 : STD_LOGIC;
  signal bitnum : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bytenum : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter2 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \counter2_carry__0_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_1\ : STD_LOGIC;
  signal \counter2_carry__0_n_2\ : STD_LOGIC;
  signal \counter2_carry__0_n_3\ : STD_LOGIC;
  signal \counter2_carry__1_n_2\ : STD_LOGIC;
  signal \counter2_carry__1_n_3\ : STD_LOGIC;
  signal counter2_carry_n_0 : STD_LOGIC;
  signal counter2_carry_n_1 : STD_LOGIC;
  signal counter2_carry_n_2 : STD_LOGIC;
  signal counter2_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \procTransmit.bitnum[0]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bitnum[1]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bitnum[2]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bitnum[3]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bytenum[0]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bytenum[1]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.bytenum_reg_n_0_[0]\ : STD_LOGIC;
  signal \procTransmit.bytenum_reg_n_0_[1]\ : STD_LOGIC;
  signal \procTransmit.counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][0]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][1]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][2]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][3]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][4]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][5]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][6]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_0][7]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][0]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][1]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][2]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][3]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][4]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][5]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][6]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_1][7]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][0]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][1]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][2]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][3]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][4]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][5]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][6]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[byte_n_0_2][7]\ : STD_LOGIC;
  signal \procTransmit.midi_rec_reg[numbytes]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \procTransmit.midi_rec_reg[numbytes]0\ : STD_LOGIC;
  signal read_buf_i_1_n_0 : STD_LOGIC;
  signal read_buf_i_3_n_0 : STD_LOGIC;
  signal read_buf_i_5_n_0 : STD_LOGIC;
  signal read_buf_i_6_n_0 : STD_LOGIC;
  signal read_buf_i_7_n_0 : STD_LOGIC;
  signal \^read_buf_reg_0\ : STD_LOGIC;
  signal read_fifo : STD_LOGIC;
  signal read_fifo_i_1_n_0 : STD_LOGIC;
  signal running : STD_LOGIC;
  signal \NLW_counter2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Midi_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Midi_i_7 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter2_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \procTransmit.bitnum[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \procTransmit.bitnum[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \procTransmit.bitnum[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \procTransmit.bitnum[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \procTransmit.bytenum[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \procTransmit.bytenum[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \procTransmit.counter[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \procTransmit.counter[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \procTransmit.counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \procTransmit.counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \procTransmit.counter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \procTransmit.counter[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \procTransmit.counter[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \procTransmit.counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \procTransmit.counter[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \procTransmit.counter[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \procTransmit.counter[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of read_buf_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of read_buf_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of read_buf_i_7 : label is "soft_lutpair5";
begin
  read_buf_reg_0 <= \^read_buf_reg_0\;
Midi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00E0000000E0"
    )
        port map (
      I0 => FifoData(25),
      I1 => FifoData(24),
      I2 => read_fifo,
      I3 => \^read_buf_reg_0\,
      I4 => running,
      I5 => Midi_i_3_n_0,
      O => Midi_i_1_n_0
    );
Midi_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_2][0]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_2][1]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_2][2]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_2][3]\,
      O => Midi_i_10_n_0
    );
Midi_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_0][4]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_0][5]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_0][6]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_0][7]\,
      O => Midi_i_13_n_0
    );
Midi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_0][0]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_0][1]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_0][2]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_0][3]\,
      O => Midi_i_14_n_0
    );
Midi_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_1][4]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_1][5]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_1][6]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_1][7]\,
      O => Midi_i_15_n_0
    );
Midi_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_1][0]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_1][1]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_1][2]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_1][3]\,
      O => Midi_i_16_n_0
    );
Midi_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBF8"
    )
        port map (
      I0 => Midi_reg_i_4_n_0,
      I1 => \procTransmit.bytenum_reg_n_0_[1]\,
      I2 => Midi_i_5_n_0,
      I3 => Midi_i_6_n_0,
      I4 => Midi_i_7_n_0,
      O => Midi0_out
    );
Midi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => counter(0),
      I1 => counter2(7),
      I2 => counter2(9),
      I3 => counter2(6),
      I4 => read_buf_i_6_n_0,
      I5 => read_buf_i_5_n_0,
      O => Midi_i_3_n_0
    );
Midi_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => bitnum(1),
      I1 => bitnum(0),
      I2 => bitnum(3),
      I3 => bitnum(2),
      O => Midi_i_5_n_0
    );
Midi_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => \procTransmit.bytenum_reg_n_0_[0]\,
      I1 => Midi_reg_i_11_n_0,
      I2 => Midi_reg_i_12_n_0,
      O => Midi_i_6_n_0
    );
Midi_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => bitnum(2),
      I1 => bitnum(3),
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => running,
      O => Midi_i_7_n_0
    );
Midi_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => bitnum(2),
      I1 => bitnum(0),
      I2 => bitnum(1),
      O => Midi_i_8_n_0
    );
Midi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACF0ACFFAC00AC0"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[byte_n_0_2][4]\,
      I1 => \procTransmit.midi_rec_reg[byte_n_0_2][5]\,
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => \procTransmit.midi_rec_reg[byte_n_0_2][6]\,
      I5 => \procTransmit.midi_rec_reg[byte_n_0_2][7]\,
      O => Midi_i_9_n_0
    );
Midi_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => Midi_i_1_n_0,
      D => Midi0_out,
      PRE => p_0_in,
      Q => Midi
    );
Midi_reg_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => Midi_i_13_n_0,
      I1 => Midi_i_14_n_0,
      O => Midi_reg_i_11_n_0,
      S => Midi_i_8_n_0
    );
Midi_reg_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => Midi_i_15_n_0,
      I1 => Midi_i_16_n_0,
      O => Midi_reg_i_12_n_0,
      S => Midi_i_8_n_0
    );
Midi_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => Midi_i_9_n_0,
      I1 => Midi_i_10_n_0,
      O => Midi_reg_i_4_n_0,
      S => Midi_i_8_n_0
    );
counter2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter2_carry_n_0,
      CO(2) => counter2_carry_n_1,
      CO(1) => counter2_carry_n_2,
      CO(0) => counter2_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter2(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter2_carry_n_0,
      CO(3) => \counter2_carry__0_n_0\,
      CO(2) => \counter2_carry__0_n_1\,
      CO(1) => \counter2_carry__0_n_2\,
      CO(0) => \counter2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter2(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__0_n_0\,
      CO(3 downto 2) => \NLW_counter2_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter2_carry__1_n_2\,
      CO(0) => \counter2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter2_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => counter2(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => counter(11 downto 9)
    );
\procTransmit.bitnum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => running,
      I1 => bitnum(0),
      O => \procTransmit.bitnum[0]_i_1_n_0\
    );
\procTransmit.bitnum[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BF00000"
    )
        port map (
      I0 => bitnum(2),
      I1 => bitnum(3),
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => running,
      O => \procTransmit.bitnum[1]_i_1_n_0\
    );
\procTransmit.bitnum[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => running,
      I1 => bitnum(1),
      I2 => bitnum(0),
      I3 => bitnum(2),
      O => \procTransmit.bitnum[2]_i_1_n_0\
    );
\procTransmit.bitnum[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"68CC0000"
    )
        port map (
      I0 => bitnum(2),
      I1 => bitnum(3),
      I2 => bitnum(1),
      I3 => bitnum(0),
      I4 => running,
      O => \procTransmit.bitnum[3]_i_1_n_0\
    );
\procTransmit.bitnum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Midi_i_1_n_0,
      CLR => p_0_in,
      D => \procTransmit.bitnum[0]_i_1_n_0\,
      Q => bitnum(0)
    );
\procTransmit.bitnum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Midi_i_1_n_0,
      CLR => p_0_in,
      D => \procTransmit.bitnum[1]_i_1_n_0\,
      Q => bitnum(1)
    );
\procTransmit.bitnum_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Midi_i_1_n_0,
      CLR => p_0_in,
      D => \procTransmit.bitnum[2]_i_1_n_0\,
      Q => bitnum(2)
    );
\procTransmit.bitnum_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => Midi_i_1_n_0,
      CLR => p_0_in,
      D => \procTransmit.bitnum[3]_i_1_n_0\,
      Q => bitnum(3)
    );
\procTransmit.bytenum[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBE00"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[numbytes]\(0),
      I1 => \procTransmit.bytenum_reg_n_0_[1]\,
      I2 => \procTransmit.midi_rec_reg[numbytes]\(1),
      I3 => bytenum,
      I4 => \procTransmit.bytenum_reg_n_0_[0]\,
      O => \procTransmit.bytenum[0]_i_1_n_0\
    );
\procTransmit.bytenum[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FFA200"
    )
        port map (
      I0 => \procTransmit.bytenum_reg_n_0_[0]\,
      I1 => \procTransmit.midi_rec_reg[numbytes]\(0),
      I2 => \procTransmit.midi_rec_reg[numbytes]\(1),
      I3 => bytenum,
      I4 => \procTransmit.bytenum_reg_n_0_[1]\,
      O => \procTransmit.bytenum[1]_i_1_n_0\
    );
\procTransmit.bytenum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => p_0_in,
      D => \procTransmit.bytenum[0]_i_1_n_0\,
      Q => \procTransmit.bytenum_reg_n_0_[0]\
    );
\procTransmit.bytenum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => p_0_in,
      D => \procTransmit.bytenum[1]_i_1_n_0\,
      Q => \procTransmit.bytenum_reg_n_0_[1]\
    );
\procTransmit.counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => running,
      I1 => counter(0),
      O => p_2_in(0)
    );
\procTransmit.counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter2(10),
      I1 => running,
      I2 => Midi_i_3_n_0,
      O => p_2_in(10)
    );
\procTransmit.counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABABAAA"
    )
        port map (
      I0 => running,
      I1 => \^read_buf_reg_0\,
      I2 => read_fifo,
      I3 => FifoData(24),
      I4 => FifoData(25),
      O => \procTransmit.counter[11]_i_1_n_0\
    );
\procTransmit.counter[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter2(11),
      I1 => running,
      I2 => Midi_i_3_n_0,
      O => p_2_in(11)
    );
\procTransmit.counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(1),
      O => p_2_in(1)
    );
\procTransmit.counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(2),
      O => p_2_in(2)
    );
\procTransmit.counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(3),
      O => p_2_in(3)
    );
\procTransmit.counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(4),
      O => p_2_in(4)
    );
\procTransmit.counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(5),
      O => p_2_in(5)
    );
\procTransmit.counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(6),
      O => p_2_in(6)
    );
\procTransmit.counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => counter2(7),
      I1 => running,
      I2 => Midi_i_3_n_0,
      O => p_2_in(7)
    );
\procTransmit.counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(8),
      O => p_2_in(8)
    );
\procTransmit.counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running,
      I1 => counter2(9),
      O => p_2_in(9)
    );
\procTransmit.counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(0),
      Q => counter(0)
    );
\procTransmit.counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(10),
      Q => counter(10)
    );
\procTransmit.counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(11),
      Q => counter(11)
    );
\procTransmit.counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(1),
      Q => counter(1)
    );
\procTransmit.counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(2),
      Q => counter(2)
    );
\procTransmit.counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(3),
      Q => counter(3)
    );
\procTransmit.counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(4),
      Q => counter(4)
    );
\procTransmit.counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(5),
      Q => counter(5)
    );
\procTransmit.counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(6),
      Q => counter(6)
    );
\procTransmit.counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(7),
      Q => counter(7)
    );
\procTransmit.counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(8),
      Q => counter(8)
    );
\procTransmit.counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procTransmit.counter[11]_i_1_n_0\,
      CLR => p_0_in,
      D => p_2_in(9),
      Q => counter(9)
    );
\procTransmit.midi_rec[numbytes][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Reset,
      I1 => read_fifo,
      I2 => running,
      I3 => \^read_buf_reg_0\,
      O => \procTransmit.midi_rec_reg[numbytes]0\
    );
\procTransmit.midi_rec_reg[byte0][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(16),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][0]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(17),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][1]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(18),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][2]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(19),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][3]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(20),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][4]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(21),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][5]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(22),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][6]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte0][7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(23),
      Q => \procTransmit.midi_rec_reg[byte_n_0_0][7]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(8),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][0]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(9),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][1]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(10),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][2]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(11),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][3]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(12),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][4]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(13),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][5]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(14),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][6]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte1][7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(15),
      Q => \procTransmit.midi_rec_reg[byte_n_0_1][7]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(0),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][0]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(1),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][1]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(2),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][2]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(3),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][3]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(4),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][4]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(5),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][5]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(6),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][6]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[byte2][7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(7),
      Q => \procTransmit.midi_rec_reg[byte_n_0_2][7]\,
      R => '0'
    );
\procTransmit.midi_rec_reg[numbytes][0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(24),
      Q => \procTransmit.midi_rec_reg[numbytes]\(0),
      R => '0'
    );
\procTransmit.midi_rec_reg[numbytes][1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \procTransmit.midi_rec_reg[numbytes]0\,
      D => FifoData(25),
      Q => \procTransmit.midi_rec_reg[numbytes]\(1),
      R => '0'
    );
\procTransmit.running_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA2AAAAAAAA2AA2"
    )
        port map (
      I0 => \procTransmit.counter[11]_i_1_n_0\,
      I1 => bytenum,
      I2 => \procTransmit.midi_rec_reg[numbytes]\(1),
      I3 => \procTransmit.bytenum_reg_n_0_[1]\,
      I4 => \procTransmit.midi_rec_reg[numbytes]\(0),
      I5 => \procTransmit.bytenum_reg_n_0_[0]\,
      O => p_1_in
    );
\procTransmit.running_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => p_0_in,
      D => p_1_in,
      Q => running
    );
read_buf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1CCCCCCD181D181"
    )
        port map (
      I0 => FifoEmpty,
      I1 => \^read_buf_reg_0\,
      I2 => running,
      I3 => read_buf_i_3_n_0,
      I4 => bytenum,
      I5 => \procTransmit.counter[11]_i_1_n_0\,
      O => read_buf_i_1_n_0
    );
read_buf_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset,
      O => p_0_in
    );
read_buf_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \procTransmit.midi_rec_reg[numbytes]\(1),
      I1 => \procTransmit.bytenum_reg_n_0_[1]\,
      I2 => \procTransmit.midi_rec_reg[numbytes]\(0),
      I3 => \procTransmit.bytenum_reg_n_0_[0]\,
      O => read_buf_i_3_n_0
    );
read_buf_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => read_buf_i_5_n_0,
      I1 => read_buf_i_6_n_0,
      I2 => read_buf_i_7_n_0,
      I3 => Midi_i_5_n_0,
      I4 => running,
      O => bytenum
    );
read_buf_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter2(1),
      I1 => counter2(4),
      I2 => counter2(11),
      I3 => counter2(3),
      O => read_buf_i_5_n_0
    );
read_buf_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter2(10),
      I1 => counter2(8),
      I2 => counter2(2),
      I3 => counter2(5),
      O => read_buf_i_6_n_0
    );
read_buf_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => counter2(6),
      I1 => counter2(9),
      I2 => counter2(7),
      I3 => counter(0),
      O => read_buf_i_7_n_0
    );
read_buf_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => p_0_in,
      D => read_buf_i_1_n_0,
      Q => \^read_buf_reg_0\
    );
read_fifo_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAE2"
    )
        port map (
      I0 => read_fifo,
      I1 => Reset,
      I2 => \^read_buf_reg_0\,
      I3 => running,
      O => read_fifo_i_1_n_0
    );
read_fifo_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => read_fifo_i_1_n_0,
      Q => read_fifo,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_transmitter_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    FifoData : in STD_LOGIC_VECTOR ( 25 downto 0 );
    FifoEmpty : in STD_LOGIC;
    FifoRead : out STD_LOGIC;
    Midi : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo_transmitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_transmitter_0_0 : entity is "design_1_fifo_transmitter_0_0,fifo_transmitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo_transmitter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fifo_transmitter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fifo_transmitter_0_0 : entity is "fifo_transmitter,Vivado 2022.2.2";
end design_1_fifo_transmitter_0_0;

architecture STRUCTURE of design_1_fifo_transmitter_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_fifo_transmitter_0_0_fifo_transmitter
     port map (
      Clk => Clk,
      FifoData(25 downto 0) => FifoData(25 downto 0),
      FifoEmpty => FifoEmpty,
      Midi => Midi,
      Reset => Reset,
      read_buf_reg_0 => FifoRead
    );
end STRUCTURE;
