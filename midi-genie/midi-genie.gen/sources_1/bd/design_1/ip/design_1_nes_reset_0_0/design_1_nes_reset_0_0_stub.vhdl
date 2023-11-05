-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Nov  5 15:11:23 2023
-- Host        : TM2s-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_reset_0_0/design_1_nes_reset_0_0_stub.vhdl
-- Design      : design_1_nes_reset_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nes_reset_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    M2 : in STD_LOGIC;
    NES_rst : out STD_LOGIC;
    test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    test2 : out STD_LOGIC;
    test3 : out STD_LOGIC;
    test4 : out STD_LOGIC;
    test5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    test6 : out STD_LOGIC;
    test7 : out STD_LOGIC
  );

end design_1_nes_reset_0_0;

architecture stub of design_1_nes_reset_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,M2,NES_rst,test[3:0],test2,test3,test4,test5[3:0],test6,test7";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nes_reset,Vivado 2022.2";
begin
end;
