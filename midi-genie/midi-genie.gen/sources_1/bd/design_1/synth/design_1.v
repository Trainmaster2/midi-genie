//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Sep 12 23:11:10 2023
//Host        : TM2s-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.NES_SYSTEM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.NES_SYSTEM_CLK, CLK_DOMAIN design_1_nes_system_clk, FREQ_HZ 21480000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input nes_system_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output [2:0]rgb_led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire clk_wiz_0_clk_out1;
  wire [14:0]nes_cpu_addr_1;
  wire [7:0]nes_cpu_data_1;
  wire nes_cpu_rw_1;
  wire nes_m2_1;
  wire nes_romsel_1;
  wire nes_system_clk_1;
  wire reset_1;
  wire [2:0]rgb_off_dout;
  wire sys_clock_1;

  assign nes_cpu_addr_1 = nes_cpu_addr[14:0];
  assign nes_cpu_data_1 = nes_cpu_data[7:0];
  assign nes_cpu_rw_1 = nes_cpu_rw;
  assign nes_m2_1 = nes_m2;
  assign nes_romsel_1 = nes_romsel;
  assign nes_system_clk_1 = nes_system_clk;
  assign reset_1 = reset;
  assign rgb_led[2:0] = rgb_off_dout;
  assign sys_clock_1 = sys_clock;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
  design_1_xlconstant_0_0 rgb_off
       (.dout(rgb_off_dout));
  design_1_system_ila_0_0 system_ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(nes_system_clk_1),
        .probe1(nes_m2_1),
        .probe2(nes_cpu_addr_1),
        .probe3(nes_cpu_data_1),
        .probe4(nes_romsel_1),
        .probe5(nes_cpu_rw_1));
endmodule
