# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Adapter definition:
set corename CONTROL_BUS
set opts {
    {
        id -1
        name ap_start
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 1
        mode ap_ctrl
    }
    {
        id -2
        name ap_ready
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -3
        name ap_done
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
    {
        id -4
        name ap_idle
        reset_level 1
        sync_rst true
        type scalar
        dir O
        width 1
        mode ap_ctrl
    }
}
set portmap { }
set metadata {}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Adapter definition:
set corename INPUT_STREAM
set opts {
    {
        id 30
        name in_stream_data_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 32
    }
    {
        id 31
        name in_stream_keep_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 4
    }
    {
        id 32
        name in_stream_strb_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 4
    }
    {
        id 33
        name in_stream_user_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 4
    }
    {
        id 34
        name in_stream_last_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 1
    }
    {
        id 35
        name in_stream_id_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 5
    }
    {
        id 36
        name in_stream_dest_V
        reset_level 1
        sync_rst true
        type fifo
        dir I
        width 5
    }
}
set portmap { }
set metadata { -bus_bundle INPUT_STREAM}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axis_gen] == "::AESL_LIB_XILADAPTER::axis_gen"} {
eval "::AESL_LIB_XILADAPTER::axis_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axis_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Adapter definition:
set corename OUTPUT_STREAM
set opts {
    {
        id 37
        name out_stream_data_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 32
    }
    {
        id 38
        name out_stream_keep_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 4
    }
    {
        id 39
        name out_stream_strb_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 4
    }
    {
        id 40
        name out_stream_user_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 4
    }
    {
        id 41
        name out_stream_last_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 1
    }
    {
        id 42
        name out_stream_id_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 5
    }
    {
        id 43
        name out_stream_dest_V
        reset_level 1
        sync_rst true
        type fifo
        dir O
        width 5
    }
}
set portmap { }
set metadata { -bus_bundle OUTPUT_STREAM}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axis_gen] == "::AESL_LIB_XILADAPTER::axis_gen"} {
eval "::AESL_LIB_XILADAPTER::axis_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axis_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}



# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -6 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


