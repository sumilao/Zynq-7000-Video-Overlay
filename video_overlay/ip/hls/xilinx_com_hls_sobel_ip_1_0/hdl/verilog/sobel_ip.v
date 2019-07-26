// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="sobel_ip,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=13.077250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1679,HLS_SYN_LUT=4244,HLS_VERSION=2018_2}" *)

module sobel_ip (
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
        p_dst_x_TDATA,
        p_dst_x_TKEEP,
        p_dst_x_TSTRB,
        p_dst_x_TUSER,
        p_dst_x_TLAST,
        p_dst_x_TID,
        p_dst_x_TDEST,
        p_dst_y_TDATA,
        p_dst_y_TKEEP,
        p_dst_y_TSTRB,
        p_dst_y_TUSER,
        p_dst_y_TLAST,
        p_dst_y_TID,
        p_dst_y_TDEST,
        p_src_TVALID,
        p_src_TREADY,
        p_dst_x_TVALID,
        p_dst_x_TREADY,
        p_dst_y_TVALID,
        p_dst_y_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
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
output  [7:0] p_dst_x_TDATA;
output  [0:0] p_dst_x_TKEEP;
output  [0:0] p_dst_x_TSTRB;
output  [0:0] p_dst_x_TUSER;
output  [0:0] p_dst_x_TLAST;
output  [0:0] p_dst_x_TID;
output  [0:0] p_dst_x_TDEST;
output  [7:0] p_dst_y_TDATA;
output  [0:0] p_dst_y_TKEEP;
output  [0:0] p_dst_y_TSTRB;
output  [0:0] p_dst_y_TUSER;
output  [0:0] p_dst_y_TLAST;
output  [0:0] p_dst_y_TID;
output  [0:0] p_dst_y_TDEST;
input   p_src_TVALID;
output   p_src_TREADY;
output   p_dst_x_TVALID;
input   p_dst_x_TREADY;
output   p_dst_y_TVALID;
input   p_dst_y_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] height;
wire   [31:0] width;
wire    Block_Mat_exit101_pr_U0_ap_start;
wire    Block_Mat_exit101_pr_U0_start_full_n;
wire    Block_Mat_exit101_pr_U0_ap_done;
wire    Block_Mat_exit101_pr_U0_ap_continue;
wire    Block_Mat_exit101_pr_U0_ap_idle;
wire    Block_Mat_exit101_pr_U0_ap_ready;
wire    Block_Mat_exit101_pr_U0_start_out;
wire    Block_Mat_exit101_pr_U0_start_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgInput1_rows_out_din;
wire    Block_Mat_exit101_pr_U0_imgInput1_rows_out_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgInput1_cols_out_din;
wire    Block_Mat_exit101_pr_U0_imgInput1_cols_out_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgOutput1_rows_out_din;
wire    Block_Mat_exit101_pr_U0_imgOutput1_rows_out_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgOutput1_cols_out_din;
wire    Block_Mat_exit101_pr_U0_imgOutput1_cols_out_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgOutput2_rows_out_din;
wire    Block_Mat_exit101_pr_U0_imgOutput2_rows_out_write;
wire   [31:0] Block_Mat_exit101_pr_U0_imgOutput2_cols_out_din;
wire    Block_Mat_exit101_pr_U0_imgOutput2_cols_out_write;
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
wire    sobel_accel_U0_ap_start;
wire    sobel_accel_U0_ap_done;
wire    sobel_accel_U0_ap_continue;
wire    sobel_accel_U0_ap_idle;
wire    sobel_accel_U0_ap_ready;
wire    sobel_accel_U0_start_out;
wire    sobel_accel_U0_start_write;
wire    sobel_accel_U0_p_src_rows_read;
wire    sobel_accel_U0_p_src_cols_read;
wire    sobel_accel_U0_p_src_data_V_read;
wire    sobel_accel_U0_p_dstgx_rows_read;
wire    sobel_accel_U0_p_dstgx_cols_read;
wire   [7:0] sobel_accel_U0_p_dstgx_data_V_din;
wire    sobel_accel_U0_p_dstgx_data_V_write;
wire    sobel_accel_U0_p_dstgy_cols_read;
wire   [7:0] sobel_accel_U0_p_dstgy_data_V_din;
wire    sobel_accel_U0_p_dstgy_data_V_write;
wire   [31:0] sobel_accel_U0_p_dstgx_rows_out_din;
wire    sobel_accel_U0_p_dstgx_rows_out_write;
wire   [31:0] sobel_accel_U0_p_dstgx_cols_out_din;
wire    sobel_accel_U0_p_dstgx_cols_out_write;
wire   [31:0] sobel_accel_U0_p_dstgy_cols_out_din;
wire    sobel_accel_U0_p_dstgy_cols_out_write;
wire    xfMat2AXIvideo57_U0_ap_start;
wire    xfMat2AXIvideo57_U0_ap_done;
wire    xfMat2AXIvideo57_U0_ap_continue;
wire    xfMat2AXIvideo57_U0_ap_idle;
wire    xfMat2AXIvideo57_U0_ap_ready;
wire    xfMat2AXIvideo57_U0_img_rows_read;
wire    xfMat2AXIvideo57_U0_img_cols_read;
wire    xfMat2AXIvideo57_U0_img_data_V_read;
wire   [7:0] xfMat2AXIvideo57_U0_p_dst_x_TDATA;
wire    xfMat2AXIvideo57_U0_p_dst_x_TVALID;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TKEEP;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TSTRB;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TUSER;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TLAST;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TID;
wire   [0:0] xfMat2AXIvideo57_U0_p_dst_x_TDEST;
wire    ap_sync_continue;
wire    xfMat2AXIvideo_U0_ap_start;
wire    xfMat2AXIvideo_U0_ap_done;
wire    xfMat2AXIvideo_U0_ap_continue;
wire    xfMat2AXIvideo_U0_ap_idle;
wire    xfMat2AXIvideo_U0_ap_ready;
wire    xfMat2AXIvideo_U0_img_rows_read;
wire    xfMat2AXIvideo_U0_img_cols_read;
wire    xfMat2AXIvideo_U0_img_data_V_read;
wire   [7:0] xfMat2AXIvideo_U0_p_dst_y_TDATA;
wire    xfMat2AXIvideo_U0_p_dst_y_TVALID;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TKEEP;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TSTRB;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TUSER;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TLAST;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TID;
wire   [0:0] xfMat2AXIvideo_U0_p_dst_y_TDEST;
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
wire    imgOutput2_rows_c_full_n;
wire   [31:0] imgOutput2_rows_c_dout;
wire    imgOutput2_rows_c_empty_n;
wire    imgOutput2_cols_c_full_n;
wire   [31:0] imgOutput2_cols_c_dout;
wire    imgOutput2_cols_c_empty_n;
wire    imgInput1_data_V_cha_full_n;
wire   [7:0] imgInput1_data_V_cha_dout;
wire    imgInput1_data_V_cha_empty_n;
wire    imgInput1_rows_c11_full_n;
wire   [31:0] imgInput1_rows_c11_dout;
wire    imgInput1_rows_c11_empty_n;
wire    imgInput1_cols_c12_full_n;
wire   [31:0] imgInput1_cols_c12_dout;
wire    imgInput1_cols_c12_empty_n;
wire    imgOutput1_data_V_ch_full_n;
wire   [7:0] imgOutput1_data_V_ch_dout;
wire    imgOutput1_data_V_ch_empty_n;
wire    imgOutput2_data_V_ch_full_n;
wire   [7:0] imgOutput2_data_V_ch_dout;
wire    imgOutput2_data_V_ch_empty_n;
wire    imgOutput1_rows_c13_full_n;
wire   [31:0] imgOutput1_rows_c13_dout;
wire    imgOutput1_rows_c13_empty_n;
wire    imgOutput1_cols_c14_full_n;
wire   [31:0] imgOutput1_cols_c14_dout;
wire    imgOutput1_cols_c14_empty_n;
wire    imgOutput2_cols_c15_full_n;
wire   [31:0] imgOutput2_cols_c15_dout;
wire    imgOutput2_cols_c15_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_AXIvideo2xfMat_U0_ap_ready;
wire    ap_sync_AXIvideo2xfMat_U0_ap_ready;
reg   [1:0] AXIvideo2xfMat_U0_ap_ready_count;
reg    ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready;
wire    ap_sync_Block_Mat_exit101_pr_U0_ap_ready;
reg   [1:0] Block_Mat_exit101_pr_U0_ap_ready_count;
wire   [0:0] start_for_sobel_accel_U0_din;
wire    start_for_sobel_accel_U0_full_n;
wire   [0:0] start_for_sobel_accel_U0_dout;
wire    start_for_sobel_accel_U0_empty_n;
wire   [0:0] start_for_xfMat2AXIvideo_U0_din;
wire    start_for_xfMat2AXIvideo_U0_full_n;
wire   [0:0] start_for_xfMat2AXIvideo_U0_dout;
wire    start_for_xfMat2AXIvideo_U0_empty_n;
wire    AXIvideo2xfMat_U0_start_full_n;
wire    AXIvideo2xfMat_U0_start_write;
wire   [0:0] start_for_xfMat2AXIvideo57_U0_din;
wire    start_for_xfMat2AXIvideo57_U0_full_n;
wire   [0:0] start_for_xfMat2AXIvideo57_U0_dout;
wire    start_for_xfMat2AXIvideo57_U0_empty_n;
wire    xfMat2AXIvideo57_U0_start_full_n;
wire    xfMat2AXIvideo57_U0_start_write;
wire    xfMat2AXIvideo_U0_start_full_n;
wire    xfMat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_AXIvideo2xfMat_U0_ap_ready = 1'b0;
#0 AXIvideo2xfMat_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready = 1'b0;
#0 Block_Mat_exit101_pr_U0_ap_ready_count = 2'd0;
end

