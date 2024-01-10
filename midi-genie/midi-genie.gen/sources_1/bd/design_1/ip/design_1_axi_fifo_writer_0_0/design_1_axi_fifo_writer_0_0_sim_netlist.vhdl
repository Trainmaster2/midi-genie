-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Tue Jan  9 21:36:22 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axi_fifo_writer_0_0 -prefix
--               design_1_axi_fifo_writer_0_0_ design_1_axi_fifo_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_fifo_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_writer_0_0_axi_skid_buf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARVALID_0 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
end design_1_axi_fifo_writer_0_0_axi_skid_buf;

architecture STRUCTURE of design_1_axi_fifo_writer_0_0_axi_skid_buf is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_valid : STD_LOGIC;
  signal \r_valid_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_read_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_valid_i_1__1\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
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
      O => \^sr\(0)
    );
axi_read_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => r_valid,
      I2 => S_AXI_RREADY,
      I3 => S_AXI_RVALID,
      O => S_AXI_ARVALID_0
    );
\r_valid_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => S_AXI_RVALID,
      I2 => S_AXI_ARVALID,
      I3 => r_valid,
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
      Q => r_valid,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_writer_0_0_axi_skid_buf_0 is
  port (
    S_AXI_BREADY_0 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    r_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_fifo_writer_0_0_axi_skid_buf_0 : entity is "axi_skid_buf";
end design_1_axi_fifo_writer_0_0_axi_skid_buf_0;

architecture STRUCTURE of design_1_axi_fifo_writer_0_0_axi_skid_buf_0 is
  signal \^s_axi_bready_0\ : STD_LOGIC;
  signal r_valid_0 : STD_LOGIC;
  signal r_valid_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_AWREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of r_valid_i_1 : label is "soft_lutpair1";
begin
  S_AXI_BREADY_0 <= \^s_axi_bready_0\;
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_valid_0,
      O => S_AXI_AWREADY
    );
axi_bvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_BVALID,
      I2 => S_AXI_AWVALID,
      I3 => r_valid_0,
      O => \^s_axi_bready_0\
    );
