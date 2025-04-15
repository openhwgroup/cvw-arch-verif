///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lui.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
lui x0, 28085 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
lui x1, 639940 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
lui x2, 273843 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
lui x3, 936397 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
lui x4, 16052 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
lui x5, 975998 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
lui x6, 930367 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
lui x7, 800837 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
lui x8, 410350 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
lui x9, 425990 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
lui x10, 186141 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
lui x11, 869500 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
lui x12, 144422 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
lui x13, 328908 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
lui x14, 126643 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
lui x15, 818088 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
lui x16, 672885 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
lui x17, 964616 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
lui x18, 864060 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
lui x19, 129630 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
lui x20, 248616 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
lui x21, 272920 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
lui x22, 493269 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
lui x23, 94719 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
lui x24, 380288 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
lui x25, 604284 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
lui x26, 807632 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
lui x27, 936531 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
lui x28, 983466 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
lui x29, 305787 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
lui x30, 276924 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
lui x31, 843630 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_imm_corners
lui x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_imm_corners
lui x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cp_imm_corners
lui x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_imm_corners
lui x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_imm_corners
lui x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_imm_corners
lui x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_imm_corners
lui x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 304)

# Testcase cp_imm_corners
lui x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 312)

# Testcase cp_imm_corners
lui x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_imm_corners
lui x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cp_imm_corners
lui x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_imm_corners
lui x29, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_imm_corners
lui x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_imm_corners
lui x26, 2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_imm_corners
lui x6, 4096 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_imm_corners
lui x9, 8192 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_imm_corners
lui x22, 16384 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_imm_corners
lui x31, 32768 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_imm_corners
lui x18, 65536 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_imm_corners
lui x3, 131072 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_imm_corners
lui x17, 262144 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_imm_corners
lui x25, 524286 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cp_imm_corners
lui x9, 524287 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_imm_corners
lui x13, 524288 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_imm_corners
lui x26, 524289 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_imm_corners
lui x1, 1048574 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_imm_corners
lui x12, 1048575 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x24, x29 # perform first operation
lui x7, 952249 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x13, x6 # perform first operation
lui x5, 10636 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x28, x14 # perform first operation
lui x5, 1017882 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x3, x18 # perform first operation
lui x2, 867944 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x14 # perform first operation
lui x3, 550323 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x14, x27 # perform first operation
lui x12, 662738 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x2, x21 # perform first operation
lui x2, 77407 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x13, x20 # perform first operation
lui x20, 942612 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x30, x24 # perform first operation
lui x20, 47566 # perform second (triggering) operation

.EQU SIGSIZE,472


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