sobel_ip_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
sobel_ip_AXILiteS_s_axi_U(
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
    .width(width)
);

Block_Mat_exit101_pr Block_Mat_exit101_pr_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Mat_exit101_pr_U0_ap_start),
    .start_full_n(Block_Mat_exit101_pr_U0_start_full_n),
    .ap_done(Block_Mat_exit101_pr_U0_ap_done),
    .ap_continue(Block_Mat_exit101_pr_U0_ap_continue),
    .ap_idle(Block_Mat_exit101_pr_U0_ap_idle),
    .ap_ready(Block_Mat_exit101_pr_U0_ap_ready),
    .start_out(Block_Mat_exit101_pr_U0_start_out),
    .start_write(Block_Mat_exit101_pr_U0_start_write),
    .height(height),
    .width(width),
    .imgInput1_rows_out_din(Block_Mat_exit101_pr_U0_imgInput1_rows_out_din),
    .imgInput1_rows_out_full_n(imgInput1_rows_c_full_n),
    .imgInput1_rows_out_write(Block_Mat_exit101_pr_U0_imgInput1_rows_out_write),
    .imgInput1_cols_out_din(Block_Mat_exit101_pr_U0_imgInput1_cols_out_din),
    .imgInput1_cols_out_full_n(imgInput1_cols_c_full_n),
    .imgInput1_cols_out_write(Block_Mat_exit101_pr_U0_imgInput1_cols_out_write),
    .imgOutput1_rows_out_din(Block_Mat_exit101_pr_U0_imgOutput1_rows_out_din),
    .imgOutput1_rows_out_full_n(imgOutput1_rows_c_full_n),
    .imgOutput1_rows_out_write(Block_Mat_exit101_pr_U0_imgOutput1_rows_out_write),
    .imgOutput1_cols_out_din(Block_Mat_exit101_pr_U0_imgOutput1_cols_out_din),
    .imgOutput1_cols_out_full_n(imgOutput1_cols_c_full_n),
    .imgOutput1_cols_out_write(Block_Mat_exit101_pr_U0_imgOutput1_cols_out_write),
    .imgOutput2_rows_out_din(Block_Mat_exit101_pr_U0_imgOutput2_rows_out_din),
    .imgOutput2_rows_out_full_n(imgOutput2_rows_c_full_n),
    .imgOutput2_rows_out_write(Block_Mat_exit101_pr_U0_imgOutput2_rows_out_write),
    .imgOutput2_cols_out_din(Block_Mat_exit101_pr_U0_imgOutput2_cols_out_din),
    .imgOutput2_cols_out_full_n(imgOutput2_cols_c_full_n),
    .imgOutput2_cols_out_write(Block_Mat_exit101_pr_U0_imgOutput2_cols_out_write)
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
    .img_rows_out_full_n(imgInput1_rows_c11_full_n),
    .img_rows_out_write(AXIvideo2xfMat_U0_img_rows_out_write),
    .img_cols_out_din(AXIvideo2xfMat_U0_img_cols_out_din),
    .img_cols_out_full_n(imgInput1_cols_c12_full_n),
    .img_cols_out_write(AXIvideo2xfMat_U0_img_cols_out_write)
);

