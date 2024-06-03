-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Fri May 24 22:37:47 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_axi_apu_writer_0_0/design_1_axi_apu_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_apu_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_apu_writer_0_0_axi_skid_buf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    axi_read_valid_reg : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    axi_read_valid_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_apu_writer_0_0_axi_skid_buf : entity is "axi_skid_buf";
end design_1_axi_apu_writer_0_0_axi_skid_buf;

architecture STRUCTURE of design_1_axi_apu_writer_0_0_axi_skid_buf is
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
      INIT => X"FCFE"
    )
        port map (
      I0 => axi_read_valid_reg_0,
      I1 => S_AXI_ARVALID,
      I2 => r_valid,
      I3 => S_AXI_RREADY,
      O => axi_read_valid_reg
    );
\r_valid_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => r_valid,
      I2 => S_AXI_RREADY,
      I3 => axi_read_valid_reg_0,
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
entity design_1_axi_apu_writer_0_0_axi_skid_buf_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_write_ready : out STD_LOGIC;
    \r_data_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_BREADY_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[7]\ : in STD_LOGIC;
    \state_reg[15]\ : in STD_LOGIC;
    \state_reg[23]\ : in STD_LOGIC;
    \state_reg[31]\ : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    wskd_valid : in STD_LOGIC;
    p_6_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \state_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[16]\ : in STD_LOGIC;
    \state_reg[17]\ : in STD_LOGIC;
    \state_reg[18]\ : in STD_LOGIC;
    \state_reg[19]\ : in STD_LOGIC;
    \state_reg[20]\ : in STD_LOGIC;
    \state_reg[21]\ : in STD_LOGIC;
    \state_reg[22]\ : in STD_LOGIC;
    \state_reg[23]_0\ : in STD_LOGIC;
    \state_reg[24]\ : in STD_LOGIC;
    \state_reg[25]\ : in STD_LOGIC;
    \state_reg[26]\ : in STD_LOGIC;
    \state_reg[27]\ : in STD_LOGIC;
    \state_reg[28]\ : in STD_LOGIC;
    \state_reg[29]\ : in STD_LOGIC;
    \state_reg[30]\ : in STD_LOGIC;
    \state_reg[31]_1\ : in STD_LOGIC;
    \state_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    r_valid : in STD_LOGIC;
    \state_reg[31]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_apu_writer_0_0_axi_skid_buf_0 : entity is "axi_skid_buf";
end design_1_axi_apu_writer_0_0_axi_skid_buf_0;

architecture STRUCTURE of design_1_axi_apu_writer_0_0_axi_skid_buf_0 is
  signal awskd_addr : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^axi_write_ready\ : STD_LOGIC;
  signal r_data : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[1]_i_1_n_0\ : STD_LOGIC;
  signal r_valid_0 : STD_LOGIC;
  signal r_valid_i_1_n_0 : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[10]_i_2_n_0\ : STD_LOGIC;
  signal \state[11]_i_2_n_0\ : STD_LOGIC;
  signal \state[12]_i_2_n_0\ : STD_LOGIC;
  signal \state[13]_i_2_n_0\ : STD_LOGIC;
  signal \state[14]_i_2_n_0\ : STD_LOGIC;
  signal \state[15]_i_4_n_0\ : STD_LOGIC;
  signal \state[15]_i_5_n_0\ : STD_LOGIC;
  signal \state[15]_i_7_n_0\ : STD_LOGIC;
  signal \state[16]_i_2_n_0\ : STD_LOGIC;
  signal \state[17]_i_2_n_0\ : STD_LOGIC;
  signal \state[18]_i_2_n_0\ : STD_LOGIC;
  signal \state[19]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[20]_i_2_n_0\ : STD_LOGIC;
  signal \state[21]_i_2_n_0\ : STD_LOGIC;
  signal \state[22]_i_2_n_0\ : STD_LOGIC;
  signal \state[23]_i_4_n_0\ : STD_LOGIC;
  signal \state[23]_i_5_n_0\ : STD_LOGIC;
  signal \state[23]_i_7_n_0\ : STD_LOGIC;
  signal \state[24]_i_2_n_0\ : STD_LOGIC;
  signal \state[25]_i_2_n_0\ : STD_LOGIC;
  signal \state[26]_i_2_n_0\ : STD_LOGIC;
  signal \state[27]_i_2_n_0\ : STD_LOGIC;
  signal \state[28]_i_2_n_0\ : STD_LOGIC;
  signal \state[29]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[30]_i_2_n_0\ : STD_LOGIC;
  signal \state[31]_i_5_n_0\ : STD_LOGIC;
  signal \state[31]_i_6_n_0\ : STD_LOGIC;
  signal \state[31]_i_8_n_0\ : STD_LOGIC;
  signal \state[31]_i_9_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[5]_i_2_n_0\ : STD_LOGIC;
  signal \state[6]_i_2_n_0\ : STD_LOGIC;
  signal \state[7]_i_4_n_0\ : STD_LOGIC;
  signal \state[7]_i_5_n_0\ : STD_LOGIC;
  signal \state[7]_i_7_n_0\ : STD_LOGIC;
  signal \state[8]_i_2_n_0\ : STD_LOGIC;
  signal \state[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_AWREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_data[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of r_valid_i_1 : label is "soft_lutpair1";
begin
  axi_write_ready <= \^axi_write_ready\;
S_AXI_AWREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_valid_0,
      O => S_AXI_AWREADY
    );
axi_bvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^axi_write_ready\,
      I1 => S_AXI_BREADY,
      I2 => S_AXI_BVALID,
      O => S_AXI_BREADY_0
    );
axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB0000000000000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => S_AXI_BVALID,
      I2 => S_AXI_AWVALID,
      I3 => r_valid_0,
      I4 => S_AXI_ARESETN,
      I5 => wskd_valid,
      O => \^axi_write_ready\
    );
\r_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => r_valid_0,
      I2 => r_data(0),
      O => \r_data[0]_i_1_n_0\
    );
\r_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => r_valid_0,
      I2 => r_data(1),
      O => \r_data[1]_i_1_n_0\
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_data[0]_i_1_n_0\,
      Q => r_data(0),
      R => '0'
    );
\r_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \r_data[1]_i_1_n_0\,
      Q => r_data(1),
      R => '0'
    );
r_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => r_valid_0,
      I2 => \^axi_write_ready\,
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
\reset_state[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4703440000000000"
    )
        port map (
      I0 => r_data(0),
      I1 => r_valid_0,
      I2 => S_AXI_AWADDR(0),
      I3 => r_data(1),
      I4 => S_AXI_AWADDR(1),
      I5 => \^axi_write_ready\,
      O => E(0)
    );
\set_state[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4703440000000000"
    )
        port map (
      I0 => r_data(1),
      I1 => r_valid_0,
      I2 => S_AXI_AWADDR(1),
      I3 => r_data(0),
      I4 => S_AXI_AWADDR(0),
      I5 => \^axi_write_ready\,
      O => \r_data_reg[1]_0\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(0),
      I3 => Q(0),
      I4 => \state_reg[31]_0\(0),
      I5 => \state[7]_i_7_n_0\,
      O => D(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(0),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(0),
      I5 => p_6_out(0),
      O => \state[0]_i_2_n_0\
    );
\state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[10]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(2),
      I3 => Q(10),
      I4 => \state_reg[31]_0\(10),
      I5 => \state[15]_i_7_n_0\,
      O => D(10)
    );
\state[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(10),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(10),
      I5 => p_2_in(2),
      O => \state[10]_i_2_n_0\
    );
\state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[11]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(3),
      I3 => Q(11),
      I4 => \state_reg[31]_0\(11),
      I5 => \state[15]_i_7_n_0\,
      O => D(11)
    );
\state[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(11),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(11),
      I5 => p_2_in(3),
      O => \state[11]_i_2_n_0\
    );
\state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[12]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(4),
      I3 => Q(12),
      I4 => \state_reg[31]_0\(12),
      I5 => \state[15]_i_7_n_0\,
      O => D(12)
    );
\state[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(12),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(12),
      I5 => p_2_in(4),
      O => \state[12]_i_2_n_0\
    );
\state[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[13]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(5),
      I3 => Q(13),
      I4 => \state_reg[31]_0\(13),
      I5 => \state[15]_i_7_n_0\,
      O => D(13)
    );
\state[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(13),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(13),
      I5 => p_2_in(5),
      O => \state[13]_i_2_n_0\
    );
\state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[14]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(6),
      I3 => Q(14),
      I4 => \state_reg[31]_0\(14),
      I5 => \state[15]_i_7_n_0\,
      O => D(14)
    );
\state[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(14),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(14),
      I5 => p_2_in(6),
      O => \state[14]_i_2_n_0\
    );
\state[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC80C0C0CC8C8C8"
    )
        port map (
      I0 => \state_reg[15]\,
      I1 => \^axi_write_ready\,
      I2 => awskd_addr(1),
      I3 => r_data(0),
      I4 => r_valid_0,
      I5 => S_AXI_AWADDR(0),
      O => \r_data_reg[0]_0\(1)
    );
\state[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[15]_i_4_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(7),
      I3 => Q(15),
      I4 => \state_reg[31]_0\(15),
      I5 => \state[15]_i_7_n_0\,
      O => D(15)
    );
\state[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(15),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(15),
      I5 => p_2_in(7),
      O => \state[15]_i_4_n_0\
    );
\state[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0B00A0FBABF"
    )
        port map (
      I0 => \state_reg[15]\,
      I1 => r_data(0),
      I2 => r_valid_0,
      I3 => S_AXI_AWADDR(0),
      I4 => r_data(1),
      I5 => S_AXI_AWADDR(1),
      O => \state[15]_i_5_n_0\
    );
\state[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => r_valid_0,
      I2 => r_data(1),
      I3 => S_AXI_WSTRB(1),
      I4 => r_valid,
      I5 => \state_reg[31]_3\(1),
      O => \state[15]_i_7_n_0\
    );
\state[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[16]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[16]\,
      I3 => Q(16),
      I4 => \state_reg[31]_0\(16),
      I5 => \state[23]_i_7_n_0\,
      O => D(16)
    );
\state[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(16),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(16),
      I5 => \state_reg[16]\,
      O => \state[16]_i_2_n_0\
    );
\state[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[17]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[17]\,
      I3 => Q(17),
      I4 => \state_reg[31]_0\(17),
      I5 => \state[23]_i_7_n_0\,
      O => D(17)
    );
\state[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(17),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(17),
      I5 => \state_reg[17]\,
      O => \state[17]_i_2_n_0\
    );
\state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[18]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[18]\,
      I3 => Q(18),
      I4 => \state_reg[31]_0\(18),
      I5 => \state[23]_i_7_n_0\,
      O => D(18)
    );
\state[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(18),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(18),
      I5 => \state_reg[18]\,
      O => \state[18]_i_2_n_0\
    );
\state[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[19]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[19]\,
      I3 => Q(19),
      I4 => \state_reg[31]_0\(19),
      I5 => \state[23]_i_7_n_0\,
      O => D(19)
    );
\state[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(19),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(19),
      I5 => \state_reg[19]\,
      O => \state[19]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(1),
      I3 => Q(1),
      I4 => \state_reg[31]_0\(1),
      I5 => \state[7]_i_7_n_0\,
      O => D(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(1),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(1),
      I5 => p_6_out(1),
      O => \state[1]_i_2_n_0\
    );
\state[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[20]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[20]\,
      I3 => Q(20),
      I4 => \state_reg[31]_0\(20),
      I5 => \state[23]_i_7_n_0\,
      O => D(20)
    );
\state[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(20),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(20),
      I5 => \state_reg[20]\,
      O => \state[20]_i_2_n_0\
    );
\state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[21]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[21]\,
      I3 => Q(21),
      I4 => \state_reg[31]_0\(21),
      I5 => \state[23]_i_7_n_0\,
      O => D(21)
    );
\state[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(21),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(21),
      I5 => \state_reg[21]\,
      O => \state[21]_i_2_n_0\
    );
\state[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[22]_i_2_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[22]\,
      I3 => Q(22),
      I4 => \state_reg[31]_0\(22),
      I5 => \state[23]_i_7_n_0\,
      O => D(22)
    );
\state[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(22),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(22),
      I5 => \state_reg[22]\,
      O => \state[22]_i_2_n_0\
    );
\state[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC80C0C0CC8C8C8"
    )
        port map (
      I0 => \state_reg[23]\,
      I1 => \^axi_write_ready\,
      I2 => awskd_addr(1),
      I3 => r_data(0),
      I4 => r_valid_0,
      I5 => S_AXI_AWADDR(0),
      O => \r_data_reg[0]_0\(2)
    );
\state[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[23]_i_4_n_0\,
      I1 => \state[23]_i_5_n_0\,
      I2 => \state_reg[23]_0\,
      I3 => Q(23),
      I4 => \state_reg[31]_0\(23),
      I5 => \state[23]_i_7_n_0\,
      O => D(23)
    );
\state[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(23),
      I2 => \state_reg[23]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(23),
      I5 => \state_reg[23]_0\,
      O => \state[23]_i_4_n_0\
    );
\state[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0B00A0FBABF"
    )
        port map (
      I0 => \state_reg[23]\,
      I1 => r_data(0),
      I2 => r_valid_0,
      I3 => S_AXI_AWADDR(0),
      I4 => r_data(1),
      I5 => S_AXI_AWADDR(1),
      O => \state[23]_i_5_n_0\
    );
\state[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => r_valid_0,
      I2 => r_data(1),
      I3 => S_AXI_WSTRB(2),
      I4 => r_valid,
      I5 => \state_reg[31]_3\(2),
      O => \state[23]_i_7_n_0\
    );
