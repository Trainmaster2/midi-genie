// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Tue Jan  9 23:57:22 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_apu_0_0/design_1_nes_apu_0_0_sim_netlist.v
// Design      : design_1_nes_apu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nes_apu_0_0,nes_apu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "nes_apu,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_nes_apu_0_0
   (Clk,
    Reset,
    CPU_Clk,
    CPU_M2,
    CPU_Rst,
    CPU_Addr,
    CPU_Data,
    CPU_RomSel,
    CPU_RW,
    APU_Pulse1_Out,
    APU_Pulse2_Out,
    APU_Triangle_Out,
    APU_Noise_Out,
    APU_DMC_Out,
    APU_Status_Out,
    APU_Counter_Out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CPU_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Clk, ASSOCIATED_RESET CPU_Rst, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0" *) input CPU_Clk;
  input CPU_M2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_Rst;
  input [14:0]CPU_Addr;
  input [7:0]CPU_Data;
  input CPU_RomSel;
  input CPU_RW;
  output [42:0]APU_Pulse1_Out;
  output [42:0]APU_Pulse2_Out;
  output [41:0]APU_Triangle_Out;
  output [15:0]APU_Noise_Out;
  output [28:0]APU_DMC_Out;
  output [6:0]APU_Status_Out;
  output [1:0]APU_Counter_Out;

  wire \<const0> ;
  wire [1:0]APU_Counter_Out;
  wire [28:0]APU_DMC_Out;
  wire [15:0]APU_Noise_Out;
  wire [42:11]\^APU_Pulse1_Out ;
  wire [42:11]\^APU_Pulse2_Out ;
  wire [4:0]\^APU_Status_Out ;
  wire [41:11]\^APU_Triangle_Out ;
  wire [14:0]CPU_Addr;
  wire [7:0]CPU_Data;
  wire CPU_M2;
  wire CPU_RW;
  wire CPU_RomSel;
  wire CPU_Rst;
  wire Reset;

  assign APU_Pulse1_Out[42:11] = \^APU_Pulse1_Out [42:11];
  assign APU_Pulse1_Out[10] = \<const0> ;
  assign APU_Pulse1_Out[9] = \<const0> ;
  assign APU_Pulse1_Out[8] = \<const0> ;
  assign APU_Pulse1_Out[7] = \<const0> ;
  assign APU_Pulse1_Out[6] = \<const0> ;
  assign APU_Pulse1_Out[5] = \<const0> ;
  assign APU_Pulse1_Out[4] = \<const0> ;
  assign APU_Pulse1_Out[3] = \<const0> ;
  assign APU_Pulse1_Out[2] = \<const0> ;
  assign APU_Pulse1_Out[1] = \<const0> ;
  assign APU_Pulse1_Out[0] = \<const0> ;
  assign APU_Pulse2_Out[42:11] = \^APU_Pulse2_Out [42:11];
  assign APU_Pulse2_Out[10] = \<const0> ;
  assign APU_Pulse2_Out[9] = \<const0> ;
  assign APU_Pulse2_Out[8] = \<const0> ;
  assign APU_Pulse2_Out[7] = \<const0> ;
  assign APU_Pulse2_Out[6] = \<const0> ;
  assign APU_Pulse2_Out[5] = \<const0> ;
  assign APU_Pulse2_Out[4] = \<const0> ;
  assign APU_Pulse2_Out[3] = \<const0> ;
  assign APU_Pulse2_Out[2] = \<const0> ;
  assign APU_Pulse2_Out[1] = \<const0> ;
  assign APU_Pulse2_Out[0] = \<const0> ;
  assign APU_Status_Out[6] = \<const0> ;
  assign APU_Status_Out[5] = \<const0> ;
  assign APU_Status_Out[4:0] = \^APU_Status_Out [4:0];
  assign APU_Triangle_Out[41:11] = \^APU_Triangle_Out [41:11];
  assign APU_Triangle_Out[10] = \<const0> ;
  assign APU_Triangle_Out[9] = \<const0> ;
  assign APU_Triangle_Out[8] = \<const0> ;
  assign APU_Triangle_Out[7] = \<const0> ;
  assign APU_Triangle_Out[6] = \<const0> ;
  assign APU_Triangle_Out[5] = \<const0> ;
  assign APU_Triangle_Out[4] = \<const0> ;
  assign APU_Triangle_Out[3] = \<const0> ;
  assign APU_Triangle_Out[2] = \<const0> ;
  assign APU_Triangle_Out[1] = \<const0> ;
  assign APU_Triangle_Out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_nes_apu_0_0_nes_apu inst
       (.APU_Counter_Out(APU_Counter_Out),
        .APU_DMC_Out(APU_DMC_Out),
        .APU_Noise_Out(APU_Noise_Out),
        .APU_Pulse1_Out(\^APU_Pulse1_Out ),
        .APU_Pulse2_Out(\^APU_Pulse2_Out ),
        .APU_Status_Out(\^APU_Status_Out ),
        .APU_Triangle_Out(\^APU_Triangle_Out ),
        .CPU_Addr(CPU_Addr),
        .CPU_Data(CPU_Data),
        .CPU_M2(CPU_M2),
        .CPU_RW(CPU_RW),
        .CPU_RomSel(CPU_RomSel),
        .CPU_Rst(CPU_Rst),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "nes_apu" *) 
module design_1_nes_apu_0_0_nes_apu
   (APU_Pulse2_Out,
    APU_Pulse1_Out,
    APU_Triangle_Out,
    APU_Noise_Out,
    APU_DMC_Out,
    APU_Status_Out,
    APU_Counter_Out,
    CPU_Data,
    CPU_M2,
    CPU_Addr,
    CPU_RW,
    CPU_RomSel,
    Reset,
    CPU_Rst);
  output [31:0]APU_Pulse2_Out;
  output [31:0]APU_Pulse1_Out;
  output [30:0]APU_Triangle_Out;
  output [15:0]APU_Noise_Out;
  output [28:0]APU_DMC_Out;
  output [4:0]APU_Status_Out;
  output [1:0]APU_Counter_Out;
  input [7:0]CPU_Data;
  input CPU_M2;
  input [14:0]CPU_Addr;
  input CPU_RW;
  input CPU_RomSel;
  input Reset;
  input CPU_Rst;

  wire \APU_Counter[mode] ;
  wire [1:0]APU_Counter_Out;
  wire \APU_DMC[irq_enable] ;
  wire \APU_DMC[load_counter] ;
  wire \APU_DMC[sample_address] ;
  wire \APU_DMC[sample_length] ;
  wire [28:0]APU_DMC_Out;
  wire \APU_Noise[length_counter] ;
  wire \APU_Noise[length_counter_halt] ;
  wire \APU_Noise[loop_noise] ;
  wire [15:0]APU_Noise_Out;
  wire \APU_Pulse1[duty] ;
  wire \APU_Pulse1[duty][1]_i_2_n_0 ;
  wire \APU_Pulse1[duty][1]_i_3_n_0 ;
  wire \APU_Pulse1[duty][1]_i_4_n_0 ;
  wire \APU_Pulse1[duty][1]_i_5_n_0 ;
  wire \APU_Pulse1[sweep_enable] ;
  wire \APU_Pulse1[timer_load][10]_i_1_n_0 ;
  wire \APU_Pulse1[timer_load][10]_i_2_n_0 ;
  wire \APU_Pulse1[timer_load][10]_i_3_n_0 ;
  wire \APU_Pulse1[timer_load][7]_i_1_n_0 ;
  wire [31:0]APU_Pulse1_Out;
  wire \APU_Pulse2[duty] ;
  wire \APU_Pulse2[sweep_enable] ;
  wire \APU_Pulse2[timer_load][10]_i_1_n_0 ;
  wire \APU_Pulse2[timer_load][7]_i_1_n_0 ;
  wire [31:0]APU_Pulse2_Out;
  wire \APU_Status[dmc_active] ;
  wire [4:0]APU_Status_Out;
  wire \APU_Triangle[length_counter_halt] ;
  wire \APU_Triangle[timer_load][10]_i_1_n_0 ;
  wire \APU_Triangle[timer_load][7]_i_1_n_0 ;
  wire [30:0]APU_Triangle_Out;
  wire [14:0]CPU_Addr;
  wire [7:0]CPU_Data;
  wire CPU_M2;
  wire CPU_RW;
  wire CPU_RomSel;
  wire CPU_Rst;
  wire Reset;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \APU_Counter[mode]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_Counter[mode] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Counter_reg[irq_inhibit] 
       (.C(CPU_M2),
        .CE(\APU_Counter[mode] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Counter_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Counter_reg[mode] 
       (.C(CPU_M2),
        .CE(\APU_Counter[mode] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Counter_Out[1]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \APU_DMC[irq_enable]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[3]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_DMC[irq_enable] ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \APU_DMC[load_counter][6]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_DMC[load_counter] ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \APU_DMC[sample_address][7]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[3]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_DMC[sample_address] ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \APU_DMC[sample_length][7]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_DMC[sample_length] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[dmc_loop] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[frequency][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[irq_enable] 
       (.C(CPU_M2),
        .CE(\APU_DMC[irq_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[load_counter][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[load_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_address][7] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_address] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][0] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_DMC_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][1] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_DMC_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][2] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_DMC_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][3] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_DMC_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][4] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_DMC_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][5] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_DMC_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][6] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_DMC_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_DMC_reg[sample_length][7] 
       (.C(CPU_M2),
        .CE(\APU_DMC[sample_length] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_DMC_Out[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \APU_Noise[length_counter][4]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Noise[length_counter] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \APU_Noise[length_counter_halt]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Noise[length_counter_halt] ));
  LUT4 #(
    .INIT(16'h4000)) 
    \APU_Noise[loop_noise]_i_1 
       (.I0(CPU_Addr[0]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[3]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Noise[loop_noise] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Noise_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Noise_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Noise_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Noise_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Noise_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Noise_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[loop_noise] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Noise_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Noise_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Noise_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Noise_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[noise_period][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[loop_noise] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Noise_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Noise_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Noise_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Noise_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Noise[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Noise_Out[13]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \APU_Pulse1[duty][1]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Pulse1[duty] ));
  LUT2 #(
    .INIT(4'h7)) 
    \APU_Pulse1[duty][1]_i_2 
       (.I0(Reset),
        .I1(CPU_Rst),
        .O(\APU_Pulse1[duty][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \APU_Pulse1[duty][1]_i_3 
       (.I0(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I1(CPU_Addr[8]),
        .I2(CPU_Addr[7]),
        .I3(CPU_Addr[6]),
        .I4(CPU_Addr[5]),
        .I5(\APU_Pulse1[duty][1]_i_5_n_0 ),
        .O(\APU_Pulse1[duty][1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[duty][1]_i_4 
       (.I0(CPU_Addr[12]),
        .I1(CPU_Addr[11]),
        .I2(CPU_Addr[10]),
        .I3(CPU_Addr[9]),
        .O(\APU_Pulse1[duty][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \APU_Pulse1[duty][1]_i_5 
       (.I0(CPU_RW),
        .I1(CPU_RomSel),
        .I2(CPU_Addr[13]),
        .I3(CPU_Addr[14]),
        .O(\APU_Pulse1[duty][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \APU_Pulse1[sweep_enable]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Pulse1[sweep_enable] ));
  LUT4 #(
    .INIT(16'h0400)) 
    \APU_Pulse1[timer_load][10]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Pulse1[timer_load][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \APU_Pulse1[timer_load][10]_i_2 
       (.I0(CPU_Addr[4]),
        .I1(\APU_Pulse1[duty][1]_i_4_n_0 ),
        .I2(\APU_Pulse1[timer_load][10]_i_3_n_0 ),
        .I3(\APU_Pulse1[duty][1]_i_5_n_0 ),
        .I4(CPU_Addr[1]),
        .O(\APU_Pulse1[timer_load][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \APU_Pulse1[timer_load][10]_i_3 
       (.I0(CPU_Addr[8]),
        .I1(CPU_Addr[7]),
        .I2(CPU_Addr[6]),
        .I3(CPU_Addr[5]),
        .O(\APU_Pulse1[timer_load][10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \APU_Pulse1[timer_load][7]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[2]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Pulse1[timer_load][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[duty][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[duty][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse1_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse1_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse1_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse1_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse1_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse1_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse1_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse1_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse1[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse1_Out[27]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \APU_Pulse2[duty][1]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Pulse2[duty] ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \APU_Pulse2[sweep_enable]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Pulse2[sweep_enable] ));
  LUT4 #(
    .INIT(16'h0800)) 
    \APU_Pulse2[timer_load][10]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Pulse2[timer_load][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \APU_Pulse2[timer_load][7]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[2]),
        .I2(CPU_Addr[0]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Pulse2[timer_load][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[constant_volume] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[duty][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[duty][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_enable] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_negate] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_period][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[sweep_shift][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[sweep_enable] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Pulse2_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Pulse2_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Pulse2_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Pulse2_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][0] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Pulse2_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][1] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Pulse2_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][2] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Pulse2_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Pulse2_reg[volume][3] 
       (.C(CPU_M2),
        .CE(\APU_Pulse2[duty] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Pulse2_Out[27]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \APU_Status[dmc_active]_i_1 
       (.I0(CPU_Addr[1]),
        .I1(CPU_Addr[3]),
        .I2(CPU_Addr[0]),
        .I3(CPU_Addr[2]),
        .I4(CPU_Addr[4]),
        .I5(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .O(\APU_Status[dmc_active] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[dmc_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Status_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[noise_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Status_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse1_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Status_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[pulse2_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Status_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Status_reg[triangle_active] 
       (.C(CPU_M2),
        .CE(\APU_Status[dmc_active] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Status_Out[2]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \APU_Triangle[length_counter_halt]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[1]),
        .I4(\APU_Pulse1[duty][1]_i_3_n_0 ),
        .I5(CPU_Addr[4]),
        .O(\APU_Triangle[length_counter_halt] ));
  LUT4 #(
    .INIT(16'h4000)) 
    \APU_Triangle[timer_load][10]_i_1 
       (.I0(CPU_Addr[2]),
        .I1(CPU_Addr[0]),
        .I2(CPU_Addr[3]),
        .I3(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .O(\APU_Triangle[timer_load][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \APU_Triangle[timer_load][7]_i_1 
       (.I0(CPU_Addr[3]),
        .I1(\APU_Pulse1[timer_load][10]_i_2_n_0 ),
        .I2(CPU_Addr[2]),
        .I3(CPU_Addr[0]),
        .O(\APU_Triangle[timer_load][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[length_counter_halt] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[23]),
        .Q(APU_Triangle_Out[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[24]),
        .Q(APU_Triangle_Out[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[25]),
        .Q(APU_Triangle_Out[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[26]),
        .Q(APU_Triangle_Out[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[27]),
        .Q(APU_Triangle_Out[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[28]),
        .Q(APU_Triangle_Out[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(APU_Triangle_Out[29]),
        .Q(APU_Triangle_Out[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[linear_counter_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[length_counter_halt] ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][0] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][10] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][1] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][2] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[2]),
        .Q(APU_Triangle_Out[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][3] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[3]),
        .Q(APU_Triangle_Out[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][4] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[4]),
        .Q(APU_Triangle_Out[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][5] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[5]),
        .Q(APU_Triangle_Out[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][6] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[6]),
        .Q(APU_Triangle_Out[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][7] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][7]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[7]),
        .Q(APU_Triangle_Out[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][8] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[0]),
        .Q(APU_Triangle_Out[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \APU_Triangle_reg[timer_load][9] 
       (.C(CPU_M2),
        .CE(\APU_Triangle[timer_load][10]_i_1_n_0 ),
        .CLR(\APU_Pulse1[duty][1]_i_2_n_0 ),
        .D(CPU_Data[1]),
        .Q(APU_Triangle_Out[21]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
