-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Wed Jan 10 13:02:05 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_fifo_transmitter_0_0/design_1_fifo_transmitter_0_0_stub.vhdl
-- Design      : design_1_fifo_transmitter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_transmitter_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    FifoData : in STD_LOGIC_VECTOR ( 25 downto 0 );
    FifoEmpty : in STD_LOGIC;
    FifoRead : out STD_LOGIC;
    Midi : out STD_LOGIC
  );

end design_1_fifo_transmitter_0_0;

architecture stub of design_1_fifo_transmitter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,FifoData[25:0],FifoEmpty,FifoRead,Midi";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fifo_transmitter,Vivado 2022.2.2";
begin
end;
