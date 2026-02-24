// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDIVIDE_BY_13_H
#define XDIVIDE_BY_13_H

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
#include "xdivide_by_13_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XDivide_by_13_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDivide_by_13;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDivide_by_13_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDivide_by_13_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDivide_by_13_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDivide_by_13_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XDivide_by_13_Initialize(XDivide_by_13 *InstancePtr, UINTPTR BaseAddress);
XDivide_by_13_Config* XDivide_by_13_LookupConfig(UINTPTR BaseAddress);
#else
int XDivide_by_13_Initialize(XDivide_by_13 *InstancePtr, u16 DeviceId);
XDivide_by_13_Config* XDivide_by_13_LookupConfig(u16 DeviceId);
#endif
int XDivide_by_13_CfgInitialize(XDivide_by_13 *InstancePtr, XDivide_by_13_Config *ConfigPtr);
#else
int XDivide_by_13_Initialize(XDivide_by_13 *InstancePtr, const char* InstanceName);
int XDivide_by_13_Release(XDivide_by_13 *InstancePtr);
#endif

void XDivide_by_13_Start(XDivide_by_13 *InstancePtr);
u32 XDivide_by_13_IsDone(XDivide_by_13 *InstancePtr);
u32 XDivide_by_13_IsIdle(XDivide_by_13 *InstancePtr);
u32 XDivide_by_13_IsReady(XDivide_by_13 *InstancePtr);
void XDivide_by_13_EnableAutoRestart(XDivide_by_13 *InstancePtr);
void XDivide_by_13_DisableAutoRestart(XDivide_by_13 *InstancePtr);


void XDivide_by_13_InterruptGlobalEnable(XDivide_by_13 *InstancePtr);
void XDivide_by_13_InterruptGlobalDisable(XDivide_by_13 *InstancePtr);
void XDivide_by_13_InterruptEnable(XDivide_by_13 *InstancePtr, u32 Mask);
void XDivide_by_13_InterruptDisable(XDivide_by_13 *InstancePtr, u32 Mask);
void XDivide_by_13_InterruptClear(XDivide_by_13 *InstancePtr, u32 Mask);
u32 XDivide_by_13_InterruptGetEnabled(XDivide_by_13 *InstancePtr);
u32 XDivide_by_13_InterruptGetStatus(XDivide_by_13 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
