// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fast_ip,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.737000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=10,HLS_SYN_DSP=0,HLS_SYN_FF=6728,HLS_SYN_LUT=11880,HLS_VERSION=2018_2}" *)

module fast_ip (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        p_src_TDATA,
        p_src_TKEEP,
        p_src_TSTRB,
        p_src_TUSER,
        p_src_TLAST,
        p_src_TID,
        p_src_TDEST,
        p_dst_TDATA,
        p_dst_TKEEP,
        p_dst_TSTRB,
        p_dst_TUSER,
        p_dst_TLAST,
        p_dst_TID,
        p_dst_TDEST,
        p_src_TVALID,
        p_src_TREADY,
        p_dst_TVALID,
        p_dst_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [7:0] p_src_TDATA;
input  [0:0] p_src_TKEEP;
input  [0:0] p_src_TSTRB;
input  [0:0] p_src_TUSER;
input  [0:0] p_src_TLAST;
input  [0:0] p_src_TID;
input  [0:0] p_src_TDEST;
output  [7:0] p_dst_TDATA;
output  [0:0] p_dst_TKEEP;
output  [0:0] p_dst_TSTRB;
output  [0:0] p_dst_TUSER;
output  [0:0] p_dst_TLAST;
output  [0:0] p_dst_TID;
output  [0:0] p_dst_TDEST;
input   p_src_TVALID;
output   p_src_TREADY;
output   p_dst_TVALID;
input   p_dst_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] height;
wire   [31:0] width;
wire   [31:0] threshold;
wire    Block_Mat_exit51_pro_U0_ap_start;
wire    Block_Mat_exit51_pro_U0_ap_done;
wire    Block_Mat_exit51_pro_U0_ap_continue;
wire    Block_Mat_exit51_pro_U0_ap_idle;
wire    Block_Mat_exit51_pro_U0_ap_ready;
wire    Block_Mat_exit51_pro_U0_start_out;
wire    Block_Mat_exit51_pro_U0_start_write;
wire   [31:0] Block_Mat_exit51_pro_U0_imgInput1_rows_out_din;
wire    Block_Mat_exit51_pro_U0_imgInput1_rows_out_write;
wire   [31:0] Block_Mat_exit51_pro_U0_imgInput1_cols_out_din;
wire    Block_Mat_exit51_pro_U0_imgInput1_cols_out_write;
wire   [31:0] Block_Mat_exit51_pro_U0_imgOutput1_rows_out_din;
wire    Block_Mat_exit51_pro_U0_imgOutput1_rows_out_write;
wire   [31:0] Block_Mat_exit51_pro_U0_imgOutput1_cols_out_din;
wire    Block_Mat_exit51_pro_U0_imgOutput1_cols_out_write;
wire   [31:0] Block_Mat_exit51_pro_U0_threshold_out_din;
wire    Block_Mat_exit51_pro_U0_threshold_out_write;
wire    AXIvideo2xfMat_U0_ap_start;
wire    AXIvideo2xfMat_U0_ap_done;
wire    AXIvideo2xfMat_U0_ap_continue;
wire    AXIvideo2xfMat_U0_ap_idle;
wire    AXIvideo2xfMat_U0_ap_ready;
wire    AXIvideo2xfMat_U0_p_src_TREADY;
wire    AXIvideo2xfMat_U0_img_rows_read;
wire    AXIvideo2xfMat_U0_img_cols_read;
wire   [7:0] AXIvideo2xfMat_U0_img_data_V_din;
wire    AXIvideo2xfMat_U0_img_data_V_write;
wire   [31:0] AXIvideo2xfMat_U0_img_rows_out_din;
wire    AXIvideo2xfMat_U0_img_rows_out_write;
wire   [31:0] AXIvideo2xfMat_U0_img_cols_out_din;
wire    AXIvideo2xfMat_U0_img_cols_out_write;
wire    fast_accel_U0_ap_start;
wire    fast_accel_U0_ap_done;
wire    fast_accel_U0_ap_continue;
wire    fast_accel_U0_ap_idle;
wire    fast_accel_U0_ap_ready;
wire    fast_accel_U0_start_out;
wire    fast_accel_U0_start_write;
wire    fast_accel_U0_p_src_rows_read;
wire    fast_accel_U0_p_src_cols_read;
wire    fast_accel_U0_p_src_data_V_read;
wire    fast_accel_U0_imgOutput1_rows_read;
wire    fast_accel_U0_imgOutput1_cols_read;
wire   [7:0] fast_accel_U0_p_dst_data_V_din;
wire    fast_accel_U0_p_dst_data_V_write;
wire    fast_accel_U0_threshold_read;
wire   [31:0] fast_accel_U0_imgOutput1_rows_out_din;
wire    fast_accel_U0_imgOutput1_rows_out_write;
wire   [31:0] fast_accel_U0_imgOutput1_cols_out_din;
wire    fast_accel_U0_imgOutput1_cols_out_write;
wire    xfMat2AXIvideo_U0_ap_start;
wire    xfMat2AXIvideo_U0_ap_done;
wire    xfMat2AXIvideo_U0_ap_continue;
wire    xfMat2AXIvideo_U0_ap_idle;
wire    xfMat2AXIvideo_U0_ap_ready;
wire    xfMat2AXIvideo_U0_img_rows_read;
wire    xfMat2AXIvideo_U0_img_cols_read;
wire    xfMat2AXIvideo_U0_img_data_V_read;
wire   [7:0] xfMat2AXIvideo_U0_p_dst_TDATA;
wire    xfMat2AXIvideo_U0_p_dst_TVALID;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TKEEP;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TSTRB;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TUSER;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TLAST;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TID;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_TDEST;
wire    ap_sync_continue;
wire    imgInput1_rows_c_full_n;
wire   [31:0] imgInput1_rows_c_dout;
wire    imgInput1_rows_c_empty_n;
wire    imgInput1_cols_c_full_n;
wire   [31:0] imgInput1_cols_c_dout;
wire    imgInput1_cols_c_empty_n;
wire    imgOutput1_rows_c_full_n;
wire   [31:0] imgOutput1_rows_c_dout;
wire    imgOutput1_rows_c_empty_n;
wire    imgOutput1_cols_c_full_n;
wire   [31:0] imgOutput1_cols_c_dout;
wire    imgOutput1_cols_c_empty_n;
wire    threshold_c_full_n;
wire   [31:0] threshold_c_dout;
wire    threshold_c_empty_n;
wire    imgInput1_data_V_cha_full_n;
wire   [7:0] imgInput1_data_V_cha_dout;
wire    imgInput1_data_V_cha_empty_n;
wire    imgInput1_rows_c10_full_n;
wire   [31:0] imgInput1_rows_c10_dout;
wire    imgInput1_rows_c10_empty_n;
wire    imgInput1_cols_c11_full_n;
wire   [31:0] imgInput1_cols_c11_dout;
wire    imgInput1_cols_c11_empty_n;
wire    imgOutput1_data_V_ch_full_n;
wire   [7:0] imgOutput1_data_V_ch_dout;
wire    imgOutput1_data_V_ch_empty_n;
wire    imgOutput1_rows_c12_full_n;
wire   [31:0] imgOutput1_rows_c12_dout;
wire    imgOutput1_rows_c12_empty_n;
wire    imgOutput1_cols_c13_full_n;
wire   [31:0] imgOutput1_cols_c13_dout;
wire    imgOutput1_cols_c13_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_AXIvideo2xfMat_U0_ap_ready;
wire    ap_sync_AXIvideo2xfMat_U0_ap_ready;
reg   [1:0] AXIvideo2xfMat_U0_ap_ready_count;
reg    ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready;
wire    ap_sync_Block_Mat_exit51_pro_U0_ap_ready;
reg   [1:0] Block_Mat_exit51_pro_U0_ap_ready_count;
wire   [0:0] start_for_fast_accel_U0_din;
wire    start_for_fast_accel_U0_full_n;
wire   [0:0] start_for_fast_accel_U0_dout;
wire    start_for_fast_accel_U0_empty_n;
wire    AXIvideo2xfMat_U0_start_full_n;
wire    AXIvideo2xfMat_U0_start_write;
wire   [0:0] start_for_xfMat2AXIvideo_U0_din;
wire    start_for_xfMat2AXIvideo_U0_full_n;
wire   [0:0] start_for_xfMat2AXIvideo_U0_dout;
wire    start_for_xfMat2AXIvideo_U0_empty_n;
wire    xfMat2AXIvideo_U0_start_full_n;
wire    xfMat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_AXIvideo2xfMat_U0_ap_ready = 1'b0;
#0 AXIvideo2xfMat_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready = 1'b0;
#0 Block_Mat_exit51_pro_U0_ap_ready_count = 2'd0;
end

