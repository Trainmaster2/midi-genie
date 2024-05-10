//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Thu May  9 23:46:09 2024
//Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn1,
    led,
    midi_out,
    nes_cpu_addr,
    nes_cpu_data,
    nes_cpu_rw,
    nes_m2,
    nes_romsel,
    nes_system_clk,
    reset,
    rgb_led,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input btn1;
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
  input usb_uart_rxd;
  output usb_uart_txd;

  wire btn1;
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
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.btn1(btn1),
        .led(led),
        .midi_out(midi_out),
        .nes_cpu_addr(nes_cpu_addr),
        .nes_cpu_data(nes_cpu_data),
        .nes_cpu_rw(nes_cpu_rw),
        .nes_m2(nes_m2),
        .nes_romsel(nes_romsel),
        .nes_system_clk(nes_system_clk),
        .reset(reset),
        .rgb_led(rgb_led),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
