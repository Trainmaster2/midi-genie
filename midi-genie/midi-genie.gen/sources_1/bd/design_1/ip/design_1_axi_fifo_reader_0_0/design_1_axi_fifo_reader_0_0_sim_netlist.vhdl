-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Jan 17 14:48:45 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_axi_fifo_reader_0_0/design_1_axi_fifo_reader_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_fifo_reader_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_reader_0_0_axi_skid_buf is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    dataAvailableBuf_reg : out STD_LOGIC;
    FifoEmpty_0 : out STD_LOGIC;
    S_AXI_RREADY_0 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    FifoData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    axi_read_valid_reg : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    DataAvailable : in STD_LOGIC;
    FifoEmpty : in STD_LOGIC;
    FifoRead : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_fifo_reader_0_0_axi_skid_buf : entity is "axi_skid_buf";
end design_1_axi_fifo_reader_0_0_axi_skid_buf;

architecture STRUCTURE of design_1_axi_fifo_reader_0_0_axi_skid_buf is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal FifoRead_i_2_n_0 : STD_LOGIC;
  signal r_valid : STD_LOGIC;
  signal r_valid_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FifoRead_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of FifoRead_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_read_valid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dataAvailableBuf_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_valid_i_1 : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
FifoRead_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F551055"
    )
        port map (
      I0 => FifoEmpty,
      I1 => DataAvailable,
      I2 => S_AXI_ARESETN,
      I3 => FifoRead_i_2_n_0,
      I4 => FifoRead,
      O => FifoEmpty_0
    );
FifoRead_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5757FF57"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => r_valid,
      I2 => S_AXI_ARVALID,
      I3 => axi_read_valid_reg,
      I4 => S_AXI_RREADY,
      O => FifoRead_i_2_n_0
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_valid,
      O => S_AXI_ARREADY
    );
axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^ar\(0)
    );
\axi_read_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(0),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(0)
    );
\axi_read_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(10),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(10)
    );
\axi_read_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(11),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(11)
    );
\axi_read_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(12),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(12)
    );
\axi_read_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(13),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(13)
    );
\axi_read_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(14),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(14)
    );
\axi_read_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(15),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(15)
    );
\axi_read_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(1),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(1)
    );
\axi_read_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(2),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(2)
    );
\axi_read_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(3),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(3)
    );
\axi_read_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(4),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(4)
    );
\axi_read_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(5),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(5)
    );
\axi_read_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(6),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(6)
    );
\axi_read_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(7),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(7)
    );
\axi_read_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(8),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(8)
    );
\axi_read_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A0000000000"
    )
        port map (
      I0 => FifoData(9),
      I1 => S_AXI_RREADY,
      I2 => axi_read_valid_reg,
      I3 => S_AXI_ARVALID,
      I4 => r_valid,
      I5 => S_AXI_ARESETN,
      O => D(9)
    );
axi_read_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => axi_read_valid_reg,
      I2 => S_AXI_ARVALID,
      I3 => r_valid,
      O => S_AXI_RREADY_0
    );
dataAvailableBuf_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B3"
    )
        port map (
      I0 => DataAvailable,
      I1 => FifoEmpty,
      I2 => FifoRead_i_2_n_0,
      O => dataAvailableBuf_reg
    );
r_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => axi_read_valid_reg,
      I2 => S_AXI_ARVALID,
      I3 => r_valid,
      O => r_valid_i_1_n_0
    );
r_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_valid_i_1_n_0,
      Q => r_valid,
      R => \^ar\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_reader_0_0_axi_skid_buf_0 is
  port (
    S_AXI_BREADY_0 : out STD_LOGIC;
    S_AXI_BREADY_1 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    r_valid_reg_0 : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    r_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_fifo_reader_0_0_axi_skid_buf_0 : entity is "axi_skid_buf";
end design_1_axi_fifo_reader_0_0_axi_skid_buf_0;

architecture STRUCTURE of design_1_axi_fifo_reader_0_0_axi_skid_buf_0 is
  signal r_valid_0 : STD_LOGIC;
  signal \r_valid_i_1__1_n_0\ : STD_LOGIC;
begin
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_valid_0,
      O => S_AXI_AWREADY
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF44444"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => r_valid_reg_0,
      I2 => S_AXI_AWVALID,
      I3 => r_valid_0,
      I4 => S_AXI_WVALID,
      I5 => r_valid,
      O => S_AXI_BREADY_0
    );
\r_valid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444F444F0000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => r_valid_reg_0,
      I2 => S_AXI_AWVALID,
      I3 => r_valid_0,
      I4 => S_AXI_WVALID,
      I5 => r_valid,
      O => S_AXI_BREADY_1
    );
\r_valid_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444044404440FFF0"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => r_valid_reg_0,
      I2 => S_AXI_AWVALID,
      I3 => r_valid_0,
      I4 => S_AXI_WVALID,
      I5 => r_valid,
      O => \r_valid_i_1__1_n_0\
    );
r_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_valid_i_1__1_n_0\,
      Q => r_valid_0,
      R => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0\ is
  port (
    r_valid : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_valid_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0\ : entity is "axi_skid_buf";
end \design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0\;

architecture STRUCTURE of \design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0\ is
  signal \^r_valid\ : STD_LOGIC;
begin
  r_valid <= \^r_valid\;
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_valid\,
      O => S_AXI_WREADY
    );
