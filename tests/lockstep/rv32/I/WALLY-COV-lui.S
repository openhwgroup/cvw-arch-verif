///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lui.S
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
lui x0, 623228 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
lui x1, 692428 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
lui x2, 15160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
lui x3, 794055 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
lui x4, 518996 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
lui x5, 877279 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
lui x6, 437732 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
lui x7, 347556 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
lui x8, 855134 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
lui x9, 77038 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
lui x10, 260241 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
lui x11, 957447 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
lui x12, 425990 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
lui x13, 761231 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
lui x14, 32441 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
lui x15, 1048008 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
lui x16, 767637 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
lui x17, 439910 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
lui x18, 992321 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
lui x19, 126643 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
lui x20, 72413 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
lui x21, 222049 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
lui x22, 668042 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
lui x23, 621650 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
lui x24, 262879 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
lui x25, 724276 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
lui x26, 319201 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
lui x27, 762244 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
lui x28, 866158 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
lui x29, 709381 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
lui x30, 783076 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
lui x31, 748639 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_imm_corners
lui x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_imm_corners
lui x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_imm_corners
lui x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_imm_corners
lui x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 140)

# Testcase cp_imm_corners
lui x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_imm_corners
lui x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 148)

# Testcase cp_imm_corners
lui x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_imm_corners
lui x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_imm_corners
lui x24, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_imm_corners
lui x26, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 164)

# Testcase cp_imm_corners
lui x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_imm_corners
lui x28, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_imm_corners
lui x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_imm_corners
lui x12, 2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 180)

# Testcase cp_imm_corners
lui x18, 4096 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_imm_corners
lui x27, 8192 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 188)

# Testcase cp_imm_corners
lui x25, 16384 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_imm_corners
lui x10, 32768 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 196)

# Testcase cp_imm_corners
lui x27, 65536 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_imm_corners
lui x6, 131072 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 204)

# Testcase cp_imm_corners
lui x2, 262144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_imm_corners
lui x12, 524286 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 212)

# Testcase cp_imm_corners
lui x23, 524287 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_imm_corners
lui x23, 524288 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_imm_corners
lui x30, 524289 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cp_imm_corners
lui x1, 1048574 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 228)

# Testcase cp_imm_corners
lui x2, 1048575 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x29 # perform first operation
lui x7, 754621 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x23, x21 # perform first operation
lui x28, 309131 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x17, x24 # perform first operation
lui x31, 632010 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x24, x26 # perform first operation
lui x5, 501287 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x13, x31 # perform first operation
lui x19, 587287 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x30, x27 # perform first operation
lui x28, 664345 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x20, x9 # perform first operation
lui x20, 632440 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x21, x7 # perform first operation
lui x7, 578709 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x12, x6 # perform first operation
lui x30, 551417 # perform second (triggering) operation

.EQU SIGSIZE,236


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
