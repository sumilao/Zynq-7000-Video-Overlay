// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:video_divide:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_video_divide_0_0 (
  stream_in_tdata,
  stream_in_tlast,
  stream_in_tready,
  stream_in_tuser,
  stream_in_tvalid,
  stream_out0_tdata,
  stream_out0_tlast,
  stream_out0_tready,
  stream_out0_tuser,
  stream_out0_tvalid,
  stream_out1_tdata,
  stream_out1_tlast,
  stream_out1_tready,
  stream_out1_tuser,
  stream_out1_tvalid,
  stream_out2_tdata,
  stream_out2_tlast,
  stream_out2_tready,
  stream_out2_tuser,
  stream_out2_tvalid,
  stream_out3_tdata,
  stream_out3_tlast,
  stream_out3_tready,
  stream_out3_tuser,
  stream_out3_tvalid,
  clk,
  switch
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *)
input wire [23 : 0] stream_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *)
input wire stream_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *)
output wire stream_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TUSER" *)
input wire stream_in_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *)
input wire stream_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out0 TDATA" *)
output wire [23 : 0] stream_out0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out0 TLAST" *)
output wire stream_out0_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out0 TREADY" *)
input wire stream_out0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out0 TUSER" *)
output wire stream_out0_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out0, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out0 TVALID" *)
output wire stream_out0_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out1 TDATA" *)
output wire [23 : 0] stream_out1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out1 TLAST" *)
output wire stream_out1_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out1 TREADY" *)
input wire stream_out1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out1 TUSER" *)
output wire stream_out1_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out1, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out1 TVALID" *)
output wire stream_out1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out2 TDATA" *)
output wire [23 : 0] stream_out2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out2 TLAST" *)
output wire stream_out2_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out2 TREADY" *)
input wire stream_out2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out2 TUSER" *)
output wire stream_out2_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out2, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out2 TVALID" *)
output wire stream_out2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out3 TDATA" *)
output wire [23 : 0] stream_out3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out3 TLAST" *)
output wire stream_out3_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out3 TREADY" *)
input wire stream_out3_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out3 TUSER" *)
output wire stream_out3_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out3, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out3 TVALID" *)
output wire stream_out3_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF stream_in:stream_out0:stream_out1:stream_out2:stream_out3, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [31 : 0] switch;

  video_divide #(
    .WIDTH(24)
  ) inst (
    .stream_in_tdata(stream_in_tdata),
    .stream_in_tlast(stream_in_tlast),
    .stream_in_tready(stream_in_tready),
    .stream_in_tuser(stream_in_tuser),
    .stream_in_tvalid(stream_in_tvalid),
    .stream_out0_tdata(stream_out0_tdata),
    .stream_out0_tlast(stream_out0_tlast),
    .stream_out0_tready(stream_out0_tready),
    .stream_out0_tuser(stream_out0_tuser),
    .stream_out0_tvalid(stream_out0_tvalid),
    .stream_out1_tdata(stream_out1_tdata),
    .stream_out1_tlast(stream_out1_tlast),
    .stream_out1_tready(stream_out1_tready),
    .stream_out1_tuser(stream_out1_tuser),
    .stream_out1_tvalid(stream_out1_tvalid),
    .stream_out2_tdata(stream_out2_tdata),
    .stream_out2_tlast(stream_out2_tlast),
    .stream_out2_tready(stream_out2_tready),
    .stream_out2_tuser(stream_out2_tuser),
    .stream_out2_tvalid(stream_out2_tvalid),
    .stream_out3_tdata(stream_out3_tdata),
    .stream_out3_tlast(stream_out3_tlast),
    .stream_out3_tready(stream_out3_tready),
    .stream_out3_tuser(stream_out3_tuser),
    .stream_out3_tvalid(stream_out3_tvalid),
    .clk(clk),
    .switch(switch)
  );
endmodule
