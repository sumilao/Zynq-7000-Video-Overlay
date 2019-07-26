`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/24 13:36:05
// Design Name: 
// Module Name: video_divide
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module video_divide#(
parameter WIDTH = 24
)
(    
    input [WIDTH - 1:0] stream_in_tdata,
    input  stream_in_tlast,
    output reg stream_in_tready,
    input  stream_in_tuser,
    input  stream_in_tvalid,
    
    output reg [WIDTH - 1:0] stream_out0_tdata,
    output reg stream_out0_tlast,
    input stream_out0_tready,
    output reg stream_out0_tuser,
    output reg stream_out0_tvalid,
    
    output reg [WIDTH - 1:0] stream_out1_tdata,
    output reg stream_out1_tlast,
    input stream_out1_tready,
    output reg stream_out1_tuser,
    output reg stream_out1_tvalid,
    
    output reg [WIDTH - 1:0] stream_out2_tdata,
    output reg stream_out2_tlast,
    input stream_out2_tready,
    output reg stream_out2_tuser,
    output reg stream_out2_tvalid,
    
    output reg [WIDTH - 1:0] stream_out3_tdata,
    output reg stream_out3_tlast,
    input stream_out3_tready,
    output reg stream_out3_tuser,
    output reg stream_out3_tvalid,
    
    input clk,    
    input [31:0] switch
    
    );

    always @(*)
    begin
        case(switch)
        0:begin
            stream_in_tready = stream_out0_tready;
            stream_out0_tvalid = stream_in_tvalid;
            stream_out0_tdata = stream_in_tdata;
            stream_out0_tuser = stream_in_tuser;
            stream_out0_tlast = stream_in_tlast;
        end
        1:begin
            stream_in_tready = stream_out1_tready;
            stream_out1_tvalid = stream_in_tvalid;
            stream_out1_tdata = stream_in_tdata;
            stream_out1_tuser = stream_in_tuser;
            stream_out1_tlast = stream_in_tlast;
        end
        2:begin
            stream_in_tready = stream_out2_tready;
            stream_out2_tvalid = stream_in_tvalid;
            stream_out2_tdata = stream_in_tdata;
            stream_out2_tuser = stream_in_tuser;
            stream_out2_tlast = stream_in_tlast;
        end
        3:begin
            stream_in_tready = stream_out2_tready;
            stream_out2_tvalid = stream_in_tvalid;
            stream_out2_tdata = stream_in_tdata;
            stream_out2_tuser = stream_in_tuser;
            stream_out2_tlast = stream_in_tlast;
        end
        default:begin
            stream_in_tready = stream_out0_tready;
            stream_out0_tvalid = stream_in_tvalid;
            stream_out0_tdata = stream_in_tdata;
            stream_out0_tuser = stream_in_tuser;
            stream_out0_tlast = stream_in_tlast;
        end
        endcase
    end
endmodule
