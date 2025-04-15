///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrsi.S
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
li x14, 0xc5b02dd2 # initialize rs1
csrrsi x0, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x50bd00e6 # initialize rs1
csrrsi x1, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x1be4855b # initialize rs1
csrrsi x2, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x74b75f22 # initialize rs1
csrrsi x3, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xb90394cd # initialize rs1
csrrsi x4, mscratch, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x266e3680 # initialize rs1
csrrsi x5, mscratch, 24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xcfb83c38 # initialize rs1
csrrsi x6, mscratch, 25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xa8cfe941 # initialize rs1
csrrsi x7, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0x3987d063 # initialize rs1
csrrsi x8, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x59982c38 # initialize rs1
csrrsi x9, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xc3122979 # initialize rs1
csrrsi x10, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0xbe2770f1 # initialize rs1
csrrsi x11, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xc7d097d1 # initialize rs1
csrrsi x12, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x3faad3f5 # initialize rs1
csrrsi x13, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x8124471e # initialize rs1
csrrsi x14, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x7a35925e # initialize rs1
csrrsi x15, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x58058355 # initialize rs1
csrrsi x16, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0x0a118588 # initialize rs1
csrrsi x17, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0xf8d71ac6 # initialize rs1
csrrsi x18, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x23ff0939 # initialize rs1
csrrsi x19, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x6c95ce7c # initialize rs1
csrrsi x20, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0x994d2b62 # initialize rs1
csrrsi x21, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0xc073bb03 # initialize rs1
csrrsi x22, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x22cdbd49 # initialize rs1
csrrsi x23, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x48e0bcf2 # initialize rs1
csrrsi x24, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xa1f9e16e # initialize rs1
csrrsi x25, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x562a9a1a # initialize rs1
csrrsi x26, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x4b16c0ef # initialize rs1
csrrsi x27, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0xd0a009b9 # initialize rs1
csrrsi x28, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x954670f9 # initialize rs1
csrrsi x29, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x78559f3d # initialize rs1
csrrsi x30, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0x1293ade7 # initialize rs1
csrrsi x31, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x13, 0xc2bd6380 # initialize rs1
csrrsi x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x19, 0x15383c31 # initialize rs1
csrrsi x9, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x27, 0x2a96290c # initialize rs1
csrrsi x13, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x21, 0x2b1ff3ac # initialize rs1
csrrsi x11, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x31, 0x0096cb21 # initialize rs1
csrrsi x18, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x29, 0x134365e4 # initialize rs1
csrrsi x2, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x10, 0xf2265894 # initialize rs1
csrrsi x18, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x24, 0x43e1fbec # initialize rs1
csrrsi x23, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x23, 0x694cac1d # initialize rs1
csrrsi x15, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x13, 0xa61ecec6 # initialize rs1
csrrsi x1, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x13, 0x7d042981 # initialize rs1
csrrsi x8, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x29, 0x1771da1f # initialize rs1
csrrsi x28, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x17, 0x15734c33 # initialize rs1
csrrsi x28, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x5, 0x01455307 # initialize rs1
csrrsi x20, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x5, 0xeaf6df7e # initialize rs1
csrrsi x6, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x28, 0x9f14f992 # initialize rs1
csrrsi x23, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x29, 0xe83cea0e # initialize rs1
csrrsi x2, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x11, 0x53eb068f # initialize rs1
csrrsi x9, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x13, 0x913caae9 # initialize rs1
csrrsi x3, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x13, 0x95261325 # initialize rs1
csrrsi x27, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x23, 0x1ae1b017 # initialize rs1
csrrsi x17, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x31, 0xd95f2965 # initialize rs1
csrrsi x20, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x8, 0x22ba6fb2 # initialize rs1
csrrsi x5, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x24, 0x41cd94c1 # initialize rs1
csrrsi x20, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x13, 0x3c25fd56 # initialize rs1
csrrsi x10, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x6, 0x4af55cb1 # initialize rs1
csrrsi x2, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x26, 0xaab8bfb8 # initialize rs1
csrrsi x10, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x26, 0xedf1d607 # initialize rs1
csrrsi x27, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x3, 0x649e232d # initialize rs1
csrrsi x9, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x14, 0x94549dc7 # initialize rs1
csrrsi x22, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x6, 0x085c407d # initialize rs1
csrrsi x11, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x28, 0xb6b2b36b # initialize rs1
csrrsi x13, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x23, x25 # perform first operation
csrrsi x20, mscratch, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x21, x29 # perform first operation
csrrsi x5, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x30, x13 # perform first operation
csrrsi x16, mscratch, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x7, x11 # perform first operation
csrrsi x22, mscratch, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x30, x26 # perform first operation
csrrsi x28, mscratch, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x3, x24 # perform first operation
csrrsi x17, mscratch, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x22 # perform first operation
csrrsi x10, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x15, x7 # perform first operation
csrrsi x7, mscratch, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x14, x23 # perform first operation
csrrsi x22, mscratch, 12 # perform second (triggering) operation

.EQU SIGSIZE,256


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