\state[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[24]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[24]\,
      I3 => Q(24),
      I4 => \state_reg[31]_0\(24),
      I5 => \state[31]_i_8_n_0\,
      O => D(24)
    );
\state[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(24),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(24),
      I5 => \state_reg[24]\,
      O => \state[24]_i_2_n_0\
    );
\state[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[25]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[25]\,
      I3 => Q(25),
      I4 => \state_reg[31]_0\(25),
      I5 => \state[31]_i_8_n_0\,
      O => D(25)
    );
\state[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(25),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(25),
      I5 => \state_reg[25]\,
      O => \state[25]_i_2_n_0\
    );
\state[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[26]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[26]\,
      I3 => Q(26),
      I4 => \state_reg[31]_0\(26),
      I5 => \state[31]_i_8_n_0\,
      O => D(26)
    );
\state[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(26),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(26),
      I5 => \state_reg[26]\,
      O => \state[26]_i_2_n_0\
    );
\state[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[27]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[27]\,
      I3 => Q(27),
      I4 => \state_reg[31]_0\(27),
      I5 => \state[31]_i_8_n_0\,
      O => D(27)
    );
\state[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(27),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(27),
      I5 => \state_reg[27]\,
      O => \state[27]_i_2_n_0\
    );
\state[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[28]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[28]\,
      I3 => Q(28),
      I4 => \state_reg[31]_0\(28),
      I5 => \state[31]_i_8_n_0\,
      O => D(28)
    );
\state[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(28),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(28),
      I5 => \state_reg[28]\,
      O => \state[28]_i_2_n_0\
    );
\state[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[29]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[29]\,
      I3 => Q(29),
      I4 => \state_reg[31]_0\(29),
      I5 => \state[31]_i_8_n_0\,
      O => D(29)
    );
\state[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(29),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(29),
      I5 => \state_reg[29]\,
      O => \state[29]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(2),
      I3 => Q(2),
      I4 => \state_reg[31]_0\(2),
      I5 => \state[7]_i_7_n_0\,
      O => D(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(2),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(2),
      I5 => p_6_out(2),
      O => \state[2]_i_2_n_0\
    );
\state[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[30]_i_2_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[30]\,
      I3 => Q(30),
      I4 => \state_reg[31]_0\(30),
      I5 => \state[31]_i_8_n_0\,
      O => D(30)
    );
\state[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(30),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(30),
      I5 => \state_reg[30]\,
      O => \state[30]_i_2_n_0\
    );
\state[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC80C0C0CC8C8C8"
    )
        port map (
      I0 => \state_reg[31]\,
      I1 => \^axi_write_ready\,
      I2 => awskd_addr(1),
      I3 => r_data(0),
      I4 => r_valid_0,
      I5 => S_AXI_AWADDR(0),
      O => \r_data_reg[0]_0\(3)
    );
\state[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[31]_i_5_n_0\,
      I1 => \state[31]_i_6_n_0\,
      I2 => \state_reg[31]_1\,
      I3 => Q(31),
      I4 => \state_reg[31]_0\(31),
      I5 => \state[31]_i_8_n_0\,
      O => D(31)
    );
\state[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(1),
      I1 => r_valid_0,
      I2 => S_AXI_AWADDR(1),
      O => awskd_addr(1)
    );
\state[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(31),
      I2 => \state_reg[31]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(31),
      I5 => \state_reg[31]_1\,
      O => \state[31]_i_5_n_0\
    );
\state[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0B00A0FBABF"
    )
        port map (
      I0 => \state_reg[31]\,
      I1 => r_data(0),
      I2 => r_valid_0,
      I3 => S_AXI_AWADDR(0),
      I4 => r_data(1),
      I5 => S_AXI_AWADDR(1),
      O => \state[31]_i_6_n_0\
    );
\state[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => r_valid_0,
      I2 => r_data(1),
      I3 => S_AXI_WSTRB(3),
      I4 => r_valid,
      I5 => \state_reg[31]_3\(3),
      O => \state[31]_i_8_n_0\
    );
\state[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => r_data(0),
      I2 => S_AXI_AWADDR(1),
      I3 => r_valid_0,
      I4 => r_data(1),
      O => \state[31]_i_9_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(3),
      I3 => Q(3),
      I4 => \state_reg[31]_0\(3),
      I5 => \state[7]_i_7_n_0\,
      O => D(3)
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(3),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(3),
      I5 => p_6_out(3),
      O => \state[3]_i_2_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[4]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(4),
      I3 => Q(4),
      I4 => \state_reg[31]_0\(4),
      I5 => \state[7]_i_7_n_0\,
      O => D(4)
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(4),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(4),
      I5 => p_6_out(4),
      O => \state[4]_i_2_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[5]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(5),
      I3 => Q(5),
      I4 => \state_reg[31]_0\(5),
      I5 => \state[7]_i_7_n_0\,
      O => D(5)
    );
\state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(5),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(5),
      I5 => p_6_out(5),
      O => \state[5]_i_2_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[6]_i_2_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(6),
      I3 => Q(6),
      I4 => \state_reg[31]_0\(6),
      I5 => \state[7]_i_7_n_0\,
      O => D(6)
    );
\state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(6),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(6),
      I5 => p_6_out(6),
      O => \state[6]_i_2_n_0\
    );
\state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC80C0C0CC8C8C8"
    )
        port map (
      I0 => \state_reg[7]\,
      I1 => \^axi_write_ready\,
      I2 => awskd_addr(1),
      I3 => r_data(0),
      I4 => r_valid_0,
      I5 => S_AXI_AWADDR(0),
      O => \r_data_reg[0]_0\(0)
    );
\state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[7]_i_4_n_0\,
      I1 => \state[7]_i_5_n_0\,
      I2 => p_6_out(7),
      I3 => Q(7),
      I4 => \state_reg[31]_0\(7),
      I5 => \state[7]_i_7_n_0\,
      O => D(7)
    );
\state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(7),
      I2 => \state_reg[7]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(7),
      I5 => p_6_out(7),
      O => \state[7]_i_4_n_0\
    );
\state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0B00A0FBABF"
    )
        port map (
      I0 => \state_reg[7]\,
      I1 => r_data(0),
      I2 => r_valid_0,
      I3 => S_AXI_AWADDR(0),
      I4 => r_data(1),
      I5 => S_AXI_AWADDR(1),
      O => \state[7]_i_5_n_0\
    );
\state[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E2E2E200E2"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => r_valid_0,
      I2 => r_data(1),
      I3 => S_AXI_WSTRB(0),
      I4 => r_valid,
      I5 => \state_reg[31]_3\(0),
      O => \state[7]_i_7_n_0\
    );
\state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[8]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(0),
      I3 => Q(8),
      I4 => \state_reg[31]_0\(8),
      I5 => \state[15]_i_7_n_0\,
      O => D(8)
    );
\state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(8),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(8),
      I5 => p_2_in(0),
      O => \state[8]_i_2_n_0\
    );
\state[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \state[9]_i_2_n_0\,
      I1 => \state[15]_i_5_n_0\,
      I2 => p_2_in(1),
      I3 => Q(9),
      I4 => \state_reg[31]_0\(9),
      I5 => \state[15]_i_7_n_0\,
      O => D(9)
    );
\state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0808FAAA0808"
    )
        port map (
      I0 => \state[31]_i_9_n_0\,
      I1 => \state_reg[31]_2\(9),
      I2 => \state_reg[15]\,
      I3 => awskd_addr(1),
      I4 => \state_reg[31]_0\(9),
      I5 => p_2_in(1),
      O => \state[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0\ is
  port (
    r_valid : out STD_LOGIC;
    wskd_valid : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_data_reg[35]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_data_reg[3]_0\ : out STD_LOGIC;
    \r_data_reg[35]_1\ : out STD_LOGIC;
    \r_data_reg[34]_0\ : out STD_LOGIC;
    \r_data_reg[33]_0\ : out STD_LOGIC;
    \r_data_reg[32]_0\ : out STD_LOGIC;
    \r_data_reg[31]_0\ : out STD_LOGIC;
    \r_data_reg[30]_0\ : out STD_LOGIC;
    \r_data_reg[29]_0\ : out STD_LOGIC;
    \r_data_reg[28]_0\ : out STD_LOGIC;
    \r_data_reg[2]_0\ : out STD_LOGIC;
    \r_data_reg[27]_0\ : out STD_LOGIC;
    \r_data_reg[26]_0\ : out STD_LOGIC;
    \r_data_reg[25]_0\ : out STD_LOGIC;
    \r_data_reg[24]_0\ : out STD_LOGIC;
    \r_data_reg[23]_0\ : out STD_LOGIC;
    \r_data_reg[22]_0\ : out STD_LOGIC;
    \r_data_reg[21]_0\ : out STD_LOGIC;
    \r_data_reg[20]_0\ : out STD_LOGIC;
    \r_data_reg[1]_0\ : out STD_LOGIC;
    p_2_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_data_reg[0]_0\ : out STD_LOGIC;
    p_6_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    \r_data_reg[35]_2\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    \set_state_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reset_state_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_write_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0\ : entity is "axi_skid_buf";
end \design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0\;

architecture STRUCTURE of \design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \r_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \^r_valid\ : STD_LOGIC;
  signal \r_valid_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_bvalid_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_valid_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[10]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[11]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[12]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[13]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state[14]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[15]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[15]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[16]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[17]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[18]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \state[19]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \state[20]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[21]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[22]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[23]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[23]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[24]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[25]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state[26]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[27]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[28]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[29]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \state[30]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[31]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[31]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[4]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[5]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[6]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[7]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[8]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \state[9]_i_3\ : label is "soft_lutpair17";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  r_valid <= \^r_valid\;
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_valid\,
      O => S_AXI_WREADY
    );
axi_bvalid_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_ARESETN,
      I2 => \^r_valid\,
      O => wskd_valid
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(0),
      Q => \^q\(0),
      R => '0'
    );
\r_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(10),
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
      D => \r_data_reg[35]_2\(11),
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
      D => \r_data_reg[35]_2\(12),
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
      D => \r_data_reg[35]_2\(13),
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
      D => \r_data_reg[35]_2\(14),
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
      D => \r_data_reg[35]_2\(15),
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
      D => \r_data_reg[35]_2\(16),
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
      D => \r_data_reg[35]_2\(17),
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
      D => \r_data_reg[35]_2\(18),
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
      D => \r_data_reg[35]_2\(19),
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
      D => \r_data_reg[35]_2\(1),
      Q => \^q\(1),
      R => '0'
    );
\r_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(20),
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
      D => \r_data_reg[35]_2\(21),
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
      D => \r_data_reg[35]_2\(22),
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
      D => \r_data_reg[35]_2\(23),
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
      D => \r_data_reg[35]_2\(24),
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
      D => \r_data_reg[35]_2\(25),
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
      D => \r_data_reg[35]_2\(26),
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
      D => \r_data_reg[35]_2\(27),
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
      D => \r_data_reg[35]_2\(28),
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
      D => \r_data_reg[35]_2\(29),
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
      D => \r_data_reg[35]_2\(2),
      Q => \^q\(2),
      R => '0'
    );
\r_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(30),
      Q => \r_data_reg_n_0_[30]\,
      R => '0'
    );
\r_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(31),
      Q => \r_data_reg_n_0_[31]\,
      R => '0'
    );
\r_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(32),
      Q => \r_data_reg_n_0_[32]\,
      R => '0'
    );
\r_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(33),
      Q => \r_data_reg_n_0_[33]\,
      R => '0'
    );
\r_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(34),
      Q => \r_data_reg_n_0_[34]\,
      R => '0'
    );
\r_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(35),
      Q => \r_data_reg_n_0_[35]\,
      R => '0'
    );
\r_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(3),
      Q => \^q\(3),
      R => '0'
    );
\r_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \^r_valid\,
      D => \r_data_reg[35]_2\(4),
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
      D => \r_data_reg[35]_2\(5),
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
      D => \r_data_reg[35]_2\(6),
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
      D => \r_data_reg[35]_2\(7),
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
      D => \r_data_reg[35]_2\(8),
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
      D => \r_data_reg[35]_2\(9),
      Q => \r_data_reg_n_0_[9]\,
      R => '0'
    );
\r_valid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^r_valid\,
      I2 => axi_write_ready,
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
\reset_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[4]\,
      I1 => \r_data_reg[35]_2\(4),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(0),
      O => \r_data_reg[35]_0\(0)
    );
\reset_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[14]\,
      I1 => \r_data_reg[35]_2\(14),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(10),
      O => \r_data_reg[35]_0\(10)
    );
\reset_state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[15]\,
      I1 => \r_data_reg[35]_2\(15),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(11),
      O => \r_data_reg[35]_0\(11)
    );
\reset_state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[16]\,
      I1 => \r_data_reg[35]_2\(16),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(12),
      O => \r_data_reg[35]_0\(12)
    );
\reset_state[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[17]\,
      I1 => \r_data_reg[35]_2\(17),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(13),
      O => \r_data_reg[35]_0\(13)
    );
\reset_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[18]\,
      I1 => \r_data_reg[35]_2\(18),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(14),
      O => \r_data_reg[35]_0\(14)
    );
\reset_state[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[19]\,
      I1 => \r_data_reg[35]_2\(19),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(15),
      O => \r_data_reg[35]_0\(15)
    );
\reset_state[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[20]\,
      I1 => \r_data_reg[35]_2\(20),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(16),
      O => \r_data_reg[35]_0\(16)
    );
\reset_state[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[21]\,
      I1 => \r_data_reg[35]_2\(21),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(17),
      O => \r_data_reg[35]_0\(17)
    );