fast_ip_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
fast_ip_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .height(height),
    .width(width),
    .threshold(threshold)
);

Block_Mat_exit51_pro Block_Mat_exit51_pro_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Mat_exit51_pro_U0_ap_start),
    .start_full_n(start_for_fast_accel_U0_full_n),
    .ap_done(Block_Mat_exit51_pro_U0_ap_done),
    .ap_continue(Block_Mat_exit51_pro_U0_ap_continue),
    .ap_idle(Block_Mat_exit51_pro_U0_ap_idle),
    .ap_ready(Block_Mat_exit51_pro_U0_ap_ready),
    .start_out(Block_Mat_exit51_pro_U0_start_out),
    .start_write(Block_Mat_exit51_pro_U0_start_write),
    .height(height),
    .width(width),
    .threshold(threshold),
    .imgInput1_rows_out_din(Block_Mat_exit51_pro_U0_imgInput1_rows_out_din),
    .imgInput1_rows_out_full_n(imgInput1_rows_c_full_n),
    .imgInput1_rows_out_write(Block_Mat_exit51_pro_U0_imgInput1_rows_out_write),
    .imgInput1_cols_out_din(Block_Mat_exit51_pro_U0_imgInput1_cols_out_din),
    .imgInput1_cols_out_full_n(imgInput1_cols_c_full_n),
    .imgInput1_cols_out_write(Block_Mat_exit51_pro_U0_imgInput1_cols_out_write),
    .imgOutput1_rows_out_din(Block_Mat_exit51_pro_U0_imgOutput1_rows_out_din),
    .imgOutput1_rows_out_full_n(imgOutput1_rows_c_full_n),
    .imgOutput1_rows_out_write(Block_Mat_exit51_pro_U0_imgOutput1_rows_out_write),
    .imgOutput1_cols_out_din(Block_Mat_exit51_pro_U0_imgOutput1_cols_out_din),
    .imgOutput1_cols_out_full_n(imgOutput1_cols_c_full_n),
    .imgOutput1_cols_out_write(Block_Mat_exit51_pro_U0_imgOutput1_cols_out_write),
    .threshold_out_din(Block_Mat_exit51_pro_U0_threshold_out_din),
    .threshold_out_full_n(threshold_c_full_n),
    .threshold_out_write(Block_Mat_exit51_pro_U0_threshold_out_write)
);