r_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => r_valid_reg_0,
      Q => \^r_valid\,
      R => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_reader_0_0_axi_fifo_reader is
  port (
    axi_bvalid_reg_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_read_valid_reg_0 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    DataAvailable : out STD_LOGIC;
    FifoRead : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    FifoData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    FifoEmpty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_fifo_reader_0_0_axi_fifo_reader : entity is "axi_fifo_reader";
end design_1_axi_fifo_reader_0_0_axi_fifo_reader;

architecture STRUCTURE of design_1_axi_fifo_reader_0_0_axi_fifo_reader is
  signal \^dataavailable\ : STD_LOGIC;
  signal \^fiforead\ : STD_LOGIC;
  signal FifoRead1 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_read_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^axi_read_valid_reg_0\ : STD_LOGIC;
  signal instSkidAR_n_18 : STD_LOGIC;
  signal instSkidAR_n_19 : STD_LOGIC;
  signal instSkidAR_n_20 : STD_LOGIC;
  signal instSkidAW_n_0 : STD_LOGIC;
  signal instSkidAW_n_1 : STD_LOGIC;
  signal r_valid : STD_LOGIC;
  signal reset : STD_LOGIC;
begin
  DataAvailable <= \^dataavailable\;
  FifoRead <= \^fiforead\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_read_valid_reg_0 <= \^axi_read_valid_reg_0\;
FifoRead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAR_n_19,
      Q => \^fiforead\,
      R => '0'
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAW_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => reset
    );
\axi_read_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^axi_read_valid_reg_0\,
      O => FifoRead1
    );
\axi_read_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(0),
      Q => S_AXI_RDATA(0)
    );
\axi_read_data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(10),
      Q => S_AXI_RDATA(10)
    );
\axi_read_data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(11),
      Q => S_AXI_RDATA(11)
    );
\axi_read_data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(12),
      Q => S_AXI_RDATA(12)
    );
\axi_read_data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(13),
      Q => S_AXI_RDATA(13)
    );
\axi_read_data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(14),
      Q => S_AXI_RDATA(14)
    );
\axi_read_data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(15),
      Q => S_AXI_RDATA(15)
    );
\axi_read_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(1),
      Q => S_AXI_RDATA(1)
    );
\axi_read_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(2),
      Q => S_AXI_RDATA(2)
    );
\axi_read_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(3),
      Q => S_AXI_RDATA(3)
    );
\axi_read_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(4),
      Q => S_AXI_RDATA(4)
    );
\axi_read_data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(5),
      Q => S_AXI_RDATA(5)
    );
\axi_read_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(6),
      Q => S_AXI_RDATA(6)
    );
\axi_read_data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(7),
      Q => S_AXI_RDATA(7)
    );
\axi_read_data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(8),
      Q => S_AXI_RDATA(8)
    );
\axi_read_data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoRead1,
      CLR => reset,
      D => axi_read_data(9),
      Q => S_AXI_RDATA(9)
    );
axi_read_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAR_n_20,
      Q => \^axi_read_valid_reg_0\,
      R => reset
    );
dataAvailableBuf_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => reset,
      D => instSkidAR_n_18,
      Q => \^dataavailable\
    );
instSkidAR: entity work.design_1_axi_fifo_reader_0_0_axi_skid_buf
     port map (
      AR(0) => reset,
      D(15 downto 0) => axi_read_data(15 downto 0),
      DataAvailable => \^dataavailable\,
      FifoData(15 downto 0) => FifoData(15 downto 0),
      FifoEmpty => FifoEmpty,
      FifoEmpty_0 => instSkidAR_n_19,
      FifoRead => \^fiforead\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RREADY_0 => instSkidAR_n_20,
      axi_read_valid_reg => \^axi_read_valid_reg_0\,
      dataAvailableBuf_reg => instSkidAR_n_18
    );
instSkidAW: entity work.design_1_axi_fifo_reader_0_0_axi_skid_buf_0
     port map (
      AR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BREADY_0 => instSkidAW_n_0,
      S_AXI_BREADY_1 => instSkidAW_n_1,
      S_AXI_WVALID => S_AXI_WVALID,
      r_valid => r_valid,
      r_valid_reg_0 => \^axi_bvalid_reg_0\
    );
instSkidW: entity work.\design_1_axi_fifo_reader_0_0_axi_skid_buf__parameterized0\
     port map (
      AR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_WREADY => S_AXI_WREADY,
      r_valid => r_valid,
      r_valid_reg_0 => instSkidAW_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_reader_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FifoData : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FifoEmpty : in STD_LOGIC;
    FifoRead : out STD_LOGIC;
    DataAvailable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_fifo_reader_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_fifo_reader_0_0 : entity is "design_1_axi_fifo_reader_0_0,axi_fifo_reader,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_fifo_reader_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_fifo_reader_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_fifo_reader_0_0 : entity is "axi_fifo_reader,Vivado 2022.2.2";
end design_1_axi_fifo_reader_0_0;

architecture STRUCTURE of design_1_axi_fifo_reader_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_PARAMETER of S_AXI_RRESP : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi_fifo_reader_0_0_axi_fifo_reader
     port map (
      DataAvailable => DataAvailable,
      FifoData(15 downto 0) => FifoData(15 downto 0),
      FifoEmpty => FifoEmpty,
      FifoRead => FifoRead,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      axi_bvalid_reg_0 => S_AXI_BVALID,
      axi_read_valid_reg_0 => S_AXI_RVALID
    );
end STRUCTURE;
