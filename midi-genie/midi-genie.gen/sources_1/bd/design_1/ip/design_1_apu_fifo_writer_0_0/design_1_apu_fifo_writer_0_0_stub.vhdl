-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Sun Mar 10 14:50:39 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_apu_fifo_writer_0_0/design_1_apu_fifo_writer_0_0_stub.vhdl
-- Design      : design_1_apu_fifo_writer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_apu_fifo_writer_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CPU_Rst : in STD_LOGIC;
    Pulse1_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Pulse2_Message : in STD_LOGIC_VECTOR ( 18 downto 0 );
    Triangle_Message : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Noise_Message : in STD_LOGIC_VECTOR ( 27 downto 0 );
    FifoData : out STD_LOGIC_VECTOR ( 27 downto 0 );
    FifoWrite : out STD_LOGIC
  );

end design_1_apu_fifo_writer_0_0;

architecture stub of design_1_apu_fifo_writer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,CPU_Rst,Pulse1_Message[18:0],Pulse2_Message[18:0],Triangle_Message[14:0],Noise_Message[27:0],FifoData[27:0],FifoWrite";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "apu_fifo_writer,Vivado 2022.2.2";
begin
end;
