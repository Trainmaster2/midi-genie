// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Jan 17 17:16:49 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_apu_fifo_writer_0_0/design_1_apu_fifo_writer_0_0_sim_netlist.v
// Design      : design_1_apu_fifo_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_apu_fifo_writer_0_0,apu_fifo_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "apu_fifo_writer,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_apu_fifo_writer_0_0
   (Clk,
    Reset,
    Pulse1_Timer,
    Pulse1_Volume,
    Pulse2_Timer,
    Pulse2_Volume,
    FifoData,
    FifoWrite);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [11:0]Pulse1_Timer;
  input [3:0]Pulse1_Volume;
  input [11:0]Pulse2_Timer;
  input [3:0]Pulse2_Volume;
  output [15:0]FifoData;
  output FifoWrite;

  wire \<const0> ;
  wire Clk;
  wire [15:0]\^FifoData ;
  wire FifoWrite;
  wire [11:0]Pulse1_Timer;
  wire [3:0]Pulse1_Volume;
  wire [11:0]Pulse2_Timer;
  wire [3:0]Pulse2_Volume;
  wire Reset;

  assign FifoData[15:4] = \^FifoData [15:4];
  assign FifoData[3] = \<const0> ;
  assign FifoData[2] = \<const0> ;
  assign FifoData[1:0] = \^FifoData [1:0];
  GND GND
       (.G(\<const0> ));
  design_1_apu_fifo_writer_0_0_apu_fifo_writer inst
       (.Clk(Clk),
        .\FifoData_reg[15]_0 ({\^FifoData [15:4],\^FifoData [1:0]}),
        .FifoWrite(FifoWrite),
        .Pulse1_Timer(Pulse1_Timer),
        .Pulse1_Volume(Pulse1_Volume),
        .Pulse2_Timer(Pulse2_Timer),
        .Pulse2_Volume(Pulse2_Volume),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "apu_fifo_writer" *) 
