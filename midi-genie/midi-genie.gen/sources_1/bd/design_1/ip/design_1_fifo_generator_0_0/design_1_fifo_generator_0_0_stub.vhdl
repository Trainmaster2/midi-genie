-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Thu Jan 11 13:21:34 2024
-- Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_stub.vhdl
-- Design      : design_1_fifo_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_generator_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 25 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end design_1_fifo_generator_0_0;

architecture stub of design_1_fifo_generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,din[25:0],wr_en,rd_en,dout[25:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_7,Vivado 2022.2.2";
begin
end;