r_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE000E"
    )
        port map (
      I0 => r_valid_0,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => r_valid,
      I4 => \^s_axi_bready_0\,
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
      Q => r_valid_0,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0\ is
  port (
    r_valid : out STD_LOGIC;
    S_AXI_ARESETN_0 : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    apply_wstrb : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \r_data_reg[3]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_write_ready : out STD_LOGIC;
    S_AXI_BREADY_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 29 downto 0 );
    \fifoValue_reg[23]\ : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0\ : entity is "axi_skid_buf";
end \design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0\;

architecture STRUCTURE of \design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0\ is
  signal \r_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \^r_valid\ : STD_LOGIC;
  signal \r_valid_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FifoWrite_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifoValue[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifoValue[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifoValue[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifoValue[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifoValue[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifoValue[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifoValue[15]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifoValue[15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifoValue[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifoValue[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifoValue[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifoValue[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifoValue[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifoValue[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifoValue[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifoValue[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifoValue[23]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifoValue[23]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifoValue[24]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifoValue[25]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifoValue[25]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifoValue[25]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifoValue[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifoValue[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifoValue[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifoValue[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifoValue[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifoValue[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifoValue[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifoValue[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifoValue[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_valid_i_1__0\ : label is "soft_lutpair3";
begin
  r_valid <= \^r_valid\;
FifoWrite_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^r_valid\,
      I2 => \fifoValue_reg[23]\,
      O => axi_write_ready
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_valid\,
      O => S_AXI_WREADY
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FD00FC"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_WVALID,
      I2 => \^r_valid\,
      I3 => \fifoValue_reg[23]\,
      I4 => S_AXI_BVALID,
      O => S_AXI_BREADY_0
    );
\fifoValue[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[4]\,
      I1 => \^r_valid\,
      I2 => D(4),
      O => apply_wstrb(0)
    );
\fifoValue[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[14]\,
      I1 => \^r_valid\,
      I2 => D(14),
      O => apply_wstrb(10)
    );
\fifoValue[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[15]\,
      I1 => \^r_valid\,
      I2 => D(15),
      O => apply_wstrb(11)
    );
\fifoValue[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[16]\,
      I1 => \^r_valid\,
      I2 => D(16),
      O => apply_wstrb(12)
    );
\fifoValue[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[17]\,
      I1 => \^r_valid\,
      I2 => D(17),
      O => apply_wstrb(13)
    );
\fifoValue[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[18]\,
      I1 => \^r_valid\,
      I2 => D(18),
      O => apply_wstrb(14)
    );
\fifoValue[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCA0"
    )
        port map (
      I0 => D(1),
      I1 => \r_data_reg_n_0_[1]\,
      I2 => S_AXI_WVALID,
      I3 => \^r_valid\,
      I4 => \fifoValue_reg[23]\,
      O => E(1)
    );
\fifoValue[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[19]\,
      I1 => \^r_valid\,
      I2 => D(19),
      O => apply_wstrb(15)
    );
\fifoValue[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[20]\,
      I1 => \^r_valid\,
      I2 => D(20),
      O => apply_wstrb(16)
    );
\fifoValue[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[21]\,
      I1 => \^r_valid\,
      I2 => D(21),
      O => apply_wstrb(17)
    );
\fifoValue[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[22]\,
      I1 => \^r_valid\,
      I2 => D(22),
      O => apply_wstrb(18)
    );
\fifoValue[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[23]\,
      I1 => \^r_valid\,
      I2 => D(23),
      O => apply_wstrb(19)
    );
\fifoValue[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[5]\,
      I1 => \^r_valid\,
      I2 => D(5),
      O => apply_wstrb(1)
    );
\fifoValue[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[24]\,
      I1 => \^r_valid\,
      I2 => D(24),
      O => apply_wstrb(20)
    );
\fifoValue[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[25]\,
      I1 => \^r_valid\,
      I2 => D(25),
      O => apply_wstrb(21)
    );
\fifoValue[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[26]\,
      I1 => \^r_valid\,
      I2 => D(26),
      O => apply_wstrb(22)
    );
\fifoValue[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCA0"
    )
        port map (
      I0 => D(2),
      I1 => \r_data_reg_n_0_[2]\,
      I2 => S_AXI_WVALID,
      I3 => \^r_valid\,
      I4 => \fifoValue_reg[23]\,
      O => E(2)
    );
\fifoValue[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[27]\,
      I1 => \^r_valid\,
      I2 => D(27),
      O => apply_wstrb(23)
    );
\fifoValue[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[28]\,
      I1 => \^r_valid\,
      I2 => D(28),
      O => apply_wstrb(24)
    );
\fifoValue[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[29]\,
      I1 => \^r_valid\,
      I2 => D(29),
      O => apply_wstrb(25)
    );
\fifoValue[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[3]\,
      I1 => \^r_valid\,
      I2 => D(3),
      O => \r_data_reg[3]_0\
    );
\fifoValue[25]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => S_AXI_WVALID,
      I2 => \^r_valid\,
      O => S_AXI_ARESETN_0
    );
\fifoValue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[6]\,
      I1 => \^r_valid\,
      I2 => D(6),
      O => apply_wstrb(2)
    );
\fifoValue[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[7]\,
      I1 => \^r_valid\,
      I2 => D(7),
      O => apply_wstrb(3)
    );
\fifoValue[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[8]\,
      I1 => \^r_valid\,
      I2 => D(8),
      O => apply_wstrb(4)
    );
\fifoValue[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[9]\,
      I1 => \^r_valid\,
      I2 => D(9),
      O => apply_wstrb(5)
    );
\fifoValue[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[10]\,
      I1 => \^r_valid\,
      I2 => D(10),
      O => apply_wstrb(6)
    );
\fifoValue[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCA0"
    )
        port map (
      I0 => D(0),
      I1 => \r_data_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => \^r_valid\,
      I4 => \fifoValue_reg[23]\,
      O => E(0)
    );
\fifoValue[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[11]\,
      I1 => \^r_valid\,
      I2 => D(11),
      O => apply_wstrb(7)
    );
\fifoValue[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[12]\,
      I1 => \^r_valid\,
      I2 => D(12),
      O => apply_wstrb(8)
    );
\fifoValue[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[13]\,
      I1 => \^r_valid\,
      I2 => D(13),
      O => apply_wstrb(9)
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(0),
      Q => \r_data_reg_n_0_[0]\,
      R => '0'
    );
\r_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(10),
      Q => \r_data_reg_n_0_[10]\,
      R => '0'
    );
\r_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(11),
      Q => \r_data_reg_n_0_[11]\,
      R => '0'
    );
\r_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(12),
      Q => \r_data_reg_n_0_[12]\,
      R => '0'
    );
\r_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(13),
      Q => \r_data_reg_n_0_[13]\,
      R => '0'
    );
\r_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(14),
      Q => \r_data_reg_n_0_[14]\,
      R => '0'
    );
\r_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(15),
      Q => \r_data_reg_n_0_[15]\,
      R => '0'
    );
\r_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(16),
      Q => \r_data_reg_n_0_[16]\,
      R => '0'
    );
\r_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(17),
      Q => \r_data_reg_n_0_[17]\,
      R => '0'
    );
\r_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(18),
      Q => \r_data_reg_n_0_[18]\,
      R => '0'
    );
\r_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(19),
      Q => \r_data_reg_n_0_[19]\,
      R => '0'
    );
\r_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(1),
      Q => \r_data_reg_n_0_[1]\,
      R => '0'
    );
\r_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(20),
      Q => \r_data_reg_n_0_[20]\,
      R => '0'
    );
\r_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(21),
      Q => \r_data_reg_n_0_[21]\,
      R => '0'
    );
\r_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(22),
      Q => \r_data_reg_n_0_[22]\,
      R => '0'
    );
\r_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(23),
      Q => \r_data_reg_n_0_[23]\,
      R => '0'
    );
\r_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(24),
      Q => \r_data_reg_n_0_[24]\,
      R => '0'
    );
\r_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(25),
      Q => \r_data_reg_n_0_[25]\,
      R => '0'
    );
\r_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(26),
      Q => \r_data_reg_n_0_[26]\,
      R => '0'
    );
\r_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(27),
      Q => \r_data_reg_n_0_[27]\,
      R => '0'
    );
\r_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(28),
      Q => \r_data_reg_n_0_[28]\,
      R => '0'
    );
\r_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(29),
      Q => \r_data_reg_n_0_[29]\,
      R => '0'
    );
\r_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(2),
      Q => \r_data_reg_n_0_[2]\,
      R => '0'
    );
