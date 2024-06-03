-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Fri May 24 22:47:33 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_0_0/design_1_nes_apu_0_0_stub.vhdl
-- Design      : design_1_nes_apu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nes_apu_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CPU_Clk : in STD_LOGIC;
    CPU_M2 : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    CPU_Addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CPU_Data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPU_RomSel : in STD_LOGIC;
    CPU_RW : in STD_LOGIC;
    APU_Pulse1_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    APU_Pulse2_Message : out STD_LOGIC_VECTOR ( 18 downto 0 );
    APU_Triangle_Message : out STD_LOGIC_VECTOR ( 14 downto 0 );
    APU_Noise_Message : out STD_LOGIC_VECTOR ( 13 downto 0 );
    APU_DMC_Message : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_nes_apu_0_0;

architecture stub of design_1_nes_apu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,CPU_Clk,CPU_M2,CPU_Rst,CPU_Addr[14:0],CPU_Data[7:0],CPU_RomSel,CPU_RW,APU_Pulse1_Message[18:0],APU_Pulse2_Message[18:0],APU_Triangle_Message[14:0],APU_Noise_Message[13:0],APU_DMC_Message[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nes_apu,Vivado 2022.2.2";
begin
end;