AXIvideo2xfMat AXIvideo2xfMat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2xfMat_U0_ap_start),
    .ap_done(AXIvideo2xfMat_U0_ap_done),
    .ap_continue(AXIvideo2xfMat_U0_ap_continue),
    .ap_idle(AXIvideo2xfMat_U0_ap_idle),
    .ap_ready(AXIvideo2xfMat_U0_ap_ready),
    .p_src_TDATA(p_src_TDATA),
    .p_src_TVALID(p_src_TVALID),
    .p_src_TREADY(AXIvideo2xfMat_U0_p_src_TREADY),
    .p_src_TKEEP(p_src_TKEEP),
    .p_src_TSTRB(p_src_TSTRB),
    .p_src_TUSER(p_src_TUSER),
    .p_src_TLAST(p_src_TLAST),
    .p_src_TID(p_src_TID),
    .p_src_TDEST(p_src_TDEST),
    .img_rows_dout(imgInput1_rows_c_dout),
    .img_rows_empty_n(imgInput1_rows_c_empty_n),
    .img_rows_read(AXIvideo2xfMat_U0_img_rows_read),
    .img_cols_dout(imgInput1_cols_c_dout),
    .img_cols_empty_n(imgInput1_cols_c_empty_n),
    .img_cols_read(AXIvideo2xfMat_U0_img_cols_read),
    .img_data_V_din(AXIvideo2xfMat_U0_img_data_V_din),
    .img_data_V_full_n(imgInput1_data_V_cha_full_n),
    .img_data_V_write(AXIvideo2xfMat_U0_img_data_V_write),
    .img_rows_out_din(AXIvideo2xfMat_U0_img_rows_out_din),
    .img_rows_out_full_n(imgInput1_rows_c10_full_n),
    .img_rows_out_write(AXIvideo2xfMat_U0_img_rows_out_write),
    .img_cols_out_din(AXIvideo2xfMat_U0_img_cols_out_din),
    .img_cols_out_full_n(imgInput1_cols_c11_full_n),
    .img_cols_out_write(AXIvideo2xfMat_U0_img_cols_out_write)
);

