// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XINNER_CTRL_H
#define XINNER_CTRL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xinner_ctrl_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XInner_ctrl_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XInner_ctrl;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInner_ctrl_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInner_ctrl_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInner_ctrl_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInner_ctrl_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XInner_ctrl_Initialize(XInner_ctrl *InstancePtr, u16 DeviceId);
XInner_ctrl_Config* XInner_ctrl_LookupConfig(u16 DeviceId);
int XInner_ctrl_CfgInitialize(XInner_ctrl *InstancePtr, XInner_ctrl_Config *ConfigPtr);
#else
int XInner_ctrl_Initialize(XInner_ctrl *InstancePtr, const char* InstanceName);
int XInner_ctrl_Release(XInner_ctrl *InstancePtr);
#endif

void XInner_ctrl_Start(XInner_ctrl *InstancePtr);
u32 XInner_ctrl_IsDone(XInner_ctrl *InstancePtr);
u32 XInner_ctrl_IsIdle(XInner_ctrl *InstancePtr);
u32 XInner_ctrl_IsReady(XInner_ctrl *InstancePtr);
void XInner_ctrl_EnableAutoRestart(XInner_ctrl *InstancePtr);
void XInner_ctrl_DisableAutoRestart(XInner_ctrl *InstancePtr);

u32 XInner_ctrl_Get_input_V(XInner_ctrl *InstancePtr);
u32 XInner_ctrl_Get_input_V_vld(XInner_ctrl *InstancePtr);
void XInner_ctrl_Set_output_V(XInner_ctrl *InstancePtr, u32 Data);
u32 XInner_ctrl_Get_output_V(XInner_ctrl *InstancePtr);

void XInner_ctrl_InterruptGlobalEnable(XInner_ctrl *InstancePtr);
void XInner_ctrl_InterruptGlobalDisable(XInner_ctrl *InstancePtr);
void XInner_ctrl_InterruptEnable(XInner_ctrl *InstancePtr, u32 Mask);
void XInner_ctrl_InterruptDisable(XInner_ctrl *InstancePtr, u32 Mask);
void XInner_ctrl_InterruptClear(XInner_ctrl *InstancePtr, u32 Mask);
u32 XInner_ctrl_InterruptGetEnabled(XInner_ctrl *InstancePtr);
u32 XInner_ctrl_InterruptGetStatus(XInner_ctrl *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
