// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Thu Jan 11 13:22:20 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_vio_fifo_writer_0_0/design_1_vio_fifo_writer_0_0_sim_netlist.v
// Design      : design_1_vio_fifo_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vio_fifo_writer_0_0,vio_fifo_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vio_fifo_writer,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_vio_fifo_writer_0_0
   (Clk,
    VioData,
    VioWrite,
    FifoData,
    FifoWrite);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input Clk;
  input [14:0]VioData;
  input VioWrite;
  output [14:0]FifoData;
  output FifoWrite;

  wire Clk;
  wire [14:0]FifoData;
  wire FifoWrite;
  wire [14:0]VioData;
  wire VioWrite;

  design_1_vio_fifo_writer_0_0_vio_fifo_writer inst
       (.Clk(Clk),
        .FifoData(FifoData),
        .FifoWrite(FifoWrite),
        .VioData(VioData),
        .VioWrite(VioWrite));
endmodule

(* ORIG_REF_NAME = "vio_fifo_writer" *) 
module design_1_vio_fifo_writer_0_0_vio_fifo_writer
   (FifoData,
    FifoWrite,
    VioWrite,
    Clk,
    VioData);
  output [14:0]FifoData;
  output FifoWrite;
  input VioWrite;
  input Clk;
  input [14:0]VioData;

  wire Clk;
  wire [14:0]FifoData;
  wire \FifoData[14]_i_1_n_0 ;
  wire FifoWrite;
  wire [14:0]VioData;
  wire VioWrite;
  wire last_trig;

  LUT2 #(
    .INIT(4'h2)) 
    \FifoData[14]_i_1 
       (.I0(VioWrite),
        .I1(last_trig),
        .O(\FifoData[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[0] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[0]),
        .Q(FifoData[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[10] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[10]),
        .Q(FifoData[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[11] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[11]),
        .Q(FifoData[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[12] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[12]),
        .Q(FifoData[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[13] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[13]),
        .Q(FifoData[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[14] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[14]),
        .Q(FifoData[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[1] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[1]),
        .Q(FifoData[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[2] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[2]),
        .Q(FifoData[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[3] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[3]),
        .Q(FifoData[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[4] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[4]),
        .Q(FifoData[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[5] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[5]),
        .Q(FifoData[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[6] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[6]),
        .Q(FifoData[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[7] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[7]),
        .Q(FifoData[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[8] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[8]),
        .Q(FifoData[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FifoData_reg[9] 
       (.C(Clk),
        .CE(\FifoData[14]_i_1_n_0 ),
        .D(VioData[9]),
        .Q(FifoData[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    FifoWrite_reg
       (.C(Clk),
        .CE(1'b1),
        .D(\FifoData[14]_i_1_n_0 ),
        .Q(FifoWrite),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \procTrigger.last_trig_reg 
       (.C(Clk),
        .CE(1'b1),
        .D(VioWrite),
        .Q(last_trig),
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
