-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Nov  5 15:29:29 2023
-- Host        : TM2s-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_registers_0_0/design_1_nes_apu_registers_0_0_stub.vhdl
-- Design      : design_1_nes_apu_registers_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nes_apu_registers_0_0 is
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
    APU_Pulse1_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Pulse2_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    APU_Triangle_Out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    APU_Noise_Out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    APU_DMC_Out : out STD_LOGIC_VECTOR ( 28 downto 0 );
    APU_Status_Out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    APU_Counter_Out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Update : out STD_LOGIC
  );

end design_1_nes_apu_registers_0_0;

architecture stub of design_1_nes_apu_registers_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,CPU_Clk,CPU_M2,CPU_Rst,CPU_Addr[14:0],CPU_Data[7:0],CPU_RomSel,CPU_RW,APU_Pulse1_Out[31:0],APU_Pulse2_Out[31:0],APU_Triangle_Out[30:0],APU_Noise_Out[15:0],APU_DMC_Out[28:0],APU_Status_Out[6:0],APU_Counter_Out[1:0],Update";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nes_apu_registers,Vivado 2022.2";
begin
end;
