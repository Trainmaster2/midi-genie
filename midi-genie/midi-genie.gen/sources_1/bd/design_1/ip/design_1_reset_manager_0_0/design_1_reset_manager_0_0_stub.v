// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Thu Jan 18 12:06:48 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/trainmaster2/Documents/midi-genie/midi-genie/midi-genie.gen/sources_1/bd/design_1/ip/design_1_reset_manager_0_0/design_1_reset_manager_0_0_stub.v
// Design      : design_1_reset_manager_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reset_manager,Vivado 2022.2.2" *)
module design_1_reset_manager_0_0(peripheral_aresetn, nes_reset, 
  peripheral_areset, nes_resetn, dual_reset, dual_resetn)
/* synthesis syn_black_box black_box_pad_pin="peripheral_aresetn,nes_reset,peripheral_areset,nes_resetn,dual_reset,dual_resetn" */;
  input peripheral_aresetn;
  input nes_reset;
  output peripheral_areset;
  output nes_resetn;
  output dual_reset;
  output dual_resetn;
endmodule
