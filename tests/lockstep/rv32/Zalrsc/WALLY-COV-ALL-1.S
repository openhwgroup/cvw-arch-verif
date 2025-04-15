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

    

// ******************
// Tests from: WALLY-COV-lr.w.S
// ******************


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


#.EQU SIGSIZE,376


// ******************
// Tests from: WALLY-COV-sc.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x30, 0x8f2091f8 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x22, x30, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x53e4a091 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x25, x12, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0xedc55ceb # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x13, x5, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x66dd2473 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x2, x6, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x2a75a2d4 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x17, x1, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x9b144b8b # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x22, x24, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x22, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xefb5eacd # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x25, x19, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0xc610462f # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x28, x16, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x7a0a61b8 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x28, x17, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x45ab6f84 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x8, x11, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x2b08b234 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x16, x27, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x16, 0x5d4d51bc # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x22, x16, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x2351f08f # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x21, x8, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x6983c413 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x3, x16, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0xd1b0be9d # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x27, x22, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0x76cb760c # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x28, x17, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x14, 0xa90d1218 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x25, x14, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x9b180762 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x31, x16, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x6c8259f9 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x29, x22, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x5396c758 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x6, x22, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0xf5bb6b51 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x14, x31, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0x2603c323 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x25, x19, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0xc63a8fba # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x3, x11, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0xeb99243f # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x8, x5, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x8be8f163 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x11, x16, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0xab800f83 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x21, x17, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x18, 0x6a83b414 # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x25, x18, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x140ca5a2 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x18, x23, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0xeb53f99a # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x28, x5, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xc93b3232 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x12, x7, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x25, 0x0f992240 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x15, x25, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xeb512ddb # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x14, x0, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x1ddfb326 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x27, x1, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x7139f7ed # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x3, x2, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0f895610 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x13, x3, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb9c2468e # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x9, x4, (x28) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 140)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x98d7cda4 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x9, x5, (x15) # perform operation
RVTEST_SIGUPD(x6, x0, x9, 144)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x83c2fb4e # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x30, x6, (x1) # perform operation
RVTEST_SIGUPD(x7, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe2c1653d # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x10, x7, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xc08725c5 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x28, x8, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xa1126219 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x22, x9, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x423ecaff # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x23, x10, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xb86ee773 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x26, x11, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xe7761d14 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x21, x12, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 172)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x904b2ad9 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x1, x13, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x817ae109 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x24, x14, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 180)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x0ec47525 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x6, x15, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xe08f9d74 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x9, x16, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x824b23e8 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x6, x17, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xc82963d8 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x6, x18, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 196)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x3b92fd0c # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x25, x19, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x0be4ea67 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x28, x20, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x16d5d0f6 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x23, x21, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x7a733581 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x13, x22, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x14e9ad11 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x24, x23, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xe43d1c50 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x19, x24, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x93a73686 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x6, x25, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x9d91a2f4 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x28, x26, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xf2870e01 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x13, x27, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xec07e2fd # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x15, x28, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x6377a697 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x7, x29, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xc98eb0d8 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x26, x30, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 244)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc331a065 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x5, x31, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x8680676c # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x0, x5, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 252)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x2427d44a # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x1, x2, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xf6e9c288 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x2, x19, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x4a6e8604 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x3, x21, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x0722898b # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x4, x13, (x10) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 268)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xc25e7aff # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x5, x21, (x15) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 272)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x3a6603c1 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x6, x11, (x19) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 276)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x57e46b6e # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x7, x12, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0xae623f8a # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x8, x11, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 284)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7a5beafd # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x9, x5, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x13295166 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x10, x12, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 292)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0xe6cfcb04 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x11, x12, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0x653ce1f5 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x12, x29, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x7c46b189 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x13, x2, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x5f897499 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x14, x2, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 308)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xbcbe1969 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x15, x23, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_rd (Test destination rd = x16)
li x20, 0x8537af88 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x16, x20, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 316)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0xd4803169 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x17, x16, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x63cfa6dc # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x18, x20, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 324)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0x8a776962 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x19, x25, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x77d0431e # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x20, x31, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 332)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x10a5122f # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x21, x30, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x5215e809 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x22, x5, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 340)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x70eff7c5 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x23, x16, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x21e26be8 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x24, x31, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 348)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x556637d7 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x25, x29, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 352)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x176b71e3 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x26, x19, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 356)

