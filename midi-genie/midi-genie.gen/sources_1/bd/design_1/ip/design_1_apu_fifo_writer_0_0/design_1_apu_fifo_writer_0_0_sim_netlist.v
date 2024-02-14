// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Wed Feb 14 00:03:39 2024
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
    CPU_Rst,
    Pulse1_Message,
    Pulse2_Message,
    FifoData,
    FifoWrite);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input CPU_Rst;
  input [18:0]Pulse1_Message;
  input [18:0]Pulse2_Message;
  output [18:0]FifoData;
  output FifoWrite;

  wire CPU_Rst;
  wire Clk;
  wire [18:0]FifoData;
  wire FifoWrite;
  wire [18:0]Pulse1_Message;
  wire [18:0]Pulse2_Message;
  wire Reset;

  design_1_apu_fifo_writer_0_0_apu_fifo_writer inst
       (.CPU_Rst(CPU_Rst),
        .Clk(Clk),
        .FifoData(FifoData),
        .FifoWrite(FifoWrite),
        .Pulse1_Message(Pulse1_Message),
        .Pulse2_Message(Pulse2_Message),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "apu_fifo_writer" *) 
module design_1_apu_fifo_writer_0_0_apu_fifo_writer
   (FifoData,
    FifoWrite,
    Pulse1_Message,
    Pulse2_Message,
    Clk,
    Reset,
    CPU_Rst);
  output [18:0]FifoData;
  output FifoWrite;
  input [18:0]Pulse1_Message;
  input [18:0]Pulse2_Message;
  input Clk;
  input Reset;
  input CPU_Rst;

  wire CPU_Rst;
  wire Clk;
  wire [18:0]FifoData;
  wire FifoData12_out;
  wire FifoData1__0;
  wire FifoData1_carry__0_i_1_n_0;
  wire FifoData1_carry__0_i_2_n_0;
  wire FifoData1_carry__0_i_3_n_0;
  wire FifoData1_carry__0_n_2;
  wire FifoData1_carry__0_n_3;
  wire FifoData1_carry_i_1_n_0;
  wire FifoData1_carry_i_2_n_0;
  wire FifoData1_carry_i_3_n_0;
  wire FifoData1_carry_i_4_n_0;
  wire FifoData1_carry_n_0;
  wire FifoData1_carry_n_1;
  wire FifoData1_carry_n_2;
  wire FifoData1_carry_n_3;
  wire FifoData2;
  wire FifoData2_carry__0_i_1_n_0;
  wire FifoData2_carry__0_i_2_n_0;
  wire FifoData2_carry__0_i_3_n_0;
  wire FifoData2_carry__0_n_2;
  wire FifoData2_carry__0_n_3;
  wire FifoData2_carry_i_1_n_0;
  wire FifoData2_carry_i_2_n_0;
  wire FifoData2_carry_i_3_n_0;
  wire FifoData2_carry_i_4_n_0;
  wire FifoData2_carry_n_0;
  wire FifoData2_carry_n_1;
  wire FifoData2_carry_n_2;
  wire FifoData2_carry_n_3;
  wire \FifoData[18]_i_1_n_0 ;
  wire \FifoData[18]_i_3_n_0 ;
  wire FifoWrite;
  wire [18:0]Pulse1_Message;
  wire [18:0]Pulse2_Message;
  wire Reset;
  wire p_0_in;
  wire p_0_in2_in;
  wire [18:0]p_1_in;
  wire \pulse1_message_last_reg_n_0_[0] ;
  wire \pulse1_message_last_reg_n_0_[10] ;
  wire \pulse1_message_last_reg_n_0_[11] ;
  wire \pulse1_message_last_reg_n_0_[12] ;
  wire \pulse1_message_last_reg_n_0_[13] ;
  wire \pulse1_message_last_reg_n_0_[14] ;
  wire \pulse1_message_last_reg_n_0_[15] ;
  wire \pulse1_message_last_reg_n_0_[16] ;
  wire \pulse1_message_last_reg_n_0_[17] ;
  wire \pulse1_message_last_reg_n_0_[18] ;
  wire \pulse1_message_last_reg_n_0_[1] ;
  wire \pulse1_message_last_reg_n_0_[2] ;
  wire \pulse1_message_last_reg_n_0_[4] ;
  wire \pulse1_message_last_reg_n_0_[5] ;
  wire \pulse1_message_last_reg_n_0_[6] ;
  wire \pulse1_message_last_reg_n_0_[7] ;
  wire \pulse1_message_last_reg_n_0_[8] ;
  wire \pulse1_message_last_reg_n_0_[9] ;
  wire [18:0]pulse2_message_last;
  wire pulse2_message_last_0;
  wire [3:0]NLW_FifoData1_carry_O_UNCONNECTED;
  wire [3:3]NLW_FifoData1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_FifoData1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_FifoData2_carry_O_UNCONNECTED;
  wire [3:3]NLW_FifoData2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_FifoData2_carry__0_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hA8)) 
    FifoData1
       (.I0(FifoData2),
        .I1(p_0_in2_in),
        .I2(Pulse1_Message[3]),
        .O(FifoData12_out));
  CARRY4 FifoData1_carry
       (.CI(1'b0),
        .CO({FifoData1_carry_n_0,FifoData1_carry_n_1,FifoData1_carry_n_2,FifoData1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData1_carry_O_UNCONNECTED[3:0]),
        .S({FifoData1_carry_i_1_n_0,FifoData1_carry_i_2_n_0,FifoData1_carry_i_3_n_0,FifoData1_carry_i_4_n_0}));
  CARRY4 FifoData1_carry__0
       (.CI(FifoData1_carry_n_0),
        .CO({NLW_FifoData1_carry__0_CO_UNCONNECTED[3],FifoData1__0,FifoData1_carry__0_n_2,FifoData1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,FifoData1_carry__0_i_1_n_0,FifoData1_carry__0_i_2_n_0,FifoData1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    FifoData1_carry__0_i_1
       (.I0(pulse2_message_last[18]),
        .I1(Pulse2_Message[18]),
        .O(FifoData1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry__0_i_2
       (.I0(Pulse2_Message[15]),
        .I1(pulse2_message_last[15]),
        .I2(pulse2_message_last[17]),
        .I3(Pulse2_Message[17]),
        .I4(pulse2_message_last[16]),
        .I5(Pulse2_Message[16]),
        .O(FifoData1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry__0_i_3
       (.I0(Pulse2_Message[12]),
        .I1(pulse2_message_last[12]),
        .I2(pulse2_message_last[14]),
        .I3(Pulse2_Message[14]),
        .I4(pulse2_message_last[13]),
        .I5(Pulse2_Message[13]),
        .O(FifoData1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry_i_1
       (.I0(Pulse2_Message[9]),
        .I1(pulse2_message_last[9]),
        .I2(pulse2_message_last[11]),
        .I3(Pulse2_Message[11]),
        .I4(pulse2_message_last[10]),
        .I5(Pulse2_Message[10]),
        .O(FifoData1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry_i_2
       (.I0(Pulse2_Message[6]),
        .I1(pulse2_message_last[6]),
        .I2(pulse2_message_last[8]),
        .I3(Pulse2_Message[8]),
        .I4(pulse2_message_last[7]),
        .I5(Pulse2_Message[7]),
        .O(FifoData1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry_i_3
       (.I0(Pulse2_Message[3]),
        .I1(p_0_in),
        .I2(pulse2_message_last[5]),
        .I3(Pulse2_Message[5]),
        .I4(pulse2_message_last[4]),
        .I5(Pulse2_Message[4]),
        .O(FifoData1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData1_carry_i_4
       (.I0(Pulse2_Message[0]),
        .I1(pulse2_message_last[0]),
        .I2(pulse2_message_last[2]),
        .I3(Pulse2_Message[2]),
        .I4(pulse2_message_last[1]),
        .I5(Pulse2_Message[1]),
        .O(FifoData1_carry_i_4_n_0));
  CARRY4 FifoData2_carry
       (.CI(1'b0),
        .CO({FifoData2_carry_n_0,FifoData2_carry_n_1,FifoData2_carry_n_2,FifoData2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData2_carry_O_UNCONNECTED[3:0]),
        .S({FifoData2_carry_i_1_n_0,FifoData2_carry_i_2_n_0,FifoData2_carry_i_3_n_0,FifoData2_carry_i_4_n_0}));
  CARRY4 FifoData2_carry__0
       (.CI(FifoData2_carry_n_0),
        .CO({NLW_FifoData2_carry__0_CO_UNCONNECTED[3],FifoData2,FifoData2_carry__0_n_2,FifoData2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_FifoData2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,FifoData2_carry__0_i_1_n_0,FifoData2_carry__0_i_2_n_0,FifoData2_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    FifoData2_carry__0_i_1
       (.I0(\pulse1_message_last_reg_n_0_[18] ),
        .I1(Pulse1_Message[18]),
        .O(FifoData2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry__0_i_2
       (.I0(Pulse1_Message[15]),
        .I1(\pulse1_message_last_reg_n_0_[15] ),
        .I2(\pulse1_message_last_reg_n_0_[17] ),
        .I3(Pulse1_Message[17]),
        .I4(\pulse1_message_last_reg_n_0_[16] ),
        .I5(Pulse1_Message[16]),
        .O(FifoData2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry__0_i_3
       (.I0(Pulse1_Message[12]),
        .I1(\pulse1_message_last_reg_n_0_[12] ),
        .I2(\pulse1_message_last_reg_n_0_[14] ),
        .I3(Pulse1_Message[14]),
        .I4(\pulse1_message_last_reg_n_0_[13] ),
        .I5(Pulse1_Message[13]),
        .O(FifoData2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_1
       (.I0(Pulse1_Message[9]),
        .I1(\pulse1_message_last_reg_n_0_[9] ),
        .I2(\pulse1_message_last_reg_n_0_[11] ),
        .I3(Pulse1_Message[11]),
        .I4(\pulse1_message_last_reg_n_0_[10] ),
        .I5(Pulse1_Message[10]),
        .O(FifoData2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_2
       (.I0(Pulse1_Message[6]),
        .I1(\pulse1_message_last_reg_n_0_[6] ),
        .I2(\pulse1_message_last_reg_n_0_[8] ),
        .I3(Pulse1_Message[8]),
        .I4(\pulse1_message_last_reg_n_0_[7] ),
        .I5(Pulse1_Message[7]),
        .O(FifoData2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_3
       (.I0(Pulse1_Message[3]),
        .I1(p_0_in2_in),
        .I2(\pulse1_message_last_reg_n_0_[5] ),
        .I3(Pulse1_Message[5]),
        .I4(\pulse1_message_last_reg_n_0_[4] ),
        .I5(Pulse1_Message[4]),
        .O(FifoData2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    FifoData2_carry_i_4
       (.I0(Pulse1_Message[0]),
        .I1(\pulse1_message_last_reg_n_0_[0] ),
        .I2(\pulse1_message_last_reg_n_0_[2] ),
        .I3(Pulse1_Message[2]),
        .I4(\pulse1_message_last_reg_n_0_[1] ),
        .I5(Pulse1_Message[1]),
        .O(FifoData2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[0]_i_1 
       (.I0(Pulse1_Message[0]),
        .I1(Pulse2_Message[0]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[10]_i_1 
       (.I0(Pulse1_Message[10]),
        .I1(Pulse2_Message[10]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[11]_i_1 
       (.I0(Pulse1_Message[11]),
        .I1(Pulse2_Message[11]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[12]_i_1 
       (.I0(Pulse1_Message[12]),
        .I1(Pulse2_Message[12]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[13]_i_1 
       (.I0(Pulse1_Message[13]),
        .I1(Pulse2_Message[13]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[14]_i_1 
       (.I0(Pulse1_Message[14]),
        .I1(Pulse2_Message[14]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[15]_i_1 
       (.I0(Pulse1_Message[15]),
        .I1(Pulse2_Message[15]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[16]_i_1 
       (.I0(Pulse1_Message[16]),
        .I1(Pulse2_Message[16]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[17]_i_1 
       (.I0(Pulse1_Message[17]),
        .I1(Pulse2_Message[17]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \FifoData[18]_i_1 
       (.I0(Pulse1_Message[3]),
        .I1(p_0_in2_in),
        .I2(FifoData2),
        .I3(Pulse2_Message[3]),
        .I4(p_0_in),
        .I5(FifoData1__0),
        .O(\FifoData[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[18]_i_2 
       (.I0(Pulse1_Message[18]),
        .I1(Pulse2_Message[18]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'h7)) 
    \FifoData[18]_i_3 
       (.I0(Reset),
        .I1(CPU_Rst),
        .O(\FifoData[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[1]_i_1 
       (.I0(Pulse1_Message[1]),
        .I1(Pulse2_Message[1]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[2]_i_1 
       (.I0(Pulse1_Message[2]),
        .I1(Pulse2_Message[2]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hEE2A)) 
    \FifoData[3]_i_1 
       (.I0(Pulse2_Message[3]),
        .I1(FifoData2),
        .I2(p_0_in2_in),
        .I3(Pulse1_Message[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[4]_i_1 
       (.I0(Pulse1_Message[4]),
        .I1(Pulse2_Message[4]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[5]_i_1 
       (.I0(Pulse1_Message[5]),
        .I1(Pulse2_Message[5]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[6]_i_1 
       (.I0(Pulse1_Message[6]),
        .I1(Pulse2_Message[6]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[7]_i_1 
       (.I0(Pulse1_Message[7]),
        .I1(Pulse2_Message[7]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[8]_i_1 
       (.I0(Pulse1_Message[8]),
        .I1(Pulse2_Message[8]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hACACACCC)) 
    \FifoData[9]_i_1 
       (.I0(Pulse1_Message[9]),
        .I1(Pulse2_Message[9]),
        .I2(FifoData2),
        .I3(p_0_in2_in),
        .I4(Pulse1_Message[3]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[0] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[0]),
        .Q(FifoData[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[10] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[10]),
        .Q(FifoData[10]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[11] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[11]),
        .Q(FifoData[11]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[12] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[12]),
        .Q(FifoData[12]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[13] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[13]),
        .Q(FifoData[13]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[14] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[14]),
        .Q(FifoData[14]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[15] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[15]),
        .Q(FifoData[15]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[16] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[16]),
        .Q(FifoData[16]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[17] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[17]),
        .Q(FifoData[17]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[18] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[18]),
        .Q(FifoData[18]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[1] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[1]),
        .Q(FifoData[1]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[2] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[2]),
        .Q(FifoData[2]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[3] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[3]),
        .Q(FifoData[3]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[4] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[4]),
        .Q(FifoData[4]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[5] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[5]),
        .Q(FifoData[5]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[6] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[6]),
        .Q(FifoData[6]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[7] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[7]),
        .Q(FifoData[7]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[8] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[8]),
        .Q(FifoData[8]));
  FDCE #(
    .INIT(1'b0)) 
    \FifoData_reg[9] 
       (.C(Clk),
        .CE(\FifoData[18]_i_1_n_0 ),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(p_1_in[9]),
        .Q(FifoData[9]));
  FDCE #(
    .INIT(1'b0)) 
    FifoWrite_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(\FifoData[18]_i_1_n_0 ),
        .Q(FifoWrite));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[0] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[0]),
        .Q(\pulse1_message_last_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[10] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[10]),
        .Q(\pulse1_message_last_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[11] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[11]),
        .Q(\pulse1_message_last_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[12] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[12]),
        .Q(\pulse1_message_last_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[13] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[13]),
        .Q(\pulse1_message_last_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[14] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[14]),
        .Q(\pulse1_message_last_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[15] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[15]),
        .Q(\pulse1_message_last_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[16] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[16]),
        .Q(\pulse1_message_last_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[17] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[17]),
        .Q(\pulse1_message_last_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[18] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[18]),
        .Q(\pulse1_message_last_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[1] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[1]),
        .Q(\pulse1_message_last_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[2] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[2]),
        .Q(\pulse1_message_last_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[3] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[3]),
        .Q(p_0_in2_in));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[4] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[4]),
        .Q(\pulse1_message_last_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[5] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[5]),
        .Q(\pulse1_message_last_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[6] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[6]),
        .Q(\pulse1_message_last_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[7] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[7]),
        .Q(\pulse1_message_last_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[8] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[8]),
        .Q(\pulse1_message_last_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \pulse1_message_last_reg[9] 
       (.C(Clk),
        .CE(FifoData12_out),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse1_Message[9]),
        .Q(\pulse1_message_last_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h000000E0E0E0E0E0)) 
    \pulse2_message_last[18]_i_1 
       (.I0(Pulse2_Message[3]),
        .I1(p_0_in),
        .I2(FifoData1__0),
        .I3(Pulse1_Message[3]),
        .I4(p_0_in2_in),
        .I5(FifoData2),
        .O(pulse2_message_last_0));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[0] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[0]),
        .Q(pulse2_message_last[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[10] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[10]),
        .Q(pulse2_message_last[10]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[11] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[11]),
        .Q(pulse2_message_last[11]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[12] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[12]),
        .Q(pulse2_message_last[12]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[13] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[13]),
        .Q(pulse2_message_last[13]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[14] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[14]),
        .Q(pulse2_message_last[14]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[15] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[15]),
        .Q(pulse2_message_last[15]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[16] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[16]),
        .Q(pulse2_message_last[16]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[17] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[17]),
        .Q(pulse2_message_last[17]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[18] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[18]),
        .Q(pulse2_message_last[18]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[1] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[1]),
        .Q(pulse2_message_last[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[2] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[2]),
        .Q(pulse2_message_last[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[3] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[3]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[4] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[4]),
        .Q(pulse2_message_last[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[5] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[5]),
        .Q(pulse2_message_last[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[6] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[6]),
        .Q(pulse2_message_last[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[7] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[7]),
        .Q(pulse2_message_last[7]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[8] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[8]),
        .Q(pulse2_message_last[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pulse2_message_last_reg[9] 
       (.C(Clk),
        .CE(pulse2_message_last_0),
        .CLR(\FifoData[18]_i_3_n_0 ),
        .D(Pulse2_Message[9]),
        .Q(pulse2_message_last[9]));
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
