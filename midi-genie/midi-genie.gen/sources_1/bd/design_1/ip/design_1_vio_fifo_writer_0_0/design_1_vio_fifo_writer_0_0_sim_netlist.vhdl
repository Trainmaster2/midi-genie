-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Thu Jan 11 13:22:20 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_vio_fifo_writer_0_0/design_1_vio_fifo_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_vio_fifo_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vio_fifo_writer_0_0_vio_fifo_writer is
  port (
    FifoData : out STD_LOGIC_VECTOR ( 14 downto 0 );
    FifoWrite : out STD_LOGIC;
    VioWrite : in STD_LOGIC;
    Clk : in STD_LOGIC;
    VioData : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vio_fifo_writer_0_0_vio_fifo_writer : entity is "vio_fifo_writer";
end design_1_vio_fifo_writer_0_0_vio_fifo_writer;

architecture STRUCTURE of design_1_vio_fifo_writer_0_0_vio_fifo_writer is
  signal \FifoData[14]_i_1_n_0\ : STD_LOGIC;
  signal last_trig : STD_LOGIC;
begin
\FifoData[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => VioWrite,
      I1 => last_trig,
      O => \FifoData[14]_i_1_n_0\
    );
\FifoData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(0),
      Q => FifoData(0),
      R => '0'
    );
\FifoData_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(10),
      Q => FifoData(10),
      R => '0'
    );
\FifoData_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(11),
      Q => FifoData(11),
      R => '0'
    );
\FifoData_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(12),
      Q => FifoData(12),
      R => '0'
    );
\FifoData_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(13),
      Q => FifoData(13),
      R => '0'
    );
\FifoData_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(14),
      Q => FifoData(14),
      R => '0'
    );
\FifoData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(1),
      Q => FifoData(1),
      R => '0'
    );
\FifoData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(2),
      Q => FifoData(2),
      R => '0'
    );
\FifoData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(3),
      Q => FifoData(3),
      R => '0'
    );
\FifoData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(4),
      Q => FifoData(4),
      R => '0'
    );
\FifoData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(5),
      Q => FifoData(5),
      R => '0'
    );
\FifoData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(6),
      Q => FifoData(6),
      R => '0'
    );
\FifoData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(7),
      Q => FifoData(7),
      R => '0'
    );
\FifoData_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(8),
      Q => FifoData(8),
      R => '0'
    );
\FifoData_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FifoData[14]_i_1_n_0\,
      D => VioData(9),
      Q => FifoData(9),
      R => '0'
    );
FifoWrite_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FifoData[14]_i_1_n_0\,
      Q => FifoWrite,
      R => '0'
    );
\procTrigger.last_trig_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => VioWrite,
      Q => last_trig,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vio_fifo_writer_0_0 is
  port (
    Clk : in STD_LOGIC;
    VioData : in STD_LOGIC_VECTOR ( 14 downto 0 );
    VioWrite : in STD_LOGIC;
    FifoData : out STD_LOGIC_VECTOR ( 14 downto 0 );
    FifoWrite : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vio_fifo_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vio_fifo_writer_0_0 : entity is "design_1_vio_fifo_writer_0_0,vio_fifo_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vio_fifo_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_vio_fifo_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_vio_fifo_writer_0_0 : entity is "vio_fifo_writer,Vivado 2022.2.2";
end design_1_vio_fifo_writer_0_0;

architecture STRUCTURE of design_1_vio_fifo_writer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_vio_fifo_writer_0_0_vio_fifo_writer
     port map (
      Clk => Clk,
      FifoData(14 downto 0) => FifoData(14 downto 0),
      FifoWrite => FifoWrite,
      VioData(14 downto 0) => VioData(14 downto 0),
      VioWrite => VioWrite
    );
end STRUCTURE;