fast_accel fast_accel_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(fast_accel_U0_ap_start),
    .start_full_n(start_for_xfMat2AXIvideo_U0_full_n),
    .ap_done(fast_accel_U0_ap_done),
    .ap_continue(fast_accel_U0_ap_continue),
    .ap_idle(fast_accel_U0_ap_idle),
    .ap_ready(fast_accel_U0_ap_ready),
    .start_out(fast_accel_U0_start_out),
    .start_write(fast_accel_U0_start_write),
    .p_src_rows_dout(imgInput1_rows_c10_dout),
    .p_src_rows_empty_n(imgInput1_rows_c10_empty_n),
    .p_src_rows_read(fast_accel_U0_p_src_rows_read),
    .p_src_cols_dout(imgInput1_cols_c11_dout),
    .p_src_cols_empty_n(imgInput1_cols_c11_empty_n),
    .p_src_cols_read(fast_accel_U0_p_src_cols_read),
    .p_src_data_V_dout(imgInput1_data_V_cha_dout),
    .p_src_data_V_empty_n(imgInput1_data_V_cha_empty_n),
    .p_src_data_V_read(fast_accel_U0_p_src_data_V_read),
    .imgOutput1_rows_dout(imgOutput1_rows_c_dout),
    .imgOutput1_rows_empty_n(imgOutput1_rows_c_empty_n),
    .imgOutput1_rows_read(fast_accel_U0_imgOutput1_rows_read),
    .imgOutput1_cols_dout(imgOutput1_cols_c_dout),
    .imgOutput1_cols_empty_n(imgOutput1_cols_c_empty_n),
    .imgOutput1_cols_read(fast_accel_U0_imgOutput1_cols_read),
    .p_dst_data_V_din(fast_accel_U0_p_dst_data_V_din),
    .p_dst_data_V_full_n(imgOutput1_data_V_ch_full_n),
    .p_dst_data_V_write(fast_accel_U0_p_dst_data_V_write),
    .threshold_dout(threshold_c_dout),
    .threshold_empty_n(threshold_c_empty_n),
    .threshold_read(fast_accel_U0_threshold_read),
    .imgOutput1_rows_out_din(fast_accel_U0_imgOutput1_rows_out_din),
    .imgOutput1_rows_out_full_n(imgOutput1_rows_c12_full_n),
    .imgOutput1_rows_out_write(fast_accel_U0_imgOutput1_rows_out_write),
    .imgOutput1_cols_out_din(fast_accel_U0_imgOutput1_cols_out_din),
    .imgOutput1_cols_out_full_n(imgOutput1_cols_c13_full_n),
    .imgOutput1_cols_out_write(fast_accel_U0_imgOutput1_cols_out_write)
);