sobel_accel sobel_accel_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(sobel_accel_U0_ap_start),
    .start_full_n(start_for_xfMat2AXIvideo57_U0_full_n),
    .ap_done(sobel_accel_U0_ap_done),
    .ap_continue(sobel_accel_U0_ap_continue),
    .ap_idle(sobel_accel_U0_ap_idle),
    .ap_ready(sobel_accel_U0_ap_ready),
    .start_out(sobel_accel_U0_start_out),
    .start_write(sobel_accel_U0_start_write),
    .p_src_rows_dout(imgInput1_rows_c11_dout),
    .p_src_rows_empty_n(imgInput1_rows_c11_empty_n),
    .p_src_rows_read(sobel_accel_U0_p_src_rows_read),
    .p_src_cols_dout(imgInput1_cols_c12_dout),
    .p_src_cols_empty_n(imgInput1_cols_c12_empty_n),
    .p_src_cols_read(sobel_accel_U0_p_src_cols_read),
    .p_src_data_V_dout(imgInput1_data_V_cha_dout),
    .p_src_data_V_empty_n(imgInput1_data_V_cha_empty_n),
    .p_src_data_V_read(sobel_accel_U0_p_src_data_V_read),
    .p_dstgx_rows_dout(imgOutput1_rows_c_dout),
    .p_dstgx_rows_empty_n(imgOutput1_rows_c_empty_n),
    .p_dstgx_rows_read(sobel_accel_U0_p_dstgx_rows_read),
    .p_dstgx_cols_dout(imgOutput1_cols_c_dout),
    .p_dstgx_cols_empty_n(imgOutput1_cols_c_empty_n),
    .p_dstgx_cols_read(sobel_accel_U0_p_dstgx_cols_read),
    .p_dstgx_data_V_din(sobel_accel_U0_p_dstgx_data_V_din),
    .p_dstgx_data_V_full_n(imgOutput1_data_V_ch_full_n),
    .p_dstgx_data_V_write(sobel_accel_U0_p_dstgx_data_V_write),
    .p_dstgy_cols_dout(imgOutput2_cols_c_dout),
    .p_dstgy_cols_empty_n(imgOutput2_cols_c_empty_n),
    .p_dstgy_cols_read(sobel_accel_U0_p_dstgy_cols_read),
    .p_dstgy_data_V_din(sobel_accel_U0_p_dstgy_data_V_din),
    .p_dstgy_data_V_full_n(imgOutput2_data_V_ch_full_n),
    .p_dstgy_data_V_write(sobel_accel_U0_p_dstgy_data_V_write),
    .p_dstgx_rows_out_din(sobel_accel_U0_p_dstgx_rows_out_din),
    .p_dstgx_rows_out_full_n(imgOutput1_rows_c13_full_n),
    .p_dstgx_rows_out_write(sobel_accel_U0_p_dstgx_rows_out_write),
    .p_dstgx_cols_out_din(sobel_accel_U0_p_dstgx_cols_out_din),
    .p_dstgx_cols_out_full_n(imgOutput1_cols_c14_full_n),
    .p_dstgx_cols_out_write(sobel_accel_U0_p_dstgx_cols_out_write),
    .p_dstgy_cols_out_din(sobel_accel_U0_p_dstgy_cols_out_din),
    .p_dstgy_cols_out_full_n(imgOutput2_cols_c15_full_n),
    .p_dstgy_cols_out_write(sobel_accel_U0_p_dstgy_cols_out_write)
);

