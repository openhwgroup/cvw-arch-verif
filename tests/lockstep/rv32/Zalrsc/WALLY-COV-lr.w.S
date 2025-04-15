///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zalrsc/WALLY-COV-lr.w.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
la x1, scratch # rs1 = base address 
lr.w x12, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # rs1 = base address 
lr.w x11, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # rs1 = base address 
lr.w x17, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # rs1 = base address 
lr.w x23, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # rs1 = base address 
lr.w x19, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # rs1 = base address 
lr.w x4, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x4, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # rs1 = base address 
lr.w x22, (x7) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # rs1 = base address 
lr.w x30, (x8) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # rs1 = base address 
lr.w x25, (x9) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # rs1 = base address 
lr.w x13, (x10) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # rs1 = base address 
lr.w x26, (x11) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # rs1 = base address 
lr.w x14, (x12) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # rs1 = base address 
lr.w x6, (x13) # perform operation
RVTEST_SIGUPD(x5, x0, x6, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # rs1 = base address 
lr.w x22, (x14) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # rs1 = base address 
lr.w x7, (x15) # perform operation
RVTEST_SIGUPD(x5, x0, x7, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # rs1 = base address 
lr.w x3, (x16) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # rs1 = base address 
lr.w x14, (x17) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # rs1 = base address 
lr.w x21, (x18) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # rs1 = base address 
lr.w x17, (x19) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # rs1 = base address 
lr.w x17, (x20) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # rs1 = base address 
lr.w x17, (x21) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # rs1 = base address 
lr.w x10, (x22) # perform operation
RVTEST_SIGUPD(x5, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # rs1 = base address 
lr.w x16, (x23) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # rs1 = base address 
lr.w x31, (x24) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # rs1 = base address 
lr.w x1, (x25) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # rs1 = base address 
lr.w x23, (x26) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # rs1 = base address 
lr.w x31, (x27) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # rs1 = base address 
lr.w x29, (x28) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # rs1 = base address 
lr.w x19, (x29) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # rs1 = base address 
lr.w x14, (x30) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # rs1 = base address 
lr.w x18, (x31) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 120)

# Testcase cp_rd (Test destination rd = x0)
la x17, scratch # rs1 = base address 
lr.w x0, (x17) # perform operation
RVTEST_SIGUPD(x5, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
la x16, scratch # rs1 = base address 
lr.w x1, (x16) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
la x10, scratch # rs1 = base address 
lr.w x2, (x10) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
la x16, scratch # rs1 = base address 
lr.w x3, (x16) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
la x23, scratch # rs1 = base address 
lr.w x4, (x23) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x27, scratch # rs1 = base address 
lr.w x5, (x27) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x28, scratch # rs1 = base address 
lr.w x6, (x28) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x17, scratch # rs1 = base address 
lr.w x7, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
la x18, scratch # rs1 = base address 
lr.w x8, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
la x28, scratch # rs1 = base address 
lr.w x9, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
la x28, scratch # rs1 = base address 
lr.w x10, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
la x1, scratch # rs1 = base address 
lr.w x11, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
la x20, scratch # rs1 = base address 
lr.w x12, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
la x21, scratch # rs1 = base address 
lr.w x13, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
la x19, scratch # rs1 = base address 
lr.w x14, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
la x18, scratch # rs1 = base address 
lr.w x15, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
la x19, scratch # rs1 = base address 
lr.w x16, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
la x28, scratch # rs1 = base address 
lr.w x17, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
la x19, scratch # rs1 = base address 
lr.w x18, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
la x30, scratch # rs1 = base address 
lr.w x19, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
la x27, scratch # rs1 = base address 
lr.w x20, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
la x9, scratch # rs1 = base address 
lr.w x21, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
la x26, scratch # rs1 = base address 
lr.w x22, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
la x8, scratch # rs1 = base address 
lr.w x23, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
la x10, scratch # rs1 = base address 
lr.w x24, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
la x25, scratch # rs1 = base address 
lr.w x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
la x8, scratch # rs1 = base address 
lr.w x26, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch # rs1 = base address 
lr.w x27, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
la x10, scratch # rs1 = base address 
lr.w x28, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
la x18, scratch # rs1 = base address 
lr.w x29, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
la x8, scratch # rs1 = base address 
lr.w x30, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
la x30, scratch # rs1 = base address 
lr.w x31, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
la x1, scratch # rs1 = base address 
lr.w x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
la x2, scratch # rs1 = base address 
lr.w x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
la x3, scratch # rs1 = base address 
lr.w x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # rs1 = base address 
lr.w x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # rs1 = base address 
lr.w x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # rs1 = base address 
lr.w x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # rs1 = base address 
lr.w x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
la x8, scratch # rs1 = base address 
lr.w x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
la x9, scratch # rs1 = base address 
lr.w x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
la x10, scratch # rs1 = base address 
lr.w x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
la x11, scratch # rs1 = base address 
lr.w x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
la x12, scratch # rs1 = base address 
lr.w x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
la x13, scratch # rs1 = base address 
lr.w x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
la x14, scratch # rs1 = base address 
lr.w x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
la x15, scratch # rs1 = base address 
lr.w x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
la x16, scratch # rs1 = base address 
lr.w x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
la x17, scratch # rs1 = base address 
lr.w x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
la x18, scratch # rs1 = base address 
lr.w x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
la x19, scratch # rs1 = base address 
lr.w x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
la x20, scratch # rs1 = base address 
lr.w x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
la x21, scratch # rs1 = base address 
lr.w x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
la x22, scratch # rs1 = base address 
lr.w x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
la x23, scratch # rs1 = base address 
lr.w x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
la x24, scratch # rs1 = base address 
lr.w x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
la x25, scratch # rs1 = base address 
lr.w x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
la x26, scratch # rs1 = base address 
lr.w x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
la x27, scratch # rs1 = base address 
lr.w x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
la x28, scratch # rs1 = base address 
lr.w x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
la x29, scratch # rs1 = base address 
lr.w x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
la x30, scratch # rs1 = base address 
lr.w x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
la x31, scratch # rs1 = base address 
lr.w x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 372)

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
add x10, x9, x14 # perform first operation
lr.w x22, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x23, scratch
add x16, x10, x14 # perform first operation
lr.w x5, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
add x5, x22, x3 # perform first operation
lr.w x20, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x20, x20, x0 # perform first operation
lr.w x24, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x2, scratch
add x21, x21, x0 # perform first operation
lr.w x13, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
add x20, x20, x0 # perform first operation
lr.w x8, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x22, x2, x19 # perform first operation
lr.w x22, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
add x11, x18, x17 # perform first operation
lr.w x11, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x19, scratch
add x15, x12, x11 # perform first operation
lr.w x15, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x1, x21, x16 # perform first operation
lr.w x21, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x6, scratch
add x25, x18, x15 # perform first operation
lr.w x15, (x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x8, scratch
add x30, x14, x3 # perform first operation
lr.w x22, (x8) # perform second (triggering) operation

 # lr.w.S
# lr.w.S
# custom tests for load reserved

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x12345678
    sw t2, 0(t0)
    lr.w t1, (t0)
    lr.w.aq t2, (t0)
    lr.w.aqrl t3, (t0)

   # cp_custom_rd_corners 
    li t4, 0x0  
    sw t4, 0(t0)
    sw zero, 4(t0)
    lr.w t1, (t0)   # lr t1 = 0

    li t4, 0x1
    sw t4, 0(t0)
    lr.w t1, (t0)   # lr t1 = 1

    li t4, 0xFFFFFFFF
    sw t4, 0(t0)
    lr.w t1, (t0)   # lr t1 = FFFFFFFF (sign-extended in RV64)


.EQU SIGSIZE,376


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
