set SynModuleInfo {
  {SRCNAME mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 MODELNAME mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2 RTLNAME mmult_hw_mmult_hw_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_30_2
    SUBMODULES {
      {MODELNAME mmult_hw_flow_control_loop_pipe_sequential_init RTLNAME mmult_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mmult_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4 MODELNAME mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4 RTLNAME mmult_hw_mmult_hw_Pipeline_VITIS_LOOP_36_3_VITIS_LOOP_37_4}
  {SRCNAME mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6 MODELNAME mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6 RTLNAME mmult_hw_mmult_hw_Pipeline_VITIS_LOOP_43_5_VITIS_LOOP_44_6
    SUBMODULES {
      {MODELNAME mmult_hw_mul_32s_32s_32_1_1 RTLNAME mmult_hw_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mmult_hw MODELNAME mmult_hw RTLNAME mmult_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME mmult_hw_A_RAM_1WNR_AUTO_1R1W RTLNAME mmult_hw_A_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mmult_hw_gmem_m_axi RTLNAME mmult_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mmult_hw_CTRL_s_axi RTLNAME mmult_hw_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mmult_hw_control_s_axi RTLNAME mmult_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
