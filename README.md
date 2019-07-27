# Zynq-7000-Video-Overlay

## 系统简介
该通路实现了

## 软件需求
* Vivado&reg; Design Suite 2018.2

* Board files for PYNQ-Z2

* Xilinx SDK 2018.2

## 硬件需求

* PYNQ-Z2开发板

* MicroUSB数据线

* 0V5640摄像头

* PMOD转接板

* HDMI线

* HDMI显示屏

![system](images/system.png)

## 系统设计

### 视频系统通路
该通路采用 OV5640 摄像头输入，将 DVP 信号转为 AXI Stream 信号送入 VDMA，之
后通过 VDMA 将帧缓存送入 HLS 编写的处理 IP 进行处理后再存入 VDMA，并将帧缓存
转为 HDMI 信号输出显示，其中裸机程序在 SDK 中编写。

### 图像处理模块
使用HLS及xfOpenCV编写图像处理IP，添加到输入和输出VMDA之间，对Axi Stream协议的数据进行处理。该系统添加了原图、Resize、Sobel-X和Sobel-Y四个数据通路，可以在SDK中编写程序进行切换。

## 展示效果
效果可以参考result.mp4

## 参考
1. 

## TODO