xfMat2AXIvideo57 xfMat2AXIvideo57_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXIvideo57_U0_ap_start),
    .ap_done(xfMat2AXIvideo57_U0_ap_done),
    .ap_continue(xfMat2AXIvideo57_U0_ap_continue),
    .ap_idle(xfMat2AXIvideo57_U0_ap_idle),
    .ap_ready(xfMat2AXIvideo57_U0_ap_ready),
    .img_rows_dout(imgOutput1_rows_c13_dout),
    .img_rows_empty_n(imgOutput1_rows_c13_empty_n),
    .img_rows_read(xfMat2AXIvideo57_U0_img_rows_read),
    .img_cols_dout(imgOutput1_cols_c14_dout),
    .img_cols_empty_n(imgOutput1_cols_c14_empty_n),
    .img_cols_read(xfMat2AXIvideo57_U0_img_cols_read),
    .img_data_V_dout(imgOutput1_data_V_ch_dout),
    .img_data_V_empty_n(imgOutput1_data_V_ch_empty_n),
    .img_data_V_read(xfMat2AXIvideo57_U0_img_data_V_read),
    .p_dst_x_TDATA(xfMat2AXIvideo57_U0_p_dst_x_TDATA),
    .p_dst_x_TVALID(xfMat2AXIvideo57_U0_p_dst_x_TVALID),
    .p_dst_x_TREADY(p_dst_x_TREADY),
    .p_dst_x_TKEEP(xfMat2AXIvideo57_U0_p_dst_x_TKEEP),
    .p_dst_x_TSTRB(xfMat2AXIvideo57_U0_p_dst_x_TSTRB),
    .p_dst_x_TUSER(xfMat2AXIvideo57_U0_p_dst_x_TUSER),
    .p_dst_x_TLAST(xfMat2AXIvideo57_U0_p_dst_x_TLAST),
    .p_dst_x_TID(xfMat2AXIvideo57_U0_p_dst_x_TID),
    .p_dst_x_TDEST(xfMat2AXIvideo57_U0_p_dst_x_TDEST)
);

