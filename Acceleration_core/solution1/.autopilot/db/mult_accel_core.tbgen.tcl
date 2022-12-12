set moduleName mult_accel_core
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mult_accel_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_data_V int 32 regular {fifo 0 volatile }  }
	{ in_stream_keep_V int 4 regular {fifo 0 volatile }  }
	{ in_stream_strb_V int 4 regular {fifo 0 volatile }  }
	{ in_stream_user_V int 4 regular {fifo 0 volatile }  }
	{ in_stream_last_V int 1 regular {fifo 0 volatile }  }
	{ in_stream_id_V int 5 regular {fifo 0 volatile }  }
	{ in_stream_dest_V int 5 regular {fifo 0 volatile }  }
	{ out_stream_data_V int 32 regular {fifo 1 volatile }  }
	{ out_stream_keep_V int 4 regular {fifo 1 volatile }  }
	{ out_stream_strb_V int 4 regular {fifo 1 volatile }  }
	{ out_stream_user_V int 4 regular {fifo 1 volatile }  }
	{ out_stream_last_V int 1 regular {fifo 1 volatile }  }
	{ out_stream_id_V int 5 regular {fifo 1 volatile }  }
	{ out_stream_dest_V int 5 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_user_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_id_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_dest_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_user_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_id_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_dest_V", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ in_stream_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_stream_data_V_read sc_out sc_logic 1 signal 0 } 
	{ in_stream_keep_V_dout sc_in sc_lv 4 signal 1 } 
	{ in_stream_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_stream_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ in_stream_strb_V_dout sc_in sc_lv 4 signal 2 } 
	{ in_stream_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_stream_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ in_stream_user_V_dout sc_in sc_lv 4 signal 3 } 
	{ in_stream_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ in_stream_user_V_read sc_out sc_logic 1 signal 3 } 
	{ in_stream_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ in_stream_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ in_stream_last_V_read sc_out sc_logic 1 signal 4 } 
	{ in_stream_id_V_dout sc_in sc_lv 5 signal 5 } 
	{ in_stream_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ in_stream_id_V_read sc_out sc_logic 1 signal 5 } 
	{ in_stream_dest_V_dout sc_in sc_lv 5 signal 6 } 
	{ in_stream_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ in_stream_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ out_stream_data_V_din sc_out sc_lv 32 signal 7 } 
	{ out_stream_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ out_stream_data_V_write sc_out sc_logic 1 signal 7 } 
	{ out_stream_keep_V_din sc_out sc_lv 4 signal 8 } 
	{ out_stream_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ out_stream_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ out_stream_strb_V_din sc_out sc_lv 4 signal 9 } 
	{ out_stream_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ out_stream_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ out_stream_user_V_din sc_out sc_lv 4 signal 10 } 
	{ out_stream_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ out_stream_user_V_write sc_out sc_logic 1 signal 10 } 
	{ out_stream_last_V_din sc_out sc_lv 1 signal 11 } 
	{ out_stream_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ out_stream_last_V_write sc_out sc_logic 1 signal 11 } 
	{ out_stream_id_V_din sc_out sc_lv 5 signal 12 } 
	{ out_stream_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ out_stream_id_V_write sc_out sc_logic 1 signal 12 } 
	{ out_stream_dest_V_din sc_out sc_lv 5 signal 13 } 
	{ out_stream_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ out_stream_dest_V_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_data_V", "role": "dout" }} , 
 	{ "name": "in_stream_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_data_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_data_V", "role": "read" }} , 
 	{ "name": "in_stream_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_keep_V", "role": "dout" }} , 
 	{ "name": "in_stream_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_keep_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_keep_V", "role": "read" }} , 
 	{ "name": "in_stream_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_strb_V", "role": "dout" }} , 
 	{ "name": "in_stream_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_strb_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_strb_V", "role": "read" }} , 
 	{ "name": "in_stream_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_user_V", "role": "dout" }} , 
 	{ "name": "in_stream_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_user_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_user_V", "role": "read" }} , 
 	{ "name": "in_stream_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_last_V", "role": "dout" }} , 
 	{ "name": "in_stream_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_last_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_last_V", "role": "read" }} , 
 	{ "name": "in_stream_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_id_V", "role": "dout" }} , 
 	{ "name": "in_stream_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_id_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_id_V", "role": "read" }} , 
 	{ "name": "in_stream_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_dest_V", "role": "dout" }} , 
 	{ "name": "in_stream_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_dest_V", "role": "empty_n" }} , 
 	{ "name": "in_stream_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_dest_V", "role": "read" }} , 
 	{ "name": "out_stream_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "din" }} , 
 	{ "name": "out_stream_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "full_n" }} , 
 	{ "name": "out_stream_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "write" }} , 
 	{ "name": "out_stream_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "din" }} , 
 	{ "name": "out_stream_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "full_n" }} , 
 	{ "name": "out_stream_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "write" }} , 
 	{ "name": "out_stream_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "din" }} , 
 	{ "name": "out_stream_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "full_n" }} , 
 	{ "name": "out_stream_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "write" }} , 
 	{ "name": "out_stream_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "din" }} , 
 	{ "name": "out_stream_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "full_n" }} , 
 	{ "name": "out_stream_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "write" }} , 
 	{ "name": "out_stream_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "din" }} , 
 	{ "name": "out_stream_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "full_n" }} , 
 	{ "name": "out_stream_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "write" }} , 
 	{ "name": "out_stream_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "din" }} , 
 	{ "name": "out_stream_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "full_n" }} , 
 	{ "name": "out_stream_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "write" }} , 
 	{ "name": "out_stream_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "din" }} , 
 	{ "name": "out_stream_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "full_n" }} , 
 	{ "name": "out_stream_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "7"],
		"CDFG" : "mult_accel_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11764", "EstimateLatencyMax" : "11764",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_vector_multiply_hw_fu_193"}],
		"Port" : [
			{"Name" : "in_stream_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_data_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_data_V"}]},
			{"Name" : "in_stream_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_keep_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_keep_V"}]},
			{"Name" : "in_stream_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_strb_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_strb_V"}]},
			{"Name" : "in_stream_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_user_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_user_V"}]},
			{"Name" : "in_stream_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_last_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_last_V"}]},
			{"Name" : "in_stream_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_id_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_id_V"}]},
			{"Name" : "in_stream_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_dest_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_pop_stream_fu_199", "Port" : "e_dest_V"}]},
			{"Name" : "out_stream_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_dest_V_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_pop_stream_fu_199", "SubBlockPort" : ["e_data_V_blk_n", "e_keep_V_blk_n", "e_strb_V_blk_n", "e_user_V_blk_n", "e_last_V_blk_n", "e_id_V_blk_n", "e_dest_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vector_multiply_hw_fu_193", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "vector_multiply_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8625", "EstimateLatencyMax" : "8625",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vector_multiply_hw_fu_193.mult_accel_core_cbkb_U8", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vector_multiply_hw_fu_193.mult_accel_core_ccud_U9", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pop_stream_fu_199", "Parent" : "0",
		"CDFG" : "pop_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "e_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_data_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_keep_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_strb_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_user_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_last_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_id_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "e_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_dest_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_push_stream_fu_219", "Parent" : "0",
		"CDFG" : "push_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	mult_accel_core {
		in_stream_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_data_V {Type O LastRead -1 FirstWrite 3}
		out_stream_keep_V {Type O LastRead -1 FirstWrite 3}
		out_stream_strb_V {Type O LastRead -1 FirstWrite 3}
		out_stream_user_V {Type O LastRead -1 FirstWrite 3}
		out_stream_last_V {Type O LastRead -1 FirstWrite 3}
		out_stream_id_V {Type O LastRead -1 FirstWrite 3}
		out_stream_dest_V {Type O LastRead -1 FirstWrite 3}}
	vector_multiply_hw {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}}
	pop_stream {
		e_data_V {Type I LastRead 0 FirstWrite -1}
		e_keep_V {Type I LastRead 0 FirstWrite -1}
		e_strb_V {Type I LastRead 0 FirstWrite -1}
		e_user_V {Type I LastRead 0 FirstWrite -1}
		e_last_V {Type I LastRead 0 FirstWrite -1}
		e_id_V {Type I LastRead 0 FirstWrite -1}
		e_dest_V {Type I LastRead 0 FirstWrite -1}}
	push_stream {
		v_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11764", "Max" : "11764"}
	, {"Name" : "Interval", "Min" : "11764", "Max" : "11764"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_data_V { ap_fifo {  { in_stream_data_V_dout fifo_data 0 32 }  { in_stream_data_V_empty_n fifo_status 0 1 }  { in_stream_data_V_read fifo_update 1 1 } } }
	in_stream_keep_V { ap_fifo {  { in_stream_keep_V_dout fifo_data 0 4 }  { in_stream_keep_V_empty_n fifo_status 0 1 }  { in_stream_keep_V_read fifo_update 1 1 } } }
	in_stream_strb_V { ap_fifo {  { in_stream_strb_V_dout fifo_data 0 4 }  { in_stream_strb_V_empty_n fifo_status 0 1 }  { in_stream_strb_V_read fifo_update 1 1 } } }
	in_stream_user_V { ap_fifo {  { in_stream_user_V_dout fifo_data 0 4 }  { in_stream_user_V_empty_n fifo_status 0 1 }  { in_stream_user_V_read fifo_update 1 1 } } }
	in_stream_last_V { ap_fifo {  { in_stream_last_V_dout fifo_data 0 1 }  { in_stream_last_V_empty_n fifo_status 0 1 }  { in_stream_last_V_read fifo_update 1 1 } } }
	in_stream_id_V { ap_fifo {  { in_stream_id_V_dout fifo_data 0 5 }  { in_stream_id_V_empty_n fifo_status 0 1 }  { in_stream_id_V_read fifo_update 1 1 } } }
	in_stream_dest_V { ap_fifo {  { in_stream_dest_V_dout fifo_data 0 5 }  { in_stream_dest_V_empty_n fifo_status 0 1 }  { in_stream_dest_V_read fifo_update 1 1 } } }
	out_stream_data_V { ap_fifo {  { out_stream_data_V_din fifo_data 1 32 }  { out_stream_data_V_full_n fifo_status 0 1 }  { out_stream_data_V_write fifo_update 1 1 } } }
	out_stream_keep_V { ap_fifo {  { out_stream_keep_V_din fifo_data 1 4 }  { out_stream_keep_V_full_n fifo_status 0 1 }  { out_stream_keep_V_write fifo_update 1 1 } } }
	out_stream_strb_V { ap_fifo {  { out_stream_strb_V_din fifo_data 1 4 }  { out_stream_strb_V_full_n fifo_status 0 1 }  { out_stream_strb_V_write fifo_update 1 1 } } }
	out_stream_user_V { ap_fifo {  { out_stream_user_V_din fifo_data 1 4 }  { out_stream_user_V_full_n fifo_status 0 1 }  { out_stream_user_V_write fifo_update 1 1 } } }
	out_stream_last_V { ap_fifo {  { out_stream_last_V_din fifo_data 1 1 }  { out_stream_last_V_full_n fifo_status 0 1 }  { out_stream_last_V_write fifo_update 1 1 } } }
	out_stream_id_V { ap_fifo {  { out_stream_id_V_din fifo_data 1 5 }  { out_stream_id_V_full_n fifo_status 0 1 }  { out_stream_id_V_write fifo_update 1 1 } } }
	out_stream_dest_V { ap_fifo {  { out_stream_dest_V_din fifo_data 1 5 }  { out_stream_dest_V_full_n fifo_status 0 1 }  { out_stream_dest_V_write fifo_update 1 1 } } }
}
