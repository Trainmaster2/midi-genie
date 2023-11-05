// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov  5 15:11:23 2023
// Host        : TM2s-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Donald/Documents/git/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_nes_reset_0_0/design_1_nes_reset_0_0_sim_netlist.v
// Design      : design_1_nes_reset_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nes_reset_0_0,nes_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "nes_reset,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_nes_reset_0_0
   (Clk,
    Reset,
    M2,
    NES_rst,
    test,
    test2,
    test3,
    test4,
    test5,
    test6,
    test7);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input M2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 NES_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME NES_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output NES_rst;
  output [3:0]test;
  output test2;
  output test3;
  output test4;
  output [3:0]test5;
  output test6;
  output test7;

  wire \<const0> ;
  wire Clk;
  wire M2;
  wire NES_rst;
  wire Reset;
  wire test3;
  wire test4;
  wire test7;

  assign test[3] = \<const0> ;
  assign test[2] = \<const0> ;
  assign test[1] = \<const0> ;
  assign test[0] = \<const0> ;
  assign test2 = \<const0> ;
  assign test5[3] = \<const0> ;
  assign test5[2] = \<const0> ;
  assign test5[1] = \<const0> ;
  assign test5[0] = \<const0> ;
  assign test6 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_nes_reset_0_0_nes_reset inst
       (.Clk(Clk),
        .M2(M2),
        .NES_rst(NES_rst),
        .Reset(Reset),
        .test3(test3),
        .test4(test4),
        .test7(test7));
endmodule

