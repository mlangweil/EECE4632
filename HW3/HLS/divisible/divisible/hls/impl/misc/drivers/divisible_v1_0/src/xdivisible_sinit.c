// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xdivisible.h"

extern XDivisible_Config XDivisible_ConfigTable[];

#ifdef SDT
XDivisible_Config *XDivisible_LookupConfig(UINTPTR BaseAddress) {
	XDivisible_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XDivisible_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XDivisible_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XDivisible_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDivisible_Initialize(XDivisible *InstancePtr, UINTPTR BaseAddress) {
	XDivisible_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDivisible_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDivisible_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XDivisible_Config *XDivisible_LookupConfig(u16 DeviceId) {
	XDivisible_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDIVISIBLE_NUM_INSTANCES; Index++) {
		if (XDivisible_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDivisible_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDivisible_Initialize(XDivisible *InstancePtr, u16 DeviceId) {
	XDivisible_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDivisible_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDivisible_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