# Testcase cp_rd (Test destination rd = x27)
li x13, 0x1bcac919 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x27, x13, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0xd9dbc88e # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x28, x2, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 364)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0xb0b90de1 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x29, x18, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xf6d7211d # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x30, x29, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 372)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x51fb8bd5 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x31, x7, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x00000000 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x26, x6, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 380)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x00000001 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x8, x13, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x00000002 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x8, x15, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0x80000000 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x1, x20, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x20, 0x80000001 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x7, x20, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 396)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x23, x9, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x9, x1, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 404)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0xffffffff # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x31, x7, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 408)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x17, x11, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 412)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x12, x24, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x1, x26, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x55555555 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x26, x8, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4c228067 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x15, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x730f03f2 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x8, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf0787e56 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x10, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 436)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfce210d6 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x24, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x24, 440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf7d9eeea # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x12, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x12, 444)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x19c89076 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x24, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x24, 448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf93d9509 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x1, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd0711877 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x26, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd0f1a193 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x29, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 460)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x70deeaca # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x11, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xaefea681 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x28, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 468)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x22dfe244 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x17, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9edd3621 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x12, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa0c780f1 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x25, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xfea2ffa2 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x28, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 484)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x880d85fc # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x23, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3878c870 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x17, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 492)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x80260bcc # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x9, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xca0a94e3 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x17, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9921f6a0 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x6, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5d8b28b7 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x10, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 508)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x244be5b1 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x27, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd9c29c9a # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x26, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 516)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf6ae66c6 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x5, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1f37e014 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x29, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 524)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x5856ce98 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x22, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x3acb1895 # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x29, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 532)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcfc22fdf # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x8, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 536)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcadf19ef # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x27, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 540)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x95da1a6e # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x20, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x49d4e7b6 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x29, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 548)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x8, 0xcbafff51 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x1, x8, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x21, 0xa9b908e6 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x2, x21, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x13, 0x564f0998 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x3, x13, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xb4e63af4 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x4, x2, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 564)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xcbf55103 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x5, x15, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x90537c35 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x6, x14, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 572)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x54bf4ca2 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x7, x8, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x1, 0x26f29cb4 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x8, x1, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 580)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x31, 0x4ad218c8 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x9, x31, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x28, 0xe7d46c06 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x10, x28, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x24, 0x6674f0c6 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x11, x24, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x16, 0x5bbed8d0 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x12, x16, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 596)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x18, 0x7ec42bda # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x13, x18, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x31, 0x1c39fcb0 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x14, x31, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 604)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x23, 0xdaa53916 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x15, x23, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x18, 0xd75168cd # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x16, x18, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 612)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x5, 0x90c9d74d # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x17, x5, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x23, 0x6531566a # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x18, x23, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 620)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x9, 0x74674616 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x19, x9, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x25, 0xba75e30a # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x20, x25, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 628)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x24, 0xd0e38878 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x21, x24, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x15, 0xbbb001dd # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x22, x15, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 636)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x24, 0x3d4f7f10 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x23, x24, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x13, 0xcbf067df # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x24, x13, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 644)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x5, 0x64ddf272 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x25, x5, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x24, 0x5f71a4c6 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x26, x24, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 652)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x9, 0x4a615eac # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x27, x9, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x27, 0x60204dd6 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x28, x27, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 660)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x24, 0xb151a5e8 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x29, x24, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x7, 0xdf760300 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x30, x7, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 668)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x29, 0xc206bc31 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x31, x29, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 672)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x58ff01ed # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x0, x0, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 676)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x0a18a2b4 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x1, x1, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 680)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x66100a3b # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x2, x2, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 684)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x3ce6e55a # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x3, x3, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6ea09489 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x4, x4, (x12) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 692)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6ce6ccd4 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x5, x5, (x15) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 696)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x33f53e14 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x6, x6, (x3) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 700)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x867d0b25 # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x7, x7, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x0e987bc9 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x8, x8, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x56841575 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x9, x9, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x3f7eff29 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x10, x10, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 716)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x9c4b3c97 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x11, x11, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x9587634c # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x12, x12, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 724)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x7a3f56bf # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x13, x13, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xecaeac8d # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x14, x14, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 732)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xefa74e14 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x15, x15, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xdf1210d3 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x16, x16, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 740)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x1963bf5a # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x17, x17, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x971d4717 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x18, x18, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 748)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xb7e93358 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x19, x19, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 752)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xde87f6a4 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x20, x20, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 756)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x3b010536 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x21, x21, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x7f8e3a10 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x22, x22, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 764)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xac1f4016 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x23, x23, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x4a592cb6 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x24, x24, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 772)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x9c3de505 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x25, x25, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x5b7d2c4e # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x26, x26, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x3ec090b9 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x27, x27, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x9e2e2a94 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x28, x28, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 788)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x1ab30a64 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x29, x29, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x868ef67d # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x30, x30, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 796)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x2267b94d # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x31, x31, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xeb699140 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x1, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 804)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0138bcc2 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x2, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x44ffa975 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x3, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 812)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9f0c47c0 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x4, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 816)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8bb0e5ed # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x5, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 820)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x60b6227b # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x6, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 824)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc18c4c9c # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x7, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb63e702d # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x8, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbbf6df01 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x9, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 836)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf8c51464 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x10, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0f0a7ecf # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x11, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 844)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe2a1c743 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x12, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xee5d93cf # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x13, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 852)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0ef074a1 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x14, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 856)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7b11a81d # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x15, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 860)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6791f12a # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x16, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xb9ee1a4b # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x17, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 868)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x14415c04 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x18, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5df82893 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x19, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 876)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa703a270 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x20, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5b59e0a4 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x21, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 884)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3961ece1 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x22, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4992011c # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x23, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 892)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x50211835 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x24, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x0c00f5ff # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x25, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 900)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x24622b4a # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x26, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd3c9832f # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x27, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xf6472540 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x28, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0d269467 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x29, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 916)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa54ee3fc # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x30, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x21a87d07 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x31, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 924)

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
add x16, x24, x15 # perform first operation
sc.w x20, x27, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
add x22, x11, x24 # perform first operation
sc.w x31, x8, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x2, x14, x31 # perform first operation
sc.w x18, x9, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x11, x11, x0 # perform first operation
sc.w x11, x11, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
add x14, x14, x0 # perform first operation
sc.w x14, x22, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
add x5, x5, x0 # perform first operation
sc.w x18, x9, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x9, x1, x13 # perform first operation
sc.w x9, x2, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
add x30, x9, x1 # perform first operation
sc.w x30, x5, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x14, scratch
add x1, x5, x23 # perform first operation
sc.w x1, x10, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x1, x7, x27 # perform first operation
sc.w x7, x30, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x6, x29, x18 # perform first operation
sc.w x18, x17, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
add x1, x19, x2 # perform first operation
sc.w x27, x28, (x16) # perform second (triggering) operation

 # sc.w.S