xfMat2AXIvideo xfMat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXIvideo_U0_ap_start),
    .ap_done(xfMat2AXIvideo_U0_ap_done),
    .ap_continue(xfMat2AXIvideo_U0_ap_continue),
    .ap_idle(xfMat2AXIvideo_U0_ap_idle),
    .ap_ready(xfMat2AXIvideo_U0_ap_ready),
    .img_rows_dout(imgOutput2_rows_c_dout),
    .img_rows_empty_n(imgOutput2_rows_c_empty_n),
    .img_rows_read(xfMat2AXIvideo_U0_img_rows_read),
    .img_cols_dout(imgOutput2_cols_c15_dout),
    .img_cols_empty_n(imgOutput2_cols_c15_empty_n),
    .img_cols_read(xfMat2AXIvideo_U0_img_cols_read),
    .img_data_V_dout(imgOutput2_data_V_ch_dout),
    .img_data_V_empty_n(imgOutput2_data_V_ch_empty_n),
    .img_data_V_read(xfMat2AXIvideo_U0_img_data_V_read),
    .p_dst_y_TDATA(xfMat2AXIvideo_U0_p_dst_y_TDATA),
    .p_dst_y_TVALID(xfMat2AXIvideo_U0_p_dst_y_TVALID),
    .p_dst_y_TREADY(p_dst_y_TREADY),
    .p_dst_y_TKEEP(xfMat2AXIvideo_U0_p_dst_y_TKEEP),
    .p_dst_y_TSTRB(xfMat2AXIvideo_U0_p_dst_y_TSTRB),
    .p_dst_y_TUSER(xfMat2AXIvideo_U0_p_dst_y_TUSER),
    .p_dst_y_TLAST(xfMat2AXIvideo_U0_p_dst_y_TLAST),
    .p_dst_y_TID(xfMat2AXIvideo_U0_p_dst_y_TID),
    .p_dst_y_TDEST(xfMat2AXIvideo_U0_p_dst_y_TDEST)
);