(* ORIG_REF_NAME = "nes_reset" *) 
module design_1_nes_reset_0_0_nes_reset
   (NES_rst,
    test3,
    test4,
    test7,
    M2,
    Reset,
    Clk);
  output NES_rst;
  output test3;
  output test4;
  output test7;
  input M2;
  input Reset;
  input Clk;

  wire Clk;
  wire M2;
  wire NES_rst;
  wire NES_rst_i_1_n_0;
  wire NES_rst_i_2_n_0;
  wire NES_rst_i_3_n_0;
  wire NES_rst_i_4_n_0;
  wire Reset;
  wire ff2_i_1_n_0;
  wire p_0_in;
  wire \procDetect.count[0]_i_1_n_0 ;
  wire \procDetect.count[1]_i_1_n_0 ;
  wire \procDetect.count[2]_i_1_n_0 ;
  wire \procDetect.count[3]_i_1_n_0 ;
  wire \procDetect.count[4]_i_1_n_0 ;
  wire \procDetect.count[5]_i_1_n_0 ;
  wire \procDetect.count[5]_i_2_n_0 ;
  wire \procDetect.count[6]_i_1_n_0 ;
  wire \procDetect.count[6]_i_2_n_0 ;
  wire \procDetect.count[6]_i_3_n_0 ;
  wire [6:0]\procDetect.count_reg ;
  wire test3;
  wire test4;
  wire test7;

  LUT6 #(
    .INIT(64'hFEFF0000FE000000)) 
    NES_rst_i_1
       (.I0(\procDetect.count_reg [5]),
        .I1(\procDetect.count_reg [4]),
        .I2(NES_rst_i_3_n_0),
        .I3(M2),
        .I4(NES_rst_i_4_n_0),
        .I5(NES_rst),
        .O(NES_rst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    NES_rst_i_2
       (.I0(Reset),
        .O(NES_rst_i_2_n_0));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    NES_rst_i_3
       (.I0(\procDetect.count_reg [6]),
        .I1(\procDetect.count_reg [2]),
        .I2(\procDetect.count_reg [0]),
        .I3(\procDetect.count_reg [1]),
        .I4(\procDetect.count_reg [3]),
        .O(NES_rst_i_3_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    NES_rst_i_4
       (.I0(\procDetect.count_reg [2]),
        .I1(\procDetect.count_reg [3]),
        .I2(\procDetect.count_reg [4]),
        .I3(\procDetect.count_reg [6]),
        .I4(\procDetect.count_reg [5]),
        .O(NES_rst_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    NES_rst_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(NES_rst_i_2_n_0),
        .D(NES_rst_i_1_n_0),
        .Q(NES_rst));
  LUT1 #(
    .INIT(2'h1)) 
    ff1_i_1
       (.I0(test3),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(test3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    ff2_i_1
       (.I0(test4),
        .O(ff2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(M2),
        .CE(1'b1),
        .D(ff2_i_1_n_0),
        .Q(test4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \procDetect.count[0]_i_1 
       (.I0(\procDetect.count_reg [0]),
        .I1(M2),
        .O(\procDetect.count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \procDetect.count[1]_i_1 
       (.I0(\procDetect.count_reg [1]),
        .I1(\procDetect.count_reg [0]),
        .I2(M2),
        .O(\procDetect.count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \procDetect.count[2]_i_1 
       (.I0(\procDetect.count_reg [2]),
        .I1(\procDetect.count_reg [1]),
        .I2(\procDetect.count_reg [0]),
        .I3(M2),
        .O(\procDetect.count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \procDetect.count[3]_i_1 
       (.I0(\procDetect.count_reg [3]),
        .I1(\procDetect.count_reg [2]),
        .I2(\procDetect.count_reg [0]),
        .I3(\procDetect.count_reg [1]),
        .I4(M2),
        .O(\procDetect.count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \procDetect.count[4]_i_1 
       (.I0(\procDetect.count_reg [4]),
        .I1(\procDetect.count_reg [3]),
        .I2(\procDetect.count_reg [1]),
        .I3(\procDetect.count_reg [0]),
        .I4(\procDetect.count_reg [2]),
        .I5(M2),
        .O(\procDetect.count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \procDetect.count[5]_i_1 
       (.I0(\procDetect.count_reg [5]),
        .I1(\procDetect.count_reg [4]),
        .I2(\procDetect.count_reg [2]),
        .I3(\procDetect.count[5]_i_2_n_0 ),
        .I4(\procDetect.count_reg [3]),
        .I5(M2),
        .O(\procDetect.count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \procDetect.count[5]_i_2 
       (.I0(\procDetect.count_reg [1]),
        .I1(\procDetect.count_reg [0]),
        .O(\procDetect.count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFBFFF)) 
    \procDetect.count[6]_i_1 
       (.I0(M2),
        .I1(\procDetect.count_reg [5]),
        .I2(\procDetect.count_reg [6]),
        .I3(\procDetect.count_reg [4]),
        .I4(\procDetect.count_reg [3]),
        .I5(\procDetect.count_reg [2]),
        .O(\procDetect.count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \procDetect.count[6]_i_2 
       (.I0(\procDetect.count_reg [6]),
        .I1(\procDetect.count_reg [5]),
        .I2(\procDetect.count[6]_i_3_n_0 ),
        .I3(M2),
        .O(\procDetect.count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \procDetect.count[6]_i_3 
       (.I0(\procDetect.count_reg [4]),
        .I1(\procDetect.count_reg [2]),
        .I2(\procDetect.count_reg [0]),
        .I3(\procDetect.count_reg [1]),
        .I4(\procDetect.count_reg [3]),
        .O(\procDetect.count[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[0] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[0]_i_1_n_0 ),
        .Q(\procDetect.count_reg [0]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[1] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[1]_i_1_n_0 ),
        .Q(\procDetect.count_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[2] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[2]_i_1_n_0 ),
        .Q(\procDetect.count_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[3] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[3]_i_1_n_0 ),
        .Q(\procDetect.count_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[4] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[4]_i_1_n_0 ),
        .Q(\procDetect.count_reg [4]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[5] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[5]_i_1_n_0 ),
        .Q(\procDetect.count_reg [5]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[6] 
       (.C(Clk),
        .CE(\procDetect.count[6]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[6]_i_2_n_0 ),
        .Q(\procDetect.count_reg [6]));
  FDRE #(
    .INIT(1'b0)) 
    test7_reg
       (.C(M2),
        .CE(1'b1),
        .D(1'b1),
        .Q(test7),
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
