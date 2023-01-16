// ==============================================================
// File generated on Sun Dec 11 17:08:42 +0100 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmult_accel_core_call.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMult_accel_core_call_CfgInitialize(XMult_accel_core_call *InstancePtr, XMult_accel_core_call_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMult_accel_core_call_Start(XMult_accel_core_call *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMult_accel_core_call_IsDone(XMult_accel_core_call *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMult_accel_core_call_IsIdle(XMult_accel_core_call *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMult_accel_core_call_IsReady(XMult_accel_core_call *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMult_accel_core_call_EnableAutoRestart(XMult_accel_core_call *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XMult_accel_core_call_DisableAutoRestart(XMult_accel_core_call *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XMult_accel_core_call_InterruptGlobalEnable(XMult_accel_core_call *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_GIE, 1);
}

void XMult_accel_core_call_InterruptGlobalDisable(XMult_accel_core_call *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_GIE, 0);
}

void XMult_accel_core_call_InterruptEnable(XMult_accel_core_call *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_IER);
    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XMult_accel_core_call_InterruptDisable(XMult_accel_core_call *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_IER);
    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XMult_accel_core_call_InterruptClear(XMult_accel_core_call *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMult_accel_core_call_WriteReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XMult_accel_core_call_InterruptGetEnabled(XMult_accel_core_call *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_IER);
}

u32 XMult_accel_core_call_InterruptGetStatus(XMult_accel_core_call *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMult_accel_core_call_ReadReg(InstancePtr->Control_bus_BaseAddress, XMULT_ACCEL_CORE_CALL_CONTROL_BUS_ADDR_ISR);
}

