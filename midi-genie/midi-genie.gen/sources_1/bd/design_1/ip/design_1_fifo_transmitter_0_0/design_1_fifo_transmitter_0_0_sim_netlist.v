// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Tue Jan  9 23:57:22 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_fifo_transmitter_0_0/design_1_fifo_transmitter_0_0_sim_netlist.v
// Design      : design_1_fifo_transmitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_transmitter_0_0,fifo_transmitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo_transmitter,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_fifo_transmitter_0_0
   (Clk,
    Reset,
    FifoData,
    FifoEmpty,
    FifoRead,
    Midi);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [25:0]FifoData;
  input FifoEmpty;
  output FifoRead;
  output Midi;

  wire Clk;
  wire [25:0]FifoData;
  wire FifoEmpty;
  wire FifoRead;
  wire Midi;
  wire Reset;

  design_1_fifo_transmitter_0_0_fifo_transmitter inst
       (.Clk(Clk),
        .FifoData(FifoData),
        .FifoEmpty(FifoEmpty),
        .Midi(Midi),
        .Reset(Reset),
        .read_buf_reg_0(FifoRead));
endmodule

(* ORIG_REF_NAME = "fifo_transmitter" *) 
module design_1_fifo_transmitter_0_0_fifo_transmitter
   (read_buf_reg_0,
    Midi,
    Clk,
    FifoData,
    Reset,
    FifoEmpty);
  output read_buf_reg_0;
  output Midi;
  input Clk;
  input [25:0]FifoData;
  input Reset;
  input FifoEmpty;

  wire Clk;
  wire [25:0]FifoData;
  wire FifoEmpty;
  wire Midi;
  wire Midi0_out;
  wire Midi_i_10_n_0;
  wire Midi_i_13_n_0;
  wire Midi_i_14_n_0;
  wire Midi_i_15_n_0;
  wire Midi_i_16_n_0;
  wire Midi_i_1_n_0;
  wire Midi_i_3_n_0;
  wire Midi_i_5_n_0;
  wire Midi_i_6_n_0;
  wire Midi_i_7_n_0;
  wire Midi_i_8_n_0;
  wire Midi_i_9_n_0;
  wire Midi_reg_i_11_n_0;
  wire Midi_reg_i_12_n_0;
  wire Midi_reg_i_4_n_0;
  wire Reset;
  wire [3:0]bitnum;
  wire bytenum;
  wire [11:0]counter;
  wire [11:1]counter2;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__1_n_2;
  wire counter2_carry__1_n_3;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire p_0_in;
  wire p_1_in;
  wire [11:0]p_2_in;
  wire \procTransmit.bitnum[0]_i_1_n_0 ;
  wire \procTransmit.bitnum[1]_i_1_n_0 ;
  wire \procTransmit.bitnum[2]_i_1_n_0 ;
  wire \procTransmit.bitnum[3]_i_1_n_0 ;
  wire \procTransmit.bytenum[0]_i_1_n_0 ;
  wire \procTransmit.bytenum[1]_i_1_n_0 ;
  wire \procTransmit.bytenum_reg_n_0_[0] ;
  wire \procTransmit.bytenum_reg_n_0_[1] ;
  wire \procTransmit.counter[11]_i_1_n_0 ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][0] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][1] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][2] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][3] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][4] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][5] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][6] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_0][7] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][0] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][1] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][2] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][3] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][4] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][5] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][6] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_1][7] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][0] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][1] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][2] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][3] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][4] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][5] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][6] ;
  wire \procTransmit.midi_rec_reg[byte_n_0_2][7] ;
  wire [1:0]\procTransmit.midi_rec_reg[numbytes] ;
  wire \procTransmit.midi_rec_reg[numbytes]0 ;
  wire read_buf_i_1_n_0;
  wire read_buf_i_3_n_0;
  wire read_buf_i_5_n_0;
  wire read_buf_i_6_n_0;
  wire read_buf_i_7_n_0;
  wire read_buf_reg_0;
  wire read_fifo;
  wire read_fifo_i_1_n_0;
  wire running;
  wire [3:2]NLW_counter2_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter2_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF00E0000000E0)) 
    Midi_i_1
       (.I0(FifoData[25]),
        .I1(FifoData[24]),
        .I2(read_fifo),
        .I3(read_buf_reg_0),
        .I4(running),
        .I5(Midi_i_3_n_0),
        .O(Midi_i_1_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_10
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_2][0] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_2][1] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_2][2] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_2][3] ),
        .O(Midi_i_10_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_13
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_0][4] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_0][5] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_0][6] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_0][7] ),
        .O(Midi_i_13_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_14
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_0][0] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_0][1] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_0][2] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_0][3] ),
        .O(Midi_i_14_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_15
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_1][4] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_1][5] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_1][6] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_1][7] ),
        .O(Midi_i_15_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_16
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_1][0] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_1][1] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_1][2] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_1][3] ),
        .O(Midi_i_16_n_0));
  LUT5 #(
    .INIT(32'h0000FBF8)) 
    Midi_i_2
       (.I0(Midi_reg_i_4_n_0),
        .I1(\procTransmit.bytenum_reg_n_0_[1] ),
        .I2(Midi_i_5_n_0),
        .I3(Midi_i_6_n_0),
        .I4(Midi_i_7_n_0),
        .O(Midi0_out));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    Midi_i_3
       (.I0(counter[0]),
        .I1(counter2[7]),
        .I2(counter2[9]),
        .I3(counter2[6]),
        .I4(read_buf_i_6_n_0),
        .I5(read_buf_i_5_n_0),
        .O(Midi_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    Midi_i_5
       (.I0(bitnum[1]),
        .I1(bitnum[0]),
        .I2(bitnum[3]),
        .I3(bitnum[2]),
        .O(Midi_i_5_n_0));
  LUT3 #(
    .INIT(8'hE4)) 
    Midi_i_6
       (.I0(\procTransmit.bytenum_reg_n_0_[0] ),
        .I1(Midi_reg_i_11_n_0),
        .I2(Midi_reg_i_12_n_0),
        .O(Midi_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    Midi_i_7
       (.I0(bitnum[2]),
        .I1(bitnum[3]),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(running),
        .O(Midi_i_7_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    Midi_i_8
       (.I0(bitnum[2]),
        .I1(bitnum[0]),
        .I2(bitnum[1]),
        .O(Midi_i_8_n_0));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    Midi_i_9
       (.I0(\procTransmit.midi_rec_reg[byte_n_0_2][4] ),
        .I1(\procTransmit.midi_rec_reg[byte_n_0_2][5] ),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(\procTransmit.midi_rec_reg[byte_n_0_2][6] ),
        .I5(\procTransmit.midi_rec_reg[byte_n_0_2][7] ),
        .O(Midi_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    Midi_reg
       (.C(Clk),
        .CE(Midi_i_1_n_0),
        .D(Midi0_out),
        .PRE(p_0_in),
        .Q(Midi));
  MUXF7 Midi_reg_i_11
       (.I0(Midi_i_13_n_0),
        .I1(Midi_i_14_n_0),
        .O(Midi_reg_i_11_n_0),
        .S(Midi_i_8_n_0));
  MUXF7 Midi_reg_i_12
       (.I0(Midi_i_15_n_0),
        .I1(Midi_i_16_n_0),
        .O(Midi_reg_i_12_n_0),
        .S(Midi_i_8_n_0));
  MUXF7 Midi_reg_i_4
       (.I0(Midi_i_9_n_0),
        .I1(Midi_i_10_n_0),
        .O(Midi_reg_i_4_n_0),
        .S(Midi_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry
       (.CI(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter2[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter2[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CO({NLW_counter2_carry__1_CO_UNCONNECTED[3:2],counter2_carry__1_n_2,counter2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter2_carry__1_O_UNCONNECTED[3],counter2[11:9]}),
        .S({1'b0,counter[11:9]}));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \procTransmit.bitnum[0]_i_1 
       (.I0(running),
        .I1(bitnum[0]),
        .O(\procTransmit.bitnum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0BF00000)) 
    \procTransmit.bitnum[1]_i_1 
       (.I0(bitnum[2]),
        .I1(bitnum[3]),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(running),
        .O(\procTransmit.bitnum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \procTransmit.bitnum[2]_i_1 
       (.I0(running),
        .I1(bitnum[1]),
        .I2(bitnum[0]),
        .I3(bitnum[2]),
        .O(\procTransmit.bitnum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h68CC0000)) 
    \procTransmit.bitnum[3]_i_1 
       (.I0(bitnum[2]),
        .I1(bitnum[3]),
        .I2(bitnum[1]),
        .I3(bitnum[0]),
        .I4(running),
        .O(\procTransmit.bitnum[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bitnum_reg[0] 
       (.C(Clk),
        .CE(Midi_i_1_n_0),
        .CLR(p_0_in),
        .D(\procTransmit.bitnum[0]_i_1_n_0 ),
        .Q(bitnum[0]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bitnum_reg[1] 
       (.C(Clk),
        .CE(Midi_i_1_n_0),
        .CLR(p_0_in),
        .D(\procTransmit.bitnum[1]_i_1_n_0 ),
        .Q(bitnum[1]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bitnum_reg[2] 
       (.C(Clk),
        .CE(Midi_i_1_n_0),
        .CLR(p_0_in),
        .D(\procTransmit.bitnum[2]_i_1_n_0 ),
        .Q(bitnum[2]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bitnum_reg[3] 
       (.C(Clk),
        .CE(Midi_i_1_n_0),
        .CLR(p_0_in),
        .D(\procTransmit.bitnum[3]_i_1_n_0 ),
        .Q(bitnum[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FFBE00)) 
    \procTransmit.bytenum[0]_i_1 
       (.I0(\procTransmit.midi_rec_reg[numbytes] [0]),
        .I1(\procTransmit.bytenum_reg_n_0_[1] ),
        .I2(\procTransmit.midi_rec_reg[numbytes] [1]),
        .I3(bytenum),
        .I4(\procTransmit.bytenum_reg_n_0_[0] ),
        .O(\procTransmit.bytenum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45FFA200)) 
    \procTransmit.bytenum[1]_i_1 
       (.I0(\procTransmit.bytenum_reg_n_0_[0] ),
        .I1(\procTransmit.midi_rec_reg[numbytes] [0]),
        .I2(\procTransmit.midi_rec_reg[numbytes] [1]),
        .I3(bytenum),
        .I4(\procTransmit.bytenum_reg_n_0_[1] ),
        .O(\procTransmit.bytenum[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bytenum_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\procTransmit.bytenum[0]_i_1_n_0 ),
        .Q(\procTransmit.bytenum_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.bytenum_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(\procTransmit.bytenum[1]_i_1_n_0 ),
        .Q(\procTransmit.bytenum_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'h7)) 
    \procTransmit.counter[0]_i_1 
       (.I0(running),
        .I1(counter[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \procTransmit.counter[10]_i_1 
       (.I0(counter2[10]),
        .I1(running),
        .I2(Midi_i_3_n_0),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hBABABAAA)) 
    \procTransmit.counter[11]_i_1 
       (.I0(running),
        .I1(read_buf_reg_0),
        .I2(read_fifo),
        .I3(FifoData[24]),
        .I4(FifoData[25]),
        .O(\procTransmit.counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \procTransmit.counter[11]_i_2 
       (.I0(counter2[11]),
        .I1(running),
        .I2(Midi_i_3_n_0),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[1]_i_1 
       (.I0(running),
        .I1(counter2[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[2]_i_1 
       (.I0(running),
        .I1(counter2[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[3]_i_1 
       (.I0(running),
        .I1(counter2[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[4]_i_1 
       (.I0(running),
        .I1(counter2[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[5]_i_1 
       (.I0(running),
        .I1(counter2[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[6]_i_1 
       (.I0(running),
        .I1(counter2[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \procTransmit.counter[7]_i_1 
       (.I0(counter2[7]),
        .I1(running),
        .I2(Midi_i_3_n_0),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[8]_i_1 
       (.I0(running),
        .I1(counter2[8]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procTransmit.counter[9]_i_1 
       (.I0(running),
        .I1(counter2[9]),
        .O(p_2_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[0] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[10] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[11] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[1] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[2] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[3] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[4] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[5] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[6] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[7] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[8] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.counter_reg[9] 
       (.C(Clk),
        .CE(\procTransmit.counter[11]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(p_2_in[9]),
        .Q(counter[9]));
  LUT4 #(
    .INIT(16'h0008)) 
    \procTransmit.midi_rec[numbytes][1]_i_1 
       (.I0(Reset),
        .I1(read_fifo),
        .I2(running),
        .I3(read_buf_reg_0),
        .O(\procTransmit.midi_rec_reg[numbytes]0 ));
  FDRE \procTransmit.midi_rec_reg[byte0][0] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[16]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][0] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][1] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[17]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][1] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][2] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[18]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][2] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][3] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[19]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][3] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][4] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[20]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][4] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][5] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[21]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][5] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][6] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[22]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][6] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte0][7] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[23]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_0][7] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][0] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[8]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][0] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][1] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[9]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][1] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][2] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[10]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][2] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][3] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[11]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][3] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][4] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[12]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][4] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][5] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[13]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][5] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][6] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[14]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][6] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte1][7] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[15]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_1][7] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][0] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[0]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][0] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][1] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[1]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][1] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][2] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[2]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][2] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][3] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[3]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][3] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][4] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[4]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][4] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][5] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[5]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][5] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][6] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[6]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][6] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[byte2][7] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[7]),
        .Q(\procTransmit.midi_rec_reg[byte_n_0_2][7] ),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[numbytes][0] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[24]),
        .Q(\procTransmit.midi_rec_reg[numbytes] [0]),
        .R(1'b0));
  FDRE \procTransmit.midi_rec_reg[numbytes][1] 
       (.C(Clk),
        .CE(\procTransmit.midi_rec_reg[numbytes]0 ),
        .D(FifoData[25]),
        .Q(\procTransmit.midi_rec_reg[numbytes] [1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2AA2AAAAAAAA2AA2)) 
    \procTransmit.running_i_1 
       (.I0(\procTransmit.counter[11]_i_1_n_0 ),
        .I1(bytenum),
        .I2(\procTransmit.midi_rec_reg[numbytes] [1]),
        .I3(\procTransmit.bytenum_reg_n_0_[1] ),
        .I4(\procTransmit.midi_rec_reg[numbytes] [0]),
        .I5(\procTransmit.bytenum_reg_n_0_[0] ),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \procTransmit.running_reg 
       (.C(Clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(p_1_in),
        .Q(running));
  LUT6 #(
    .INIT(64'hD1CCCCCCD181D181)) 
    read_buf_i_1
       (.I0(FifoEmpty),
        .I1(read_buf_reg_0),
        .I2(running),
        .I3(read_buf_i_3_n_0),
        .I4(bytenum),
        .I5(\procTransmit.counter[11]_i_1_n_0 ),
        .O(read_buf_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    read_buf_i_2
       (.I0(Reset),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h9009)) 
    read_buf_i_3
       (.I0(\procTransmit.midi_rec_reg[numbytes] [1]),
        .I1(\procTransmit.bytenum_reg_n_0_[1] ),
        .I2(\procTransmit.midi_rec_reg[numbytes] [0]),
        .I3(\procTransmit.bytenum_reg_n_0_[0] ),
        .O(read_buf_i_3_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    read_buf_i_4
       (.I0(read_buf_i_5_n_0),
        .I1(read_buf_i_6_n_0),
        .I2(read_buf_i_7_n_0),
        .I3(Midi_i_5_n_0),
        .I4(running),
        .O(bytenum));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    read_buf_i_5
       (.I0(counter2[1]),
        .I1(counter2[4]),
        .I2(counter2[11]),
        .I3(counter2[3]),
        .O(read_buf_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    read_buf_i_6
       (.I0(counter2[10]),
        .I1(counter2[8]),
        .I2(counter2[2]),
        .I3(counter2[5]),
        .O(read_buf_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    read_buf_i_7
       (.I0(counter2[6]),
        .I1(counter2[9]),
        .I2(counter2[7]),
        .I3(counter[0]),
        .O(read_buf_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_buf_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(read_buf_i_1_n_0),
        .Q(read_buf_reg_0));
  LUT4 #(
    .INIT(16'hAAE2)) 
    read_fifo_i_1
       (.I0(read_fifo),
        .I1(Reset),
        .I2(read_buf_reg_0),
        .I3(running),
        .O(read_fifo_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_fifo_reg
       (.C(Clk),
        .CE(1'b1),
        .D(read_fifo_i_1_n_0),
        .Q(read_fifo),
        .R(1'b0));
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
