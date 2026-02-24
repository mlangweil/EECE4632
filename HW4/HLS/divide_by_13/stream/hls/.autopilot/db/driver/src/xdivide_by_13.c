// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdivide_by_13.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDivide_by_13_CfgInitialize(XDivide_by_13 *InstancePtr, XDivide_by_13_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDivide_by_13_Start(XDivide_by_13 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDivide_by_13_IsDone(XDivide_by_13 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDivide_by_13_IsIdle(XDivide_by_13 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDivide_by_13_IsReady(XDivide_by_13 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDivide_by_13_EnableAutoRestart(XDivide_by_13 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDivide_by_13_DisableAutoRestart(XDivide_by_13 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_AP_CTRL, 0);
}

void XDivide_by_13_InterruptGlobalEnable(XDivide_by_13 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_GIE, 1);
}

void XDivide_by_13_InterruptGlobalDisable(XDivide_by_13 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_GIE, 0);
}

void XDivide_by_13_InterruptEnable(XDivide_by_13 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_IER);
    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_IER, Register | Mask);
}

void XDivide_by_13_InterruptDisable(XDivide_by_13 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_IER);
    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDivide_by_13_InterruptClear(XDivide_by_13 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_by_13_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_ISR, Mask);
}

u32 XDivide_by_13_InterruptGetEnabled(XDivide_by_13 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_IER);
}

u32 XDivide_by_13_InterruptGetStatus(XDivide_by_13 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDivide_by_13_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_BY_13_CONTROL_ADDR_ISR);
}