\r_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(3),
      Q => \r_data_reg_n_0_[3]\,
      R => '0'
    );
\r_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(4),
      Q => \r_data_reg_n_0_[4]\,
      R => '0'
    );
\r_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(5),
      Q => \r_data_reg_n_0_[5]\,
      R => '0'
    );
\r_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(6),
      Q => \r_data_reg_n_0_[6]\,
      R => '0'
    );
\r_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(7),
      Q => \r_data_reg_n_0_[7]\,
      R => '0'
    );
\r_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(8),
      Q => \r_data_reg_n_0_[8]\,
      R => '0'
    );
\r_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => D(9),
      Q => \r_data_reg_n_0_[9]\,
      R => '0'
    );
\r_valid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^r_valid\,
      I2 => \fifoValue_reg[23]\,
      O => \r_valid_i_1__0_n_0\
    );
r_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_valid_i_1__0_n_0\,
      Q => \^r_valid\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_writer_0_0_axi_fifo_writer is
  port (
    FifoData : out STD_LOGIC_VECTOR ( 25 downto 0 );
    FifoWrite : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 29 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
end design_1_axi_fifo_writer_0_0_axi_fifo_writer;

architecture STRUCTURE of design_1_axi_fifo_writer_0_0_axi_fifo_writer is
  signal \^fifodata\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal apply_wstrb : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal axi_write_ready : STD_LOGIC;
  signal \fifoValue[24]_i_1_n_0\ : STD_LOGIC;
  signal \fifoValue[25]_i_1_n_0\ : STD_LOGIC;
  signal instSkidAR_n_2 : STD_LOGIC;
  signal instSkidAW_n_0 : STD_LOGIC;
  signal instSkidW_n_1 : STD_LOGIC;
  signal instSkidW_n_29 : STD_LOGIC;
  signal instSkidW_n_30 : STD_LOGIC;
  signal instSkidW_n_31 : STD_LOGIC;
  signal instSkidW_n_32 : STD_LOGIC;
  signal instSkidW_n_34 : STD_LOGIC;
  signal r_valid : STD_LOGIC;
  signal reset : STD_LOGIC;
begin
  FifoData(25 downto 0) <= \^fifodata\(25 downto 0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
FifoWrite_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_write_ready,
      Q => FifoWrite,
      R => reset
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidW_n_34,
      Q => \^s_axi_bvalid\,
      R => reset
    );
axi_read_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAR_n_2,
      Q => \^s_axi_rvalid\,
      R => reset
    );
\fifoValue[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => apply_wstrb(24),
      I1 => instSkidW_n_29,
      I2 => instSkidW_n_1,
      I3 => instSkidAW_n_0,
      I4 => \^fifodata\(24),
      O => \fifoValue[24]_i_1_n_0\
    );
