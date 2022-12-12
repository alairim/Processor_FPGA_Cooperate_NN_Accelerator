############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Acceleration_core
set_top mult_accel_core_call
add_files accelerator_core.cpp
add_files -tb accelerator_core.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z007sclg225-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./Acceleration_core/solution1/directives.tcl"
csim_design -clean -setup
csynth_design
cosim_design -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog
