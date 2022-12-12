// ==============================================================
// File generated on Sun Dec 11 17:09:05 +0100 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmult_accel_core_call.h"

extern XMult_accel_core_call_Config XMult_accel_core_call_ConfigTable[];

XMult_accel_core_call_Config *XMult_accel_core_call_LookupConfig(u16 DeviceId) {
	XMult_accel_core_call_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULT_ACCEL_CORE_CALL_NUM_INSTANCES; Index++) {
		if (XMult_accel_core_call_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMult_accel_core_call_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMult_accel_core_call_Initialize(XMult_accel_core_call *InstancePtr, u16 DeviceId) {
	XMult_accel_core_call_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMult_accel_core_call_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMult_accel_core_call_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

