///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fcvt.wu.h.S
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

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0x070adc26 # load x3 with value 0x070adc26
sw x3, 0(x2) # store 0x070adc26 in memory
flh f31, 0(x2) # load 0x070adc26 from memory into f31
fcvt.wu.h x0, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xa6b6200c # load x3 with value 0xa6b6200c
sw x3, 0(x2) # store 0xa6b6200c in memory
flh f3, 0(x2) # load 0xa6b6200c from memory into f3
fcvt.wu.h x1, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x8c535149 # load x3 with value 0x8c535149
sw x3, 0(x2) # store 0x8c535149 in memory
flh f5, 0(x2) # load 0x8c535149 from memory into f5
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x5f84560f # load x3 with value 0x5f84560f
sw x3, 0(x2) # store 0x5f84560f in memory
flh f24, 0(x2) # load 0x5f84560f from memory into f24
fcvt.wu.h x3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x207912f7 # load x3 with value 0x207912f7
sw x3, 0(x2) # store 0x207912f7 in memory
flh f13, 0(x2) # load 0x207912f7 from memory into f13
fcvt.wu.h x4, f13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa4a6a098 # load x3 with value 0xa4a6a098
sw x3, 0(x2) # store 0xa4a6a098 in memory
flh f28, 0(x2) # load 0xa4a6a098 from memory into f28
fcvt.wu.h x5, f28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x90f271e1 # load x3 with value 0x90f271e1
sw x3, 0(x2) # store 0x90f271e1 in memory
flh f30, 0(x2) # load 0x90f271e1 from memory into f30
fcvt.wu.h x6, f30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6469d148 # load x3 with value 0x6469d148
sw x3, 0(x2) # store 0x6469d148 in memory
flh f16, 0(x2) # load 0x6469d148 from memory into f16
fcvt.wu.h x7, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x75ef24d0 # load x3 with value 0x75ef24d0
sw x3, 0(x2) # store 0x75ef24d0 in memory
flh f15, 0(x2) # load 0x75ef24d0 from memory into f15
fcvt.wu.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x955a4a72 # load x3 with value 0x955a4a72
sw x3, 0(x2) # store 0x955a4a72 in memory
flh f15, 0(x2) # load 0x955a4a72 from memory into f15
fcvt.wu.h x9, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xd326a6c5 # load x3 with value 0xd326a6c5
sw x3, 0(x2) # store 0xd326a6c5 in memory
flh f11, 0(x2) # load 0xd326a6c5 from memory into f11
fcvt.wu.h x10, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x91908eaa # load x3 with value 0x91908eaa
sw x3, 0(x2) # store 0x91908eaa in memory
flh f2, 0(x2) # load 0x91908eaa from memory into f2
fcvt.wu.h x11, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x2c15d52e # load x3 with value 0x2c15d52e
sw x3, 0(x2) # store 0x2c15d52e in memory
flh f25, 0(x2) # load 0x2c15d52e from memory into f25
fcvt.wu.h x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x8f66cb61 # load x3 with value 0x8f66cb61
sw x3, 0(x2) # store 0x8f66cb61 in memory
flh f10, 0(x2) # load 0x8f66cb61 from memory into f10
fcvt.wu.h x13, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1f4759e1 # load x3 with value 0x1f4759e1
sw x3, 0(x2) # store 0x1f4759e1 in memory
flh f15, 0(x2) # load 0x1f4759e1 from memory into f15
fcvt.wu.h x14, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xb1afebb1 # load x3 with value 0xb1afebb1
sw x3, 0(x2) # store 0xb1afebb1 in memory
flh f9, 0(x2) # load 0xb1afebb1 from memory into f9
fcvt.wu.h x15, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xc95f7f95 # load x3 with value 0xc95f7f95
sw x3, 0(x2) # store 0xc95f7f95 in memory
flh f12, 0(x2) # load 0xc95f7f95 from memory into f12
fcvt.wu.h x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xca0bb91e # load x3 with value 0xca0bb91e
sw x3, 0(x2) # store 0xca0bb91e in memory
flh f31, 0(x2) # load 0xca0bb91e from memory into f31
fcvt.wu.h x17, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x405fde4f # load x3 with value 0x405fde4f
sw x3, 0(x2) # store 0x405fde4f in memory
flh f28, 0(x2) # load 0x405fde4f from memory into f28
fcvt.wu.h x18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x31167abf # load x3 with value 0x31167abf
sw x3, 0(x2) # store 0x31167abf in memory
flh f1, 0(x2) # load 0x31167abf from memory into f1
fcvt.wu.h x19, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xaaa94207 # load x3 with value 0xaaa94207
sw x3, 0(x2) # store 0xaaa94207 in memory
flh f22, 0(x2) # load 0xaaa94207 from memory into f22
fcvt.wu.h x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xaadf9b69 # load x3 with value 0xaadf9b69
sw x3, 0(x2) # store 0xaadf9b69 in memory
flh f6, 0(x2) # load 0xaadf9b69 from memory into f6
fcvt.wu.h x21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x10c21cc1 # load x3 with value 0x10c21cc1
sw x3, 0(x2) # store 0x10c21cc1 in memory
flh f2, 0(x2) # load 0x10c21cc1 from memory into f2
fcvt.wu.h x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x70c83133 # load x3 with value 0x70c83133
sw x3, 0(x2) # store 0x70c83133 in memory
flh f21, 0(x2) # load 0x70c83133 from memory into f21
fcvt.wu.h x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x586ffcd1 # load x3 with value 0x586ffcd1
sw x3, 0(x2) # store 0x586ffcd1 in memory
flh f14, 0(x2) # load 0x586ffcd1 from memory into f14
fcvt.wu.h x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x3748b37d # load x3 with value 0x3748b37d
sw x3, 0(x2) # store 0x3748b37d in memory
flh f15, 0(x2) # load 0x3748b37d from memory into f15
fcvt.wu.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x9228b717 # load x3 with value 0x9228b717
sw x3, 0(x2) # store 0x9228b717 in memory
flh f20, 0(x2) # load 0x9228b717 from memory into f20
fcvt.wu.h x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x1c26fb8c # load x3 with value 0x1c26fb8c
sw x3, 0(x2) # store 0x1c26fb8c in memory
flh f2, 0(x2) # load 0x1c26fb8c from memory into f2
fcvt.wu.h x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x1b638f79 # load x3 with value 0x1b638f79
sw x3, 0(x2) # store 0x1b638f79 in memory
flh f15, 0(x2) # load 0x1b638f79 from memory into f15
fcvt.wu.h x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x03147d04 # load x3 with value 0x03147d04
sw x3, 0(x2) # store 0x03147d04 in memory
flh f26, 0(x2) # load 0x03147d04 from memory into f26
fcvt.wu.h x29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x71549493 # load x3 with value 0x71549493
sw x3, 0(x2) # store 0x71549493 in memory
flh f24, 0(x2) # load 0x71549493 from memory into f24
fcvt.wu.h x30, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x37148dfb # load x3 with value 0x37148dfb
sw x3, 0(x2) # store 0x37148dfb in memory
flh f23, 0(x2) # load 0x37148dfb from memory into f23
fcvt.wu.h x31, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x28, x12 # perform first operation
fcvt.wu.h x14, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x19, x23 # perform first operation
fcvt.wu.h x1, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x19, x20 # perform first operation
fcvt.wu.h x8, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f27, f12 # perform first operation
fcvt.wu.h x14, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x17, x23 # perform first operation
fcvt.wu.h x19, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x7, x13 # perform first operation
fcvt.wu.h x30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x8, x18 # perform first operation
fcvt.wu.h x7, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x7, x18 # perform first operation
fcvt.wu.h x16, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x30, x17 # perform first operation
fcvt.wu.h x31, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x22, x21 # perform first operation
fcvt.wu.h x10, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x8, x20 # perform first operation
fcvt.wu.h x3, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x29, x10 # perform first operation
fcvt.wu.h x8, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x25, x15 # perform first operation
fcvt.wu.h x25, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x20 # perform first operation
fcvt.wu.h x20, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x7, x8 # perform first operation
fcvt.wu.h x28, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x88edf02e # load x3 with value 0x88edf02e
sw x3, 0(x2) # store 0x88edf02e in memory
flh f0, 0(x2) # load 0x88edf02e from memory into f0
fcvt.wu.h x7, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x8ce99415 # load x3 with value 0x8ce99415
sw x3, 0(x2) # store 0x8ce99415 in memory
flh f1, 0(x2) # load 0x8ce99415 from memory into f1
fcvt.wu.h x24, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x19e8b647 # load x3 with value 0x19e8b647
sw x3, 0(x2) # store 0x19e8b647 in memory
flh f2, 0(x2) # load 0x19e8b647 from memory into f2
fcvt.wu.h x16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x61d69aea # load x3 with value 0x61d69aea
sw x3, 0(x2) # store 0x61d69aea in memory
flh f3, 0(x2) # load 0x61d69aea from memory into f3
fcvt.wu.h x14, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x063f3828 # load x3 with value 0x063f3828
sw x3, 0(x2) # store 0x063f3828 in memory
flh f4, 0(x2) # load 0x063f3828 from memory into f4
fcvt.wu.h x24, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x322dbc19 # load x3 with value 0x322dbc19
sw x3, 0(x2) # store 0x322dbc19 in memory
flh f5, 0(x2) # load 0x322dbc19 from memory into f5
fcvt.wu.h x28, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5100757d # load x3 with value 0x5100757d
sw x3, 0(x2) # store 0x5100757d in memory
flh f6, 0(x2) # load 0x5100757d from memory into f6
fcvt.wu.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0x698ac44b # load x3 with value 0x698ac44b
sw x3, 0(x2) # store 0x698ac44b in memory
flh f7, 0(x2) # load 0x698ac44b from memory into f7
fcvt.wu.h x18, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xb140c643 # load x3 with value 0xb140c643
sw x3, 0(x2) # store 0xb140c643 in memory
flh f8, 0(x2) # load 0xb140c643 from memory into f8
fcvt.wu.h x27, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x1a51b1fc # load x3 with value 0x1a51b1fc
sw x3, 0(x2) # store 0x1a51b1fc in memory
flh f9, 0(x2) # load 0x1a51b1fc from memory into f9
fcvt.wu.h x14, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xafeb6bbe # load x3 with value 0xafeb6bbe
sw x3, 0(x2) # store 0xafeb6bbe in memory
flh f10, 0(x2) # load 0xafeb6bbe from memory into f10
fcvt.wu.h x13, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x9cb3a4d8 # load x3 with value 0x9cb3a4d8
sw x3, 0(x2) # store 0x9cb3a4d8 in memory
flh f11, 0(x2) # load 0x9cb3a4d8 from memory into f11
fcvt.wu.h x25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x103467cb # load x3 with value 0x103467cb
sw x3, 0(x2) # store 0x103467cb in memory
flh f12, 0(x2) # load 0x103467cb from memory into f12
fcvt.wu.h x30, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xe8d1cdd7 # load x3 with value 0xe8d1cdd7
sw x3, 0(x2) # store 0xe8d1cdd7 in memory
flh f13, 0(x2) # load 0xe8d1cdd7 from memory into f13
fcvt.wu.h x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xf88edf21 # load x3 with value 0xf88edf21
sw x3, 0(x2) # store 0xf88edf21 in memory
flh f14, 0(x2) # load 0xf88edf21 from memory into f14
fcvt.wu.h x21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x1fc4bf4f # load x3 with value 0x1fc4bf4f
sw x3, 0(x2) # store 0x1fc4bf4f in memory
flh f15, 0(x2) # load 0x1fc4bf4f from memory into f15
fcvt.wu.h x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xed52c1d5 # load x3 with value 0xed52c1d5
sw x3, 0(x2) # store 0xed52c1d5 in memory
flh f16, 0(x2) # load 0xed52c1d5 from memory into f16
fcvt.wu.h x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x18c7f631 # load x3 with value 0x18c7f631
sw x3, 0(x2) # store 0x18c7f631 in memory
flh f17, 0(x2) # load 0x18c7f631 from memory into f17
fcvt.wu.h x2, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xfa207b2e # load x3 with value 0xfa207b2e
sw x3, 0(x2) # store 0xfa207b2e in memory
flh f18, 0(x2) # load 0xfa207b2e from memory into f18
fcvt.wu.h x18, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xc148b1ba # load x3 with value 0xc148b1ba
sw x3, 0(x2) # store 0xc148b1ba in memory
flh f19, 0(x2) # load 0xc148b1ba from memory into f19
fcvt.wu.h x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x05244ffb # load x3 with value 0x05244ffb
sw x3, 0(x2) # store 0x05244ffb in memory
flh f20, 0(x2) # load 0x05244ffb from memory into f20
fcvt.wu.h x11, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa9ae4e05 # load x3 with value 0xa9ae4e05
sw x3, 0(x2) # store 0xa9ae4e05 in memory
flh f21, 0(x2) # load 0xa9ae4e05 from memory into f21
fcvt.wu.h x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xb3371b3a # load x3 with value 0xb3371b3a
sw x3, 0(x2) # store 0xb3371b3a in memory
flh f22, 0(x2) # load 0xb3371b3a from memory into f22
fcvt.wu.h x13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x5f2629d1 # load x3 with value 0x5f2629d1
sw x3, 0(x2) # store 0x5f2629d1 in memory
flh f23, 0(x2) # load 0x5f2629d1 from memory into f23
fcvt.wu.h x8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xb13e4a0d # load x3 with value 0xb13e4a0d
sw x3, 0(x2) # store 0xb13e4a0d in memory
flh f24, 0(x2) # load 0xb13e4a0d from memory into f24
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x266f6665 # load x3 with value 0x266f6665
sw x3, 0(x2) # store 0x266f6665 in memory
flh f25, 0(x2) # load 0x266f6665 from memory into f25
fcvt.wu.h x3, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x2a2fd30d # load x3 with value 0x2a2fd30d
sw x3, 0(x2) # store 0x2a2fd30d in memory
flh f26, 0(x2) # load 0x2a2fd30d from memory into f26
fcvt.wu.h x29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xf77460fe # load x3 with value 0xf77460fe
sw x3, 0(x2) # store 0xf77460fe in memory
flh f27, 0(x2) # load 0xf77460fe from memory into f27
fcvt.wu.h x26, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x69deb5d6 # load x3 with value 0x69deb5d6
sw x3, 0(x2) # store 0x69deb5d6 in memory
flh f28, 0(x2) # load 0x69deb5d6 from memory into f28
fcvt.wu.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x8bf0ebda # load x3 with value 0x8bf0ebda
sw x3, 0(x2) # store 0x8bf0ebda in memory
flh f29, 0(x2) # load 0x8bf0ebda from memory into f29
fcvt.wu.h x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x2c04456f # load x3 with value 0x2c04456f
sw x3, 0(x2) # store 0x2c04456f in memory
flh f30, 0(x2) # load 0x2c04456f from memory into f30
fcvt.wu.h x8, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x501f0ce0 # load x3 with value 0x501f0ce0
sw x3, 0(x2) # store 0x501f0ce0 in memory
flh f31, 0(x2) # load 0x501f0ce0 from memory into f31
fcvt.wu.h x31, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fcvt.wu.h x15, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fcvt.wu.h x12, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fcvt.wu.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fcvt.wu.h x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fcvt.wu.h x1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fcvt.wu.h x31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fcvt.wu.h x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fcvt.wu.h x13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fcvt.wu.h x28, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fcvt.wu.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fcvt.wu.h x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fcvt.wu.h x1, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fcvt.wu.h x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fcvt.wu.h x7, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fcvt.wu.h x5, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fcvt.wu.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fcvt.wu.h x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fcvt.wu.h x31, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fcvt.wu.h x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fcvt.wu.h x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fcvt.wu.h x12, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fcvt.wu.h x19, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fcvt.wu.h x2, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fcvt.wu.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fcvt.wu.h x6, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fcvt.wu.h x6, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fcvt.wu.h x25, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fcvt.wu.h x17, f23, dyn # perform operation
fcvt.wu.h x17, f23, rdn # perform operation
fcvt.wu.h x17, f23, rmm # perform operation
fcvt.wu.h x17, f23, rne # perform operation
fcvt.wu.h x17, f23, rtz # perform operation
fcvt.wu.h x17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fcvt.wu.h x3, f16, dyn # perform operation
fcvt.wu.h x3, f16, rdn # perform operation
fcvt.wu.h x3, f16, rmm # perform operation
fcvt.wu.h x3, f16, rne # perform operation
fcvt.wu.h x3, f16, rtz # perform operation
fcvt.wu.h x3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fcvt.wu.h x29, f16, dyn # perform operation
fcvt.wu.h x29, f16, rdn # perform operation
fcvt.wu.h x29, f16, rmm # perform operation
fcvt.wu.h x29, f16, rne # perform operation
fcvt.wu.h x29, f16, rtz # perform operation
fcvt.wu.h x29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fcvt.wu.h x9, f7, dyn # perform operation
fcvt.wu.h x9, f7, rdn # perform operation
fcvt.wu.h x9, f7, rmm # perform operation
fcvt.wu.h x9, f7, rne # perform operation
fcvt.wu.h x9, f7, rtz # perform operation
fcvt.wu.h x9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fcvt.wu.h x22, f23, dyn # perform operation
fcvt.wu.h x22, f23, rdn # perform operation
fcvt.wu.h x22, f23, rmm # perform operation
fcvt.wu.h x22, f23, rne # perform operation
fcvt.wu.h x22, f23, rtz # perform operation
fcvt.wu.h x22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fcvt.wu.h x27, f31, dyn # perform operation
fcvt.wu.h x27, f31, rdn # perform operation
fcvt.wu.h x27, f31, rmm # perform operation
fcvt.wu.h x27, f31, rne # perform operation
fcvt.wu.h x27, f31, rtz # perform operation
fcvt.wu.h x27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fcvt.wu.h x14, f21, dyn # perform operation
fcvt.wu.h x14, f21, rdn # perform operation
fcvt.wu.h x14, f21, rmm # perform operation
fcvt.wu.h x14, f21, rne # perform operation
fcvt.wu.h x14, f21, rtz # perform operation
fcvt.wu.h x14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x14, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fcvt.wu.h x5, f8, dyn # perform operation
fcvt.wu.h x5, f8, rdn # perform operation
fcvt.wu.h x5, f8, rmm # perform operation
fcvt.wu.h x5, f8, rne # perform operation
fcvt.wu.h x5, f8, rtz # perform operation
fcvt.wu.h x5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fcvt.wu.h x11, f6, dyn # perform operation
fcvt.wu.h x11, f6, rdn # perform operation
fcvt.wu.h x11, f6, rmm # perform operation
fcvt.wu.h x11, f6, rne # perform operation
fcvt.wu.h x11, f6, rtz # perform operation
fcvt.wu.h x11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fcvt.wu.h x1, f25, dyn # perform operation
fcvt.wu.h x1, f25, rdn # perform operation
fcvt.wu.h x1, f25, rmm # perform operation
fcvt.wu.h x1, f25, rne # perform operation
fcvt.wu.h x1, f25, rtz # perform operation
fcvt.wu.h x1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fcvt.wu.h x17, f1, dyn # perform operation
fcvt.wu.h x17, f1, rdn # perform operation
fcvt.wu.h x17, f1, rmm # perform operation
fcvt.wu.h x17, f1, rne # perform operation
fcvt.wu.h x17, f1, rtz # perform operation
fcvt.wu.h x17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fcvt.wu.h x31, f2, dyn # perform operation
fcvt.wu.h x31, f2, rdn # perform operation
fcvt.wu.h x31, f2, rmm # perform operation
fcvt.wu.h x31, f2, rne # perform operation
fcvt.wu.h x31, f2, rtz # perform operation
fcvt.wu.h x31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fcvt.wu.h x9, f23, dyn # perform operation
fcvt.wu.h x9, f23, rdn # perform operation
fcvt.wu.h x9, f23, rmm # perform operation
fcvt.wu.h x9, f23, rne # perform operation
fcvt.wu.h x9, f23, rtz # perform operation
fcvt.wu.h x9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fcvt.wu.h x18, f8, dyn # perform operation
fcvt.wu.h x18, f8, rdn # perform operation
fcvt.wu.h x18, f8, rmm # perform operation
fcvt.wu.h x18, f8, rne # perform operation
fcvt.wu.h x18, f8, rtz # perform operation
fcvt.wu.h x18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fcvt.wu.h x27, f22, dyn # perform operation
fcvt.wu.h x27, f22, rdn # perform operation
fcvt.wu.h x27, f22, rmm # perform operation
fcvt.wu.h x27, f22, rne # perform operation
fcvt.wu.h x27, f22, rtz # perform operation
fcvt.wu.h x27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x27, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fcvt.wu.h x28, f14, dyn # perform operation
fcvt.wu.h x28, f14, rdn # perform operation
fcvt.wu.h x28, f14, rmm # perform operation
fcvt.wu.h x28, f14, rne # perform operation
fcvt.wu.h x28, f14, rtz # perform operation
fcvt.wu.h x28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fcvt.wu.h x16, f27, dyn # perform operation
fcvt.wu.h x16, f27, rdn # perform operation
fcvt.wu.h x16, f27, rmm # perform operation
fcvt.wu.h x16, f27, rne # perform operation
fcvt.wu.h x16, f27, rtz # perform operation
fcvt.wu.h x16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fcvt.wu.h x2, f19, dyn # perform operation
fcvt.wu.h x2, f19, rdn # perform operation
fcvt.wu.h x2, f19, rmm # perform operation
fcvt.wu.h x2, f19, rne # perform operation
fcvt.wu.h x2, f19, rtz # perform operation
fcvt.wu.h x2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fcvt.wu.h x18, f20, dyn # perform operation
fcvt.wu.h x18, f20, rdn # perform operation
fcvt.wu.h x18, f20, rmm # perform operation
fcvt.wu.h x18, f20, rne # perform operation
fcvt.wu.h x18, f20, rtz # perform operation
fcvt.wu.h x18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fcvt.wu.h x8, f22, dyn # perform operation
fcvt.wu.h x8, f22, rdn # perform operation
fcvt.wu.h x8, f22, rmm # perform operation
fcvt.wu.h x8, f22, rne # perform operation
fcvt.wu.h x8, f22, rtz # perform operation
fcvt.wu.h x8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fcvt.wu.h x5, f19, dyn # perform operation
fcvt.wu.h x5, f19, rdn # perform operation
fcvt.wu.h x5, f19, rmm # perform operation
fcvt.wu.h x5, f19, rne # perform operation
fcvt.wu.h x5, f19, rtz # perform operation
fcvt.wu.h x5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x5, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fcvt.wu.h x27, f19, dyn # perform operation
fcvt.wu.h x27, f19, rdn # perform operation
fcvt.wu.h x27, f19, rmm # perform operation
fcvt.wu.h x27, f19, rne # perform operation
fcvt.wu.h x27, f19, rtz # perform operation
fcvt.wu.h x27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fcvt.wu.h x24, f9, dyn # perform operation
fcvt.wu.h x24, f9, rdn # perform operation
fcvt.wu.h x24, f9, rmm # perform operation
fcvt.wu.h x24, f9, rne # perform operation
fcvt.wu.h x24, f9, rtz # perform operation
fcvt.wu.h x24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fcvt.wu.h x18, f19, dyn # perform operation
fcvt.wu.h x18, f19, rdn # perform operation
fcvt.wu.h x18, f19, rmm # perform operation
fcvt.wu.h x18, f19, rne # perform operation
fcvt.wu.h x18, f19, rtz # perform operation
fcvt.wu.h x18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fcvt.wu.h x6, f9, dyn # perform operation
fcvt.wu.h x6, f9, rdn # perform operation
fcvt.wu.h x6, f9, rmm # perform operation
fcvt.wu.h x6, f9, rne # perform operation
fcvt.wu.h x6, f9, rtz # perform operation
fcvt.wu.h x6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fcvt.wu.h x16, f31, dyn # perform operation
fcvt.wu.h x16, f31, rdn # perform operation
fcvt.wu.h x16, f31, rmm # perform operation
fcvt.wu.h x16, f31, rne # perform operation
fcvt.wu.h x16, f31, rtz # perform operation
fcvt.wu.h x16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fcvt.wu.h x1, f19, dyn # perform operation
fcvt.wu.h x1, f19, rdn # perform operation
fcvt.wu.h x1, f19, rmm # perform operation
fcvt.wu.h x1, f19, rne # perform operation
fcvt.wu.h x1, f19, rtz # perform operation
fcvt.wu.h x1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fcvt.wu.h x20, f2, dyn # perform operation
fcvt.wu.h x20, f2, rdn # perform operation
fcvt.wu.h x20, f2, rmm # perform operation
fcvt.wu.h x20, f2, rne # perform operation
fcvt.wu.h x20, f2, rtz # perform operation
fcvt.wu.h x20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0x492e72c9 # load x3 with value 0x492e72c9
sw x3, 0(x2) # store 0x492e72c9 in memory
flh f19, 0(x2) # load 0x492e72c9 from memory into f19
fcvt.wu.h x25, f19, dyn # perform operation
fcvt.wu.h x25, f19, rdn # perform operation
fcvt.wu.h x25, f19, rmm # perform operation
fcvt.wu.h x25, f19, rne # perform operation
fcvt.wu.h x25, f19, rtz # perform operation
fcvt.wu.h x25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fcvt.wu.h x26, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f31, 0(x2) # load 0xfffe8000 from memory into f31
fcvt.wu.h x20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 952)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f13, 0(x2) # load 0x7fff3c00 from memory into f13
fcvt.wu.h x10, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 956)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f17, 0(x2) # load 0xbeefbc00 from memory into f17
fcvt.wu.h x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f28, 0(x2) # load 0xfeff0400 from memory into f28
fcvt.wu.h x20, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 964)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f9, 0(x2) # load 0x0fff8400 from memory into f9
fcvt.wu.h x2, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f26, 0(x2) # load 0xefff7bff from memory into f26
fcvt.wu.h x30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 972)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f21, 0(x2) # load 0xc0defbff from memory into f21
fcvt.wu.h x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f3, 0(x2) # load 0x4f1a7c00 from memory into f3
fcvt.wu.h x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 980)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f30, 0(x2) # load 0x0ffffc00 from memory into f30
fcvt.wu.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f12, 0(x2) # load 0xffef7e00 from memory into f12
fcvt.wu.h x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f24, 0(x2) # load 0xfeef7fff from memory into f24
fcvt.wu.h x28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f22, 0(x2) # load 0xa1b27c01 from memory into f22
fcvt.wu.h x18, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f22, 0(x2) # load 0x4fd77dff from memory into f22
fcvt.wu.h x13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

.EQU SIGSIZE,1004


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
