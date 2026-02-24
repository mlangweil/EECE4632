# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
# Tool Version Limit: 2024.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(divide_by_13)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xdivide_by_13.c)
collect (PROJECT_LIB_SOURCES xdivide_by_13_sinit.c)
collect (PROJECT_LIB_SOURCES xdivide_by_13_linux.c)
collect (PROJECT_LIB_SOURCES xdivide_by_13_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xdivide_by_13.h)
collect (PROJECT_LIB_HEADERS xdivide_by_13_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(divide_by_13 STATIC ${_sources})
set_target_properties(divide_by_13 PROPERTIES LINKER_LANGUAGE C)