\reset_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[22]\,
      I1 => \r_data_reg[35]_2\(22),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(18),
      O => \r_data_reg[35]_0\(18)
    );
\reset_state[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[23]\,
      I1 => \r_data_reg[35]_2\(23),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(19),
      O => \r_data_reg[35]_0\(19)
    );
\reset_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[5]\,
      I1 => \r_data_reg[35]_2\(5),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(1),
      O => \r_data_reg[35]_0\(1)
    );
\reset_state[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[24]\,
      I1 => \r_data_reg[35]_2\(24),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(20),
      O => \r_data_reg[35]_0\(20)
    );
\reset_state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[25]\,
      I1 => \r_data_reg[35]_2\(25),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(21),
      O => \r_data_reg[35]_0\(21)
    );
\reset_state[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[26]\,
      I1 => \r_data_reg[35]_2\(26),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(22),
      O => \r_data_reg[35]_0\(22)
    );
\reset_state[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[27]\,
      I1 => \r_data_reg[35]_2\(27),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \reset_state_reg[31]\(23),
      O => \r_data_reg[35]_0\(23)
    );
\reset_state[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[28]\,
      I1 => \r_data_reg[35]_2\(28),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(24),
      O => \r_data_reg[35]_0\(24)
    );
\reset_state[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[29]\,
      I1 => \r_data_reg[35]_2\(29),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(25),
      O => \r_data_reg[35]_0\(25)
    );
\reset_state[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[30]\,
      I1 => \r_data_reg[35]_2\(30),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(26),
      O => \r_data_reg[35]_0\(26)
    );
\reset_state[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[31]\,
      I1 => \r_data_reg[35]_2\(31),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(27),
      O => \r_data_reg[35]_0\(27)
    );
\reset_state[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[32]\,
      I1 => \r_data_reg[35]_2\(32),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(28),
      O => \r_data_reg[35]_0\(28)
    );
\reset_state[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[33]\,
      I1 => \r_data_reg[35]_2\(33),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(29),
      O => \r_data_reg[35]_0\(29)
    );
\reset_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[6]\,
      I1 => \r_data_reg[35]_2\(6),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(2),
      O => \r_data_reg[35]_0\(2)
    );
\reset_state[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[34]\,
      I1 => \r_data_reg[35]_2\(34),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(30),
      O => \r_data_reg[35]_0\(30)
    );
\reset_state[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[35]\,
      I1 => \r_data_reg[35]_2\(35),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \reset_state_reg[31]\(31),
      O => \r_data_reg[35]_0\(31)
    );
\reset_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[7]\,
      I1 => \r_data_reg[35]_2\(7),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(3),
      O => \r_data_reg[35]_0\(3)
    );
\reset_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[8]\,
      I1 => \r_data_reg[35]_2\(8),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(4),
      O => \r_data_reg[35]_0\(4)
    );
\reset_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[9]\,
      I1 => \r_data_reg[35]_2\(9),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(5),
      O => \r_data_reg[35]_0\(5)
    );
\reset_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[10]\,
      I1 => \r_data_reg[35]_2\(10),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(6),
      O => \r_data_reg[35]_0\(6)
    );
\reset_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[11]\,
      I1 => \r_data_reg[35]_2\(11),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \reset_state_reg[31]\(7),
      O => \r_data_reg[35]_0\(7)
    );
\reset_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[12]\,
      I1 => \r_data_reg[35]_2\(12),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(8),
      O => \r_data_reg[35]_0\(8)
    );
\reset_state[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[13]\,
      I1 => \r_data_reg[35]_2\(13),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \reset_state_reg[31]\(9),
      O => \r_data_reg[35]_0\(9)
    );
\set_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[4]\,
      I1 => \r_data_reg[35]_2\(4),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(0),
      O => D(0)
    );
\set_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[14]\,
      I1 => \r_data_reg[35]_2\(14),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(10),
      O => D(10)
    );
\set_state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[15]\,
      I1 => \r_data_reg[35]_2\(15),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(11),
      O => D(11)
    );
\set_state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[16]\,
      I1 => \r_data_reg[35]_2\(16),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(12),
      O => D(12)
    );
\set_state[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[17]\,
      I1 => \r_data_reg[35]_2\(17),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(13),
      O => D(13)
    );
\set_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[18]\,
      I1 => \r_data_reg[35]_2\(18),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(14),
      O => D(14)
    );
\set_state[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[19]\,
      I1 => \r_data_reg[35]_2\(19),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(15),
      O => D(15)
    );
\set_state[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[20]\,
      I1 => \r_data_reg[35]_2\(20),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(16),
      O => D(16)
    );
\set_state[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[21]\,
      I1 => \r_data_reg[35]_2\(21),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(17),
      O => D(17)
    );
\set_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[22]\,
      I1 => \r_data_reg[35]_2\(22),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(18),
      O => D(18)
    );
\set_state[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[23]\,
      I1 => \r_data_reg[35]_2\(23),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(19),
      O => D(19)
    );
\set_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[5]\,
      I1 => \r_data_reg[35]_2\(5),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(1),
      O => D(1)
    );
\set_state[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[24]\,
      I1 => \r_data_reg[35]_2\(24),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(20),
      O => D(20)
    );
\set_state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[25]\,
      I1 => \r_data_reg[35]_2\(25),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(21),
      O => D(21)
    );
\set_state[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[26]\,
      I1 => \r_data_reg[35]_2\(26),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(22),
      O => D(22)
    );
\set_state[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[27]\,
      I1 => \r_data_reg[35]_2\(27),
      I2 => \^q\(2),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(2),
      I5 => \set_state_reg[31]\(23),
      O => D(23)
    );
\set_state[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[28]\,
      I1 => \r_data_reg[35]_2\(28),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(24),
      O => D(24)
    );
\set_state[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[29]\,
      I1 => \r_data_reg[35]_2\(29),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(25),
      O => D(25)
    );
\set_state[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[30]\,
      I1 => \r_data_reg[35]_2\(30),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(26),
      O => D(26)
    );
\set_state[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[31]\,
      I1 => \r_data_reg[35]_2\(31),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(27),
      O => D(27)
    );
\set_state[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[32]\,
      I1 => \r_data_reg[35]_2\(32),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(28),
      O => D(28)
    );
\set_state[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[33]\,
      I1 => \r_data_reg[35]_2\(33),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(29),
      O => D(29)
    );
\set_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[6]\,
      I1 => \r_data_reg[35]_2\(6),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(2),
      O => D(2)
    );
\set_state[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[34]\,
      I1 => \r_data_reg[35]_2\(34),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(30),
      O => D(30)
    );
\set_state[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[35]\,
      I1 => \r_data_reg[35]_2\(35),
      I2 => \^q\(3),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(3),
      I5 => \set_state_reg[31]\(31),
      O => D(31)
    );
\set_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[7]\,
      I1 => \r_data_reg[35]_2\(7),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(3),
      O => D(3)
    );
\set_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[8]\,
      I1 => \r_data_reg[35]_2\(8),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(4),
      O => D(4)
    );
\set_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[9]\,
      I1 => \r_data_reg[35]_2\(9),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(5),
      O => D(5)
    );
\set_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[10]\,
      I1 => \r_data_reg[35]_2\(10),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(6),
      O => D(6)
    );
\set_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[11]\,
      I1 => \r_data_reg[35]_2\(11),
      I2 => \^q\(0),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(0),
      I5 => \set_state_reg[31]\(7),
      O => D(7)
    );
\set_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[12]\,
      I1 => \r_data_reg[35]_2\(12),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(8),
      O => D(8)
    );
\set_state[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCCAFFFA0CCA000"
    )
        port map (
      I0 => \r_data_reg_n_0_[13]\,
      I1 => \r_data_reg[35]_2\(13),
      I2 => \^q\(1),
      I3 => \^r_valid\,
      I4 => \r_data_reg[35]_2\(1),
      I5 => \set_state_reg[31]\(9),
      O => D(9)
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[4]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(4),
      O => p_6_out(0)
    );
\state[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[14]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(14),
      O => p_2_in(2)
    );
\state[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[15]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(15),
      O => p_2_in(3)
    );
\state[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[16]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(16),
      O => p_2_in(4)
    );
\state[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[17]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(17),
      O => p_2_in(5)
    );
\state[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[18]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(18),
      O => p_2_in(6)
    );
\state[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(1),
      O => \r_data_reg[1]_0\
    );
\state[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[19]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(19),
      O => p_2_in(7)
    );
\state[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[20]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(20),
      O => \r_data_reg[20]_0\
    );
\state[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[21]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(21),
      O => \r_data_reg[21]_0\
    );
\state[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[22]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(22),
      O => \r_data_reg[22]_0\
    );
\state[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[23]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(23),
      O => \r_data_reg[23]_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[5]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(5),
      O => p_6_out(1)
    );
\state[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[24]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(24),
      O => \r_data_reg[24]_0\
    );
\state[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[25]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(25),
      O => \r_data_reg[25]_0\
    );
\state[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[26]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(26),
      O => \r_data_reg[26]_0\
    );
\state[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(2),
      O => \r_data_reg[2]_0\
    );
\state[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[27]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(27),
      O => \r_data_reg[27]_0\
    );
\state[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[28]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(28),
      O => \r_data_reg[28]_0\
    );
\state[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[29]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(29),
      O => \r_data_reg[29]_0\
    );
\state[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[30]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(30),
      O => \r_data_reg[30]_0\
    );
\state[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[31]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(31),
      O => \r_data_reg[31]_0\
    );
\state[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[32]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(32),
      O => \r_data_reg[32]_0\
    );
\state[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[33]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(33),
      O => \r_data_reg[33]_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[6]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(6),
      O => p_6_out(2)
    );
\state[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[34]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(34),
      O => \r_data_reg[34]_0\
    );
\state[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(3),
      O => \r_data_reg[3]_0\
    );
\state[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[35]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(35),
      O => \r_data_reg[35]_1\
    );
\state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[7]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(7),
      O => p_6_out(3)
    );
\state[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[8]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(8),
      O => p_6_out(4)
    );
\state[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[9]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(9),
      O => p_6_out(5)
    );
\state[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[10]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(10),
      O => p_6_out(6)
    );
\state[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(0),
      O => \r_data_reg[0]_0\
    );
\state[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[11]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(11),
      O => p_6_out(7)
    );
\state[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[12]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(12),
      O => p_2_in(0)
    );
