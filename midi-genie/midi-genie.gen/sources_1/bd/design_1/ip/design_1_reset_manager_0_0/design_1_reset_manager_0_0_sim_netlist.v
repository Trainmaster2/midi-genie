// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Thu Jan 18 12:06:48 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_reset_manager_0_0/design_1_reset_manager_0_0_sim_netlist.v
// Design      : design_1_reset_manager_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reset_manager_0_0,reset_manager,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "reset_manager,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_reset_manager_0_0
   (peripheral_aresetn,
    nes_reset,
    peripheral_areset,
    nes_resetn,
    dual_reset,
    dual_resetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input peripheral_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 nes_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME nes_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input nes_reset;
  output peripheral_areset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 nes_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME nes_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output nes_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dual_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dual_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output dual_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dual_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dual_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output dual_resetn;

  wire dual_reset;
  wire dual_resetn;
  wire nes_reset;
  wire nes_resetn;
  wire peripheral_areset;
  wire peripheral_aresetn;

  LUT2 #(
    .INIT(4'hB)) 
    dual_reset_INST_0
       (.I0(nes_reset),
        .I1(peripheral_aresetn),
        .O(dual_reset));
  LUT2 #(
    .INIT(4'h2)) 
    dual_resetn_INST_0
       (.I0(peripheral_aresetn),
        .I1(nes_reset),
        .O(dual_resetn));
  LUT1 #(
    .INIT(2'h1)) 
    nes_resetn_INST_0
       (.I0(nes_reset),
        .O(nes_resetn));
  LUT1 #(
    .INIT(2'h1)) 
    peripheral_areset_INST_0
       (.I0(peripheral_aresetn),
        .O(peripheral_areset));
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
