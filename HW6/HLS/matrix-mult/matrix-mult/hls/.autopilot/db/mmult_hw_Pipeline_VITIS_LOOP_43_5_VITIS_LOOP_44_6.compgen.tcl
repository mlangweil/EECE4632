# This script segment is generated automatically by AutoPilot

set name mmult_hw_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B \
    op interface \
    ports { B_address0 { O 11 vector } B_ce0 { O 1 bit } B_q0 { I 32 vector } B_address1 { O 11 vector } B_ce1 { O 1 bit } B_q1 { I 32 vector } B_address2 { O 11 vector } B_ce2 { O 1 bit } B_q2 { I 32 vector } B_address3 { O 11 vector } B_ce3 { O 1 bit } B_q3 { I 32 vector } B_address4 { O 11 vector } B_ce4 { O 1 bit } B_q4 { I 32 vector } B_address5 { O 11 vector } B_ce5 { O 1 bit } B_q5 { I 32 vector } B_address6 { O 11 vector } B_ce6 { O 1 bit } B_q6 { I 32 vector } B_address7 { O 11 vector } B_ce7 { O 1 bit } B_q7 { I 32 vector } B_address8 { O 11 vector } B_ce8 { O 1 bit } B_q8 { I 32 vector } B_address9 { O 11 vector } B_ce9 { O 1 bit } B_q9 { I 32 vector } B_address10 { O 11 vector } B_ce10 { O 1 bit } B_q10 { I 32 vector } B_address11 { O 11 vector } B_ce11 { O 1 bit } B_q11 { I 32 vector } B_address12 { O 11 vector } B_ce12 { O 1 bit } B_q12 { I 32 vector } B_address13 { O 11 vector } B_ce13 { O 1 bit } B_q13 { I 32 vector } B_address14 { O 11 vector } B_ce14 { O 1 bit } B_q14 { I 32 vector } B_address15 { O 11 vector } B_ce15 { O 1 bit } B_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name B_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_1 \
    op interface \
    ports { B_1_address0 { O 11 vector } B_1_ce0 { O 1 bit } B_1_q0 { I 32 vector } B_1_address1 { O 11 vector } B_1_ce1 { O 1 bit } B_1_q1 { I 32 vector } B_1_address2 { O 11 vector } B_1_ce2 { O 1 bit } B_1_q2 { I 32 vector } B_1_address3 { O 11 vector } B_1_ce3 { O 1 bit } B_1_q3 { I 32 vector } B_1_address4 { O 11 vector } B_1_ce4 { O 1 bit } B_1_q4 { I 32 vector } B_1_address5 { O 11 vector } B_1_ce5 { O 1 bit } B_1_q5 { I 32 vector } B_1_address6 { O 11 vector } B_1_ce6 { O 1 bit } B_1_q6 { I 32 vector } B_1_address7 { O 11 vector } B_1_ce7 { O 1 bit } B_1_q7 { I 32 vector } B_1_address8 { O 11 vector } B_1_ce8 { O 1 bit } B_1_q8 { I 32 vector } B_1_address9 { O 11 vector } B_1_ce9 { O 1 bit } B_1_q9 { I 32 vector } B_1_address10 { O 11 vector } B_1_ce10 { O 1 bit } B_1_q10 { I 32 vector } B_1_address11 { O 11 vector } B_1_ce11 { O 1 bit } B_1_q11 { I 32 vector } B_1_address12 { O 11 vector } B_1_ce12 { O 1 bit } B_1_q12 { I 32 vector } B_1_address13 { O 11 vector } B_1_ce13 { O 1 bit } B_1_q13 { I 32 vector } B_1_address14 { O 11 vector } B_1_ce14 { O 1 bit } B_1_q14 { I 32 vector } B_1_address15 { O 11 vector } B_1_ce15 { O 1 bit } B_1_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name B_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_2 \
    op interface \
    ports { B_2_address0 { O 11 vector } B_2_ce0 { O 1 bit } B_2_q0 { I 32 vector } B_2_address1 { O 11 vector } B_2_ce1 { O 1 bit } B_2_q1 { I 32 vector } B_2_address2 { O 11 vector } B_2_ce2 { O 1 bit } B_2_q2 { I 32 vector } B_2_address3 { O 11 vector } B_2_ce3 { O 1 bit } B_2_q3 { I 32 vector } B_2_address4 { O 11 vector } B_2_ce4 { O 1 bit } B_2_q4 { I 32 vector } B_2_address5 { O 11 vector } B_2_ce5 { O 1 bit } B_2_q5 { I 32 vector } B_2_address6 { O 11 vector } B_2_ce6 { O 1 bit } B_2_q6 { I 32 vector } B_2_address7 { O 11 vector } B_2_ce7 { O 1 bit } B_2_q7 { I 32 vector } B_2_address8 { O 11 vector } B_2_ce8 { O 1 bit } B_2_q8 { I 32 vector } B_2_address9 { O 11 vector } B_2_ce9 { O 1 bit } B_2_q9 { I 32 vector } B_2_address10 { O 11 vector } B_2_ce10 { O 1 bit } B_2_q10 { I 32 vector } B_2_address11 { O 11 vector } B_2_ce11 { O 1 bit } B_2_q11 { I 32 vector } B_2_address12 { O 11 vector } B_2_ce12 { O 1 bit } B_2_q12 { I 32 vector } B_2_address13 { O 11 vector } B_2_ce13 { O 1 bit } B_2_q13 { I 32 vector } B_2_address14 { O 11 vector } B_2_ce14 { O 1 bit } B_2_q14 { I 32 vector } B_2_address15 { O 11 vector } B_2_ce15 { O 1 bit } B_2_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name B_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_3 \
    op interface \
    ports { B_3_address0 { O 11 vector } B_3_ce0 { O 1 bit } B_3_q0 { I 32 vector } B_3_address1 { O 11 vector } B_3_ce1 { O 1 bit } B_3_q1 { I 32 vector } B_3_address2 { O 11 vector } B_3_ce2 { O 1 bit } B_3_q2 { I 32 vector } B_3_address3 { O 11 vector } B_3_ce3 { O 1 bit } B_3_q3 { I 32 vector } B_3_address4 { O 11 vector } B_3_ce4 { O 1 bit } B_3_q4 { I 32 vector } B_3_address5 { O 11 vector } B_3_ce5 { O 1 bit } B_3_q5 { I 32 vector } B_3_address6 { O 11 vector } B_3_ce6 { O 1 bit } B_3_q6 { I 32 vector } B_3_address7 { O 11 vector } B_3_ce7 { O 1 bit } B_3_q7 { I 32 vector } B_3_address8 { O 11 vector } B_3_ce8 { O 1 bit } B_3_q8 { I 32 vector } B_3_address9 { O 11 vector } B_3_ce9 { O 1 bit } B_3_q9 { I 32 vector } B_3_address10 { O 11 vector } B_3_ce10 { O 1 bit } B_3_q10 { I 32 vector } B_3_address11 { O 11 vector } B_3_ce11 { O 1 bit } B_3_q11 { I 32 vector } B_3_address12 { O 11 vector } B_3_ce12 { O 1 bit } B_3_q12 { I 32 vector } B_3_address13 { O 11 vector } B_3_ce13 { O 1 bit } B_3_q13 { I 32 vector } B_3_address14 { O 11 vector } B_3_ce14 { O 1 bit } B_3_q14 { I 32 vector } B_3_address15 { O 11 vector } B_3_ce15 { O 1 bit } B_3_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name B_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_4 \
    op interface \
    ports { B_4_address0 { O 11 vector } B_4_ce0 { O 1 bit } B_4_q0 { I 32 vector } B_4_address1 { O 11 vector } B_4_ce1 { O 1 bit } B_4_q1 { I 32 vector } B_4_address2 { O 11 vector } B_4_ce2 { O 1 bit } B_4_q2 { I 32 vector } B_4_address3 { O 11 vector } B_4_ce3 { O 1 bit } B_4_q3 { I 32 vector } B_4_address4 { O 11 vector } B_4_ce4 { O 1 bit } B_4_q4 { I 32 vector } B_4_address5 { O 11 vector } B_4_ce5 { O 1 bit } B_4_q5 { I 32 vector } B_4_address6 { O 11 vector } B_4_ce6 { O 1 bit } B_4_q6 { I 32 vector } B_4_address7 { O 11 vector } B_4_ce7 { O 1 bit } B_4_q7 { I 32 vector } B_4_address8 { O 11 vector } B_4_ce8 { O 1 bit } B_4_q8 { I 32 vector } B_4_address9 { O 11 vector } B_4_ce9 { O 1 bit } B_4_q9 { I 32 vector } B_4_address10 { O 11 vector } B_4_ce10 { O 1 bit } B_4_q10 { I 32 vector } B_4_address11 { O 11 vector } B_4_ce11 { O 1 bit } B_4_q11 { I 32 vector } B_4_address12 { O 11 vector } B_4_ce12 { O 1 bit } B_4_q12 { I 32 vector } B_4_address13 { O 11 vector } B_4_ce13 { O 1 bit } B_4_q13 { I 32 vector } B_4_address14 { O 11 vector } B_4_ce14 { O 1 bit } B_4_q14 { I 32 vector } B_4_address15 { O 11 vector } B_4_ce15 { O 1 bit } B_4_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name B_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_5 \
    op interface \
    ports { B_5_address0 { O 11 vector } B_5_ce0 { O 1 bit } B_5_q0 { I 32 vector } B_5_address1 { O 11 vector } B_5_ce1 { O 1 bit } B_5_q1 { I 32 vector } B_5_address2 { O 11 vector } B_5_ce2 { O 1 bit } B_5_q2 { I 32 vector } B_5_address3 { O 11 vector } B_5_ce3 { O 1 bit } B_5_q3 { I 32 vector } B_5_address4 { O 11 vector } B_5_ce4 { O 1 bit } B_5_q4 { I 32 vector } B_5_address5 { O 11 vector } B_5_ce5 { O 1 bit } B_5_q5 { I 32 vector } B_5_address6 { O 11 vector } B_5_ce6 { O 1 bit } B_5_q6 { I 32 vector } B_5_address7 { O 11 vector } B_5_ce7 { O 1 bit } B_5_q7 { I 32 vector } B_5_address8 { O 11 vector } B_5_ce8 { O 1 bit } B_5_q8 { I 32 vector } B_5_address9 { O 11 vector } B_5_ce9 { O 1 bit } B_5_q9 { I 32 vector } B_5_address10 { O 11 vector } B_5_ce10 { O 1 bit } B_5_q10 { I 32 vector } B_5_address11 { O 11 vector } B_5_ce11 { O 1 bit } B_5_q11 { I 32 vector } B_5_address12 { O 11 vector } B_5_ce12 { O 1 bit } B_5_q12 { I 32 vector } B_5_address13 { O 11 vector } B_5_ce13 { O 1 bit } B_5_q13 { I 32 vector } B_5_address14 { O 11 vector } B_5_ce14 { O 1 bit } B_5_q14 { I 32 vector } B_5_address15 { O 11 vector } B_5_ce15 { O 1 bit } B_5_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name B_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_6 \
    op interface \
    ports { B_6_address0 { O 11 vector } B_6_ce0 { O 1 bit } B_6_q0 { I 32 vector } B_6_address1 { O 11 vector } B_6_ce1 { O 1 bit } B_6_q1 { I 32 vector } B_6_address2 { O 11 vector } B_6_ce2 { O 1 bit } B_6_q2 { I 32 vector } B_6_address3 { O 11 vector } B_6_ce3 { O 1 bit } B_6_q3 { I 32 vector } B_6_address4 { O 11 vector } B_6_ce4 { O 1 bit } B_6_q4 { I 32 vector } B_6_address5 { O 11 vector } B_6_ce5 { O 1 bit } B_6_q5 { I 32 vector } B_6_address6 { O 11 vector } B_6_ce6 { O 1 bit } B_6_q6 { I 32 vector } B_6_address7 { O 11 vector } B_6_ce7 { O 1 bit } B_6_q7 { I 32 vector } B_6_address8 { O 11 vector } B_6_ce8 { O 1 bit } B_6_q8 { I 32 vector } B_6_address9 { O 11 vector } B_6_ce9 { O 1 bit } B_6_q9 { I 32 vector } B_6_address10 { O 11 vector } B_6_ce10 { O 1 bit } B_6_q10 { I 32 vector } B_6_address11 { O 11 vector } B_6_ce11 { O 1 bit } B_6_q11 { I 32 vector } B_6_address12 { O 11 vector } B_6_ce12 { O 1 bit } B_6_q12 { I 32 vector } B_6_address13 { O 11 vector } B_6_ce13 { O 1 bit } B_6_q13 { I 32 vector } B_6_address14 { O 11 vector } B_6_ce14 { O 1 bit } B_6_q14 { I 32 vector } B_6_address15 { O 11 vector } B_6_ce15 { O 1 bit } B_6_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name B_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename B_7 \
    op interface \
    ports { B_7_address0 { O 11 vector } B_7_ce0 { O 1 bit } B_7_q0 { I 32 vector } B_7_address1 { O 11 vector } B_7_ce1 { O 1 bit } B_7_q1 { I 32 vector } B_7_address2 { O 11 vector } B_7_ce2 { O 1 bit } B_7_q2 { I 32 vector } B_7_address3 { O 11 vector } B_7_ce3 { O 1 bit } B_7_q3 { I 32 vector } B_7_address4 { O 11 vector } B_7_ce4 { O 1 bit } B_7_q4 { I 32 vector } B_7_address5 { O 11 vector } B_7_ce5 { O 1 bit } B_7_q5 { I 32 vector } B_7_address6 { O 11 vector } B_7_ce6 { O 1 bit } B_7_q6 { I 32 vector } B_7_address7 { O 11 vector } B_7_ce7 { O 1 bit } B_7_q7 { I 32 vector } B_7_address8 { O 11 vector } B_7_ce8 { O 1 bit } B_7_q8 { I 32 vector } B_7_address9 { O 11 vector } B_7_ce9 { O 1 bit } B_7_q9 { I 32 vector } B_7_address10 { O 11 vector } B_7_ce10 { O 1 bit } B_7_q10 { I 32 vector } B_7_address11 { O 11 vector } B_7_ce11 { O 1 bit } B_7_q11 { I 32 vector } B_7_address12 { O 11 vector } B_7_ce12 { O 1 bit } B_7_q12 { I 32 vector } B_7_address13 { O 11 vector } B_7_ce13 { O 1 bit } B_7_q13 { I 32 vector } B_7_address14 { O 11 vector } B_7_ce14 { O 1 bit } B_7_q14 { I 32 vector } B_7_address15 { O 11 vector } B_7_ce15 { O 1 bit } B_7_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'B_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name A \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A \
    op interface \
    ports { A_address0 { O 11 vector } A_ce0 { O 1 bit } A_q0 { I 32 vector } A_address1 { O 11 vector } A_ce1 { O 1 bit } A_q1 { I 32 vector } A_address2 { O 11 vector } A_ce2 { O 1 bit } A_q2 { I 32 vector } A_address3 { O 11 vector } A_ce3 { O 1 bit } A_q3 { I 32 vector } A_address4 { O 11 vector } A_ce4 { O 1 bit } A_q4 { I 32 vector } A_address5 { O 11 vector } A_ce5 { O 1 bit } A_q5 { I 32 vector } A_address6 { O 11 vector } A_ce6 { O 1 bit } A_q6 { I 32 vector } A_address7 { O 11 vector } A_ce7 { O 1 bit } A_q7 { I 32 vector } A_address8 { O 11 vector } A_ce8 { O 1 bit } A_q8 { I 32 vector } A_address9 { O 11 vector } A_ce9 { O 1 bit } A_q9 { I 32 vector } A_address10 { O 11 vector } A_ce10 { O 1 bit } A_q10 { I 32 vector } A_address11 { O 11 vector } A_ce11 { O 1 bit } A_q11 { I 32 vector } A_address12 { O 11 vector } A_ce12 { O 1 bit } A_q12 { I 32 vector } A_address13 { O 11 vector } A_ce13 { O 1 bit } A_q13 { I 32 vector } A_address14 { O 11 vector } A_ce14 { O 1 bit } A_q14 { I 32 vector } A_address15 { O 11 vector } A_ce15 { O 1 bit } A_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 11 vector } A_1_ce0 { O 1 bit } A_1_q0 { I 32 vector } A_1_address1 { O 11 vector } A_1_ce1 { O 1 bit } A_1_q1 { I 32 vector } A_1_address2 { O 11 vector } A_1_ce2 { O 1 bit } A_1_q2 { I 32 vector } A_1_address3 { O 11 vector } A_1_ce3 { O 1 bit } A_1_q3 { I 32 vector } A_1_address4 { O 11 vector } A_1_ce4 { O 1 bit } A_1_q4 { I 32 vector } A_1_address5 { O 11 vector } A_1_ce5 { O 1 bit } A_1_q5 { I 32 vector } A_1_address6 { O 11 vector } A_1_ce6 { O 1 bit } A_1_q6 { I 32 vector } A_1_address7 { O 11 vector } A_1_ce7 { O 1 bit } A_1_q7 { I 32 vector } A_1_address8 { O 11 vector } A_1_ce8 { O 1 bit } A_1_q8 { I 32 vector } A_1_address9 { O 11 vector } A_1_ce9 { O 1 bit } A_1_q9 { I 32 vector } A_1_address10 { O 11 vector } A_1_ce10 { O 1 bit } A_1_q10 { I 32 vector } A_1_address11 { O 11 vector } A_1_ce11 { O 1 bit } A_1_q11 { I 32 vector } A_1_address12 { O 11 vector } A_1_ce12 { O 1 bit } A_1_q12 { I 32 vector } A_1_address13 { O 11 vector } A_1_ce13 { O 1 bit } A_1_q13 { I 32 vector } A_1_address14 { O 11 vector } A_1_ce14 { O 1 bit } A_1_q14 { I 32 vector } A_1_address15 { O 11 vector } A_1_ce15 { O 1 bit } A_1_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 11 vector } A_2_ce0 { O 1 bit } A_2_q0 { I 32 vector } A_2_address1 { O 11 vector } A_2_ce1 { O 1 bit } A_2_q1 { I 32 vector } A_2_address2 { O 11 vector } A_2_ce2 { O 1 bit } A_2_q2 { I 32 vector } A_2_address3 { O 11 vector } A_2_ce3 { O 1 bit } A_2_q3 { I 32 vector } A_2_address4 { O 11 vector } A_2_ce4 { O 1 bit } A_2_q4 { I 32 vector } A_2_address5 { O 11 vector } A_2_ce5 { O 1 bit } A_2_q5 { I 32 vector } A_2_address6 { O 11 vector } A_2_ce6 { O 1 bit } A_2_q6 { I 32 vector } A_2_address7 { O 11 vector } A_2_ce7 { O 1 bit } A_2_q7 { I 32 vector } A_2_address8 { O 11 vector } A_2_ce8 { O 1 bit } A_2_q8 { I 32 vector } A_2_address9 { O 11 vector } A_2_ce9 { O 1 bit } A_2_q9 { I 32 vector } A_2_address10 { O 11 vector } A_2_ce10 { O 1 bit } A_2_q10 { I 32 vector } A_2_address11 { O 11 vector } A_2_ce11 { O 1 bit } A_2_q11 { I 32 vector } A_2_address12 { O 11 vector } A_2_ce12 { O 1 bit } A_2_q12 { I 32 vector } A_2_address13 { O 11 vector } A_2_ce13 { O 1 bit } A_2_q13 { I 32 vector } A_2_address14 { O 11 vector } A_2_ce14 { O 1 bit } A_2_q14 { I 32 vector } A_2_address15 { O 11 vector } A_2_ce15 { O 1 bit } A_2_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 11 vector } A_3_ce0 { O 1 bit } A_3_q0 { I 32 vector } A_3_address1 { O 11 vector } A_3_ce1 { O 1 bit } A_3_q1 { I 32 vector } A_3_address2 { O 11 vector } A_3_ce2 { O 1 bit } A_3_q2 { I 32 vector } A_3_address3 { O 11 vector } A_3_ce3 { O 1 bit } A_3_q3 { I 32 vector } A_3_address4 { O 11 vector } A_3_ce4 { O 1 bit } A_3_q4 { I 32 vector } A_3_address5 { O 11 vector } A_3_ce5 { O 1 bit } A_3_q5 { I 32 vector } A_3_address6 { O 11 vector } A_3_ce6 { O 1 bit } A_3_q6 { I 32 vector } A_3_address7 { O 11 vector } A_3_ce7 { O 1 bit } A_3_q7 { I 32 vector } A_3_address8 { O 11 vector } A_3_ce8 { O 1 bit } A_3_q8 { I 32 vector } A_3_address9 { O 11 vector } A_3_ce9 { O 1 bit } A_3_q9 { I 32 vector } A_3_address10 { O 11 vector } A_3_ce10 { O 1 bit } A_3_q10 { I 32 vector } A_3_address11 { O 11 vector } A_3_ce11 { O 1 bit } A_3_q11 { I 32 vector } A_3_address12 { O 11 vector } A_3_ce12 { O 1 bit } A_3_q12 { I 32 vector } A_3_address13 { O 11 vector } A_3_ce13 { O 1 bit } A_3_q13 { I 32 vector } A_3_address14 { O 11 vector } A_3_ce14 { O 1 bit } A_3_q14 { I 32 vector } A_3_address15 { O 11 vector } A_3_ce15 { O 1 bit } A_3_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 11 vector } A_4_ce0 { O 1 bit } A_4_q0 { I 32 vector } A_4_address1 { O 11 vector } A_4_ce1 { O 1 bit } A_4_q1 { I 32 vector } A_4_address2 { O 11 vector } A_4_ce2 { O 1 bit } A_4_q2 { I 32 vector } A_4_address3 { O 11 vector } A_4_ce3 { O 1 bit } A_4_q3 { I 32 vector } A_4_address4 { O 11 vector } A_4_ce4 { O 1 bit } A_4_q4 { I 32 vector } A_4_address5 { O 11 vector } A_4_ce5 { O 1 bit } A_4_q5 { I 32 vector } A_4_address6 { O 11 vector } A_4_ce6 { O 1 bit } A_4_q6 { I 32 vector } A_4_address7 { O 11 vector } A_4_ce7 { O 1 bit } A_4_q7 { I 32 vector } A_4_address8 { O 11 vector } A_4_ce8 { O 1 bit } A_4_q8 { I 32 vector } A_4_address9 { O 11 vector } A_4_ce9 { O 1 bit } A_4_q9 { I 32 vector } A_4_address10 { O 11 vector } A_4_ce10 { O 1 bit } A_4_q10 { I 32 vector } A_4_address11 { O 11 vector } A_4_ce11 { O 1 bit } A_4_q11 { I 32 vector } A_4_address12 { O 11 vector } A_4_ce12 { O 1 bit } A_4_q12 { I 32 vector } A_4_address13 { O 11 vector } A_4_ce13 { O 1 bit } A_4_q13 { I 32 vector } A_4_address14 { O 11 vector } A_4_ce14 { O 1 bit } A_4_q14 { I 32 vector } A_4_address15 { O 11 vector } A_4_ce15 { O 1 bit } A_4_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 11 vector } A_5_ce0 { O 1 bit } A_5_q0 { I 32 vector } A_5_address1 { O 11 vector } A_5_ce1 { O 1 bit } A_5_q1 { I 32 vector } A_5_address2 { O 11 vector } A_5_ce2 { O 1 bit } A_5_q2 { I 32 vector } A_5_address3 { O 11 vector } A_5_ce3 { O 1 bit } A_5_q3 { I 32 vector } A_5_address4 { O 11 vector } A_5_ce4 { O 1 bit } A_5_q4 { I 32 vector } A_5_address5 { O 11 vector } A_5_ce5 { O 1 bit } A_5_q5 { I 32 vector } A_5_address6 { O 11 vector } A_5_ce6 { O 1 bit } A_5_q6 { I 32 vector } A_5_address7 { O 11 vector } A_5_ce7 { O 1 bit } A_5_q7 { I 32 vector } A_5_address8 { O 11 vector } A_5_ce8 { O 1 bit } A_5_q8 { I 32 vector } A_5_address9 { O 11 vector } A_5_ce9 { O 1 bit } A_5_q9 { I 32 vector } A_5_address10 { O 11 vector } A_5_ce10 { O 1 bit } A_5_q10 { I 32 vector } A_5_address11 { O 11 vector } A_5_ce11 { O 1 bit } A_5_q11 { I 32 vector } A_5_address12 { O 11 vector } A_5_ce12 { O 1 bit } A_5_q12 { I 32 vector } A_5_address13 { O 11 vector } A_5_ce13 { O 1 bit } A_5_q13 { I 32 vector } A_5_address14 { O 11 vector } A_5_ce14 { O 1 bit } A_5_q14 { I 32 vector } A_5_address15 { O 11 vector } A_5_ce15 { O 1 bit } A_5_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 11 vector } A_6_ce0 { O 1 bit } A_6_q0 { I 32 vector } A_6_address1 { O 11 vector } A_6_ce1 { O 1 bit } A_6_q1 { I 32 vector } A_6_address2 { O 11 vector } A_6_ce2 { O 1 bit } A_6_q2 { I 32 vector } A_6_address3 { O 11 vector } A_6_ce3 { O 1 bit } A_6_q3 { I 32 vector } A_6_address4 { O 11 vector } A_6_ce4 { O 1 bit } A_6_q4 { I 32 vector } A_6_address5 { O 11 vector } A_6_ce5 { O 1 bit } A_6_q5 { I 32 vector } A_6_address6 { O 11 vector } A_6_ce6 { O 1 bit } A_6_q6 { I 32 vector } A_6_address7 { O 11 vector } A_6_ce7 { O 1 bit } A_6_q7 { I 32 vector } A_6_address8 { O 11 vector } A_6_ce8 { O 1 bit } A_6_q8 { I 32 vector } A_6_address9 { O 11 vector } A_6_ce9 { O 1 bit } A_6_q9 { I 32 vector } A_6_address10 { O 11 vector } A_6_ce10 { O 1 bit } A_6_q10 { I 32 vector } A_6_address11 { O 11 vector } A_6_ce11 { O 1 bit } A_6_q11 { I 32 vector } A_6_address12 { O 11 vector } A_6_ce12 { O 1 bit } A_6_q12 { I 32 vector } A_6_address13 { O 11 vector } A_6_ce13 { O 1 bit } A_6_q13 { I 32 vector } A_6_address14 { O 11 vector } A_6_ce14 { O 1 bit } A_6_q14 { I 32 vector } A_6_address15 { O 11 vector } A_6_ce15 { O 1 bit } A_6_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 11 vector } A_7_ce0 { O 1 bit } A_7_q0 { I 32 vector } A_7_address1 { O 11 vector } A_7_ce1 { O 1 bit } A_7_q1 { I 32 vector } A_7_address2 { O 11 vector } A_7_ce2 { O 1 bit } A_7_q2 { I 32 vector } A_7_address3 { O 11 vector } A_7_ce3 { O 1 bit } A_7_q3 { I 32 vector } A_7_address4 { O 11 vector } A_7_ce4 { O 1 bit } A_7_q4 { I 32 vector } A_7_address5 { O 11 vector } A_7_ce5 { O 1 bit } A_7_q5 { I 32 vector } A_7_address6 { O 11 vector } A_7_ce6 { O 1 bit } A_7_q6 { I 32 vector } A_7_address7 { O 11 vector } A_7_ce7 { O 1 bit } A_7_q7 { I 32 vector } A_7_address8 { O 11 vector } A_7_ce8 { O 1 bit } A_7_q8 { I 32 vector } A_7_address9 { O 11 vector } A_7_ce9 { O 1 bit } A_7_q9 { I 32 vector } A_7_address10 { O 11 vector } A_7_ce10 { O 1 bit } A_7_q10 { I 32 vector } A_7_address11 { O 11 vector } A_7_ce11 { O 1 bit } A_7_q11 { I 32 vector } A_7_address12 { O 11 vector } A_7_ce12 { O 1 bit } A_7_q12 { I 32 vector } A_7_address13 { O 11 vector } A_7_ce13 { O 1 bit } A_7_q13 { I 32 vector } A_7_address14 { O 11 vector } A_7_ce14 { O 1 bit } A_7_q14 { I 32 vector } A_7_address15 { O 11 vector } A_7_ce15 { O 1 bit } A_7_q15 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name gmem \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 32 vector } m_axi_gmem_WSTRB { O 4 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 32 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name sext_ln43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln43 \
    op interface \
    ports { sext_ln43 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


# flow_control definition:
set InstName mmult_hw_flow_control_loop_pipe_sequential_init_U
set CompName mmult_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mmult_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