\state[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_data_reg_n_0_[13]\,
      I1 => \^r_valid\,
      I2 => \r_data_reg[35]_2\(13),
      O => p_2_in(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_apu_writer_0_0_axi_apu_writer is
  port (
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 18 downto 0 );
    FifoWrite : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    axi_read_valid_reg_0 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    Pulse1_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Pulse2_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Triangle_Message : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Noise_Message : in STD_LOGIC_VECTOR ( 13 downto 0 );
    DMC_Message : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_apu_writer_0_0_axi_apu_writer : entity is "axi_apu_writer";
end design_1_axi_apu_writer_0_0_axi_apu_writer;

architecture STRUCTURE of design_1_axi_apu_writer_0_0_axi_apu_writer is
  signal ENABLE_DMC : STD_LOGIC;
  signal ENABLE_NOISE : STD_LOGIC;
  signal ENABLE_PULSE_2 : STD_LOGIC;
  signal ENABLE_TRIANGLE : STD_LOGIC;
  signal \^fifodata\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal FifoData110_out : STD_LOGIC;
  signal FifoData14_out : STD_LOGIC;
  signal FifoData17_out : STD_LOGIC;
  signal \FifoData1__2\ : STD_LOGIC;
  signal FifoData3 : STD_LOGIC;
  signal FifoData30_out : STD_LOGIC;
  signal FifoData31_in : STD_LOGIC;
  signal FifoData33_in : STD_LOGIC;
  signal \FifoData3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \FifoData3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \FifoData3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \FifoData3_carry__0_n_2\ : STD_LOGIC;
  signal \FifoData3_carry__0_n_3\ : STD_LOGIC;
  signal FifoData3_carry_i_1_n_0 : STD_LOGIC;
  signal FifoData3_carry_i_2_n_0 : STD_LOGIC;
  signal FifoData3_carry_i_3_n_0 : STD_LOGIC;
  signal FifoData3_carry_i_4_n_0 : STD_LOGIC;
  signal FifoData3_carry_n_0 : STD_LOGIC;
  signal FifoData3_carry_n_1 : STD_LOGIC;
  signal FifoData3_carry_n_2 : STD_LOGIC;
  signal FifoData3_carry_n_3 : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \FifoData3_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \FifoData3_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \FifoData3_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \FifoData3_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \FifoData3_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \FifoData3_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \FifoData3_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \FifoData3_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \FifoData3_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \FifoData[0]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[0]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[10]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[10]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[11]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[11]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[12]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[12]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[13]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[13]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[13]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[13]_i_4_n_0\ : STD_LOGIC;
  signal \FifoData[14]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[14]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[14]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[15]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[16]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[17]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_4_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_5_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_6_n_0\ : STD_LOGIC;
  signal \FifoData[18]_i_7_n_0\ : STD_LOGIC;
  signal \FifoData[1]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[1]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[2]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[2]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_3_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_4_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_5_n_0\ : STD_LOGIC;
  signal \FifoData[3]_i_6_n_0\ : STD_LOGIC;
  signal \FifoData[4]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[4]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[5]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[5]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[6]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[6]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[7]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[7]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[8]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[8]_i_2_n_0\ : STD_LOGIC;
  signal \FifoData[9]_i_1_n_0\ : STD_LOGIC;
  signal \FifoData[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal axi_read_data0 : STD_LOGIC;
  signal \^axi_read_valid_reg_0\ : STD_LOGIC;
  signal axi_write_ready : STD_LOGIC;
  signal dmc_message_last : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dmc_message_last_1 : STD_LOGIC;
  signal \dmc_message_last_reg_n_0_[3]\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal instSkidAR_n_2 : STD_LOGIC;
  signal instSkidAW_n_10 : STD_LOGIC;
  signal instSkidAW_n_11 : STD_LOGIC;
  signal instSkidAW_n_12 : STD_LOGIC;
  signal instSkidAW_n_13 : STD_LOGIC;
  signal instSkidAW_n_14 : STD_LOGIC;
  signal instSkidAW_n_15 : STD_LOGIC;
  signal instSkidAW_n_16 : STD_LOGIC;
  signal instSkidAW_n_17 : STD_LOGIC;
  signal instSkidAW_n_18 : STD_LOGIC;
  signal instSkidAW_n_19 : STD_LOGIC;
  signal instSkidAW_n_20 : STD_LOGIC;
  signal instSkidAW_n_21 : STD_LOGIC;
  signal instSkidAW_n_22 : STD_LOGIC;
  signal instSkidAW_n_23 : STD_LOGIC;
  signal instSkidAW_n_24 : STD_LOGIC;
  signal instSkidAW_n_25 : STD_LOGIC;
  signal instSkidAW_n_26 : STD_LOGIC;
  signal instSkidAW_n_27 : STD_LOGIC;
  signal instSkidAW_n_28 : STD_LOGIC;
  signal instSkidAW_n_29 : STD_LOGIC;
  signal instSkidAW_n_3 : STD_LOGIC;
  signal instSkidAW_n_30 : STD_LOGIC;
  signal instSkidAW_n_31 : STD_LOGIC;
  signal instSkidAW_n_32 : STD_LOGIC;
  signal instSkidAW_n_33 : STD_LOGIC;
  signal instSkidAW_n_34 : STD_LOGIC;
  signal instSkidAW_n_35 : STD_LOGIC;
  signal instSkidAW_n_36 : STD_LOGIC;
  signal instSkidAW_n_37 : STD_LOGIC;
  signal instSkidAW_n_38 : STD_LOGIC;
  signal instSkidAW_n_4 : STD_LOGIC;
  signal instSkidAW_n_40 : STD_LOGIC;
  signal instSkidAW_n_5 : STD_LOGIC;
  signal instSkidAW_n_6 : STD_LOGIC;
  signal instSkidAW_n_7 : STD_LOGIC;
  signal instSkidAW_n_8 : STD_LOGIC;
  signal instSkidAW_n_9 : STD_LOGIC;
  signal instSkidW_n_35 : STD_LOGIC;
  signal instSkidW_n_36 : STD_LOGIC;
  signal instSkidW_n_37 : STD_LOGIC;
  signal instSkidW_n_38 : STD_LOGIC;
  signal instSkidW_n_71 : STD_LOGIC;
  signal instSkidW_n_72 : STD_LOGIC;
  signal instSkidW_n_73 : STD_LOGIC;
  signal instSkidW_n_74 : STD_LOGIC;
  signal instSkidW_n_75 : STD_LOGIC;
  signal instSkidW_n_76 : STD_LOGIC;
  signal instSkidW_n_77 : STD_LOGIC;
  signal instSkidW_n_78 : STD_LOGIC;
  signal instSkidW_n_79 : STD_LOGIC;
  signal instSkidW_n_80 : STD_LOGIC;
  signal instSkidW_n_81 : STD_LOGIC;
  signal instSkidW_n_82 : STD_LOGIC;
  signal instSkidW_n_83 : STD_LOGIC;
  signal instSkidW_n_84 : STD_LOGIC;
  signal instSkidW_n_85 : STD_LOGIC;
  signal instSkidW_n_86 : STD_LOGIC;
  signal instSkidW_n_87 : STD_LOGIC;
  signal instSkidW_n_88 : STD_LOGIC;
  signal instSkidW_n_89 : STD_LOGIC;
  signal instSkidW_n_98 : STD_LOGIC;
  signal noise_message_last : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal noise_message_last_2 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pulse1_message_last_reg_n_0_[0]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[10]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[11]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[12]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[13]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[14]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[15]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[16]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[17]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[18]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[1]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[2]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[4]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[5]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[6]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[7]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[8]\ : STD_LOGIC;
  signal \pulse1_message_last_reg_n_0_[9]\ : STD_LOGIC;
  signal pulse2_message_last : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal pulse2_message_last_0 : STD_LOGIC;
  signal r_valid : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal reset_state : STD_LOGIC;
  signal \reset_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[14]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[15]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[16]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[17]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[18]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[19]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[20]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[21]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[22]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[23]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[24]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[25]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[26]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[27]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[28]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[29]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[30]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[31]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \reset_state_reg_n_0_[9]\ : STD_LOGIC;
  signal set_state : STD_LOGIC;
  signal \set_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[14]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[15]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[16]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[17]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[18]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[19]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[20]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[21]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[22]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[23]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[24]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[25]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[26]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[27]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[28]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[29]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[30]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[31]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \set_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[10]\ : STD_LOGIC;
  signal \state_reg_n_0_[11]\ : STD_LOGIC;
  signal \state_reg_n_0_[12]\ : STD_LOGIC;
  signal \state_reg_n_0_[13]\ : STD_LOGIC;
  signal \state_reg_n_0_[14]\ : STD_LOGIC;
  signal \state_reg_n_0_[15]\ : STD_LOGIC;
  signal \state_reg_n_0_[16]\ : STD_LOGIC;
  signal \state_reg_n_0_[17]\ : STD_LOGIC;
  signal \state_reg_n_0_[18]\ : STD_LOGIC;
  signal \state_reg_n_0_[19]\ : STD_LOGIC;
  signal \state_reg_n_0_[20]\ : STD_LOGIC;
  signal \state_reg_n_0_[21]\ : STD_LOGIC;
  signal \state_reg_n_0_[22]\ : STD_LOGIC;
  signal \state_reg_n_0_[23]\ : STD_LOGIC;
  signal \state_reg_n_0_[24]\ : STD_LOGIC;
  signal \state_reg_n_0_[25]\ : STD_LOGIC;
  signal \state_reg_n_0_[26]\ : STD_LOGIC;
  signal \state_reg_n_0_[27]\ : STD_LOGIC;
  signal \state_reg_n_0_[28]\ : STD_LOGIC;
  signal \state_reg_n_0_[29]\ : STD_LOGIC;
  signal \state_reg_n_0_[30]\ : STD_LOGIC;
  signal \state_reg_n_0_[31]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \state_reg_n_0_[6]\ : STD_LOGIC;
  signal \state_reg_n_0_[7]\ : STD_LOGIC;
  signal \state_reg_n_0_[8]\ : STD_LOGIC;
  signal \state_reg_n_0_[9]\ : STD_LOGIC;
  signal triangle_message_last : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \triangle_message_last[14]_i_1_n_0\ : STD_LOGIC;
  signal wskd_reset : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wskd_set : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wskd_valid : STD_LOGIC;
  signal NLW_FifoData3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FifoData3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FifoData3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FifoData3_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FifoData3_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FifoData3_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FifoData[14]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FifoData[14]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FifoData[18]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FifoData[3]_i_7\ : label is "soft_lutpair23";
begin
  FifoData(18 downto 0) <= \^fifodata\(18 downto 0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  axi_read_valid_reg_0 <= \^axi_read_valid_reg_0\;
FifoData3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FifoData3_carry_n_0,
      CO(2) => FifoData3_carry_n_1,
      CO(1) => FifoData3_carry_n_2,
      CO(0) => FifoData3_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_FifoData3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => FifoData3_carry_i_1_n_0,
      S(2) => FifoData3_carry_i_2_n_0,
      S(1) => FifoData3_carry_i_3_n_0,
      S(0) => FifoData3_carry_i_4_n_0
    );
\FifoData3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FifoData3_carry_n_0,
      CO(3) => \NLW_FifoData3_carry__0_CO_UNCONNECTED\(3),
      CO(2) => FifoData30_out,
      CO(1) => \FifoData3_carry__0_n_2\,
      CO(0) => \FifoData3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FifoData3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FifoData3_carry__0_i_1_n_0\,
      S(1) => \FifoData3_carry__0_i_2_n_0\,
      S(0) => \FifoData3_carry__0_i_3_n_0\
    );
\FifoData3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pulse1_message_last_reg_n_0_[18]\,
      I1 => Pulse1_Message(18),
      O => \FifoData3_carry__0_i_1_n_0\
    );
\FifoData3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(15),
      I1 => \pulse1_message_last_reg_n_0_[15]\,
      I2 => Pulse1_Message(16),
      I3 => \pulse1_message_last_reg_n_0_[16]\,
      I4 => \pulse1_message_last_reg_n_0_[17]\,
      I5 => Pulse1_Message(17),
      O => \FifoData3_carry__0_i_2_n_0\
    );
\FifoData3_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(12),
      I1 => \pulse1_message_last_reg_n_0_[12]\,
      I2 => Pulse1_Message(13),
      I3 => \pulse1_message_last_reg_n_0_[13]\,
      I4 => \pulse1_message_last_reg_n_0_[14]\,
      I5 => Pulse1_Message(14),
      O => \FifoData3_carry__0_i_3_n_0\
    );
FifoData3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(9),
      I1 => \pulse1_message_last_reg_n_0_[9]\,
      I2 => Pulse1_Message(10),
      I3 => \pulse1_message_last_reg_n_0_[10]\,
      I4 => \pulse1_message_last_reg_n_0_[11]\,
      I5 => Pulse1_Message(11),
      O => FifoData3_carry_i_1_n_0
    );
FifoData3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(6),
      I1 => \pulse1_message_last_reg_n_0_[6]\,
      I2 => Pulse1_Message(7),
      I3 => \pulse1_message_last_reg_n_0_[7]\,
      I4 => \pulse1_message_last_reg_n_0_[8]\,
      I5 => Pulse1_Message(8),
      O => FifoData3_carry_i_2_n_0
    );
FifoData3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(4),
      I1 => \pulse1_message_last_reg_n_0_[4]\,
      I2 => Pulse1_Message(5),
      I3 => \pulse1_message_last_reg_n_0_[5]\,
      I4 => Pulse1_Message(3),
      I5 => p_0_in9_in,
      O => FifoData3_carry_i_3_n_0
    );
FifoData3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse1_Message(0),
      I1 => \pulse1_message_last_reg_n_0_[0]\,
      I2 => Pulse1_Message(1),
      I3 => \pulse1_message_last_reg_n_0_[1]\,
      I4 => \pulse1_message_last_reg_n_0_[2]\,
      I5 => Pulse1_Message(2),
      O => FifoData3_carry_i_4_n_0
    );
\FifoData3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FifoData3_inferred__0/i__carry_n_0\,
      CO(2) => \FifoData3_inferred__0/i__carry_n_1\,
      CO(1) => \FifoData3_inferred__0/i__carry_n_2\,
      CO(0) => \FifoData3_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FifoData3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\FifoData3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \FifoData3_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_FifoData3_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => FifoData3,
      CO(1) => \FifoData3_inferred__0/i__carry__0_n_2\,
      CO(0) => \FifoData3_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_FifoData3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_1__1_n_0\,
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
\FifoData3_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FifoData3_inferred__1/i__carry_n_0\,
      CO(2) => \FifoData3_inferred__1/i__carry_n_1\,
      CO(1) => \FifoData3_inferred__1/i__carry_n_2\,
      CO(0) => \FifoData3_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FifoData3_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\FifoData3_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \FifoData3_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_FifoData3_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => FifoData33_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_FifoData3_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1_n_0\
    );
\FifoData3_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FifoData3_inferred__2/i__carry_n_0\,
      CO(2) => \FifoData3_inferred__2/i__carry_n_1\,
      CO(1) => \FifoData3_inferred__2/i__carry_n_2\,
      CO(0) => \FifoData3_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_FifoData3_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\FifoData3_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \FifoData3_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_FifoData3_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => FifoData31_in,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_FifoData3_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__0_n_0\
    );
\FifoData[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[0]_i_2_n_0\,
      I1 => \FifoData[3]_i_5_n_0\,
      I2 => DMC_Message(0),
      I3 => \FifoData[13]_i_4_n_0\,
      I4 => Noise_Message(0),
      O => \FifoData[0]_i_1_n_0\
    );
\FifoData[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F0F08888"
    )
        port map (
      I0 => FifoData14_out,
      I1 => Triangle_Message(0),
      I2 => Pulse2_Message(0),
      I3 => Pulse1_Message(0),
      I4 => FifoData17_out,
      I5 => FifoData110_out,
      O => \FifoData[0]_i_2_n_0\
    );
\FifoData[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[10]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(10),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(10),
      O => \FifoData[10]_i_1_n_0\
    );
\FifoData[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(10),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(10),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[10]_i_2_n_0\
    );
\FifoData[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[11]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(11),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(11),
      O => \FifoData[11]_i_1_n_0\
    );
\FifoData[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(11),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(11),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[11]_i_2_n_0\
    );
\FifoData[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[12]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(12),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(12),
      O => \FifoData[12]_i_1_n_0\
    );
\FifoData[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(12),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(12),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[12]_i_2_n_0\
    );
\FifoData[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAAAA"
    )
        port map (
      I0 => \FifoData[14]_i_3_n_0\,
      I1 => Noise_Message(3),
      I2 => p_0_in1_in,
      I3 => FifoData31_in,
      I4 => ENABLE_NOISE,
      O => \FifoData[13]_i_1_n_0\
    );
