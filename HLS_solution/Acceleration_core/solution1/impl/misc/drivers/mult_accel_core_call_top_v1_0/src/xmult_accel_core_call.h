// ==============================================================
// File generated on Sun Dec 11 17:08:42 +0100 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMULT_ACCEL_CORE_CALL_H
#define XMULT_ACCEL_CORE_CALL_H

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
#include "xmult_accel_core_call_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XMult_accel_core_call_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XMult_accel_core_call;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMult_accel_core_call_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMult_accel_core_call_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMult_accel_core_call_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMult_accel_core_call_ReadReg(BaseAddress, RegOffset) \
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
int XMult_accel_core_call_Initialize(XMult_accel_core_call *InstancePtr, u16 DeviceId);
XMult_accel_core_call_Config* XMult_accel_core_call_LookupConfig(u16 DeviceId);
int XMult_accel_core_call_CfgInitialize(XMult_accel_core_call *InstancePtr, XMult_accel_core_call_Config *ConfigPtr);
#else
int XMult_accel_core_call_Initialize(XMult_accel_core_call *InstancePtr, const char* InstanceName);
int XMult_accel_core_call_Release(XMult_accel_core_call *InstancePtr);
#endif

void XMult_accel_core_call_Start(XMult_accel_core_call *InstancePtr);
u32 XMult_accel_core_call_IsDone(XMult_accel_core_call *InstancePtr);
u32 XMult_accel_core_call_IsIdle(XMult_accel_core_call *InstancePtr);
u32 XMult_accel_core_call_IsReady(XMult_accel_core_call *InstancePtr);
void XMult_accel_core_call_EnableAutoRestart(XMult_accel_core_call *InstancePtr);
void XMult_accel_core_call_DisableAutoRestart(XMult_accel_core_call *InstancePtr);


void XMult_accel_core_call_InterruptGlobalEnable(XMult_accel_core_call *InstancePtr);
void XMult_accel_core_call_InterruptGlobalDisable(XMult_accel_core_call *InstancePtr);
void XMult_accel_core_call_InterruptEnable(XMult_accel_core_call *InstancePtr, u32 Mask);
void XMult_accel_core_call_InterruptDisable(XMult_accel_core_call *InstancePtr, u32 Mask);
void XMult_accel_core_call_InterruptClear(XMult_accel_core_call *InstancePtr, u32 Mask);
u32 XMult_accel_core_call_InterruptGetEnabled(XMult_accel_core_call *InstancePtr);
u32 XMult_accel_core_call_InterruptGetStatus(XMult_accel_core_call *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
