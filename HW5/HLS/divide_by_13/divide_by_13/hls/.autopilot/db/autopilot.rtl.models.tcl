set SynModuleInfo {
  {SRCNAME divide_by_13 MODELNAME divide_by_13 RTLNAME divide_by_13 IS_TOP 1
    SUBMODULES {
      {MODELNAME divide_by_13_srem_32ns_5ns_5_36_1 RTLNAME divide_by_13_srem_32ns_5ns_5_36_1 BINDTYPE op TYPE srem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME divide_by_13_control_s_axi RTLNAME divide_by_13_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME divide_by_13_regslice_both RTLNAME divide_by_13_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME divide_by_13_flow_control_loop_pipe RTLNAME divide_by_13_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME divide_by_13_flow_control_loop_pipe_U}
    }
  }
}