\fifoValue[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => apply_wstrb(25),
      I1 => instSkidW_n_29,
      I2 => instSkidW_n_1,
      I3 => instSkidAW_n_0,
      I4 => \^fifodata\(25),
      O => \fifoValue[25]_i_1_n_0\
    );
\fifoValue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(0),
      Q => \^fifodata\(0),
      R => reset
    );
\fifoValue_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(10),
      Q => \^fifodata\(10),
      R => reset
    );
\fifoValue_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(11),
      Q => \^fifodata\(11),
      R => reset
    );
\fifoValue_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(12),
      Q => \^fifodata\(12),
      R => reset
    );
\fifoValue_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(13),
      Q => \^fifodata\(13),
      R => reset
    );
\fifoValue_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(14),
      Q => \^fifodata\(14),
      R => reset
    );
\fifoValue_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(15),
      Q => \^fifodata\(15),
      R => reset
    );
\fifoValue_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(16),
      Q => \^fifodata\(16),
      R => reset
    );
\fifoValue_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(17),
      Q => \^fifodata\(17),
      R => reset
    );
\fifoValue_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(18),
      Q => \^fifodata\(18),
      R => reset
    );
\fifoValue_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(19),
      Q => \^fifodata\(19),
      R => reset
    );
\fifoValue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(1),
      Q => \^fifodata\(1),
      R => reset
    );
\fifoValue_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(20),
      Q => \^fifodata\(20),
      R => reset
    );
\fifoValue_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(21),
      Q => \^fifodata\(21),
      R => reset
    );
\fifoValue_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(22),
      Q => \^fifodata\(22),
      R => reset
    );
\fifoValue_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_30,
      D => apply_wstrb(23),
      Q => \^fifodata\(23),
      R => reset
    );
\fifoValue_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \fifoValue[24]_i_1_n_0\,
      Q => \^fifodata\(24),
      R => reset
    );
\fifoValue_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \fifoValue[25]_i_1_n_0\,
      Q => \^fifodata\(25),
      R => reset
    );
\fifoValue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(2),
      Q => \^fifodata\(2),
      R => reset
    );
\fifoValue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(3),
      Q => \^fifodata\(3),
      R => reset
    );
\fifoValue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(4),
      Q => \^fifodata\(4),
      R => reset
    );
\fifoValue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(5),
      Q => \^fifodata\(5),
      R => reset
    );
\fifoValue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(6),
      Q => \^fifodata\(6),
      R => reset
    );
\fifoValue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_32,
      D => apply_wstrb(7),
      Q => \^fifodata\(7),
      R => reset
    );
\fifoValue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(8),
      Q => \^fifodata\(8),
      R => reset
    );
\fifoValue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidW_n_31,
      D => apply_wstrb(9),
      Q => \^fifodata\(9),
      R => reset
    );
instSkidAR: entity work.design_1_axi_fifo_writer_0_0_axi_skid_buf
     port map (
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARVALID_0 => instSkidAR_n_2,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => \^s_axi_rvalid\
    );
instSkidAW: entity work.design_1_axi_fifo_writer_0_0_axi_skid_buf_0
     port map (
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BREADY_0 => instSkidAW_n_0,
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_WVALID => S_AXI_WVALID,
      r_valid => r_valid
    );
instSkidW: entity work.\design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0\
     port map (
      D(29 downto 0) => D(29 downto 0),
      E(2) => instSkidW_n_30,
      E(1) => instSkidW_n_31,
      E(0) => instSkidW_n_32,
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0 => instSkidW_n_1,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BREADY_0 => instSkidW_n_34,
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      apply_wstrb(25 downto 0) => apply_wstrb(25 downto 0),
      axi_write_ready => axi_write_ready,
      \fifoValue_reg[23]\ => instSkidAW_n_0,
      \r_data_reg[3]_0\ => instSkidW_n_29,
      r_valid => r_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_fifo_writer_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 25 downto 0 );
    FifoWrite : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_fifo_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_fifo_writer_0_0 : entity is "design_1_axi_fifo_writer_0_0,axi_fifo_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_fifo_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_fifo_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_fifo_writer_0_0 : entity is "axi_fifo_writer,Vivado 2022.2.2";
end design_1_axi_fifo_writer_0_0;

architecture STRUCTURE of design_1_axi_fifo_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of S_AXI_RRESP : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi_fifo_writer_0_0_axi_fifo_writer
     port map (
      D(29 downto 4) => S_AXI_WDATA(25 downto 0),
      D(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      FifoData(25 downto 0) => FifoData(25 downto 0),
      FifoWrite => FifoWrite,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
