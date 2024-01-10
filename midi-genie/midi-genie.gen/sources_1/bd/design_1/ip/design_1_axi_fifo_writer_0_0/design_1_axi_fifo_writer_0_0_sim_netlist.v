// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Tue Jan  9 21:36:22 2024
// Host        : tm2-pavilion-popos running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_fifo_writer_0_0 -prefix
//               design_1_axi_fifo_writer_0_0_ design_1_axi_fifo_writer_0_0_sim_netlist.v
// Design      : design_1_axi_fifo_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_fifo_writer_0_0_axi_fifo_writer
   (FifoData,
    FifoWrite,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_RVALID,
    D,
    S_AXI_ACLK,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID);
  output [25:0]FifoData;
  output FifoWrite;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  input [29:0]D;
  input S_AXI_ACLK;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;

  wire [29:0]D;
  wire [25:0]FifoData;
  wire FifoWrite;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [25:0]apply_wstrb;
  wire axi_write_ready;
  wire \fifoValue[24]_i_1_n_0 ;
  wire \fifoValue[25]_i_1_n_0 ;
  wire instSkidAR_n_2;
  wire instSkidAW_n_0;
  wire instSkidW_n_1;
  wire instSkidW_n_29;
  wire instSkidW_n_30;
  wire instSkidW_n_31;
  wire instSkidW_n_32;
  wire instSkidW_n_34;
  wire r_valid;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    FifoWrite_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_write_ready),
        .Q(FifoWrite),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidW_n_34),
        .Q(S_AXI_BVALID),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    axi_read_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(instSkidAR_n_2),
        .Q(S_AXI_RVALID),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \fifoValue[24]_i_1 
       (.I0(apply_wstrb[24]),
        .I1(instSkidW_n_29),
        .I2(instSkidW_n_1),
        .I3(instSkidAW_n_0),
        .I4(FifoData[24]),
        .O(\fifoValue[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \fifoValue[25]_i_1 
       (.I0(apply_wstrb[25]),
        .I1(instSkidW_n_29),
        .I2(instSkidW_n_1),
        .I3(instSkidAW_n_0),
        .I4(FifoData[25]),
        .O(\fifoValue[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[0]),
        .Q(FifoData[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[10]),
        .Q(FifoData[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[11]),
        .Q(FifoData[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[12]),
        .Q(FifoData[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[13]),
        .Q(FifoData[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[14]),
        .Q(FifoData[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[15]),
        .Q(FifoData[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[16]),
        .Q(FifoData[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[17]),
        .Q(FifoData[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[18]),
        .Q(FifoData[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[19]),
        .Q(FifoData[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[1]),
        .Q(FifoData[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[20]),
        .Q(FifoData[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[21]),
        .Q(FifoData[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[22]),
        .Q(FifoData[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_30),
        .D(apply_wstrb[23]),
        .Q(FifoData[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\fifoValue[24]_i_1_n_0 ),
        .Q(FifoData[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\fifoValue[25]_i_1_n_0 ),
        .Q(FifoData[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[2]),
        .Q(FifoData[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[3]),
        .Q(FifoData[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[4]),
        .Q(FifoData[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[5]),
        .Q(FifoData[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[6]),
        .Q(FifoData[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_32),
        .D(apply_wstrb[7]),
        .Q(FifoData[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[8]),
        .Q(FifoData[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \fifoValue_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(instSkidW_n_31),
        .D(apply_wstrb[9]),
        .Q(FifoData[9]),
        .R(reset));
  design_1_axi_fifo_writer_0_0_axi_skid_buf instSkidAR
       (.SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_ARVALID_0(instSkidAR_n_2),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID));
  design_1_axi_fifo_writer_0_0_axi_skid_buf_0 instSkidAW
       (.SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BREADY_0(instSkidAW_n_0),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_WVALID(S_AXI_WVALID),
        .r_valid(r_valid));
  design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0 instSkidW
       (.D(D),
        .E({instSkidW_n_30,instSkidW_n_31,instSkidW_n_32}),
        .SR(reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(instSkidW_n_1),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BREADY_0(instSkidW_n_34),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .apply_wstrb(apply_wstrb),
        .axi_write_ready(axi_write_ready),
        .\fifoValue_reg[23] (instSkidAW_n_0),
        .\r_data_reg[3]_0 (instSkidW_n_29),
        .r_valid(r_valid));
endmodule

module design_1_axi_fifo_writer_0_0_axi_skid_buf
   (SR,
    S_AXI_ARREADY,
    S_AXI_ARVALID_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_RREADY,
    S_AXI_RVALID,
    S_AXI_ARVALID);
  output [0:0]SR;
  output S_AXI_ARREADY;
  output S_AXI_ARVALID_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_RREADY;
  input S_AXI_RVALID;
  input S_AXI_ARVALID;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_ARVALID_0;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire r_valid;
  wire r_valid_i_1__1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_ARREADY));
  LUT1 #(
    .INIT(2'h1)) 
    axi_bvalid_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    axi_read_valid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(r_valid),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(S_AXI_ARVALID_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    r_valid_i_1__1
       (.I0(S_AXI_RREADY),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARVALID),
        .I3(r_valid),
        .O(r_valid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1__1_n_0),
        .Q(r_valid),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_fifo_writer_0_0_axi_skid_buf_0
   (S_AXI_BREADY_0,
    S_AXI_AWREADY,
    SR,
    S_AXI_ACLK,
    S_AXI_BREADY,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    r_valid);
  output S_AXI_BREADY_0;
  output S_AXI_AWREADY;
  input [0:0]SR;
  input S_AXI_ACLK;
  input S_AXI_BREADY;
  input S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input r_valid;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BREADY_0;
  wire S_AXI_BVALID;
  wire S_AXI_WVALID;
  wire r_valid;
  wire r_valid_0;
  wire r_valid_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AWREADY_INST_0
       (.I0(r_valid_0),
        .O(S_AXI_AWREADY));
  LUT4 #(
    .INIT(16'h444F)) 
    axi_bvalid_i_3
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_AWVALID),
        .I3(r_valid_0),
        .O(S_AXI_BREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEEE000E)) 
    r_valid_i_1
       (.I0(r_valid_0),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(r_valid),
        .I4(S_AXI_BREADY_0),
        .O(r_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1_n_0),
        .Q(r_valid_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_skid_buf" *) 
module design_1_axi_fifo_writer_0_0_axi_skid_buf__parameterized0
   (r_valid,
    S_AXI_ARESETN_0,
    S_AXI_WREADY,
    apply_wstrb,
    \r_data_reg[3]_0 ,
    E,
    axi_write_ready,
    S_AXI_BREADY_0,
    SR,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    D,
    \fifoValue_reg[23] ,
    S_AXI_BREADY,
    S_AXI_BVALID);
  output r_valid;
  output S_AXI_ARESETN_0;
  output S_AXI_WREADY;
  output [25:0]apply_wstrb;
  output \r_data_reg[3]_0 ;
  output [2:0]E;
  output axi_write_ready;
  output S_AXI_BREADY_0;
  input [0:0]SR;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input [29:0]D;
  input \fifoValue_reg[23] ;
  input S_AXI_BREADY;
  input S_AXI_BVALID;

  wire [29:0]D;
  wire [2:0]E;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_BREADY;
  wire S_AXI_BREADY_0;
  wire S_AXI_BVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [25:0]apply_wstrb;
  wire axi_write_ready;
  wire \fifoValue_reg[23] ;
  wire \r_data_reg[3]_0 ;
  wire \r_data_reg_n_0_[0] ;
  wire \r_data_reg_n_0_[10] ;
  wire \r_data_reg_n_0_[11] ;
  wire \r_data_reg_n_0_[12] ;
  wire \r_data_reg_n_0_[13] ;
  wire \r_data_reg_n_0_[14] ;
  wire \r_data_reg_n_0_[15] ;
  wire \r_data_reg_n_0_[16] ;
  wire \r_data_reg_n_0_[17] ;
  wire \r_data_reg_n_0_[18] ;
  wire \r_data_reg_n_0_[19] ;
  wire \r_data_reg_n_0_[1] ;
  wire \r_data_reg_n_0_[20] ;
  wire \r_data_reg_n_0_[21] ;
  wire \r_data_reg_n_0_[22] ;
  wire \r_data_reg_n_0_[23] ;
  wire \r_data_reg_n_0_[24] ;
  wire \r_data_reg_n_0_[25] ;
  wire \r_data_reg_n_0_[26] ;
  wire \r_data_reg_n_0_[27] ;
  wire \r_data_reg_n_0_[28] ;
  wire \r_data_reg_n_0_[29] ;
  wire \r_data_reg_n_0_[2] ;
  wire \r_data_reg_n_0_[3] ;
  wire \r_data_reg_n_0_[4] ;
  wire \r_data_reg_n_0_[5] ;
  wire \r_data_reg_n_0_[6] ;
  wire \r_data_reg_n_0_[7] ;
  wire \r_data_reg_n_0_[8] ;
  wire \r_data_reg_n_0_[9] ;
  wire r_valid;
  wire r_valid_i_1__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    FifoWrite_i_1
       (.I0(S_AXI_WVALID),
        .I1(r_valid),
        .I2(\fifoValue_reg[23] ),
        .O(axi_write_ready));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_WREADY_INST_0
       (.I0(r_valid),
        .O(S_AXI_WREADY));
  LUT5 #(
    .INIT(32'h55FD00FC)) 
    axi_bvalid_i_2
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(r_valid),
        .I3(\fifoValue_reg[23] ),
        .I4(S_AXI_BVALID),
        .O(S_AXI_BREADY_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[0]_i_1 
       (.I0(\r_data_reg_n_0_[4] ),
        .I1(r_valid),
        .I2(D[4]),
        .O(apply_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[10]_i_1 
       (.I0(\r_data_reg_n_0_[14] ),
        .I1(r_valid),
        .I2(D[14]),
        .O(apply_wstrb[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[11]_i_1 
       (.I0(\r_data_reg_n_0_[15] ),
        .I1(r_valid),
        .I2(D[15]),
        .O(apply_wstrb[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[12]_i_1 
       (.I0(\r_data_reg_n_0_[16] ),
        .I1(r_valid),
        .I2(D[16]),
        .O(apply_wstrb[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[13]_i_1 
       (.I0(\r_data_reg_n_0_[17] ),
        .I1(r_valid),
        .I2(D[17]),
        .O(apply_wstrb[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[14]_i_1 
       (.I0(\r_data_reg_n_0_[18] ),
        .I1(r_valid),
        .I2(D[18]),
        .O(apply_wstrb[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000CCA0)) 
    \fifoValue[15]_i_1 
       (.I0(D[1]),
        .I1(\r_data_reg_n_0_[1] ),
        .I2(S_AXI_WVALID),
        .I3(r_valid),
        .I4(\fifoValue_reg[23] ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[15]_i_2 
       (.I0(\r_data_reg_n_0_[19] ),
        .I1(r_valid),
        .I2(D[19]),
        .O(apply_wstrb[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[16]_i_1 
       (.I0(\r_data_reg_n_0_[20] ),
        .I1(r_valid),
        .I2(D[20]),
        .O(apply_wstrb[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[17]_i_1 
       (.I0(\r_data_reg_n_0_[21] ),
        .I1(r_valid),
        .I2(D[21]),
        .O(apply_wstrb[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[18]_i_1 
       (.I0(\r_data_reg_n_0_[22] ),
        .I1(r_valid),
        .I2(D[22]),
        .O(apply_wstrb[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[19]_i_1 
       (.I0(\r_data_reg_n_0_[23] ),
        .I1(r_valid),
        .I2(D[23]),
        .O(apply_wstrb[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[1]_i_1 
       (.I0(\r_data_reg_n_0_[5] ),
        .I1(r_valid),
        .I2(D[5]),
        .O(apply_wstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[20]_i_1 
       (.I0(\r_data_reg_n_0_[24] ),
        .I1(r_valid),
        .I2(D[24]),
        .O(apply_wstrb[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[21]_i_1 
       (.I0(\r_data_reg_n_0_[25] ),
        .I1(r_valid),
        .I2(D[25]),
        .O(apply_wstrb[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[22]_i_1 
       (.I0(\r_data_reg_n_0_[26] ),
        .I1(r_valid),
        .I2(D[26]),
        .O(apply_wstrb[22]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000CCA0)) 
    \fifoValue[23]_i_1 
       (.I0(D[2]),
        .I1(\r_data_reg_n_0_[2] ),
        .I2(S_AXI_WVALID),
        .I3(r_valid),
        .I4(\fifoValue_reg[23] ),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[23]_i_2 
       (.I0(\r_data_reg_n_0_[27] ),
        .I1(r_valid),
        .I2(D[27]),
        .O(apply_wstrb[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[24]_i_2 
       (.I0(\r_data_reg_n_0_[28] ),
        .I1(r_valid),
        .I2(D[28]),
        .O(apply_wstrb[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[25]_i_2 
       (.I0(\r_data_reg_n_0_[29] ),
        .I1(r_valid),
        .I2(D[29]),
        .O(apply_wstrb[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[25]_i_3 
       (.I0(\r_data_reg_n_0_[3] ),
        .I1(r_valid),
        .I2(D[3]),
        .O(\r_data_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \fifoValue[25]_i_4 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_WVALID),
        .I2(r_valid),
        .O(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[2]_i_1 
       (.I0(\r_data_reg_n_0_[6] ),
        .I1(r_valid),
        .I2(D[6]),
        .O(apply_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[3]_i_1 
       (.I0(\r_data_reg_n_0_[7] ),
        .I1(r_valid),
        .I2(D[7]),
        .O(apply_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[4]_i_1 
       (.I0(\r_data_reg_n_0_[8] ),
        .I1(r_valid),
        .I2(D[8]),
        .O(apply_wstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[5]_i_1 
       (.I0(\r_data_reg_n_0_[9] ),
        .I1(r_valid),
        .I2(D[9]),
        .O(apply_wstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[6]_i_1 
       (.I0(\r_data_reg_n_0_[10] ),
        .I1(r_valid),
        .I2(D[10]),
        .O(apply_wstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000CCA0)) 
    \fifoValue[7]_i_1 
       (.I0(D[0]),
        .I1(\r_data_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(r_valid),
        .I4(\fifoValue_reg[23] ),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[7]_i_2 
       (.I0(\r_data_reg_n_0_[11] ),
        .I1(r_valid),
        .I2(D[11]),
        .O(apply_wstrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[8]_i_1 
       (.I0(\r_data_reg_n_0_[12] ),
        .I1(r_valid),
        .I2(D[12]),
        .O(apply_wstrb[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifoValue[9]_i_1 
       (.I0(\r_data_reg_n_0_[13] ),
        .I1(r_valid),
        .I2(D[13]),
        .O(apply_wstrb[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[0]),
        .Q(\r_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[10]),
        .Q(\r_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[11]),
        .Q(\r_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[12]),
        .Q(\r_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[13]),
        .Q(\r_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[14]),
        .Q(\r_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[15]),
        .Q(\r_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[16]),
        .Q(\r_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[17]),
        .Q(\r_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[18]),
        .Q(\r_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[19]),
        .Q(\r_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[1]),
        .Q(\r_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[20]),
        .Q(\r_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[21]),
        .Q(\r_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[22]),
        .Q(\r_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[23]),
        .Q(\r_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[24]),
        .Q(\r_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[25]),
        .Q(\r_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[26]),
        .Q(\r_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[27]),
        .Q(\r_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[28]),
        .Q(\r_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[29]),
        .Q(\r_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[2]),
        .Q(\r_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[3]),
        .Q(\r_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[4]),
        .Q(\r_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[5]),
        .Q(\r_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[6]),
        .Q(\r_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[7]),
        .Q(\r_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[8]),
        .Q(\r_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_data_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(r_valid),
        .D(D[9]),
        .Q(\r_data_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    r_valid_i_1__0
       (.I0(S_AXI_WVALID),
        .I1(r_valid),
        .I2(\fifoValue_reg[23] ),
        .O(r_valid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_valid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(r_valid_i_1__0_n_0),
        .Q(r_valid),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_fifo_writer_0_0,axi_fifo_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_fifo_writer,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module design_1_axi_fifo_writer_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_BRESP,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    FifoData,
    FifoWrite);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [2:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [2:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]S_AXI_RRESP;
  output [25:0]FifoData;
  output FifoWrite;

  wire \<const0> ;
  wire [25:0]FifoData;
  wire FifoWrite;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_fifo_writer_0_0_axi_fifo_writer inst
       (.D({S_AXI_WDATA[25:0],S_AXI_WSTRB}),
        .FifoData(FifoData),
        .FifoWrite(FifoWrite),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID));
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
