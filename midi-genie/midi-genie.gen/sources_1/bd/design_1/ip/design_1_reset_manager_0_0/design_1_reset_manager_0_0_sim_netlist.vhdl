-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Thu Jan 18 12:06:48 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_reset_manager_0_0/design_1_reset_manager_0_0_sim_netlist.vhdl
-- Design      : design_1_reset_manager_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reset_manager_0_0 is
  port (
    peripheral_aresetn : in STD_LOGIC;
    nes_reset : in STD_LOGIC;
    peripheral_areset : out STD_LOGIC;
    nes_resetn : out STD_LOGIC;
    dual_reset : out STD_LOGIC;
    dual_resetn : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reset_manager_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reset_manager_0_0 : entity is "design_1_reset_manager_0_0,reset_manager,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_reset_manager_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_reset_manager_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_reset_manager_0_0 : entity is "reset_manager,Vivado 2022.2.2";
end design_1_reset_manager_0_0;

architecture STRUCTURE of design_1_reset_manager_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dual_reset : signal is "xilinx.com:signal:reset:1.0 dual_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dual_reset : signal is "XIL_INTERFACENAME dual_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dual_resetn : signal is "xilinx.com:signal:reset:1.0 dual_resetn RST";
  attribute X_INTERFACE_PARAMETER of dual_resetn : signal is "XIL_INTERFACENAME dual_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of nes_reset : signal is "xilinx.com:signal:reset:1.0 nes_reset RST";
  attribute X_INTERFACE_PARAMETER of nes_reset : signal is "XIL_INTERFACENAME nes_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of nes_resetn : signal is "xilinx.com:signal:reset:1.0 nes_resetn RST";
  attribute X_INTERFACE_PARAMETER of nes_resetn : signal is "XIL_INTERFACENAME nes_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of peripheral_aresetn : signal is "xilinx.com:signal:reset:1.0 peripheral_aresetn RST";
  attribute X_INTERFACE_PARAMETER of peripheral_aresetn : signal is "XIL_INTERFACENAME peripheral_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
dual_reset_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => nes_reset,
      I1 => peripheral_aresetn,
      O => dual_reset
    );
dual_resetn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => peripheral_aresetn,
      I1 => nes_reset,
      O => dual_resetn
    );
nes_resetn_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nes_reset,
      O => nes_resetn
    );
peripheral_areset_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => peripheral_aresetn,
      O => peripheral_areset
    );
end STRUCTURE;