fifo_w32_d2_A_x imgInput1_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgInput1_rows_out_din),
    .if_full_n(imgInput1_rows_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgInput1_rows_out_write),
    .if_dout(imgInput1_rows_c_dout),
    .if_empty_n(imgInput1_rows_c_empty_n),
    .if_read(AXIvideo2xfMat_U0_img_rows_read)
);

fifo_w32_d2_A_x imgInput1_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgInput1_cols_out_din),
    .if_full_n(imgInput1_cols_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgInput1_cols_out_write),
    .if_dout(imgInput1_cols_c_dout),
    .if_empty_n(imgInput1_cols_c_empty_n),
    .if_read(AXIvideo2xfMat_U0_img_cols_read)
);

fifo_w32_d3_A_x imgOutput1_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgOutput1_rows_out_din),
    .if_full_n(imgOutput1_rows_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgOutput1_rows_out_write),
    .if_dout(imgOutput1_rows_c_dout),
    .if_empty_n(imgOutput1_rows_c_empty_n),
    .if_read(sobel_accel_U0_p_dstgx_rows_read)
);

fifo_w32_d3_A_x imgOutput1_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgOutput1_cols_out_din),
    .if_full_n(imgOutput1_cols_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgOutput1_cols_out_write),
    .if_dout(imgOutput1_cols_c_dout),
    .if_empty_n(imgOutput1_cols_c_empty_n),
    .if_read(sobel_accel_U0_p_dstgx_cols_read)
);

fifo_w32_d4_A imgOutput2_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgOutput2_rows_out_din),
    .if_full_n(imgOutput2_rows_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgOutput2_rows_out_write),
    .if_dout(imgOutput2_rows_c_dout),
    .if_empty_n(imgOutput2_rows_c_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_rows_read)
);

fifo_w32_d3_A_x imgOutput2_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit101_pr_U0_imgOutput2_cols_out_din),
    .if_full_n(imgOutput2_cols_c_full_n),
    .if_write(Block_Mat_exit101_pr_U0_imgOutput2_cols_out_write),
    .if_dout(imgOutput2_cols_c_dout),
    .if_empty_n(imgOutput2_cols_c_empty_n),
    .if_read(sobel_accel_U0_p_dstgy_cols_read)
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
    .if_read(sobel_accel_U0_p_src_data_V_read)
);

fifo_w32_d2_A_x imgInput1_rows_c11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_U0_img_rows_out_din),
    .if_full_n(imgInput1_rows_c11_full_n),
    .if_write(AXIvideo2xfMat_U0_img_rows_out_write),
    .if_dout(imgInput1_rows_c11_dout),
    .if_empty_n(imgInput1_rows_c11_empty_n),
    .if_read(sobel_accel_U0_p_src_rows_read)
);

fifo_w32_d2_A_x imgInput1_cols_c12_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_U0_img_cols_out_din),
    .if_full_n(imgInput1_cols_c12_full_n),
    .if_write(AXIvideo2xfMat_U0_img_cols_out_write),
    .if_dout(imgInput1_cols_c12_dout),
    .if_empty_n(imgInput1_cols_c12_empty_n),
    .if_read(sobel_accel_U0_p_src_cols_read)
);

fifo_w8_d1_A imgOutput1_data_V_ch_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(sobel_accel_U0_p_dstgx_data_V_din),
    .if_full_n(imgOutput1_data_V_ch_full_n),
    .if_write(sobel_accel_U0_p_dstgx_data_V_write),
    .if_dout(imgOutput1_data_V_ch_dout),
    .if_empty_n(imgOutput1_data_V_ch_empty_n),
    .if_read(xfMat2AXIvideo57_U0_img_data_V_read)
);

fifo_w8_d1_A imgOutput2_data_V_ch_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(sobel_accel_U0_p_dstgy_data_V_din),
    .if_full_n(imgOutput2_data_V_ch_full_n),
    .if_write(sobel_accel_U0_p_dstgy_data_V_write),
    .if_dout(imgOutput2_data_V_ch_dout),
    .if_empty_n(imgOutput2_data_V_ch_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_data_V_read)
);

