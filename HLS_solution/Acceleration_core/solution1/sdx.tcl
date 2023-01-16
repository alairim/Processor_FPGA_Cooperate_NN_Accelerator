# ==============================================================
# File generated on Sun Dec 11 17:08:43 +0100 2022
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../vector_mult_c_HLS/accelerator_core.cpp -cflags { -Wno-unknown-pragmas}
add_files vector_mult_c_HLS/accelerator_core.cpp
set_part xc7z007sclg225-1
create_clock -name default -period 10
config_export -format=ip_catalog
config_export -rtl=verilog