\FifoData[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[13]_i_3_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(13),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(13),
      O => \FifoData[13]_i_2_n_0\
    );
\FifoData[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(13),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(13),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[13]_i_3_n_0\
    );
\FifoData[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0155555500000000"
    )
        port map (
      I0 => \FifoData[18]_i_1_n_0\,
      I1 => Triangle_Message(3),
      I2 => p_0_in3_in,
      I3 => FifoData33_in,
      I4 => ENABLE_TRIANGLE,
      I5 => \FifoData1__2\,
      O => \FifoData[13]_i_4_n_0\
    );
\FifoData[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => ENABLE_NOISE,
      I1 => FifoData31_in,
      I2 => p_0_in1_in,
      I3 => Noise_Message(3),
      O => \FifoData1__2\
    );
\FifoData[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \FifoData[14]_i_2_n_0\,
      I1 => Pulse1_Message(14),
      I2 => \FifoData[18]_i_6_n_0\,
      I3 => \FifoData[14]_i_3_n_0\,
      I4 => \^fifodata\(14),
      O => \FifoData[14]_i_1_n_0\
    );
\FifoData[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F000"
    )
        port map (
      I0 => Pulse2_Message(14),
      I1 => pulse2_message_last_0,
      I2 => Triangle_Message(14),
      I3 => FifoData14_out,
      I4 => \FifoData[18]_i_1_n_0\,
      O => \FifoData[14]_i_2_n_0\
    );
\FifoData[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAAAA"
    )
        port map (
      I0 => \FifoData[18]_i_1_n_0\,
      I1 => Triangle_Message(3),
      I2 => p_0_in3_in,
      I3 => FifoData33_in,
      I4 => ENABLE_TRIANGLE,
      O => \FifoData[14]_i_3_n_0\
    );
\FifoData[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => ENABLE_TRIANGLE,
      I1 => FifoData33_in,
      I2 => p_0_in3_in,
      I3 => Triangle_Message(3),
      O => FifoData14_out
    );
\FifoData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(15),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(15),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[15]_i_1_n_0\
    );
\FifoData[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(16),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(16),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[16]_i_1_n_0\
    );
\FifoData[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(17),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(17),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[17]_i_1_n_0\
    );
\FifoData[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \FifoData[18]_i_4_n_0\,
      I1 => FifoData3,
      I2 => ENABLE_PULSE_2,
      I3 => \FifoData[18]_i_5_n_0\,
      I4 => FifoData30_out,
      I5 => \state_reg_n_0_[0]\,
      O => \FifoData[18]_i_1_n_0\
    );
\FifoData[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(18),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(18),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[18]_i_2_n_0\
    );
\FifoData[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => CPU_Rst,
      O => \FifoData[18]_i_3_n_0\
    );
\FifoData[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Pulse2_Message(3),
      I1 => p_0_in6_in,
      O => \FifoData[18]_i_4_n_0\
    );
\FifoData[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Pulse1_Message(3),
      I1 => p_0_in9_in,
      O => \FifoData[18]_i_5_n_0\
    );
\FifoData[18]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FifoData[18]_i_5_n_0\,
      I1 => FifoData30_out,
      I2 => \state_reg_n_0_[0]\,
      O => \FifoData[18]_i_6_n_0\
    );
\FifoData[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => FifoData30_out,
      I2 => \FifoData[18]_i_5_n_0\,
      I3 => ENABLE_PULSE_2,
      I4 => FifoData3,
      I5 => \FifoData[18]_i_4_n_0\,
      O => \FifoData[18]_i_7_n_0\
    );
\FifoData[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[1]_i_2_n_0\,
      I1 => \FifoData[3]_i_5_n_0\,
      I2 => DMC_Message(1),
      I3 => \FifoData[13]_i_4_n_0\,
      I4 => Noise_Message(1),
      O => \FifoData[1]_i_1_n_0\
    );
\FifoData[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F0F08888"
    )
        port map (
      I0 => FifoData14_out,
      I1 => Triangle_Message(1),
      I2 => Pulse2_Message(1),
      I3 => Pulse1_Message(1),
      I4 => FifoData17_out,
      I5 => FifoData110_out,
      O => \FifoData[1]_i_2_n_0\
    );
\FifoData[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[2]_i_2_n_0\,
      I1 => \FifoData[3]_i_5_n_0\,
      I2 => DMC_Message(2),
      I3 => \FifoData[13]_i_4_n_0\,
      I4 => Noise_Message(2),
      O => \FifoData[2]_i_1_n_0\
    );
\FifoData[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F0F08888"
    )
        port map (
      I0 => FifoData14_out,
      I1 => Triangle_Message(2),
      I2 => Pulse2_Message(2),
      I3 => Pulse1_Message(2),
      I4 => FifoData17_out,
      I5 => FifoData110_out,
      O => \FifoData[2]_i_2_n_0\
    );
\FifoData[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAAA"
    )
        port map (
      I0 => \FifoData[3]_i_3_n_0\,
      I1 => ENABLE_NOISE,
      I2 => FifoData31_in,
      I3 => p_0_in1_in,
      I4 => Noise_Message(3),
      I5 => \FifoData[14]_i_3_n_0\,
      O => \FifoData[3]_i_1_n_0\
    );
\FifoData[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[3]_i_4_n_0\,
      I1 => \FifoData[3]_i_5_n_0\,
      I2 => DMC_Message(3),
      I3 => \FifoData[13]_i_4_n_0\,
      I4 => Noise_Message(3),
      O => \FifoData[3]_i_2_n_0\
    );
\FifoData[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA0028AAAA00"
    )
        port map (
      I0 => ENABLE_DMC,
      I1 => DMC_Message(0),
      I2 => dmc_message_last(0),
      I3 => DMC_Message(3),
      I4 => \dmc_message_last_reg_n_0_[3]\,
      I5 => \FifoData[3]_i_6_n_0\,
      O => \FifoData[3]_i_3_n_0\
    );
\FifoData[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F0F08888"
    )
        port map (
      I0 => FifoData14_out,
      I1 => Triangle_Message(3),
      I2 => Pulse2_Message(3),
      I3 => Pulse1_Message(3),
      I4 => FifoData17_out,
      I5 => FifoData110_out,
      O => \FifoData[3]_i_4_n_0\
    );
\FifoData[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001555555"
    )
        port map (
      I0 => \FifoData[18]_i_1_n_0\,
      I1 => Triangle_Message(3),
      I2 => p_0_in3_in,
      I3 => FifoData33_in,
      I4 => ENABLE_TRIANGLE,
      I5 => \FifoData1__2\,
      O => \FifoData[3]_i_5_n_0\
    );
\FifoData[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => DMC_Message(2),
      I1 => dmc_message_last(2),
      I2 => DMC_Message(1),
      I3 => dmc_message_last(1),
      O => \FifoData[3]_i_6_n_0\
    );
\FifoData[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => ENABLE_PULSE_2,
      I1 => FifoData3,
      I2 => p_0_in6_in,
      I3 => Pulse2_Message(3),
      O => FifoData17_out
    );
\FifoData[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[4]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(4),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(4),
      O => \FifoData[4]_i_1_n_0\
    );
\FifoData[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(4),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(4),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[4]_i_2_n_0\
    );
\FifoData[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[5]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(5),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(5),
      O => \FifoData[5]_i_1_n_0\
    );
\FifoData[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(5),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(5),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[5]_i_2_n_0\
    );
\FifoData[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[6]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(6),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(6),
      O => \FifoData[6]_i_1_n_0\
    );
\FifoData[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(6),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(6),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[6]_i_2_n_0\
    );
\FifoData[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[7]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(7),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(7),
      O => \FifoData[7]_i_1_n_0\
    );
\FifoData[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(7),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(7),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[7]_i_2_n_0\
    );
\FifoData[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[8]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(8),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(8),
      O => \FifoData[8]_i_1_n_0\
    );
\FifoData[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(8),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(8),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[8]_i_2_n_0\
    );
\FifoData[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FifoData[9]_i_2_n_0\,
      I1 => \FifoData[13]_i_4_n_0\,
      I2 => Noise_Message(9),
      I3 => \triangle_message_last[14]_i_1_n_0\,
      I4 => Triangle_Message(9),
      O => \FifoData[9]_i_1_n_0\
    );
\FifoData[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Pulse1_Message(9),
      I1 => \FifoData[18]_i_6_n_0\,
      I2 => Pulse2_Message(9),
      I3 => \FifoData[18]_i_7_n_0\,
      O => \FifoData[9]_i_2_n_0\
    );
\FifoData_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[3]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[0]_i_1_n_0\,
      Q => \^fifodata\(0)
    );
\FifoData_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[10]_i_1_n_0\,
      Q => \^fifodata\(10)
    );
\FifoData_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[11]_i_1_n_0\,
      Q => \^fifodata\(11)
    );
\FifoData_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[12]_i_1_n_0\,
      Q => \^fifodata\(12)
    );
\FifoData_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[13]_i_2_n_0\,
      Q => \^fifodata\(13)
    );
\FifoData_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[14]_i_1_n_0\,
      Q => \^fifodata\(14)
    );
\FifoData_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[15]_i_1_n_0\,
      Q => \^fifodata\(15)
    );
\FifoData_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[16]_i_1_n_0\,
      Q => \^fifodata\(16)
    );
\FifoData_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[17]_i_1_n_0\,
      Q => \^fifodata\(17)
    );
\FifoData_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[18]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[18]_i_2_n_0\,
      Q => \^fifodata\(18)
    );
\FifoData_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[3]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[1]_i_1_n_0\,
      Q => \^fifodata\(1)
    );
\FifoData_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[3]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[2]_i_1_n_0\,
      Q => \^fifodata\(2)
    );
\FifoData_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[3]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[3]_i_2_n_0\,
      Q => \^fifodata\(3)
    );
\FifoData_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[4]_i_1_n_0\,
      Q => \^fifodata\(4)
    );
\FifoData_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[5]_i_1_n_0\,
      Q => \^fifodata\(5)
    );
\FifoData_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[6]_i_1_n_0\,
      Q => \^fifodata\(6)
    );
\FifoData_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[7]_i_1_n_0\,
      Q => \^fifodata\(7)
    );
\FifoData_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[8]_i_1_n_0\,
      Q => \^fifodata\(8)
    );
\FifoData_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \FifoData[13]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[9]_i_1_n_0\,
      Q => \^fifodata\(9)
    );
FifoWrite_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \FifoData[18]_i_3_n_0\,
      D => \FifoData[3]_i_1_n_0\,
      Q => FifoWrite
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAW_n_40,
      Q => \^s_axi_bvalid\,
      R => reset
    );
\axi_read_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^axi_read_valid_reg_0\,
      O => axi_read_data0
    );
\axi_read_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[0]\,
      Q => S_AXI_RDATA(0),
      R => '0'
    );
\axi_read_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[10]\,
      Q => S_AXI_RDATA(10),
      R => '0'
    );
\axi_read_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[11]\,
      Q => S_AXI_RDATA(11),
      R => '0'
    );
\axi_read_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[12]\,
      Q => S_AXI_RDATA(12),
      R => '0'
    );
\axi_read_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[13]\,
      Q => S_AXI_RDATA(13),
      R => '0'
    );
\axi_read_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[14]\,
      Q => S_AXI_RDATA(14),
      R => '0'
    );
\axi_read_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[15]\,
      Q => S_AXI_RDATA(15),
      R => '0'
    );
\axi_read_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[16]\,
      Q => S_AXI_RDATA(16),
      R => '0'
    );
\axi_read_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[17]\,
      Q => S_AXI_RDATA(17),
      R => '0'
    );
\axi_read_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[18]\,
      Q => S_AXI_RDATA(18),
      R => '0'
    );
\axi_read_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[19]\,
      Q => S_AXI_RDATA(19),
      R => '0'
    );
\axi_read_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => ENABLE_PULSE_2,
      Q => S_AXI_RDATA(1),
      R => '0'
    );
\axi_read_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[20]\,
      Q => S_AXI_RDATA(20),
      R => '0'
    );
\axi_read_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[21]\,
      Q => S_AXI_RDATA(21),
      R => '0'
    );
\axi_read_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[22]\,
      Q => S_AXI_RDATA(22),
      R => '0'
    );
\axi_read_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[23]\,
      Q => S_AXI_RDATA(23),
      R => '0'
    );
\axi_read_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[24]\,
      Q => S_AXI_RDATA(24),
      R => '0'
    );
\axi_read_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[25]\,
      Q => S_AXI_RDATA(25),
      R => '0'
    );
\axi_read_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[26]\,
      Q => S_AXI_RDATA(26),
      R => '0'
    );
\axi_read_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[27]\,
      Q => S_AXI_RDATA(27),
      R => '0'
    );
\axi_read_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[28]\,
      Q => S_AXI_RDATA(28),
      R => '0'
    );
\axi_read_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[29]\,
      Q => S_AXI_RDATA(29),
      R => '0'
    );
\axi_read_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => ENABLE_TRIANGLE,
      Q => S_AXI_RDATA(2),
      R => '0'
    );
\axi_read_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[30]\,
      Q => S_AXI_RDATA(30),
      R => '0'
    );
\axi_read_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[31]\,
      Q => S_AXI_RDATA(31),
      R => '0'
    );
\axi_read_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => ENABLE_NOISE,
      Q => S_AXI_RDATA(3),
      R => '0'
    );
\axi_read_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => ENABLE_DMC,
      Q => S_AXI_RDATA(4),
      R => '0'
    );
\axi_read_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[5]\,
      Q => S_AXI_RDATA(5),
      R => '0'
    );