fifo_w32_d2_A_x imgOutput1_rows_c13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(sobel_accel_U0_p_dstgx_rows_out_din),
    .if_full_n(imgOutput1_rows_c13_full_n),
    .if_write(sobel_accel_U0_p_dstgx_rows_out_write),
    .if_dout(imgOutput1_rows_c13_dout),
    .if_empty_n(imgOutput1_rows_c13_empty_n),
    .if_read(xfMat2AXIvideo57_U0_img_rows_read)
);

fifo_w32_d2_A_x imgOutput1_cols_c14_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(sobel_accel_U0_p_dstgx_cols_out_din),
    .if_full_n(imgOutput1_cols_c14_full_n),
    .if_write(sobel_accel_U0_p_dstgx_cols_out_write),
    .if_dout(imgOutput1_cols_c14_dout),
    .if_empty_n(imgOutput1_cols_c14_empty_n),
    .if_read(xfMat2AXIvideo57_U0_img_cols_read)
);

fifo_w32_d2_A_x imgOutput2_cols_c15_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(sobel_accel_U0_p_dstgy_cols_out_din),
    .if_full_n(imgOutput2_cols_c15_full_n),
    .if_write(sobel_accel_U0_p_dstgy_cols_out_write),
    .if_dout(imgOutput2_cols_c15_dout),
    .if_empty_n(imgOutput2_cols_c15_empty_n),
    .if_read(xfMat2AXIvideo_U0_img_cols_read)
);

start_for_sobel_ahbi start_for_sobel_ahbi_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_sobel_accel_U0_din),
    .if_full_n(start_for_sobel_accel_U0_full_n),
    .if_write(Block_Mat_exit101_pr_U0_start_write),
    .if_dout(start_for_sobel_accel_U0_dout),
    .if_empty_n(start_for_sobel_accel_U0_empty_n),
    .if_read(sobel_accel_U0_ap_ready)
);

start_for_xfMat2Aibs start_for_xfMat2Aibs_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfMat2AXIvideo_U0_din),
    .if_full_n(start_for_xfMat2AXIvideo_U0_full_n),
    .if_write(Block_Mat_exit101_pr_U0_start_write),
    .if_dout(start_for_xfMat2AXIvideo_U0_dout),
    .if_empty_n(start_for_xfMat2AXIvideo_U0_empty_n),
    .if_read(xfMat2AXIvideo_U0_ap_ready)
);

