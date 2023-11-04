-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sat Nov  4 13:07:46 2023
-- Host        : TM2s-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_reset_0_0/design_1_nes_reset_0_0_sim_netlist.vhdl
-- Design      : design_1_nes_reset_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_reset_0_0_nes_reset is
  port (
    NES_rst : out STD_LOGIC;
    M2 : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_nes_reset_0_0_nes_reset : entity is "nes_reset";
end design_1_nes_reset_0_0_nes_reset;

architecture STRUCTURE of design_1_nes_reset_0_0_nes_reset is
  signal \^nes_rst\ : STD_LOGIC;
  signal NES_rst_i_1_n_0 : STD_LOGIC;
  signal NES_rst_i_2_n_0 : STD_LOGIC;
  signal NES_rst_i_3_n_0 : STD_LOGIC;
  signal NES_rst_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \procDetect.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \procDetect.count[5]_i_1_n_0\ : STD_LOGIC;
  signal \procDetect.count[5]_i_3_n_0\ : STD_LOGIC;
  signal \procDetect.count_reg\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \procDetect.count_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \procDetect.count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \procDetect.count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \procDetect.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \procDetect.count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \procDetect.count[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \procDetect.count[5]_i_3\ : label is "soft_lutpair0";
begin
  NES_rst <= \^nes_rst\;
NES_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => NES_rst_i_3_n_0,
      I1 => M2,
      I2 => NES_rst_i_4_n_0,
      I3 => \^nes_rst\,
      O => NES_rst_i_1_n_0
    );
NES_rst_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset,
      O => NES_rst_i_2_n_0
    );
NES_rst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAAAABF"
    )
        port map (
      I0 => M2,
      I1 => \procDetect.count_reg\(1),
      I2 => \procDetect.count_reg\(2),
      I3 => \procDetect.count_reg\(3),
      I4 => \procDetect.count_reg\(5),
      I5 => \procDetect.count_reg\(4),
      O => NES_rst_i_3_n_0
    );
NES_rst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => \procDetect.count_reg\(1),
      I1 => \procDetect.count_reg\(2),
      I2 => \procDetect.count_reg\(3),
      I3 => \procDetect.count_reg\(5),
      I4 => \procDetect.count_reg\(4),
      O => NES_rst_i_4_n_0
    );
NES_rst_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => NES_rst_i_2_n_0,
      D => NES_rst_i_1_n_0,
      Q => \^nes_rst\
    );
\procDetect.count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M2,
      I1 => \procDetect.count_reg_n_0_[0]\,
      O => \procDetect.count[0]_i_1_n_0\
    );
\procDetect.count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \procDetect.count_reg\(1),
      I1 => \procDetect.count_reg_n_0_[0]\,
      I2 => M2,
      O => p_0_in(1)
    );
\procDetect.count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \procDetect.count_reg\(2),
      I1 => \procDetect.count_reg\(1),
      I2 => \procDetect.count_reg_n_0_[0]\,
      I3 => M2,
      O => p_0_in(2)
    );
\procDetect.count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \procDetect.count_reg\(3),
      I1 => \procDetect.count_reg\(2),
      I2 => \procDetect.count_reg_n_0_[0]\,
      I3 => \procDetect.count_reg\(1),
      I4 => M2,
      O => p_0_in(3)
    );
\procDetect.count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \procDetect.count_reg\(4),
      I1 => \procDetect.count_reg\(3),
      I2 => \procDetect.count_reg\(1),
      I3 => \procDetect.count_reg_n_0_[0]\,
      I4 => \procDetect.count_reg\(2),
      I5 => M2,
      O => p_0_in(4)
    );
\procDetect.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777FFFFFFFFF"
    )
        port map (
      I0 => \procDetect.count_reg\(4),
      I1 => \procDetect.count_reg\(5),
      I2 => \procDetect.count_reg\(3),
      I3 => \procDetect.count_reg\(2),
      I4 => \procDetect.count_reg\(1),
      I5 => M2,
      O => \procDetect.count[5]_i_1_n_0\
    );
\procDetect.count[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \procDetect.count_reg\(5),
      I1 => \procDetect.count_reg\(4),
      I2 => \procDetect.count[5]_i_3_n_0\,
      I3 => M2,
      O => p_0_in(5)
    );
\procDetect.count[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \procDetect.count_reg\(3),
      I1 => \procDetect.count_reg\(1),
      I2 => \procDetect.count_reg_n_0_[0]\,
      I3 => \procDetect.count_reg\(2),
      O => \procDetect.count[5]_i_3_n_0\
    );
\procDetect.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => \procDetect.count[0]_i_1_n_0\,
      Q => \procDetect.count_reg_n_0_[0]\
    );
\procDetect.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => p_0_in(1),
      Q => \procDetect.count_reg\(1)
    );
\procDetect.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => p_0_in(2),
      Q => \procDetect.count_reg\(2)
    );
\procDetect.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => p_0_in(3),
      Q => \procDetect.count_reg\(3)
    );
\procDetect.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => p_0_in(4),
      Q => \procDetect.count_reg\(4)
    );
\procDetect.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \procDetect.count[5]_i_1_n_0\,
      CLR => NES_rst_i_2_n_0,
      D => p_0_in(5),
      Q => \procDetect.count_reg\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nes_reset_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    M2 : in STD_LOGIC;
    NES_rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_nes_reset_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_nes_reset_0_0 : entity is "design_1_nes_reset_0_0,nes_reset,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_nes_reset_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_nes_reset_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_nes_reset_0_0 : entity is "nes_reset,Vivado 2022.2";
end design_1_nes_reset_0_0;

architecture STRUCTURE of design_1_nes_reset_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of NES_rst : signal is "xilinx.com:signal:reset:1.0 NES_rst RST";
  attribute X_INTERFACE_PARAMETER of NES_rst : signal is "XIL_INTERFACENAME NES_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_nes_reset_0_0_nes_reset
     port map (
      Clk => Clk,
      M2 => M2,
      NES_rst => NES_rst,
      Reset => Reset
    );
end STRUCTURE;
