// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdivisible.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDivisible_CfgInitialize(XDivisible *InstancePtr, XDivisible_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDivisible_Set_a(XDivisible *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivisible_WriteReg(InstancePtr->Control_BaseAddress, XDIVISIBLE_CONTROL_ADDR_A_DATA, Data);
}

u32 XDivisible_Get_a(XDivisible *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivisible_ReadReg(InstancePtr->Control_BaseAddress, XDIVISIBLE_CONTROL_ADDR_A_DATA);
    return Data;
}

u32 XDivisible_Get_c(XDivisible *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivisible_ReadReg(InstancePtr->Control_BaseAddress, XDIVISIBLE_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XDivisible_Get_c_vld(XDivisible *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivisible_ReadReg(InstancePtr->Control_BaseAddress, XDIVISIBLE_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