\axi_read_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[6]\,
      Q => S_AXI_RDATA(6),
      R => '0'
    );
\axi_read_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[7]\,
      Q => S_AXI_RDATA(7),
      R => '0'
    );
\axi_read_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[8]\,
      Q => S_AXI_RDATA(8),
      R => '0'
    );
\axi_read_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_read_data0,
      D => \state_reg_n_0_[9]\,
      Q => S_AXI_RDATA(9),
      R => '0'
    );
axi_read_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => instSkidAR_n_2,
      Q => \^axi_read_valid_reg_0\,
      R => reset
    );
\dmc_message_last[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A2A2AAA"
    )
        port map (
      I0 => \FifoData[3]_i_3_n_0\,
      I1 => ENABLE_NOISE,
      I2 => FifoData31_in,
      I3 => p_0_in1_in,
      I4 => Noise_Message(3),
      I5 => \FifoData[14]_i_3_n_0\,
      O => dmc_message_last_1
    );
\dmc_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => dmc_message_last_1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => DMC_Message(0),
      Q => dmc_message_last(0)
    );
\dmc_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => dmc_message_last_1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => DMC_Message(1),
      Q => dmc_message_last(1)
    );
\dmc_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => dmc_message_last_1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => DMC_Message(2),
      Q => dmc_message_last(2)
    );
\dmc_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => dmc_message_last_1,
      CLR => \FifoData[18]_i_3_n_0\,
      D => DMC_Message(3),
      Q => \dmc_message_last_reg_n_0_[3]\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Triangle_Message(12),
      I1 => triangle_message_last(12),
      I2 => Triangle_Message(13),
      I3 => triangle_message_last(13),
      I4 => triangle_message_last(14),
      I5 => Triangle_Message(14),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Noise_Message(12),
      I1 => noise_message_last(12),
      I2 => noise_message_last(13),
      I3 => Noise_Message(13),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pulse2_message_last(18),
      I1 => Pulse2_Message(18),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(15),
      I1 => pulse2_message_last(15),
      I2 => Pulse2_Message(16),
      I3 => pulse2_message_last(16),
      I4 => pulse2_message_last(17),
      I5 => Pulse2_Message(17),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(12),
      I1 => pulse2_message_last(12),
      I2 => Pulse2_Message(13),
      I3 => pulse2_message_last(13),
      I4 => pulse2_message_last(14),
      I5 => Pulse2_Message(14),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(9),
      I1 => pulse2_message_last(9),
      I2 => Pulse2_Message(10),
      I3 => pulse2_message_last(10),
      I4 => pulse2_message_last(11),
      I5 => Pulse2_Message(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Triangle_Message(9),
      I1 => triangle_message_last(9),
      I2 => Triangle_Message(10),
      I3 => triangle_message_last(10),
      I4 => triangle_message_last(11),
      I5 => Triangle_Message(11),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Noise_Message(9),
      I1 => noise_message_last(9),
      I2 => Noise_Message(10),
      I3 => noise_message_last(10),
      I4 => noise_message_last(11),
      I5 => Noise_Message(11),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(6),
      I1 => pulse2_message_last(6),
      I2 => Pulse2_Message(7),
      I3 => pulse2_message_last(7),
      I4 => pulse2_message_last(8),
      I5 => Pulse2_Message(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Triangle_Message(6),
      I1 => triangle_message_last(6),
      I2 => Triangle_Message(7),
      I3 => triangle_message_last(7),
      I4 => triangle_message_last(8),
      I5 => Triangle_Message(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Noise_Message(6),
      I1 => noise_message_last(6),
      I2 => Noise_Message(7),
      I3 => noise_message_last(7),
      I4 => noise_message_last(8),
      I5 => Noise_Message(8),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(4),
      I1 => pulse2_message_last(4),
      I2 => Pulse2_Message(5),
      I3 => pulse2_message_last(5),
      I4 => Pulse2_Message(3),
      I5 => p_0_in6_in,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Triangle_Message(4),
      I1 => triangle_message_last(4),
      I2 => Triangle_Message(5),
      I3 => triangle_message_last(5),
      I4 => Triangle_Message(3),
      I5 => p_0_in3_in,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Noise_Message(4),
      I1 => noise_message_last(4),
      I2 => Noise_Message(5),
      I3 => noise_message_last(5),
      I4 => Noise_Message(3),
      I5 => p_0_in1_in,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Pulse2_Message(0),
      I1 => pulse2_message_last(0),
      I2 => Pulse2_Message(1),
      I3 => pulse2_message_last(1),
      I4 => pulse2_message_last(2),
      I5 => Pulse2_Message(2),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Triangle_Message(0),
      I1 => triangle_message_last(0),
      I2 => Triangle_Message(1),
      I3 => triangle_message_last(1),
      I4 => triangle_message_last(2),
      I5 => Triangle_Message(2),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Noise_Message(0),
      I1 => noise_message_last(0),
      I2 => Noise_Message(1),
      I3 => noise_message_last(1),
      I4 => noise_message_last(2),
      I5 => Noise_Message(2),
      O => \i__carry_i_4__1_n_0\
    );
instSkidAR: entity work.design_1_axi_apu_writer_0_0_axi_skid_buf
     port map (
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      axi_read_valid_reg => instSkidAR_n_2,
      axi_read_valid_reg_0 => \^axi_read_valid_reg_0\
    );
instSkidAW: entity work.design_1_axi_apu_writer_0_0_axi_skid_buf_0
     port map (
      D(31) => instSkidAW_n_7,
      D(30) => instSkidAW_n_8,
      D(29) => instSkidAW_n_9,
      D(28) => instSkidAW_n_10,
      D(27) => instSkidAW_n_11,
      D(26) => instSkidAW_n_12,
      D(25) => instSkidAW_n_13,
      D(24) => instSkidAW_n_14,
      D(23) => instSkidAW_n_15,
      D(22) => instSkidAW_n_16,
      D(21) => instSkidAW_n_17,
      D(20) => instSkidAW_n_18,
      D(19) => instSkidAW_n_19,
      D(18) => instSkidAW_n_20,
      D(17) => instSkidAW_n_21,
      D(16) => instSkidAW_n_22,
      D(15) => instSkidAW_n_23,
      D(14) => instSkidAW_n_24,
      D(13) => instSkidAW_n_25,
      D(12) => instSkidAW_n_26,
      D(11) => instSkidAW_n_27,
      D(10) => instSkidAW_n_28,
      D(9) => instSkidAW_n_29,
      D(8) => instSkidAW_n_30,
      D(7) => instSkidAW_n_31,
      D(6) => instSkidAW_n_32,
      D(5) => instSkidAW_n_33,
      D(4) => instSkidAW_n_34,
      D(3) => instSkidAW_n_35,
      D(2) => instSkidAW_n_36,
      D(1) => instSkidAW_n_37,
      D(0) => instSkidAW_n_38,
      E(0) => reset_state,
      Q(31) => \reset_state_reg_n_0_[31]\,
      Q(30) => \reset_state_reg_n_0_[30]\,
      Q(29) => \reset_state_reg_n_0_[29]\,
      Q(28) => \reset_state_reg_n_0_[28]\,
      Q(27) => \reset_state_reg_n_0_[27]\,
      Q(26) => \reset_state_reg_n_0_[26]\,
      Q(25) => \reset_state_reg_n_0_[25]\,
      Q(24) => \reset_state_reg_n_0_[24]\,
      Q(23) => \reset_state_reg_n_0_[23]\,
      Q(22) => \reset_state_reg_n_0_[22]\,
      Q(21) => \reset_state_reg_n_0_[21]\,
      Q(20) => \reset_state_reg_n_0_[20]\,
      Q(19) => \reset_state_reg_n_0_[19]\,
      Q(18) => \reset_state_reg_n_0_[18]\,
      Q(17) => \reset_state_reg_n_0_[17]\,
      Q(16) => \reset_state_reg_n_0_[16]\,
      Q(15) => \reset_state_reg_n_0_[15]\,
      Q(14) => \reset_state_reg_n_0_[14]\,
      Q(13) => \reset_state_reg_n_0_[13]\,
      Q(12) => \reset_state_reg_n_0_[12]\,
      Q(11) => \reset_state_reg_n_0_[11]\,
      Q(10) => \reset_state_reg_n_0_[10]\,
      Q(9) => \reset_state_reg_n_0_[9]\,
      Q(8) => \reset_state_reg_n_0_[8]\,
      Q(7) => \reset_state_reg_n_0_[7]\,
      Q(6) => \reset_state_reg_n_0_[6]\,
      Q(5) => \reset_state_reg_n_0_[5]\,
      Q(4) => \reset_state_reg_n_0_[4]\,
      Q(3) => \reset_state_reg_n_0_[3]\,
      Q(2) => \reset_state_reg_n_0_[2]\,
      Q(1) => \reset_state_reg_n_0_[1]\,
      Q(0) => \reset_state_reg_n_0_[0]\,
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(1 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BREADY_0 => instSkidAW_n_40,
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      axi_write_ready => axi_write_ready,
      p_2_in(7 downto 0) => p_2_in(7 downto 0),
      p_6_out(7 downto 0) => p_6_out(7 downto 0),
      \r_data_reg[0]_0\(3) => instSkidAW_n_3,
      \r_data_reg[0]_0\(2) => instSkidAW_n_4,
      \r_data_reg[0]_0\(1) => instSkidAW_n_5,
      \r_data_reg[0]_0\(0) => instSkidAW_n_6,
      \r_data_reg[1]_0\(0) => set_state,
      r_valid => r_valid,
      \state_reg[15]\ => instSkidW_n_89,
      \state_reg[16]\ => instSkidW_n_88,
      \state_reg[17]\ => instSkidW_n_87,
      \state_reg[18]\ => instSkidW_n_86,
      \state_reg[19]\ => instSkidW_n_85,
      \state_reg[20]\ => instSkidW_n_84,
      \state_reg[21]\ => instSkidW_n_83,
      \state_reg[22]\ => instSkidW_n_82,
      \state_reg[23]\ => instSkidW_n_80,
      \state_reg[23]_0\ => instSkidW_n_81,
      \state_reg[24]\ => instSkidW_n_79,
      \state_reg[25]\ => instSkidW_n_78,
      \state_reg[26]\ => instSkidW_n_77,
      \state_reg[27]\ => instSkidW_n_76,
      \state_reg[28]\ => instSkidW_n_75,
      \state_reg[29]\ => instSkidW_n_74,
      \state_reg[30]\ => instSkidW_n_73,
      \state_reg[31]\ => instSkidW_n_71,
      \state_reg[31]_0\(31) => \state_reg_n_0_[31]\,
      \state_reg[31]_0\(30) => \state_reg_n_0_[30]\,
      \state_reg[31]_0\(29) => \state_reg_n_0_[29]\,
      \state_reg[31]_0\(28) => \state_reg_n_0_[28]\,
      \state_reg[31]_0\(27) => \state_reg_n_0_[27]\,
      \state_reg[31]_0\(26) => \state_reg_n_0_[26]\,
      \state_reg[31]_0\(25) => \state_reg_n_0_[25]\,
      \state_reg[31]_0\(24) => \state_reg_n_0_[24]\,
      \state_reg[31]_0\(23) => \state_reg_n_0_[23]\,
      \state_reg[31]_0\(22) => \state_reg_n_0_[22]\,
      \state_reg[31]_0\(21) => \state_reg_n_0_[21]\,
      \state_reg[31]_0\(20) => \state_reg_n_0_[20]\,
      \state_reg[31]_0\(19) => \state_reg_n_0_[19]\,
      \state_reg[31]_0\(18) => \state_reg_n_0_[18]\,
      \state_reg[31]_0\(17) => \state_reg_n_0_[17]\,
      \state_reg[31]_0\(16) => \state_reg_n_0_[16]\,
      \state_reg[31]_0\(15) => \state_reg_n_0_[15]\,
      \state_reg[31]_0\(14) => \state_reg_n_0_[14]\,
      \state_reg[31]_0\(13) => \state_reg_n_0_[13]\,
      \state_reg[31]_0\(12) => \state_reg_n_0_[12]\,
      \state_reg[31]_0\(11) => \state_reg_n_0_[11]\,
      \state_reg[31]_0\(10) => \state_reg_n_0_[10]\,
      \state_reg[31]_0\(9) => \state_reg_n_0_[9]\,
      \state_reg[31]_0\(8) => \state_reg_n_0_[8]\,
      \state_reg[31]_0\(7) => \state_reg_n_0_[7]\,
      \state_reg[31]_0\(6) => \state_reg_n_0_[6]\,
      \state_reg[31]_0\(5) => \state_reg_n_0_[5]\,
      \state_reg[31]_0\(4) => ENABLE_DMC,
      \state_reg[31]_0\(3) => ENABLE_NOISE,
      \state_reg[31]_0\(2) => ENABLE_TRIANGLE,
      \state_reg[31]_0\(1) => ENABLE_PULSE_2,
      \state_reg[31]_0\(0) => \state_reg_n_0_[0]\,
      \state_reg[31]_1\ => instSkidW_n_72,
      \state_reg[31]_2\(31) => \set_state_reg_n_0_[31]\,
      \state_reg[31]_2\(30) => \set_state_reg_n_0_[30]\,
      \state_reg[31]_2\(29) => \set_state_reg_n_0_[29]\,
      \state_reg[31]_2\(28) => \set_state_reg_n_0_[28]\,
      \state_reg[31]_2\(27) => \set_state_reg_n_0_[27]\,
      \state_reg[31]_2\(26) => \set_state_reg_n_0_[26]\,
      \state_reg[31]_2\(25) => \set_state_reg_n_0_[25]\,
      \state_reg[31]_2\(24) => \set_state_reg_n_0_[24]\,
      \state_reg[31]_2\(23) => \set_state_reg_n_0_[23]\,
      \state_reg[31]_2\(22) => \set_state_reg_n_0_[22]\,
      \state_reg[31]_2\(21) => \set_state_reg_n_0_[21]\,
      \state_reg[31]_2\(20) => \set_state_reg_n_0_[20]\,
      \state_reg[31]_2\(19) => \set_state_reg_n_0_[19]\,
      \state_reg[31]_2\(18) => \set_state_reg_n_0_[18]\,
      \state_reg[31]_2\(17) => \set_state_reg_n_0_[17]\,
      \state_reg[31]_2\(16) => \set_state_reg_n_0_[16]\,
      \state_reg[31]_2\(15) => \set_state_reg_n_0_[15]\,
      \state_reg[31]_2\(14) => \set_state_reg_n_0_[14]\,
      \state_reg[31]_2\(13) => \set_state_reg_n_0_[13]\,
      \state_reg[31]_2\(12) => \set_state_reg_n_0_[12]\,
      \state_reg[31]_2\(11) => \set_state_reg_n_0_[11]\,
      \state_reg[31]_2\(10) => \set_state_reg_n_0_[10]\,
      \state_reg[31]_2\(9) => \set_state_reg_n_0_[9]\,
      \state_reg[31]_2\(8) => \set_state_reg_n_0_[8]\,
      \state_reg[31]_2\(7) => \set_state_reg_n_0_[7]\,
      \state_reg[31]_2\(6) => \set_state_reg_n_0_[6]\,
      \state_reg[31]_2\(5) => \set_state_reg_n_0_[5]\,
      \state_reg[31]_2\(4) => \set_state_reg_n_0_[4]\,
      \state_reg[31]_2\(3) => \set_state_reg_n_0_[3]\,
      \state_reg[31]_2\(2) => \set_state_reg_n_0_[2]\,
      \state_reg[31]_2\(1) => \set_state_reg_n_0_[1]\,
      \state_reg[31]_2\(0) => \set_state_reg_n_0_[0]\,
      \state_reg[31]_3\(3) => instSkidW_n_35,
      \state_reg[31]_3\(2) => instSkidW_n_36,
      \state_reg[31]_3\(1) => instSkidW_n_37,
      \state_reg[31]_3\(0) => instSkidW_n_38,
      \state_reg[7]\ => instSkidW_n_98,
      wskd_valid => wskd_valid
    );
instSkidW: entity work.\design_1_axi_apu_writer_0_0_axi_skid_buf__parameterized0\
     port map (
      D(31 downto 0) => wskd_set(31 downto 0),
      Q(3) => instSkidW_n_35,
      Q(2) => instSkidW_n_36,
      Q(1) => instSkidW_n_37,
      Q(0) => instSkidW_n_38,
      SR(0) => reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      axi_write_ready => axi_write_ready,
      p_2_in(7 downto 0) => p_2_in(7 downto 0),
      p_6_out(7 downto 0) => p_6_out(7 downto 0),
      \r_data_reg[0]_0\ => instSkidW_n_98,
      \r_data_reg[1]_0\ => instSkidW_n_89,
      \r_data_reg[20]_0\ => instSkidW_n_88,
      \r_data_reg[21]_0\ => instSkidW_n_87,
      \r_data_reg[22]_0\ => instSkidW_n_86,
      \r_data_reg[23]_0\ => instSkidW_n_85,
      \r_data_reg[24]_0\ => instSkidW_n_84,
      \r_data_reg[25]_0\ => instSkidW_n_83,
      \r_data_reg[26]_0\ => instSkidW_n_82,
      \r_data_reg[27]_0\ => instSkidW_n_81,
      \r_data_reg[28]_0\ => instSkidW_n_79,
      \r_data_reg[29]_0\ => instSkidW_n_78,
      \r_data_reg[2]_0\ => instSkidW_n_80,
      \r_data_reg[30]_0\ => instSkidW_n_77,
      \r_data_reg[31]_0\ => instSkidW_n_76,
      \r_data_reg[32]_0\ => instSkidW_n_75,
      \r_data_reg[33]_0\ => instSkidW_n_74,
      \r_data_reg[34]_0\ => instSkidW_n_73,
      \r_data_reg[35]_0\(31 downto 0) => wskd_reset(31 downto 0),
      \r_data_reg[35]_1\ => instSkidW_n_72,
      \r_data_reg[35]_2\(35 downto 4) => S_AXI_WDATA(31 downto 0),
      \r_data_reg[35]_2\(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      \r_data_reg[3]_0\ => instSkidW_n_71,
      r_valid => r_valid,
      \reset_state_reg[31]\(31) => \reset_state_reg_n_0_[31]\,
      \reset_state_reg[31]\(30) => \reset_state_reg_n_0_[30]\,
      \reset_state_reg[31]\(29) => \reset_state_reg_n_0_[29]\,
      \reset_state_reg[31]\(28) => \reset_state_reg_n_0_[28]\,
      \reset_state_reg[31]\(27) => \reset_state_reg_n_0_[27]\,
      \reset_state_reg[31]\(26) => \reset_state_reg_n_0_[26]\,
      \reset_state_reg[31]\(25) => \reset_state_reg_n_0_[25]\,
      \reset_state_reg[31]\(24) => \reset_state_reg_n_0_[24]\,
      \reset_state_reg[31]\(23) => \reset_state_reg_n_0_[23]\,
      \reset_state_reg[31]\(22) => \reset_state_reg_n_0_[22]\,
      \reset_state_reg[31]\(21) => \reset_state_reg_n_0_[21]\,
      \reset_state_reg[31]\(20) => \reset_state_reg_n_0_[20]\,
      \reset_state_reg[31]\(19) => \reset_state_reg_n_0_[19]\,
      \reset_state_reg[31]\(18) => \reset_state_reg_n_0_[18]\,
      \reset_state_reg[31]\(17) => \reset_state_reg_n_0_[17]\,
      \reset_state_reg[31]\(16) => \reset_state_reg_n_0_[16]\,
      \reset_state_reg[31]\(15) => \reset_state_reg_n_0_[15]\,
      \reset_state_reg[31]\(14) => \reset_state_reg_n_0_[14]\,
      \reset_state_reg[31]\(13) => \reset_state_reg_n_0_[13]\,
      \reset_state_reg[31]\(12) => \reset_state_reg_n_0_[12]\,
      \reset_state_reg[31]\(11) => \reset_state_reg_n_0_[11]\,
      \reset_state_reg[31]\(10) => \reset_state_reg_n_0_[10]\,
      \reset_state_reg[31]\(9) => \reset_state_reg_n_0_[9]\,
      \reset_state_reg[31]\(8) => \reset_state_reg_n_0_[8]\,
      \reset_state_reg[31]\(7) => \reset_state_reg_n_0_[7]\,
      \reset_state_reg[31]\(6) => \reset_state_reg_n_0_[6]\,
      \reset_state_reg[31]\(5) => \reset_state_reg_n_0_[5]\,
      \reset_state_reg[31]\(4) => \reset_state_reg_n_0_[4]\,
      \reset_state_reg[31]\(3) => \reset_state_reg_n_0_[3]\,
      \reset_state_reg[31]\(2) => \reset_state_reg_n_0_[2]\,
      \reset_state_reg[31]\(1) => \reset_state_reg_n_0_[1]\,
      \reset_state_reg[31]\(0) => \reset_state_reg_n_0_[0]\,
      \set_state_reg[31]\(31) => \set_state_reg_n_0_[31]\,
      \set_state_reg[31]\(30) => \set_state_reg_n_0_[30]\,
      \set_state_reg[31]\(29) => \set_state_reg_n_0_[29]\,
      \set_state_reg[31]\(28) => \set_state_reg_n_0_[28]\,
      \set_state_reg[31]\(27) => \set_state_reg_n_0_[27]\,
      \set_state_reg[31]\(26) => \set_state_reg_n_0_[26]\,
      \set_state_reg[31]\(25) => \set_state_reg_n_0_[25]\,
      \set_state_reg[31]\(24) => \set_state_reg_n_0_[24]\,
      \set_state_reg[31]\(23) => \set_state_reg_n_0_[23]\,
      \set_state_reg[31]\(22) => \set_state_reg_n_0_[22]\,
      \set_state_reg[31]\(21) => \set_state_reg_n_0_[21]\,
      \set_state_reg[31]\(20) => \set_state_reg_n_0_[20]\,
      \set_state_reg[31]\(19) => \set_state_reg_n_0_[19]\,
      \set_state_reg[31]\(18) => \set_state_reg_n_0_[18]\,
      \set_state_reg[31]\(17) => \set_state_reg_n_0_[17]\,
      \set_state_reg[31]\(16) => \set_state_reg_n_0_[16]\,
      \set_state_reg[31]\(15) => \set_state_reg_n_0_[15]\,
      \set_state_reg[31]\(14) => \set_state_reg_n_0_[14]\,
      \set_state_reg[31]\(13) => \set_state_reg_n_0_[13]\,
      \set_state_reg[31]\(12) => \set_state_reg_n_0_[12]\,
      \set_state_reg[31]\(11) => \set_state_reg_n_0_[11]\,
      \set_state_reg[31]\(10) => \set_state_reg_n_0_[10]\,
      \set_state_reg[31]\(9) => \set_state_reg_n_0_[9]\,
      \set_state_reg[31]\(8) => \set_state_reg_n_0_[8]\,
      \set_state_reg[31]\(7) => \set_state_reg_n_0_[7]\,
      \set_state_reg[31]\(6) => \set_state_reg_n_0_[6]\,
      \set_state_reg[31]\(5) => \set_state_reg_n_0_[5]\,
      \set_state_reg[31]\(4) => \set_state_reg_n_0_[4]\,
      \set_state_reg[31]\(3) => \set_state_reg_n_0_[3]\,
      \set_state_reg[31]\(2) => \set_state_reg_n_0_[2]\,
      \set_state_reg[31]\(1) => \set_state_reg_n_0_[1]\,
      \set_state_reg[31]\(0) => \set_state_reg_n_0_[0]\,
      wskd_valid => wskd_valid
    );
\noise_message_last[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => Noise_Message(3),
      I1 => p_0_in1_in,
      I2 => FifoData31_in,
      I3 => ENABLE_NOISE,
      I4 => \FifoData[14]_i_3_n_0\,
      O => noise_message_last_2
    );
\noise_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(0),
      Q => noise_message_last(0)
    );
\noise_message_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(10),
      Q => noise_message_last(10)
    );
\noise_message_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(11),
      Q => noise_message_last(11)
    );
\noise_message_last_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(12),
      Q => noise_message_last(12)
    );
