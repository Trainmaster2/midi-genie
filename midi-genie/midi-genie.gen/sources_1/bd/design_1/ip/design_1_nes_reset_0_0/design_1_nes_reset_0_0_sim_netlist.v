// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov  4 13:07:46 2023
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
    NES_rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input M2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 NES_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME NES_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output NES_rst;

  wire Clk;
  wire M2;
  wire NES_rst;
  wire Reset;

  design_1_nes_reset_0_0_nes_reset inst
       (.Clk(Clk),
        .M2(M2),
        .NES_rst(NES_rst),
        .Reset(Reset));
endmodule

(* ORIG_REF_NAME = "nes_reset" *) 
module design_1_nes_reset_0_0_nes_reset
   (NES_rst,
    M2,
    Reset,
    Clk);
  output NES_rst;
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
  wire [5:1]p_0_in;
  wire \procDetect.count[0]_i_1_n_0 ;
  wire \procDetect.count[5]_i_1_n_0 ;
  wire \procDetect.count[5]_i_3_n_0 ;
  wire [5:1]\procDetect.count_reg ;
  wire \procDetect.count_reg_n_0_[0] ;

  LUT4 #(
    .INIT(16'hEA2A)) 
    NES_rst_i_1
       (.I0(NES_rst_i_3_n_0),
        .I1(M2),
        .I2(NES_rst_i_4_n_0),
        .I3(NES_rst),
        .O(NES_rst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    NES_rst_i_2
       (.I0(Reset),
        .O(NES_rst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAABF)) 
    NES_rst_i_3
       (.I0(M2),
        .I1(\procDetect.count_reg [1]),
        .I2(\procDetect.count_reg [2]),
        .I3(\procDetect.count_reg [3]),
        .I4(\procDetect.count_reg [5]),
        .I5(\procDetect.count_reg [4]),
        .O(NES_rst_i_3_n_0));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    NES_rst_i_4
       (.I0(\procDetect.count_reg [1]),
        .I1(\procDetect.count_reg [2]),
        .I2(\procDetect.count_reg [3]),
        .I3(\procDetect.count_reg [5]),
        .I4(\procDetect.count_reg [4]),
        .O(NES_rst_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    NES_rst_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(NES_rst_i_2_n_0),
        .D(NES_rst_i_1_n_0),
        .Q(NES_rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \procDetect.count[0]_i_1 
       (.I0(M2),
        .I1(\procDetect.count_reg_n_0_[0] ),
        .O(\procDetect.count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \procDetect.count[1]_i_1 
       (.I0(\procDetect.count_reg [1]),
        .I1(\procDetect.count_reg_n_0_[0] ),
        .I2(M2),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \procDetect.count[2]_i_1 
       (.I0(\procDetect.count_reg [2]),
        .I1(\procDetect.count_reg [1]),
        .I2(\procDetect.count_reg_n_0_[0] ),
        .I3(M2),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \procDetect.count[3]_i_1 
       (.I0(\procDetect.count_reg [3]),
        .I1(\procDetect.count_reg [2]),
        .I2(\procDetect.count_reg_n_0_[0] ),
        .I3(\procDetect.count_reg [1]),
        .I4(M2),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \procDetect.count[4]_i_1 
       (.I0(\procDetect.count_reg [4]),
        .I1(\procDetect.count_reg [3]),
        .I2(\procDetect.count_reg [1]),
        .I3(\procDetect.count_reg_n_0_[0] ),
        .I4(\procDetect.count_reg [2]),
        .I5(M2),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7777777FFFFFFFFF)) 
    \procDetect.count[5]_i_1 
       (.I0(\procDetect.count_reg [4]),
        .I1(\procDetect.count_reg [5]),
        .I2(\procDetect.count_reg [3]),
        .I3(\procDetect.count_reg [2]),
        .I4(\procDetect.count_reg [1]),
        .I5(M2),
        .O(\procDetect.count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \procDetect.count[5]_i_2 
       (.I0(\procDetect.count_reg [5]),
        .I1(\procDetect.count_reg [4]),
        .I2(\procDetect.count[5]_i_3_n_0 ),
        .I3(M2),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \procDetect.count[5]_i_3 
       (.I0(\procDetect.count_reg [3]),
        .I1(\procDetect.count_reg [1]),
        .I2(\procDetect.count_reg_n_0_[0] ),
        .I3(\procDetect.count_reg [2]),
        .O(\procDetect.count[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[0] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(\procDetect.count[0]_i_1_n_0 ),
        .Q(\procDetect.count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[1] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(p_0_in[1]),
        .Q(\procDetect.count_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[2] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(p_0_in[2]),
        .Q(\procDetect.count_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[3] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(p_0_in[3]),
        .Q(\procDetect.count_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[4] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(p_0_in[4]),
        .Q(\procDetect.count_reg [4]));
  FDCE #(
    .INIT(1'b0)) 
    \procDetect.count_reg[5] 
       (.C(Clk),
        .CE(\procDetect.count[5]_i_1_n_0 ),
        .CLR(NES_rst_i_2_n_0),
        .D(p_0_in[5]),
        .Q(\procDetect.count_reg [5]));
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