xfMat2AXIvideo xfMat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXIvideo_U0_ap_start),
    .ap_done(xfMat2AXIvideo_U0_ap_done),
    .ap_continue(xfMat2AXIvideo_U0_ap_continue),
    .ap_idle(xfMat2AXIvideo_U0_ap_idle),
    .ap_ready(xfMat2AXIvideo_U0_ap_ready),
    .img_rows_dout(imgOutput1_rows_c12_dout),
    .img_rows_empty_n(imgOutput1_rows_c12_empty_n),
    .img_rows_read(xfMat2AXIvideo_U0_img_rows_read),
    .img_cols_dout(imgOutput1_cols_c13_dout),
    .img_cols_empty_n(imgOutput1_cols_c13_empty_n),
    .img_cols_read(xfMat2AXIvideo_U0_img_cols_read),
    .img_data_V_dout(imgOutput1_data_V_ch_dout),
    .img_data_V_empty_n(imgOutput1_data_V_ch_empty_n),
    .img_data_V_read(xfMat2AXIvideo_U0_img_data_V_read),
    .p_dst_TDATA(xfMat2AXIvideo_U0_p_dst_TDATA),
    .p_dst_TVALID(xfMat2AXIvideo_U0_p_dst_TVALID),
    .p_dst_TREADY(p_dst_TREADY),
    .p_dst_TKEEP(xfMat2AXIvideo_U0_p_dst_TKEEP),
    .p_dst_TSTRB(xfMat2AXIvideo_U0_p_dst_TSTRB),
    .p_dst_TUSER(xfMat2AXIvideo_U0_p_dst_TUSER),
    .p_dst_TLAST(xfMat2AXIvideo_U0_p_dst_TLAST),
    .p_dst_TID(xfMat2AXIvideo_U0_p_dst_TID),
    .p_dst_TDEST(xfMat2AXIvideo_U0_p_dst_TDEST)
);

fifo_w32_d2_A_x imgInput1_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit51_pro_U0_imgInput1_rows_out_din),
    .if_full_n(imgInput1_rows_c_full_n),
    .if_write(Block_Mat_exit51_pro_U0_imgInput1_rows_out_write),
    .if_dout(imgInput1_rows_c_dout),
    .if_empty_n(imgInput1_rows_c_empty_n),
    .if_read(AXIvideo2xfMat_U0_img_rows_read)
);

fifo_w32_d2_A_x imgInput1_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit51_pro_U0_imgInput1_cols_out_din),
    .if_full_n(imgInput1_cols_c_full_n),
    .if_write(Block_Mat_exit51_pro_U0_imgInput1_cols_out_write),
    .if_dout(imgInput1_cols_c_dout),
    .if_empty_n(imgInput1_cols_c_empty_n),
    .if_read(AXIvideo2xfMat_U0_img_cols_read)
);

fifo_w32_d3_A_x imgOutput1_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit51_pro_U0_imgOutput1_rows_out_din),
    .if_full_n(imgOutput1_rows_c_full_n),
    .if_write(Block_Mat_exit51_pro_U0_imgOutput1_rows_out_write),
    .if_dout(imgOutput1_rows_c_dout),
    .if_empty_n(imgOutput1_rows_c_empty_n),
    .if_read(fast_accel_U0_imgOutput1_rows_read)
);