\noise_message_last_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(13),
      Q => noise_message_last(13)
    );
\noise_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(1),
      Q => noise_message_last(1)
    );
\noise_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(2),
      Q => noise_message_last(2)
    );
\noise_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(3),
      Q => p_0_in1_in
    );
\noise_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(4),
      Q => noise_message_last(4)
    );
\noise_message_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(5),
      Q => noise_message_last(5)
    );
\noise_message_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(6),
      Q => noise_message_last(6)
    );
\noise_message_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(7),
      Q => noise_message_last(7)
    );
\noise_message_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(8),
      Q => noise_message_last(8)
    );
\noise_message_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => noise_message_last_2,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Noise_Message(9),
      Q => noise_message_last(9)
    );
\pulse1_message_last[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => FifoData30_out,
      I2 => p_0_in9_in,
      I3 => Pulse1_Message(3),
      O => FifoData110_out
    );
\pulse1_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(0),
      Q => \pulse1_message_last_reg_n_0_[0]\
    );
\pulse1_message_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(10),
      Q => \pulse1_message_last_reg_n_0_[10]\
    );
\pulse1_message_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(11),
      Q => \pulse1_message_last_reg_n_0_[11]\
    );
\pulse1_message_last_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(12),
      Q => \pulse1_message_last_reg_n_0_[12]\
    );
\pulse1_message_last_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(13),
      Q => \pulse1_message_last_reg_n_0_[13]\
    );
\pulse1_message_last_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(14),
      Q => \pulse1_message_last_reg_n_0_[14]\
    );
\pulse1_message_last_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(15),
      Q => \pulse1_message_last_reg_n_0_[15]\
    );
\pulse1_message_last_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(16),
      Q => \pulse1_message_last_reg_n_0_[16]\
    );
\pulse1_message_last_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(17),
      Q => \pulse1_message_last_reg_n_0_[17]\
    );
\pulse1_message_last_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(18),
      Q => \pulse1_message_last_reg_n_0_[18]\
    );
\pulse1_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(1),
      Q => \pulse1_message_last_reg_n_0_[1]\
    );
\pulse1_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(2),
      Q => \pulse1_message_last_reg_n_0_[2]\
    );
\pulse1_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(3),
      Q => p_0_in9_in
    );
\pulse1_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(4),
      Q => \pulse1_message_last_reg_n_0_[4]\
    );
\pulse1_message_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(5),
      Q => \pulse1_message_last_reg_n_0_[5]\
    );
\pulse1_message_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(6),
      Q => \pulse1_message_last_reg_n_0_[6]\
    );
\pulse1_message_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(7),
      Q => \pulse1_message_last_reg_n_0_[7]\
    );
\pulse1_message_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(8),
      Q => \pulse1_message_last_reg_n_0_[8]\
    );
\pulse1_message_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => FifoData110_out,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse1_Message(9),
      Q => \pulse1_message_last_reg_n_0_[9]\
    );
