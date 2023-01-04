vector_mult_c_HLS contains source .cpp file of Acceleration_core


Acceleration_core is a HLS project, contains generated ip.
different file location may cause error.
-Creat new peoject in HLS
-Select .cpp as source, browse 'mult_accel_core_call' as top function
-select .cpp as testbench
-select 'xc7z007sclg225-1' as part

- 'directives.tcl' is modified
- synthesis to creat RTL logic
- Run c simulation to debug c code
- Run c/RTL cosimulation to debug testbench
- Export RTL to generate ip