fifo_w32_d3_A_x imgOutput1_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit51_pro_U0_imgOutput1_cols_out_din),
    .if_full_n(imgOutput1_cols_c_full_n),
    .if_write(Block_Mat_exit51_pro_U0_imgOutput1_cols_out_write),
    .if_dout(imgOutput1_cols_c_dout),
    .if_empty_n(imgOutput1_cols_c_empty_n),
    .if_read(fast_accel_U0_imgOutput1_cols_read)
);

fifo_w32_d3_A_x threshold_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit51_pro_U0_threshold_out_din),
    .if_full_n(threshold_c_full_n),
    .if_write(Block_Mat_exit51_pro_U0_threshold_out_write),
    .if_dout(threshold_c_dout),
    .if_empty_n(threshold_c_empty_n),
    .if_read(fast_accel_U0_threshold_read)
);

fifo_w8_d1_A imgInput1_data_V_cha_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_U0_img_data_V_din),
    .if_full_n(imgInput1_data_V_cha_full_n),
    .if_write(AXIvideo2xfMat_U0_img_data_V_write),
    .if_dout(imgInput1_data_V_cha_dout),
    .if_empty_n(imgInput1_data_V_cha_empty_n),
    .if_read(fast_accel_U0_p_src_data_V_read)
);

fifo_w32_d2_A_x imgInput1_rows_c10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_U0_img_rows_out_din),
    .if_full_n(imgInput1_rows_c10_full_n),
    .if_write(AXIvideo2xfMat_U0_img_rows_out_write),
    .if_dout(imgInput1_rows_c10_dout),
    .if_empty_n(imgInput1_rows_c10_empty_n),
    .if_read(fast_accel_U0_p_src_rows_read)
);

fifo_w32_d2_A_x imgInput1_cols_c11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_U0_img_cols_out_din),
    .if_full_n(imgInput1_cols_c11_full_n),
    .if_write(AXIvideo2xfMat_U0_img_cols_out_write),
    .if_dout(imgInput1_cols_c11_dout),
    .if_empty_n(imgInput1_cols_c11_empty_n),
    .if_read(fast_accel_U0_p_src_cols_read)
);

fifo_w8_d1_A imgOutput1_data_V_ch_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(fast_accel_U0_p_dst_data_V_din),
    .if_full_n(imgOutput1_data_V_ch_full_n),
    .if_write(fast_accel_U0_p_dst_data_V_write),
    .if_dout(imgOutput1_data_V_ch_dout),
    .if_empty_n(imgOutput1_data_V_ch_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_data_V_read)
);

fifo_w32_d2_A_x imgOutput1_rows_c12_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(fast_accel_U0_imgOutput1_rows_out_din),
    .if_full_n(imgOutput1_rows_c12_full_n),
    .if_write(fast_accel_U0_imgOutput1_rows_out_write),
    .if_dout(imgOutput1_rows_c12_dout),
    .if_empty_n(imgOutput1_rows_c12_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_rows_read)
);

fifo_w32_d2_A_x imgOutput1_cols_c13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(fast_accel_U0_imgOutput1_cols_out_din),
    .if_full_n(imgOutput1_cols_c13_full_n),
    .if_write(fast_accel_U0_imgOutput1_cols_out_write),
    .if_dout(imgOutput1_cols_c13_dout),
    .if_empty_n(imgOutput1_cols_c13_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_cols_read)
);

start_for_fast_acibs start_for_fast_acibs_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_fast_accel_U0_din),
    .if_full_n(start_for_fast_accel_U0_full_n),
    .if_write(Block_Mat_exit51_pro_U0_start_write),
    .if_dout(start_for_fast_accel_U0_dout),
    .if_empty_n(start_for_fast_accel_U0_empty_n),
    .if_read(fast_accel_U0_ap_ready)
);

start_for_xfMat2AjbC start_for_xfMat2AjbC_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfMat2AXIvideo_U0_din),
    .if_full_n(start_for_xfMat2AXIvideo_U0_full_n),
    .if_write(fast_accel_U0_start_write),
    .if_dout(start_for_xfMat2AXIvideo_U0_dout),
    .if_empty_n(start_for_xfMat2AXIvideo_U0_empty_n),
    .if_read(xfMat2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_AXIvideo2xfMat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIvideo2xfMat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIvideo2xfMat_U0_ap_ready <= ap_sync_AXIvideo2xfMat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready <= ap_sync_Block_Mat_exit51_pro_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == AXIvideo2xfMat_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        AXIvideo2xfMat_U0_ap_ready_count <= (AXIvideo2xfMat_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == AXIvideo2xfMat_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        AXIvideo2xfMat_U0_ap_ready_count <= (AXIvideo2xfMat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Block_Mat_exit51_pro_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Block_Mat_exit51_pro_U0_ap_ready_count <= (Block_Mat_exit51_pro_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Block_Mat_exit51_pro_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Block_Mat_exit51_pro_U0_ap_ready_count <= (Block_Mat_exit51_pro_U0_ap_ready_count + 2'd1);
    end
end

assign AXIvideo2xfMat_U0_ap_continue = 1'b1;

assign AXIvideo2xfMat_U0_ap_start = ((ap_sync_reg_AXIvideo2xfMat_U0_ap_ready ^ 1'b1) & ap_start);

assign AXIvideo2xfMat_U0_start_full_n = 1'b1;

assign AXIvideo2xfMat_U0_start_write = 1'b0;

assign Block_Mat_exit51_pro_U0_ap_continue = 1'b1;

assign Block_Mat_exit51_pro_U0_ap_start = ((ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready ^ 1'b1) & ap_start);

assign ap_done = xfMat2AXIvideo_U0_ap_done;

assign ap_idle = (xfMat2AXIvideo_U0_ap_idle & fast_accel_U0_ap_idle & Block_Mat_exit51_pro_U0_ap_idle & AXIvideo2xfMat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_AXIvideo2xfMat_U0_ap_ready = (ap_sync_reg_AXIvideo2xfMat_U0_ap_ready | AXIvideo2xfMat_U0_ap_ready);

assign ap_sync_Block_Mat_exit51_pro_U0_ap_ready = (ap_sync_reg_Block_Mat_exit51_pro_U0_ap_ready | Block_Mat_exit51_pro_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = xfMat2AXIvideo_U0_ap_done;

assign ap_sync_ready = (ap_sync_Block_Mat_exit51_pro_U0_ap_ready & ap_sync_AXIvideo2xfMat_U0_ap_ready);

assign fast_accel_U0_ap_continue = 1'b1;

assign fast_accel_U0_ap_start = start_for_fast_accel_U0_empty_n;

assign p_dst_TDATA = xfMat2AXIvideo_U0_p_dst_TDATA;

assign p_dst_TDEST = xfMat2AXIvideo_U0_p_dst_TDEST;

assign p_dst_TID = xfMat2AXIvideo_U0_p_dst_TID;

assign p_dst_TKEEP = xfMat2AXIvideo_U0_p_dst_TKEEP;

assign p_dst_TLAST = xfMat2AXIvideo_U0_p_dst_TLAST;

assign p_dst_TSTRB = xfMat2AXIvideo_U0_p_dst_TSTRB;

assign p_dst_TUSER = xfMat2AXIvideo_U0_p_dst_TUSER;

assign p_dst_TVALID = xfMat2AXIvideo_U0_p_dst_TVALID;

assign p_src_TREADY = AXIvideo2xfMat_U0_p_src_TREADY;

assign start_for_fast_accel_U0_din = 1'b1;

assign start_for_xfMat2AXIvideo_U0_din = 1'b1;

assign xfMat2AXIvideo_U0_ap_continue = 1'b1;

assign xfMat2AXIvideo_U0_ap_start = start_for_xfMat2AXIvideo_U0_empty_n;

assign xfMat2AXIvideo_U0_start_full_n = 1'b1;

assign xfMat2AXIvideo_U0_start_write = 1'b0;

endmodule //fast_ip