\pulse2_message_last[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808080808080"
    )
        port map (
      I0 => \FifoData[18]_i_4_n_0\,
      I1 => FifoData3,
      I2 => ENABLE_PULSE_2,
      I3 => \FifoData[18]_i_5_n_0\,
      I4 => FifoData30_out,
      I5 => \state_reg_n_0_[0]\,
      O => pulse2_message_last_0
    );
\pulse2_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(3),
      Q => p_0_in6_in
    );
\pulse2_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
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
      C => S_AXI_ACLK,
      CE => pulse2_message_last_0,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Pulse2_Message(9),
      Q => pulse2_message_last(9)
    );
\reset_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(0),
      Q => \reset_state_reg_n_0_[0]\,
      R => reset
    );
\reset_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(10),
      Q => \reset_state_reg_n_0_[10]\,
      R => reset
    );
\reset_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(11),
      Q => \reset_state_reg_n_0_[11]\,
      R => reset
    );
\reset_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(12),
      Q => \reset_state_reg_n_0_[12]\,
      R => reset
    );
\reset_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(13),
      Q => \reset_state_reg_n_0_[13]\,
      R => reset
    );
\reset_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(14),
      Q => \reset_state_reg_n_0_[14]\,
      R => reset
    );
\reset_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(15),
      Q => \reset_state_reg_n_0_[15]\,
      R => reset
    );
\reset_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(16),
      Q => \reset_state_reg_n_0_[16]\,
      R => reset
    );
\reset_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(17),
      Q => \reset_state_reg_n_0_[17]\,
      R => reset
    );
\reset_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(18),
      Q => \reset_state_reg_n_0_[18]\,
      R => reset
    );
\reset_state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(19),
      Q => \reset_state_reg_n_0_[19]\,
      R => reset
    );
\reset_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(1),
      Q => \reset_state_reg_n_0_[1]\,
      R => reset
    );
\reset_state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(20),
      Q => \reset_state_reg_n_0_[20]\,
      R => reset
    );
\reset_state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(21),
      Q => \reset_state_reg_n_0_[21]\,
      R => reset
    );
\reset_state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(22),
      Q => \reset_state_reg_n_0_[22]\,
      R => reset
    );
\reset_state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(23),
      Q => \reset_state_reg_n_0_[23]\,
      R => reset
    );
\reset_state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(24),
      Q => \reset_state_reg_n_0_[24]\,
      R => reset
    );
\reset_state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(25),
      Q => \reset_state_reg_n_0_[25]\,
      R => reset
    );
\reset_state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(26),
      Q => \reset_state_reg_n_0_[26]\,
      R => reset
    );
\reset_state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(27),
      Q => \reset_state_reg_n_0_[27]\,
      R => reset
    );
\reset_state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(28),
      Q => \reset_state_reg_n_0_[28]\,
      R => reset
    );
\reset_state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(29),
      Q => \reset_state_reg_n_0_[29]\,
      R => reset
    );
\reset_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(2),
      Q => \reset_state_reg_n_0_[2]\,
      R => reset
    );
\reset_state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(30),
      Q => \reset_state_reg_n_0_[30]\,
      R => reset
    );
\reset_state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(31),
      Q => \reset_state_reg_n_0_[31]\,
      R => reset
    );
\reset_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(3),
      Q => \reset_state_reg_n_0_[3]\,
      R => reset
    );
\reset_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(4),
      Q => \reset_state_reg_n_0_[4]\,
      R => reset
    );
\reset_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(5),
      Q => \reset_state_reg_n_0_[5]\,
      R => reset
    );
\reset_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(6),
      Q => \reset_state_reg_n_0_[6]\,
      R => reset
    );
\reset_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(7),
      Q => \reset_state_reg_n_0_[7]\,
      R => reset
    );
\reset_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(8),
      Q => \reset_state_reg_n_0_[8]\,
      R => reset
    );
\reset_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => reset_state,
      D => wskd_reset(9),
      Q => \reset_state_reg_n_0_[9]\,
      R => reset
    );
\set_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(0),
      Q => \set_state_reg_n_0_[0]\,
      R => reset
    );
\set_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(10),
      Q => \set_state_reg_n_0_[10]\,
      R => reset
    );
\set_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(11),
      Q => \set_state_reg_n_0_[11]\,
      R => reset
    );
\set_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(12),
      Q => \set_state_reg_n_0_[12]\,
      R => reset
    );
\set_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(13),
      Q => \set_state_reg_n_0_[13]\,
      R => reset
    );
\set_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(14),
      Q => \set_state_reg_n_0_[14]\,
      R => reset
    );
\set_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(15),
      Q => \set_state_reg_n_0_[15]\,
      R => reset
    );
\set_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(16),
      Q => \set_state_reg_n_0_[16]\,
      R => reset
    );
\set_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(17),
      Q => \set_state_reg_n_0_[17]\,
      R => reset
    );
\set_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(18),
      Q => \set_state_reg_n_0_[18]\,
      R => reset
    );
\set_state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(19),
      Q => \set_state_reg_n_0_[19]\,
      R => reset
    );
\set_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(1),
      Q => \set_state_reg_n_0_[1]\,
      R => reset
    );
\set_state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(20),
      Q => \set_state_reg_n_0_[20]\,
      R => reset
    );
\set_state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(21),
      Q => \set_state_reg_n_0_[21]\,
      R => reset
    );
\set_state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(22),
      Q => \set_state_reg_n_0_[22]\,
      R => reset
    );
\set_state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(23),
      Q => \set_state_reg_n_0_[23]\,
      R => reset
    );
\set_state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(24),
      Q => \set_state_reg_n_0_[24]\,
      R => reset
    );
\set_state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(25),
      Q => \set_state_reg_n_0_[25]\,
      R => reset
    );
\set_state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(26),
      Q => \set_state_reg_n_0_[26]\,
      R => reset
    );
\set_state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(27),
      Q => \set_state_reg_n_0_[27]\,
      R => reset
    );
\set_state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(28),
      Q => \set_state_reg_n_0_[28]\,
      R => reset
    );
\set_state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(29),
      Q => \set_state_reg_n_0_[29]\,
      R => reset
    );
\set_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(2),
      Q => \set_state_reg_n_0_[2]\,
      R => reset
    );
\set_state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(30),
      Q => \set_state_reg_n_0_[30]\,
      R => reset
    );
\set_state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(31),
      Q => \set_state_reg_n_0_[31]\,
      R => reset
    );
\set_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(3),
      Q => \set_state_reg_n_0_[3]\,
      R => reset
    );
\set_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(4),
      Q => \set_state_reg_n_0_[4]\,
      R => reset
    );
\set_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(5),
      Q => \set_state_reg_n_0_[5]\,
      R => reset
    );
\set_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(6),
      Q => \set_state_reg_n_0_[6]\,
      R => reset
    );
\set_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(7),
      Q => \set_state_reg_n_0_[7]\,
      R => reset
    );
\set_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(8),
      Q => \set_state_reg_n_0_[8]\,
      R => reset
    );
\set_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => set_state,
      D => wskd_set(9),
      Q => \set_state_reg_n_0_[9]\,
      R => reset
    );
\state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_38,
      Q => \state_reg_n_0_[0]\,
      S => reset
    );
\state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_28,
      Q => \state_reg_n_0_[10]\,
      R => reset
    );
\state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_27,
      Q => \state_reg_n_0_[11]\,
      R => reset
    );
\state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_26,
      Q => \state_reg_n_0_[12]\,
      R => reset
    );
\state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_25,
      Q => \state_reg_n_0_[13]\,
      R => reset
    );
\state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_24,
      Q => \state_reg_n_0_[14]\,
      R => reset
    );
\state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_23,
      Q => \state_reg_n_0_[15]\,
      R => reset
    );
\state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_22,
      Q => \state_reg_n_0_[16]\,
      R => reset
    );
\state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_21,
      Q => \state_reg_n_0_[17]\,
      R => reset
    );
\state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_20,
      Q => \state_reg_n_0_[18]\,
      R => reset
    );
\state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_19,
      Q => \state_reg_n_0_[19]\,
      R => reset
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_37,
      Q => ENABLE_PULSE_2,
      S => reset
    );
\state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_18,
      Q => \state_reg_n_0_[20]\,
      R => reset
    );
\state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_17,
      Q => \state_reg_n_0_[21]\,
      R => reset
    );
\state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_16,
      Q => \state_reg_n_0_[22]\,
      R => reset
    );
\state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_4,
      D => instSkidAW_n_15,
      Q => \state_reg_n_0_[23]\,
      R => reset
    );
\state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_14,
      Q => \state_reg_n_0_[24]\,
      R => reset
    );
\state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_13,
      Q => \state_reg_n_0_[25]\,
      R => reset
    );
\state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_12,
      Q => \state_reg_n_0_[26]\,
      R => reset
    );
\state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_11,
      Q => \state_reg_n_0_[27]\,
      R => reset
    );
\state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_10,
      Q => \state_reg_n_0_[28]\,
      R => reset
    );
\state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_9,
      Q => \state_reg_n_0_[29]\,
      R => reset
    );
\state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_36,
      Q => ENABLE_TRIANGLE,
      S => reset
    );
\state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_8,
      Q => \state_reg_n_0_[30]\,
      R => reset
    );
\state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_3,
      D => instSkidAW_n_7,
      Q => \state_reg_n_0_[31]\,
      R => reset
    );
\state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_35,
      Q => ENABLE_NOISE,
      S => reset
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_34,
      Q => ENABLE_DMC,
      R => reset
    );
\state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_33,
      Q => \state_reg_n_0_[5]\,
      R => reset
    );
\state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_32,
      Q => \state_reg_n_0_[6]\,
      R => reset
    );
\state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_6,
      D => instSkidAW_n_31,
      Q => \state_reg_n_0_[7]\,
      R => reset
    );
\state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_30,
      Q => \state_reg_n_0_[8]\,
      R => reset
    );
\state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => instSkidAW_n_5,
      D => instSkidAW_n_29,
      Q => \state_reg_n_0_[9]\,
      R => reset
    );
\triangle_message_last[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => Triangle_Message(3),
      I1 => p_0_in3_in,
      I2 => FifoData33_in,
      I3 => ENABLE_TRIANGLE,
      I4 => \FifoData[18]_i_1_n_0\,
      O => \triangle_message_last[14]_i_1_n_0\
    );
\triangle_message_last_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(0),
      Q => triangle_message_last(0)
    );
\triangle_message_last_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(10),
      Q => triangle_message_last(10)
    );
\triangle_message_last_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(11),
      Q => triangle_message_last(11)
    );
\triangle_message_last_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(12),
      Q => triangle_message_last(12)
    );
\triangle_message_last_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(13),
      Q => triangle_message_last(13)
    );
\triangle_message_last_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(14),
      Q => triangle_message_last(14)
    );
\triangle_message_last_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(1),
      Q => triangle_message_last(1)
    );
\triangle_message_last_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(2),
      Q => triangle_message_last(2)
    );
\triangle_message_last_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(3),
      Q => p_0_in3_in
    );
\triangle_message_last_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(4),
      Q => triangle_message_last(4)
    );
\triangle_message_last_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(5),
      Q => triangle_message_last(5)
    );
\triangle_message_last_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(6),
      Q => triangle_message_last(6)
    );
\triangle_message_last_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(7),
      Q => triangle_message_last(7)
    );
\triangle_message_last_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(8),
      Q => triangle_message_last(8)
    );
\triangle_message_last_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \triangle_message_last[14]_i_1_n_0\,
      CLR => \FifoData[18]_i_3_n_0\,
      D => Triangle_Message(9),
      Q => triangle_message_last(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_apu_writer_0_0 is
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
    CPU_Rst : in STD_LOGIC;
    Pulse1_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Pulse2_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Triangle_Message : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Noise_Message : in STD_LOGIC_VECTOR ( 13 downto 0 );
    DMC_Message : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 27 downto 0 );
    FifoWrite : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_apu_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_apu_writer_0_0 : entity is "design_1_axi_apu_writer_0_0,axi_apu_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_apu_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_apu_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_apu_writer_0_0 : entity is "axi_apu_writer,Vivado 2022.2.2";
end design_1_axi_apu_writer_0_0;

architecture STRUCTURE of design_1_axi_apu_writer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fifodata\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CPU_Rst : signal is "xilinx.com:signal:reset:1.0 CPU_Rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CPU_Rst : signal is "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
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
  FifoData(27) <= \<const0>\;
  FifoData(26) <= \<const0>\;
  FifoData(25) <= \<const0>\;
  FifoData(24) <= \<const0>\;
  FifoData(23) <= \<const0>\;
  FifoData(22) <= \<const0>\;
  FifoData(21) <= \<const0>\;
  FifoData(20) <= \<const0>\;
  FifoData(19) <= \<const0>\;
  FifoData(18 downto 0) <= \^fifodata\(18 downto 0);
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axi_apu_writer_0_0_axi_apu_writer
     port map (
      CPU_Rst => CPU_Rst,
      DMC_Message(3 downto 0) => DMC_Message(3 downto 0),
      FifoData(18 downto 0) => \^fifodata\(18 downto 0),
      FifoWrite => FifoWrite,
      Noise_Message(13 downto 0) => Noise_Message(13 downto 0),
      Pulse1_Message(18 downto 0) => Pulse1_Message(18 downto 0),
      Pulse2_Message(18 downto 0) => Pulse2_Message(18 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      Triangle_Message(14 downto 0) => Triangle_Message(14 downto 0),
      axi_read_valid_reg_0 => S_AXI_RVALID
    );
end STRUCTURE;
