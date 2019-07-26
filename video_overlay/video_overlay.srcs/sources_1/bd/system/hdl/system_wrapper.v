//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Jul 26 17:59:51 2019
//Host        : DESKTOP-XPS running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    TMDS_0_clk_n,
    TMDS_0_clk_p,
    TMDS_0_data_n,
    TMDS_0_data_p,
    vid_data,
    vid_hsync,
    vid_iic_scl_io,
    vid_iic_sda_io,
    vid_pclk,
    vid_pwd,
    vid_rst,
    vid_vsync,
    vid_xclk);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output TMDS_0_clk_n;
  output TMDS_0_clk_p;
  output [2:0]TMDS_0_data_n;
  output [2:0]TMDS_0_data_p;
  input [7:0]vid_data;
  input vid_hsync;
  inout vid_iic_scl_io;
  inout vid_iic_sda_io;
  input vid_pclk;
  output [0:0]vid_pwd;
  output [0:0]vid_rst;
  input vid_vsync;
  output vid_xclk;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire TMDS_0_clk_n;
  wire TMDS_0_clk_p;
  wire [2:0]TMDS_0_data_n;
  wire [2:0]TMDS_0_data_p;
  wire [7:0]vid_data;
  wire vid_hsync;
  wire vid_iic_scl_i;
  wire vid_iic_scl_io;
  wire vid_iic_scl_o;
  wire vid_iic_scl_t;
  wire vid_iic_sda_i;
  wire vid_iic_sda_io;
  wire vid_iic_sda_o;
  wire vid_iic_sda_t;
  wire vid_pclk;
  wire [0:0]vid_pwd;
  wire [0:0]vid_rst;
  wire vid_vsync;
  wire vid_xclk;

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .TMDS_0_clk_n(TMDS_0_clk_n),
        .TMDS_0_clk_p(TMDS_0_clk_p),
        .TMDS_0_data_n(TMDS_0_data_n),
        .TMDS_0_data_p(TMDS_0_data_p),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_iic_scl_i(vid_iic_scl_i),
        .vid_iic_scl_o(vid_iic_scl_o),
        .vid_iic_scl_t(vid_iic_scl_t),
        .vid_iic_sda_i(vid_iic_sda_i),
        .vid_iic_sda_o(vid_iic_sda_o),
        .vid_iic_sda_t(vid_iic_sda_t),
        .vid_pclk(vid_pclk),
        .vid_pwd(vid_pwd),
        .vid_rst(vid_rst),
        .vid_vsync(vid_vsync),
        .vid_xclk(vid_xclk));
  IOBUF vid_iic_scl_iobuf
       (.I(vid_iic_scl_o),
        .IO(vid_iic_scl_io),
        .O(vid_iic_scl_i),
        .T(vid_iic_scl_t));
  IOBUF vid_iic_sda_iobuf
       (.I(vid_iic_sda_o),
        .IO(vid_iic_sda_io),
        .O(vid_iic_sda_i),
        .T(vid_iic_sda_t));
endmodule