# sc.S
# custom tests for store conditional

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0xF2345678
    sc.w t1, t2, (t0)
    sc.w.rl t1, t2, (t0)
    sc.w.aqrl t1, t2, (t0)

# cp_custom_sc_lrsc
    li t3, 0x23456789
    li t4, 0x3456789A

    # should succeed
    lr.w t1, (t0)
    sc.w t2, t3, (t0)

    # should fail because of intervening sc
    lr.w t1, (t0)
    sc.w t2, t3, (t0) # succeeds
    sc.w t5, t4, (t0) # fails

# cp_custom_sc_addresses
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.w t1, (t0)       # load from reservation set
    sc.w t1, t3, (t5)   # try store conditional, should succeed if in same set
    sc.w t1, t3, (t5)   # try again, and it should fail this time

    # for RV64, also check different size lr vs. sc
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.d t1, (t0)
            sc.w t1, t3, (t5)
         #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
   
    addi t6, t6, 4      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.w t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sh t3, 2(t0)      # store half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sw t3, 0(t0)      # store word
    sc.w t5, t4, (t0) # succeeds

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            sd t3, 0(t0)      # store double
            sc.w t5, t4, (t0) # succeeds
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

# cp_custom_sc_after_load
    # should not care about intervening loads

    lr.w t1, (t0)
    lb t3, 3(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lb t3, 128(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 2(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 128(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 2(t0)      # load half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 128(t0)      # load half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 0(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 128(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 0(t0)      # load word
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 128(t0)      # load word
    sc.w t5, t4, (t0) # succeeds

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            lwu t3, 0(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            lwu t3, 128(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 0(t0)      # load double
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 128(t0)      # load double
            sc.w t5, t4, (t0) # succeeds

        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

#.EQU SIGSIZE,928
.EQU SIGSIZE,1304 #combined


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
