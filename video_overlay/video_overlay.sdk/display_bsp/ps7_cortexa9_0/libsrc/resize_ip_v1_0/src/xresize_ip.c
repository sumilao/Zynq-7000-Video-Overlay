// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xresize_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XResize_ip_CfgInitialize(XResize_ip *InstancePtr, XResize_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XResize_ip_Start(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL) & 0x80;
    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XResize_ip_IsDone(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XResize_ip_IsIdle(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XResize_ip_IsReady(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XResize_ip_EnableAutoRestart(XResize_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XResize_ip_DisableAutoRestart(XResize_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_AP_CTRL, 0);
}

void XResize_ip_Set_src_height(XResize_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_SRC_HEIGHT_DATA, Data);
}

u32 XResize_ip_Get_src_height(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_SRC_HEIGHT_DATA);
    return Data;
}

void XResize_ip_Set_src_width(XResize_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_SRC_WIDTH_DATA, Data);
}

u32 XResize_ip_Get_src_width(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_SRC_WIDTH_DATA);
    return Data;
}

void XResize_ip_Set_dst_height(XResize_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_DST_HEIGHT_DATA, Data);
}

u32 XResize_ip_Get_dst_height(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_DST_HEIGHT_DATA);
    return Data;
}

void XResize_ip_Set_dst_width(XResize_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_DST_WIDTH_DATA, Data);
}

u32 XResize_ip_Get_dst_width(XResize_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_DST_WIDTH_DATA);
    return Data;
}

void XResize_ip_InterruptGlobalEnable(XResize_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_GIE, 1);
}

void XResize_ip_InterruptGlobalDisable(XResize_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_GIE, 0);
}

void XResize_ip_InterruptEnable(XResize_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_IER);
    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_IER, Register | Mask);
}

void XResize_ip_InterruptDisable(XResize_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_IER);
    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_IER, Register & (~Mask));
}

void XResize_ip_InterruptClear(XResize_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XResize_ip_WriteReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_ISR, Mask);
}

u32 XResize_ip_InterruptGetEnabled(XResize_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_IER);
}

u32 XResize_ip_InterruptGetStatus(XResize_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XResize_ip_ReadReg(InstancePtr->Axilites_BaseAddress, XRESIZE_IP_AXILITES_ADDR_ISR);
}