module design_1_apu_fifo_writer_0_0_apu_fifo_writer
   (\FifoData_reg[15]_0 ,
    FifoWrite,
    Pulse2_Timer,
    Pulse1_Timer,
    Clk,
    Pulse1_Volume,
    Pulse2_Volume,
    Reset);
  output [13:0]\FifoData_reg[15]_0 ;
  output FifoWrite;
  input [11:0]Pulse2_Timer;
  input [11:0]Pulse1_Timer;
  input Clk;
  input [3:0]Pulse1_Volume;
  input [3:0]Pulse2_Volume;
  input Reset;

  wire Clk;
  wire [7:5]FifoData;
  wire [15:0]FifoData0_out;
  wire FifoData13_out;
  wire FifoData1__1;
  wire FifoData2;
  wire FifoData21_out;
  wire FifoData2_carry_i_1_n_0;
  wire FifoData2_carry_i_2_n_0;
  wire FifoData2_carry_i_3_n_0;
  wire FifoData2_carry_i_4_n_0;
  wire FifoData2_carry_n_1;
  wire FifoData2_carry_n_2;
  wire FifoData2_carry_n_3;
  wire \FifoData2_inferred__0/i__carry_n_1 ;
  wire \FifoData2_inferred__0/i__carry_n_2 ;
  wire \FifoData2_inferred__0/i__carry_n_3 ;
  wire \FifoData[15]_i_3_n_0 ;
  wire \FifoData[4]_i_2_n_0 ;
  wire \FifoData[7]_i_3_n_0 ;
  wire \FifoData[7]_i_7_n_0 ;
  wire \FifoData[7]_i_8_n_0 ;
  wire [13:0]\FifoData_reg[15]_0 ;
  wire FifoWrite;
  wire [11:0]Pulse1_Timer;
  wire [3:0]Pulse1_Volume;
  wire [11:0]Pulse2_Timer;
  wire [3:0]Pulse2_Volume;
  wire Reset;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [15:7]p_0_in;
  wire p_1_in;
  wire [0:0]pulse1_timer_last;
  wire \pulse1_timer_last_reg_n_0_[10] ;
  wire \pulse1_timer_last_reg_n_0_[11] ;
  wire \pulse1_timer_last_reg_n_0_[1] ;
  wire \pulse1_timer_last_reg_n_0_[2] ;
  wire \pulse1_timer_last_reg_n_0_[3] ;
  wire \pulse1_timer_last_reg_n_0_[4] ;
  wire \pulse1_timer_last_reg_n_0_[5] ;
  wire \pulse1_timer_last_reg_n_0_[6] ;
  wire \pulse1_timer_last_reg_n_0_[7] ;
  wire \pulse1_timer_last_reg_n_0_[8] ;
  wire \pulse1_timer_last_reg_n_0_[9] ;
  wire [3:0]pulse1_volume_last;
  wire \pulse1_volume_last[3]_i_1_n_0 ;
  wire [11:1]pulse2_timer_last;
  wire \pulse2_timer_last[11]_i_1_n_0 ;
  wire \pulse2_timer_last_reg_n_0_[0] ;
  wire [3:0]pulse2_volume_last;
  wire pulse2_volume_last_0;
  wire [3:0]NLW_FifoData2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_FifoData2_inferred__0/i__carry_O_UNCONNECTED ;

  CARRY4 FifoData2_carry
       (.CI(1'b0),
        .CO({FifoData21_out,FifoData2_carry_n_1,FifoData2_carry_n_2,FifoData2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData2_carry_O_UNCONNECTED[3:0]),
        .S({FifoData2_carry_i_1_n_0,FifoData2_carry_i_2_n_0,FifoData2_carry_i_3_n_0,FifoData2_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_1
       (.I0(Pulse1_Timer[9]),
        .I1(\pulse1_timer_last_reg_n_0_[9] ),
        .I2(\pulse1_timer_last_reg_n_0_[11] ),
        .I3(Pulse1_Timer[11]),
        .I4(\pulse1_timer_last_reg_n_0_[10] ),
        .I5(Pulse1_Timer[10]),
        .O(FifoData2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_2
       (.I0(Pulse1_Timer[6]),
        .I1(\pulse1_timer_last_reg_n_0_[6] ),
        .I2(\pulse1_timer_last_reg_n_0_[8] ),
        .I3(Pulse1_Timer[8]),
        .I4(\pulse1_timer_last_reg_n_0_[7] ),
        .I5(Pulse1_Timer[7]),
        .O(FifoData2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_3
       (.I0(Pulse1_Timer[3]),
        .I1(\pulse1_timer_last_reg_n_0_[3] ),
        .I2(\pulse1_timer_last_reg_n_0_[5] ),
        .I3(Pulse1_Timer[5]),
        .I4(\pulse1_timer_last_reg_n_0_[4] ),
        .I5(Pulse1_Timer[4]),
        .O(FifoData2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_4
       (.I0(Pulse1_Timer[0]),
        .I1(pulse1_timer_last),
        .I2(\pulse1_timer_last_reg_n_0_[2] ),
        .I3(Pulse1_Timer[2]),
        .I4(\pulse1_timer_last_reg_n_0_[1] ),
        .I5(Pulse1_Timer[1]),
        .O(FifoData2_carry_i_4_n_0));
  CARRY4 \FifoData2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({FifoData2,\FifoData2_inferred__0/i__carry_n_1 ,\FifoData2_inferred__0/i__carry_n_2 ,\FifoData2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FifoData2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0000001F1F1F1F1F)) 
    \FifoData[0]_i_1 
       (.I0(\pulse2_timer_last_reg_n_0_[0] ),
        .I1(Pulse2_Timer[0]),
        .I2(FifoData2),
        .I3(pulse1_timer_last),
        .I4(Pulse1_Timer[0]),
        .I5(FifoData21_out),
        .O(FifoData0_out[0]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[10]_i_1 
       (.I0(Pulse1_Timer[6]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[6]),
        .O(FifoData0_out[10]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[11]_i_1 
       (.I0(Pulse1_Timer[7]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[7]),
        .O(FifoData0_out[11]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[12]_i_1 
       (.I0(Pulse1_Timer[8]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[8]),
        .O(FifoData0_out[12]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[13]_i_1 
       (.I0(Pulse1_Timer[9]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[9]),
        .O(FifoData0_out[13]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[14]_i_1 
       (.I0(Pulse1_Timer[10]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[10]),
        .O(FifoData0_out[14]));
  LUT6 #(
    .INIT(64'hFFA8FFA8FFA8A8A8)) 
    \FifoData[15]_i_1 
       (.I0(FifoData21_out),
        .I1(Pulse1_Timer[0]),
        .I2(pulse1_timer_last),
        .I3(FifoData2),
        .I4(Pulse2_Timer[0]),
        .I5(\pulse2_timer_last_reg_n_0_[0] ),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[15]_i_2 
       (.I0(Pulse1_Timer[11]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[11]),
        .O(FifoData0_out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \FifoData[15]_i_3 
       (.I0(Reset),
        .O(\FifoData[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FD55)) 
    \FifoData[1]_i_1 
       (.I0(\FifoData[7]_i_3_n_0 ),
        .I1(\pulse2_timer_last_reg_n_0_[0] ),
        .I2(Pulse2_Timer[0]),
        .I3(FifoData2),
        .I4(FifoData13_out),
        .O(FifoData0_out[1]));
  LUT4 #(
    .INIT(16'hDFC0)) 
    \FifoData[4]_i_1 
       (.I0(pulse1_timer_last),
        .I1(Pulse1_Timer[0]),
        .I2(FifoData21_out),
        .I3(\FifoData[4]_i_2_n_0 ),
        .O(FifoData0_out[4]));
  LUT6 #(
    .INIT(64'hDFC0DFDFDFC0C0C0)) 
    \FifoData[4]_i_2 
       (.I0(\pulse2_timer_last_reg_n_0_[0] ),
        .I1(Pulse2_Timer[0]),
        .I2(FifoData2),
        .I3(Pulse1_Volume[0]),
        .I4(\FifoData[7]_i_3_n_0 ),
        .I5(Pulse2_Volume[0]),
        .O(\FifoData[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FifoData[5]_i_1 
       (.I0(Pulse1_Timer[1]),
        .I1(FifoData13_out),
        .I2(Pulse2_Timer[1]),
        .I3(FifoData1__1),
        .I4(FifoData[5]),
        .O(FifoData0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FifoData[5]_i_2 
       (.I0(Pulse1_Volume[1]),
        .I1(\FifoData[7]_i_3_n_0 ),
        .I2(Pulse2_Volume[1]),
        .O(FifoData[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FifoData[6]_i_1 
       (.I0(Pulse1_Timer[2]),
        .I1(FifoData13_out),
        .I2(Pulse2_Timer[2]),
        .I3(FifoData1__1),
        .I4(FifoData[6]),
        .O(FifoData0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FifoData[6]_i_2 
       (.I0(Pulse1_Volume[2]),
        .I1(\FifoData[7]_i_3_n_0 ),
        .I2(Pulse2_Volume[2]),
        .O(FifoData[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \FifoData[7]_i_1 
       (.I0(FifoData13_out),
        .I1(\FifoData[7]_i_3_n_0 ),
        .I2(p_1_in),
        .I3(\pulse2_timer_last_reg_n_0_[0] ),
        .I4(Pulse2_Timer[0]),
        .I5(FifoData2),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FifoData[7]_i_2 
       (.I0(Pulse1_Timer[3]),
        .I1(FifoData13_out),
        .I2(Pulse2_Timer[3]),
        .I3(FifoData1__1),
        .I4(FifoData[7]),
        .O(FifoData0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \FifoData[7]_i_3 
       (.I0(Pulse1_Volume[3]),
        .I1(pulse1_volume_last[3]),
        .I2(\FifoData[7]_i_7_n_0 ),
        .O(\FifoData[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \FifoData[7]_i_4 
       (.I0(Pulse2_Volume[3]),
        .I1(pulse2_volume_last[3]),
        .I2(\FifoData[7]_i_8_n_0 ),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FifoData[7]_i_5 
       (.I0(\pulse2_timer_last_reg_n_0_[0] ),
        .I1(Pulse2_Timer[0]),
        .I2(FifoData2),
        .O(FifoData1__1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FifoData[7]_i_6 
       (.I0(Pulse1_Volume[3]),
        .I1(\FifoData[7]_i_3_n_0 ),
        .I2(Pulse2_Volume[3]),
        .O(FifoData[7]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FifoData[7]_i_7 
       (.I0(Pulse1_Volume[0]),
        .I1(pulse1_volume_last[0]),
        .I2(pulse1_volume_last[2]),
        .I3(Pulse1_Volume[2]),
        .I4(pulse1_volume_last[1]),
        .I5(Pulse1_Volume[1]),
        .O(\FifoData[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FifoData[7]_i_8 
       (.I0(Pulse2_Volume[0]),
        .I1(pulse2_volume_last[0]),
        .I2(pulse2_volume_last[2]),
        .I3(Pulse2_Volume[2]),
        .I4(pulse2_volume_last[1]),
        .I5(Pulse2_Volume[1]),
        .O(\FifoData[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[8]_i_1 
       (.I0(Pulse1_Timer[4]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[4]),
        .O(FifoData0_out[8]));
  LUT5 #(
    .INIT(32'hABFFA800)) 
    \FifoData[9]_i_1 
       (.I0(Pulse1_Timer[5]),
        .I1(pulse1_timer_last),
        .I2(Pulse1_Timer[0]),
        .I3(FifoData21_out),
        .I4(Pulse2_Timer[5]),
        .O(FifoData0_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[0] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[0]),
        .Q(\FifoData_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[10] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[10]),
        .Q(\FifoData_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[11] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[11]),
        .Q(\FifoData_reg[15]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[12] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[12]),
        .Q(\FifoData_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[13] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[13]),
        .Q(\FifoData_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[14] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[14]),
        .Q(\FifoData_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[15] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[15]),
        .Q(\FifoData_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[1] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[1]),
        .Q(\FifoData_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[4] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[4]),
        .Q(\FifoData_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[5] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[5]),
        .Q(\FifoData_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[6] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[6]),
        .Q(\FifoData_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[7] 
       (.C(Clk),
        .CE(p_0_in[7]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[7]),
        .Q(\FifoData_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[8] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[8]),
        .Q(\FifoData_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[9] 
       (.C(Clk),
        .CE(p_0_in[15]),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(FifoData0_out[9]),
        .Q(\FifoData_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    FifoWrite_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(FifoWrite));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(Pulse2_Timer[9]),
        .I1(pulse2_timer_last[9]),
        .I2(pulse2_timer_last[11]),
        .I3(Pulse2_Timer[11]),
        .I4(pulse2_timer_last[10]),
        .I5(Pulse2_Timer[10]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Pulse2_Timer[6]),
        .I1(pulse2_timer_last[6]),
        .I2(pulse2_timer_last[8]),
        .I3(Pulse2_Timer[8]),
        .I4(pulse2_timer_last[7]),
        .I5(Pulse2_Timer[7]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Pulse2_Timer[3]),
        .I1(pulse2_timer_last[3]),
        .I2(pulse2_timer_last[5]),
        .I3(Pulse2_Timer[5]),
        .I4(pulse2_timer_last[4]),
        .I5(Pulse2_Timer[4]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Pulse2_Timer[0]),
        .I1(\pulse2_timer_last_reg_n_0_[0] ),
        .I2(pulse2_timer_last[2]),
        .I3(Pulse2_Timer[2]),
        .I4(pulse2_timer_last[1]),
        .I5(Pulse2_Timer[1]),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    \pulse1_timer_last[11]_i_1 
       (.I0(pulse1_timer_last),
        .I1(Pulse1_Timer[0]),
        .I2(FifoData21_out),
        .O(FifoData13_out));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[0] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[0]),
        .Q(pulse1_timer_last));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[10] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[10]),
        .Q(\pulse1_timer_last_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[11] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[11]),
        .Q(\pulse1_timer_last_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[1] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[1]),
        .Q(\pulse1_timer_last_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[2] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[2]),
        .Q(\pulse1_timer_last_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[3] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[3]),
        .Q(\pulse1_timer_last_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[4] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[4]),
        .Q(\pulse1_timer_last_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[5] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[5]),
        .Q(\pulse1_timer_last_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[6] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[6]),
        .Q(\pulse1_timer_last_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[7] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[7]),
        .Q(\pulse1_timer_last_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[8] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[8]),
        .Q(\pulse1_timer_last_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_timer_last_reg[9] 
       (.C(Clk),
        .CE(FifoData13_out),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Timer[9]),
        .Q(\pulse1_timer_last_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00005700)) 
    \pulse1_volume_last[3]_i_1 
       (.I0(FifoData2),
        .I1(Pulse2_Timer[0]),
        .I2(\pulse2_timer_last_reg_n_0_[0] ),
        .I3(\FifoData[7]_i_3_n_0 ),
        .I4(FifoData13_out),
        .O(\pulse1_volume_last[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_volume_last_reg[0] 
       (.C(Clk),
        .CE(\pulse1_volume_last[3]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Volume[0]),
        .Q(pulse1_volume_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_volume_last_reg[1] 
       (.C(Clk),
        .CE(\pulse1_volume_last[3]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Volume[1]),
        .Q(pulse1_volume_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_volume_last_reg[2] 
       (.C(Clk),
        .CE(\pulse1_volume_last[3]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Volume[2]),
        .Q(pulse1_volume_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_volume_last_reg[3] 
       (.C(Clk),
        .CE(\pulse1_volume_last[3]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse1_Volume[3]),
        .Q(pulse1_volume_last[3]));
  LUT6 #(
    .INIT(64'h00A800A800A8A8A8)) 
    \pulse2_timer_last[11]_i_1 
       (.I0(FifoData2),
        .I1(Pulse2_Timer[0]),
        .I2(\pulse2_timer_last_reg_n_0_[0] ),
        .I3(FifoData21_out),
        .I4(Pulse1_Timer[0]),
        .I5(pulse1_timer_last),
        .O(\pulse2_timer_last[11]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[0] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[0]),
        .Q(\pulse2_timer_last_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[10] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[10]),
        .Q(pulse2_timer_last[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[11] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[11]),
        .Q(pulse2_timer_last[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[1] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[1]),
        .Q(pulse2_timer_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[2] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[2]),
        .Q(pulse2_timer_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[3] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[3]),
        .Q(pulse2_timer_last[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[4] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[4]),
        .Q(pulse2_timer_last[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[5] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[5]),
        .Q(pulse2_timer_last[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[6] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[6]),
        .Q(pulse2_timer_last[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[7] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[7]),
        .Q(pulse2_timer_last[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[8] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[8]),
        .Q(pulse2_timer_last[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_timer_last_reg[9] 
       (.C(Clk),
        .CE(\pulse2_timer_last[11]_i_1_n_0 ),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Timer[9]),
        .Q(pulse2_timer_last[9]));
  LUT6 #(
    .INIT(64'h00000000001F0000)) 
    \pulse2_volume_last[3]_i_1 
       (.I0(\pulse2_timer_last_reg_n_0_[0] ),
        .I1(Pulse2_Timer[0]),
        .I2(FifoData2),
        .I3(FifoData13_out),
        .I4(p_1_in),
        .I5(\FifoData[7]_i_3_n_0 ),
        .O(pulse2_volume_last_0));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_volume_last_reg[0] 
       (.C(Clk),
        .CE(pulse2_volume_last_0),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Volume[0]),
        .Q(pulse2_volume_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_volume_last_reg[1] 
       (.C(Clk),
        .CE(pulse2_volume_last_0),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Volume[1]),
        .Q(pulse2_volume_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_volume_last_reg[2] 
       (.C(Clk),
        .CE(pulse2_volume_last_0),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Volume[2]),
        .Q(pulse2_volume_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_volume_last_reg[3] 
       (.C(Clk),
        .CE(pulse2_volume_last_0),
        .CLR(\FifoData[15]_i_3_n_0 ),
        .D(Pulse2_Volume[3]),
        .Q(pulse2_volume_last[3]));
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
