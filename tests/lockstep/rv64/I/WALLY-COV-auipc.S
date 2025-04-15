///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-auipc.S
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
auipc x0, 967612 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
auipc x1, 657256 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
auipc x2, 760690 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
auipc x3, 500586 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
auipc x4, 928354 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
auipc x5, 253902 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
auipc x6, 256281 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
auipc x7, 856486 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
auipc x8, 1026925 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
auipc x9, 408763 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
auipc x10, 100256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
auipc x11, 272611 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
auipc x12, 262810 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
auipc x13, 524433 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
auipc x14, 482096 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
auipc x15, 895692 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
auipc x16, 14810 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
auipc x17, 776573 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
auipc x18, 547962 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
auipc x19, 324918 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
auipc x20, 688496 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
auipc x21, 868419 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
auipc x22, 1023820 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
auipc x23, 636431 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
auipc x24, 42983 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
auipc x25, 419464 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
auipc x26, 108438 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
auipc x27, 464199 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
auipc x28, 754417 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
auipc x29, 27323 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
auipc x30, 438699 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
auipc x31, 890676 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_imm_corners
auipc x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_imm_corners
auipc x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_imm_corners
auipc x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_imm_corners
auipc x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cp_imm_corners
auipc x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cp_imm_corners
auipc x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cp_imm_corners
auipc x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cp_imm_corners
auipc x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_imm_corners
auipc x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cp_imm_corners
auipc x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_imm_corners
auipc x29, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cp_imm_corners
auipc x11, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_imm_corners
auipc x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_imm_corners
auipc x18, 2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_imm_corners
auipc x26, 4096 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cp_imm_corners
auipc x30, 8192 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_imm_corners
auipc x5, 16384 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cp_imm_corners
auipc x31, 32768 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_imm_corners
auipc x25, 65536 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_imm_corners
auipc x18, 131072 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cp_imm_corners
auipc x26, 262144 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_imm_corners
auipc x13, 524286 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cp_imm_corners
auipc x14, 524287 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_imm_corners
auipc x21, 524288 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_imm_corners
auipc x31, 524289 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_imm_corners
auipc x28, 1048574 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_imm_corners
auipc x12, 1048575 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x14, x27 # perform first operation
auipc x23, 264481 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x7 # perform first operation
auipc x18, 156965 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x9, x11 # perform first operation
auipc x1, 159335 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x19, x25 # perform first operation
auipc x22, 288693 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x11, x31 # perform first operation
auipc x1, 96014 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x2, x7 # perform first operation
auipc x27, 251919 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x13, x19 # perform first operation
auipc x13, 740552 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x25, x16 # perform first operation
auipc x16, 571651 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x30, x17 # perform first operation
auipc x9, 705044 # perform second (triggering) operation

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
