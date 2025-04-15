///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zalrsc/WALLY-COV-lr.d.S
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
lr.d x12, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # rs1 = base address 
lr.d x6, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # rs1 = base address 
lr.d x25, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # rs1 = base address 
lr.d x23, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # rs1 = base address 
lr.d x13, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # rs1 = base address 
lr.d x14, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # rs1 = base address 
lr.d x17, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # rs1 = base address 
lr.d x29, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # rs1 = base address 
lr.d x19, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # rs1 = base address 
lr.d x13, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # rs1 = base address 
lr.d x24, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # rs1 = base address 
lr.d x30, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # rs1 = base address 
lr.d x27, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # rs1 = base address 
lr.d x29, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # rs1 = base address 
lr.d x2, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # rs1 = base address 
lr.d x3, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # rs1 = base address 
lr.d x1, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # rs1 = base address 
lr.d x16, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # rs1 = base address 
lr.d x14, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # rs1 = base address 
lr.d x16, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # rs1 = base address 
lr.d x1, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # rs1 = base address 
lr.d x30, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # rs1 = base address 
lr.d x24, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # rs1 = base address 
lr.d x22, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # rs1 = base address 
lr.d x27, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # rs1 = base address 
lr.d x23, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # rs1 = base address 
lr.d x30, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # rs1 = base address 
lr.d x17, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # rs1 = base address 
lr.d x8, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # rs1 = base address 
lr.d x7, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # rs1 = base address 
lr.d x9, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rd (Test destination rd = x0)
la x22, scratch # rs1 = base address 
lr.d x0, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
la x5, scratch # rs1 = base address 
lr.d x1, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
la x18, scratch # rs1 = base address 
lr.d x2, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
la x15, scratch # rs1 = base address 
lr.d x3, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x31, scratch # rs1 = base address 
lr.d x4, (x31) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x20, scratch # rs1 = base address 
lr.d x5, (x20) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x19, scratch # rs1 = base address 
lr.d x6, (x19) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x14, scratch # rs1 = base address 
lr.d x7, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
la x1, scratch # rs1 = base address 
lr.d x8, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
la x1, scratch # rs1 = base address 
lr.d x9, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
la x11, scratch # rs1 = base address 
lr.d x10, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
la x8, scratch # rs1 = base address 
lr.d x11, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
la x17, scratch # rs1 = base address 
lr.d x12, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
la x10, scratch # rs1 = base address 
lr.d x13, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
la x26, scratch # rs1 = base address 
lr.d x14, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
la x29, scratch # rs1 = base address 
lr.d x15, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch # rs1 = base address 
lr.d x16, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
la x21, scratch # rs1 = base address 
lr.d x17, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
la x15, scratch # rs1 = base address 
lr.d x18, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
la x18, scratch # rs1 = base address 
lr.d x19, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
la x1, scratch # rs1 = base address 
lr.d x20, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
la x12, scratch # rs1 = base address 
lr.d x21, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
la x17, scratch # rs1 = base address 
lr.d x22, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
la x25, scratch # rs1 = base address 
lr.d x23, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
la x9, scratch # rs1 = base address 
lr.d x24, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
la x19, scratch # rs1 = base address 
lr.d x25, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
la x9, scratch # rs1 = base address 
lr.d x26, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
la x24, scratch # rs1 = base address 
lr.d x27, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
la x25, scratch # rs1 = base address 
lr.d x28, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
la x25, scratch # rs1 = base address 
lr.d x29, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
la x7, scratch # rs1 = base address 
lr.d x30, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
la x27, scratch # rs1 = base address 
lr.d x31, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
la x1, scratch # rs1 = base address 
lr.d x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
la x2, scratch # rs1 = base address 
lr.d x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
la x3, scratch # rs1 = base address 
lr.d x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # rs1 = base address 
lr.d x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # rs1 = base address 
lr.d x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # rs1 = base address 
lr.d x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # rs1 = base address 
lr.d x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
la x8, scratch # rs1 = base address 
lr.d x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
la x9, scratch # rs1 = base address 
lr.d x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
la x10, scratch # rs1 = base address 
lr.d x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
la x11, scratch # rs1 = base address 
lr.d x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
la x12, scratch # rs1 = base address 
lr.d x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
la x13, scratch # rs1 = base address 
lr.d x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
la x14, scratch # rs1 = base address 
lr.d x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
la x15, scratch # rs1 = base address 
lr.d x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
la x16, scratch # rs1 = base address 
lr.d x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
la x17, scratch # rs1 = base address 
lr.d x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
la x18, scratch # rs1 = base address 
lr.d x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
la x19, scratch # rs1 = base address 
lr.d x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
la x20, scratch # rs1 = base address 
lr.d x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
la x21, scratch # rs1 = base address 
lr.d x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
la x22, scratch # rs1 = base address 
lr.d x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
la x23, scratch # rs1 = base address 
lr.d x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
la x24, scratch # rs1 = base address 
lr.d x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
la x25, scratch # rs1 = base address 
lr.d x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
la x26, scratch # rs1 = base address 
lr.d x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
la x27, scratch # rs1 = base address 
lr.d x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
la x28, scratch # rs1 = base address 
lr.d x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
la x29, scratch # rs1 = base address 
lr.d x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
la x30, scratch # rs1 = base address 
lr.d x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
la x31, scratch # rs1 = base address 
lr.d x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
add x3, x30, x27 # perform first operation
lr.d x2, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x2, x5, x27 # perform first operation
lr.d x8, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
add x7, x12, x2 # perform first operation
lr.d x1, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x17, x17, x0 # perform first operation
lr.d x5, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x11, scratch
add x22, x22, x0 # perform first operation
lr.d x14, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
add x23, x23, x0 # perform first operation
lr.d x12, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x16, scratch
add x15, x22, x3 # perform first operation
lr.d x15, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x16, scratch
add x10, x6, x19 # perform first operation
lr.d x10, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x28, x7, x12 # perform first operation
lr.d x28, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x26, scratch
add x22, x3, x2 # perform first operation
lr.d x3, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
add x22, x14, x1 # perform first operation
lr.d x1, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x1, x30, x28 # perform first operation
lr.d x16, (x24) # perform second (triggering) operation

 # lr.d.S
# lr.w.S
# custom tests for load reserved

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x123456789ABCDEF0
    sd t2, 0(t0)
    lr.d t1, (t0)
    lr.d.aq t2, (t0)
    lr.d.aqrl t3, (t0)

# cp_custom_rd_corners 
    li t4, 0x0  
    sd t4, 0(t0)
    lr.d t1, (t0)   # lr t1 = 0

    li t4, 0x1
    sd t4, 0(t0)
    lr.d t1, (t0)   # lr t1 = 1

    li t4, 0x00000000FFFFFFFF
    sd t4, 0(t0)
    lr.d t1, (t0)   # lr t1 = 00000000FFFFFFFF

    li t4, 0xFFFFFFFFFFFFFFFF
    sd t4, 0(t0)
    lr.d t1, (t0)   # lr t1 = FFFFFFFFFFFFFFFF

.EQU SIGSIZE,752


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
