// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:nes_apu:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_nes_apu_0_0 (
  Clk,
  Reset,
  CPU_Clk,
  CPU_M2,
  CPU_Rst,
  CPU_Addr,
  CPU_Data,
  CPU_RomSel,
  CPU_RW,
  APU_Pulse1_Message,
  APU_Pulse2_Message,
  APU_Triangle_Message,
  APU_Noise_Message,
  APU_DMC_Message
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *)
input wire Clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *)
input wire Reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Clk, ASSOCIATED_RESET CPU_Rst, FREQ_HZ 21477272, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_nes_system_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CPU_Clk CLK" *)
input wire CPU_Clk;
input wire CPU_M2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPU_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CPU_Rst RST" *)
input wire CPU_Rst;
input wire [14 : 0] CPU_Addr;
input wire [7 : 0] CPU_Data;
input wire CPU_RomSel;
input wire CPU_RW;
output wire [18 : 0] APU_Pulse1_Message;
output wire [18 : 0] APU_Pulse2_Message;
output wire [14 : 0] APU_Triangle_Message;
output wire [13 : 0] APU_Noise_Message;
output wire [3 : 0] APU_DMC_Message;

  nes_apu inst (
    .Clk(Clk),
    .Reset(Reset),
    .CPU_Clk(CPU_Clk),
    .CPU_M2(CPU_M2),
    .CPU_Rst(CPU_Rst),
    .CPU_Addr(CPU_Addr),
    .CPU_Data(CPU_Data),
    .CPU_RomSel(CPU_RomSel),
    .CPU_RW(CPU_RW),
    .APU_Pulse1_Message(APU_Pulse1_Message),
    .APU_Pulse2_Message(APU_Pulse2_Message),
    .APU_Triangle_Message(APU_Triangle_Message),
    .APU_Noise_Message(APU_Noise_Message),
    .APU_DMC_Message(APU_DMC_Message)
  );
endmodule
