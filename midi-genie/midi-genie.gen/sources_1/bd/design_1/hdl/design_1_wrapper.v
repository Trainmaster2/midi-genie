//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Nov  5 15:08:43 2023
//Host        : TM2s-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led,
    midi_out,
    nes_cpu_addr,
    nes_cpu_data,
    nes_cpu_rw,
    nes_m2,
    nes_romsel,
    nes_system_clk,
    reset,
    rgb_led,
    sys_clock);
  output [1:0]led;
  output midi_out;
  input [14:0]nes_cpu_addr;
  input [7:0]nes_cpu_data;
  input nes_cpu_rw;
  input nes_m2;
  input nes_romsel;
  input nes_system_clk;
  input reset;
  output [2:0]rgb_led;
  input sys_clock;

  wire [1:0]led;
  wire midi_out;
  wire [14:0]nes_cpu_addr;
  wire [7:0]nes_cpu_data;
  wire nes_cpu_rw;
  wire nes_m2;
  wire nes_romsel;
  wire nes_system_clk;
  wire reset;
  wire [2:0]rgb_led;
  wire sys_clock;

  design_1 design_1_i
       (.led(led),
        .midi_out(midi_out),
        .nes_cpu_addr(nes_cpu_addr),
        .nes_cpu_data(nes_cpu_data),
        .nes_cpu_rw(nes_cpu_rw),
        .nes_m2(nes_m2),
        .nes_romsel(nes_romsel),
        .nes_system_clk(nes_system_clk),
        .reset(reset),
        .rgb_led(rgb_led),
        .sys_clock(sys_clock));
endmodule