start_for_xfMat2AjbC start_for_xfMat2AjbC_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfMat2AXIvideo57_U0_din),
    .if_full_n(start_for_xfMat2AXIvideo57_U0_full_n),
    .if_write(sobel_accel_U0_start_write),
    .if_dout(start_for_xfMat2AXIvideo57_U0_dout),
    .if_empty_n(start_for_xfMat2AXIvideo57_U0_empty_n),
    .if_read(xfMat2AXIvideo57_U0_ap_ready)
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
        ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready <= ap_sync_Block_Mat_exit101_pr_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == AXIvideo2xfMat_U0_ap_ready))) begin
        AXIvideo2xfMat_U0_ap_ready_count <= (AXIvideo2xfMat_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == AXIvideo2xfMat_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        AXIvideo2xfMat_U0_ap_ready_count <= (AXIvideo2xfMat_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Block_Mat_exit101_pr_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Block_Mat_exit101_pr_U0_ap_ready_count <= (Block_Mat_exit101_pr_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Block_Mat_exit101_pr_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Block_Mat_exit101_pr_U0_ap_ready_count <= (Block_Mat_exit101_pr_U0_ap_ready_count + 2'd1);
    end
end

assign AXIvideo2xfMat_U0_ap_continue = 1'b1;

assign AXIvideo2xfMat_U0_ap_start = ((ap_sync_reg_AXIvideo2xfMat_U0_ap_ready ^ 1'b1) & ap_start);

assign AXIvideo2xfMat_U0_start_full_n = 1'b1;

assign AXIvideo2xfMat_U0_start_write = 1'b0;

assign Block_Mat_exit101_pr_U0_ap_continue = 1'b1;

assign Block_Mat_exit101_pr_U0_ap_start = ((ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_Mat_exit101_pr_U0_start_full_n = (start_for_xfMat2AXIvideo_U0_full_n & start_for_sobel_accel_U0_full_n);

assign ap_done = ap_sync_done;

assign ap_idle = (xfMat2AXIvideo_U0_ap_idle & xfMat2AXIvideo57_U0_ap_idle & sobel_accel_U0_ap_idle & Block_Mat_exit101_pr_U0_ap_idle & AXIvideo2xfMat_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_AXIvideo2xfMat_U0_ap_ready = (ap_sync_reg_AXIvideo2xfMat_U0_ap_ready | AXIvideo2xfMat_U0_ap_ready);

assign ap_sync_Block_Mat_exit101_pr_U0_ap_ready = (ap_sync_reg_Block_Mat_exit101_pr_U0_ap_ready | Block_Mat_exit101_pr_U0_ap_ready);

assign ap_sync_continue = ap_sync_done;

assign ap_sync_done = (xfMat2AXIvideo_U0_ap_done & xfMat2AXIvideo57_U0_ap_done);

assign ap_sync_ready = (ap_sync_Block_Mat_exit101_pr_U0_ap_ready & ap_sync_AXIvideo2xfMat_U0_ap_ready);

assign p_dst_x_TDATA = xfMat2AXIvideo57_U0_p_dst_x_TDATA;

assign p_dst_x_TDEST = xfMat2AXIvideo57_U0_p_dst_x_TDEST;

assign p_dst_x_TID = xfMat2AXIvideo57_U0_p_dst_x_TID;

assign p_dst_x_TKEEP = xfMat2AXIvideo57_U0_p_dst_x_TKEEP;

assign p_dst_x_TLAST = xfMat2AXIvideo57_U0_p_dst_x_TLAST;

assign p_dst_x_TSTRB = xfMat2AXIvideo57_U0_p_dst_x_TSTRB;

assign p_dst_x_TUSER = xfMat2AXIvideo57_U0_p_dst_x_TUSER;

assign p_dst_x_TVALID = xfMat2AXIvideo57_U0_p_dst_x_TVALID;

assign p_dst_y_TDATA = xfMat2AXIvideo_U0_p_dst_y_TDATA;

assign p_dst_y_TDEST = xfMat2AXIvideo_U0_p_dst_y_TDEST;

assign p_dst_y_TID = xfMat2AXIvideo_U0_p_dst_y_TID;

assign p_dst_y_TKEEP = xfMat2AXIvideo_U0_p_dst_y_TKEEP;

assign p_dst_y_TLAST = xfMat2AXIvideo_U0_p_dst_y_TLAST;

assign p_dst_y_TSTRB = xfMat2AXIvideo_U0_p_dst_y_TSTRB;

assign p_dst_y_TUSER = xfMat2AXIvideo_U0_p_dst_y_TUSER;

assign p_dst_y_TVALID = xfMat2AXIvideo_U0_p_dst_y_TVALID;

assign p_src_TREADY = AXIvideo2xfMat_U0_p_src_TREADY;

assign sobel_accel_U0_ap_continue = 1'b1;

assign sobel_accel_U0_ap_start = start_for_sobel_accel_U0_empty_n;

assign start_for_sobel_accel_U0_din = 1'b1;

assign start_for_xfMat2AXIvideo57_U0_din = 1'b1;

assign start_for_xfMat2AXIvideo_U0_din = 1'b1;

assign xfMat2AXIvideo57_U0_ap_continue = ap_sync_done;

assign xfMat2AXIvideo57_U0_ap_start = start_for_xfMat2AXIvideo57_U0_empty_n;

assign xfMat2AXIvideo57_U0_start_full_n = 1'b1;

assign xfMat2AXIvideo57_U0_start_write = 1'b0;

assign xfMat2AXIvideo_U0_ap_continue = ap_sync_done;

assign xfMat2AXIvideo_U0_ap_start = start_for_xfMat2AXIvideo_U0_empty_n;

assign xfMat2AXIvideo_U0_start_full_n = 1'b1;

assign xfMat2AXIvideo_U0_start_write = 1'b0;

endmodule //sobel_ip
