///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-auipc.S
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
auipc x0, 547433 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
auipc x1, 503605 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
auipc x2, 657256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
auipc x3, 672062 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
auipc x4, 946639 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
auipc x5, 73928 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
auipc x6, 776930 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
auipc x7, 682454 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
auipc x8, 475948 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
auipc x9, 294523 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
auipc x10, 852320 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
auipc x11, 67470 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
auipc x12, 250500 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
auipc x13, 123493 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
auipc x14, 252827 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
auipc x15, 131675 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
auipc x16, 558171 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
auipc x17, 1000533 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
auipc x18, 1034874 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
auipc x19, 123485 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
auipc x20, 702460 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
auipc x21, 795794 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
auipc x22, 629038 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
auipc x23, 155966 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
auipc x24, 14810 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
auipc x25, 197469 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
auipc x26, 770617 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
auipc x27, 547962 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
auipc x28, 953230 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
auipc x29, 572066 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
auipc x30, 152289 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
auipc x31, 308396 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_imm_corners
auipc x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cp_imm_corners
auipc x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_imm_corners
auipc x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_imm_corners
auipc x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_imm_corners
auipc x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_imm_corners
auipc x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 148)

# Testcase cp_imm_corners
auipc x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_imm_corners
auipc x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 156)

# Testcase cp_imm_corners
auipc x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_imm_corners
auipc x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 164)

# Testcase cp_imm_corners
auipc x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_imm_corners
auipc x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_imm_corners
auipc x5, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_imm_corners
auipc x25, 2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_imm_corners
auipc x9, 4096 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_imm_corners
auipc x21, 8192 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 188)

# Testcase cp_imm_corners
auipc x6, 16384 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_imm_corners
auipc x7, 32768 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 196)

# Testcase cp_imm_corners
auipc x14, 65536 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_imm_corners
auipc x22, 131072 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 204)

# Testcase cp_imm_corners
auipc x26, 262144 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_imm_corners
auipc x22, 524286 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_imm_corners
auipc x16, 524287 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_imm_corners
auipc x21, 524288 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 220)

# Testcase cp_imm_corners
auipc x5, 524289 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_imm_corners
auipc x22, 1048574 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_imm_corners
auipc x26, 1048575 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x14, x27 # perform first operation
auipc x26, 749882 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x12, x31 # perform first operation
auipc x2, 806918 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x31, x11 # perform first operation
auipc x13, 830362 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x2, x6 # perform first operation
auipc x9, 53529 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x15, x8 # perform first operation
auipc x12, 676176 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x10, x7 # perform first operation
auipc x23, 996355 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x10, x23 # perform first operation
auipc x10, 25698 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x27, x13 # perform first operation
auipc x13, 728816 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x29, x21 # perform first operation
auipc x26, 258156 # perform second (triggering) operation

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
