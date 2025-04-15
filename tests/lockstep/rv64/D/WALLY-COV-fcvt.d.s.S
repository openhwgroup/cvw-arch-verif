///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.d.s.S
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


# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x19, x13 # perform first operation
fcvt.d.s f11, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x12, x10 # perform first operation
fcvt.d.s f9, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x28, x21 # perform first operation
fcvt.d.s f24, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f2, f30 # perform first operation
fcvt.d.s f31, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x30, x17 # perform first operation
fcvt.d.s f2, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x25, x29 # perform first operation
fcvt.d.s f9, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f16, f5 # perform first operation
fcvt.d.s f1, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f16, f26 # perform first operation
fcvt.d.s f28, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f24, f9 # perform first operation
fcvt.d.s f2, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f20, f14 # perform first operation
fcvt.d.s f20, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f29, f24 # perform first operation
fcvt.d.s f24, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f28, f1 # perform first operation
fcvt.d.s f26, f21 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84d80d491daeba4b # load x3 with value 0x84d80d491daeba4b
sd x3, 0(x2) # store 0x84d80d491daeba4b in memory
flw f0, 0(x2) # load 0x84d80d491daeba4b from memory into f0
fcvt.d.s f12, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc27a2271e964c2dc # load x3 with value 0xc27a2271e964c2dc
sd x3, 0(x2) # store 0xc27a2271e964c2dc in memory
flw f1, 0(x2) # load 0xc27a2271e964c2dc from memory into f1
fcvt.d.s f29, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89b698e130596abc # load x3 with value 0x89b698e130596abc
sd x3, 0(x2) # store 0x89b698e130596abc in memory
flw f2, 0(x2) # load 0x89b698e130596abc from memory into f2
fcvt.d.s f21, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2e437c8d6109512 # load x3 with value 0xb2e437c8d6109512
sd x3, 0(x2) # store 0xb2e437c8d6109512 in memory
flw f3, 0(x2) # load 0xb2e437c8d6109512 from memory into f3
fcvt.d.s f10, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe08248589b3a9f85 # load x3 with value 0xe08248589b3a9f85
sd x3, 0(x2) # store 0xe08248589b3a9f85 in memory
flw f4, 0(x2) # load 0xe08248589b3a9f85 from memory into f4
fcvt.d.s f7, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbec6f6a5787972d6 # load x3 with value 0xbec6f6a5787972d6
sd x3, 0(x2) # store 0xbec6f6a5787972d6 in memory
flw f5, 0(x2) # load 0xbec6f6a5787972d6 from memory into f5
fcvt.d.s f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x476f0a7f86e9abca # load x3 with value 0x476f0a7f86e9abca
sd x3, 0(x2) # store 0x476f0a7f86e9abca in memory
flw f6, 0(x2) # load 0x476f0a7f86e9abca from memory into f6
fcvt.d.s f23, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42a18419972510ff # load x3 with value 0x42a18419972510ff
sd x3, 0(x2) # store 0x42a18419972510ff in memory
flw f7, 0(x2) # load 0x42a18419972510ff from memory into f7
fcvt.d.s f25, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0262278b8e1f00cf # load x3 with value 0x0262278b8e1f00cf
sd x3, 0(x2) # store 0x0262278b8e1f00cf in memory
flw f8, 0(x2) # load 0x0262278b8e1f00cf from memory into f8
fcvt.d.s f25, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x200d1aeebf498b61 # load x3 with value 0x200d1aeebf498b61
sd x3, 0(x2) # store 0x200d1aeebf498b61 in memory
flw f9, 0(x2) # load 0x200d1aeebf498b61 from memory into f9
fcvt.d.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x255691004c5950d8 # load x3 with value 0x255691004c5950d8
sd x3, 0(x2) # store 0x255691004c5950d8 in memory
flw f10, 0(x2) # load 0x255691004c5950d8 from memory into f10
fcvt.d.s f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc4dbfda04e8563eb # load x3 with value 0xc4dbfda04e8563eb
sd x3, 0(x2) # store 0xc4dbfda04e8563eb in memory
flw f11, 0(x2) # load 0xc4dbfda04e8563eb from memory into f11
fcvt.d.s f31, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x221fde7b0d3bbb3c # load x3 with value 0x221fde7b0d3bbb3c
sd x3, 0(x2) # store 0x221fde7b0d3bbb3c in memory
flw f12, 0(x2) # load 0x221fde7b0d3bbb3c from memory into f12
fcvt.d.s f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65339c40aaae0c21 # load x3 with value 0x65339c40aaae0c21
sd x3, 0(x2) # store 0x65339c40aaae0c21 in memory
flw f13, 0(x2) # load 0x65339c40aaae0c21 from memory into f13
fcvt.d.s f2, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57c5a9f4944e9bb0 # load x3 with value 0x57c5a9f4944e9bb0
sd x3, 0(x2) # store 0x57c5a9f4944e9bb0 in memory
flw f14, 0(x2) # load 0x57c5a9f4944e9bb0 from memory into f14
fcvt.d.s f23, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5fdb4f32bbd935b # load x3 with value 0xd5fdb4f32bbd935b
sd x3, 0(x2) # store 0xd5fdb4f32bbd935b in memory
flw f15, 0(x2) # load 0xd5fdb4f32bbd935b from memory into f15
fcvt.d.s f18, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde98c60ae7a2b011 # load x3 with value 0xde98c60ae7a2b011
sd x3, 0(x2) # store 0xde98c60ae7a2b011 in memory
flw f16, 0(x2) # load 0xde98c60ae7a2b011 from memory into f16
fcvt.d.s f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c6b6a0c86ca20f8 # load x3 with value 0x5c6b6a0c86ca20f8
sd x3, 0(x2) # store 0x5c6b6a0c86ca20f8 in memory
flw f17, 0(x2) # load 0x5c6b6a0c86ca20f8 from memory into f17
fcvt.d.s f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbd52b0af7d01811 # load x3 with value 0xdbd52b0af7d01811
sd x3, 0(x2) # store 0xdbd52b0af7d01811 in memory
flw f18, 0(x2) # load 0xdbd52b0af7d01811 from memory into f18
fcvt.d.s f14, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9dae619d320c60d5 # load x3 with value 0x9dae619d320c60d5
sd x3, 0(x2) # store 0x9dae619d320c60d5 in memory
flw f19, 0(x2) # load 0x9dae619d320c60d5 from memory into f19
fcvt.d.s f26, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb707e31627b7fec2 # load x3 with value 0xb707e31627b7fec2
sd x3, 0(x2) # store 0xb707e31627b7fec2 in memory
flw f20, 0(x2) # load 0xb707e31627b7fec2 from memory into f20
fcvt.d.s f15, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed6e4952822171c9 # load x3 with value 0xed6e4952822171c9
sd x3, 0(x2) # store 0xed6e4952822171c9 in memory
flw f21, 0(x2) # load 0xed6e4952822171c9 from memory into f21
fcvt.d.s f5, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbebd87007c1835a # load x3 with value 0xfbebd87007c1835a
sd x3, 0(x2) # store 0xfbebd87007c1835a in memory
flw f22, 0(x2) # load 0xfbebd87007c1835a from memory into f22
fcvt.d.s f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3cb6d252b2d9cebd # load x3 with value 0x3cb6d252b2d9cebd
sd x3, 0(x2) # store 0x3cb6d252b2d9cebd in memory
flw f23, 0(x2) # load 0x3cb6d252b2d9cebd from memory into f23
fcvt.d.s f19, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8b8ce834eefbcc4 # load x3 with value 0xe8b8ce834eefbcc4
sd x3, 0(x2) # store 0xe8b8ce834eefbcc4 in memory
flw f24, 0(x2) # load 0xe8b8ce834eefbcc4 from memory into f24
fcvt.d.s f8, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x690c6abfb218e493 # load x3 with value 0x690c6abfb218e493
sd x3, 0(x2) # store 0x690c6abfb218e493 in memory
flw f25, 0(x2) # load 0x690c6abfb218e493 from memory into f25
fcvt.d.s f26, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7139178f3aa4781 # load x3 with value 0xd7139178f3aa4781
sd x3, 0(x2) # store 0xd7139178f3aa4781 in memory
flw f26, 0(x2) # load 0xd7139178f3aa4781 from memory into f26
fcvt.d.s f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x222a5c4d7f47cd34 # load x3 with value 0x222a5c4d7f47cd34
sd x3, 0(x2) # store 0x222a5c4d7f47cd34 in memory
flw f27, 0(x2) # load 0x222a5c4d7f47cd34 from memory into f27
fcvt.d.s f23, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x480cdc1d1474b5f3 # load x3 with value 0x480cdc1d1474b5f3
sd x3, 0(x2) # store 0x480cdc1d1474b5f3 in memory
flw f28, 0(x2) # load 0x480cdc1d1474b5f3 from memory into f28
fcvt.d.s f30, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x51cdae3a7b5fc1a1 # load x3 with value 0x51cdae3a7b5fc1a1
sd x3, 0(x2) # store 0x51cdae3a7b5fc1a1 in memory
flw f29, 0(x2) # load 0x51cdae3a7b5fc1a1 from memory into f29
fcvt.d.s f18, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe6471ff18f0080d8 # load x3 with value 0xe6471ff18f0080d8
sd x3, 0(x2) # store 0xe6471ff18f0080d8 in memory
flw f30, 0(x2) # load 0xe6471ff18f0080d8 from memory into f30
fcvt.d.s f27, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x450cdaa227b83712 # load x3 with value 0x450cdaa227b83712
sd x3, 0(x2) # store 0x450cdaa227b83712 in memory
flw f31, 0(x2) # load 0x450cdaa227b83712 from memory into f31
fcvt.d.s f23, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x550adbf5216e3695 # load x3 with value 0x550adbf5216e3695
sd x3, 0(x2) # store 0x550adbf5216e3695 in memory
flw f23, 0(x2) # load 0x550adbf5216e3695 from memory into f23
fcvt.d.s f0, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x940a188bc9e6add0 # load x3 with value 0x940a188bc9e6add0
sd x3, 0(x2) # store 0x940a188bc9e6add0 in memory
flw f17, 0(x2) # load 0x940a188bc9e6add0 from memory into f17
fcvt.d.s f1, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6306325c150c487c # load x3 with value 0x6306325c150c487c
sd x3, 0(x2) # store 0x6306325c150c487c in memory
flw f31, 0(x2) # load 0x6306325c150c487c from memory into f31
fcvt.d.s f2, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc05fdcceb8b980b # load x3 with value 0xfc05fdcceb8b980b
sd x3, 0(x2) # store 0xfc05fdcceb8b980b in memory
flw f28, 0(x2) # load 0xfc05fdcceb8b980b from memory into f28
fcvt.d.s f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe736aab3f204d766 # load x3 with value 0xe736aab3f204d766
sd x3, 0(x2) # store 0xe736aab3f204d766 in memory
flw f25, 0(x2) # load 0xe736aab3f204d766 from memory into f25
fcvt.d.s f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf674623778eb01e1 # load x3 with value 0xf674623778eb01e1
sd x3, 0(x2) # store 0xf674623778eb01e1 in memory
flw f14, 0(x2) # load 0xf674623778eb01e1 from memory into f14
fcvt.d.s f5, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2bfaa5725e52ce3 # load x3 with value 0xa2bfaa5725e52ce3
sd x3, 0(x2) # store 0xa2bfaa5725e52ce3 in memory
flw f7, 0(x2) # load 0xa2bfaa5725e52ce3 from memory into f7
fcvt.d.s f6, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb488b7981a6a55aa # load x3 with value 0xb488b7981a6a55aa
sd x3, 0(x2) # store 0xb488b7981a6a55aa in memory
flw f8, 0(x2) # load 0xb488b7981a6a55aa from memory into f8
fcvt.d.s f7, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36612d36af14af07 # load x3 with value 0x36612d36af14af07
sd x3, 0(x2) # store 0x36612d36af14af07 in memory
flw f13, 0(x2) # load 0x36612d36af14af07 from memory into f13
fcvt.d.s f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb323b494aef6eef6 # load x3 with value 0xb323b494aef6eef6
sd x3, 0(x2) # store 0xb323b494aef6eef6 in memory
flw f19, 0(x2) # load 0xb323b494aef6eef6 from memory into f19
fcvt.d.s f9, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe0ac43f91195536 # load x3 with value 0xbe0ac43f91195536
sd x3, 0(x2) # store 0xbe0ac43f91195536 in memory
flw f27, 0(x2) # load 0xbe0ac43f91195536 from memory into f27
fcvt.d.s f10, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x49677bf54d8fc505 # load x3 with value 0x49677bf54d8fc505
sd x3, 0(x2) # store 0x49677bf54d8fc505 in memory
flw f27, 0(x2) # load 0x49677bf54d8fc505 from memory into f27
fcvt.d.s f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc353e50e7b014b48 # load x3 with value 0xc353e50e7b014b48
sd x3, 0(x2) # store 0xc353e50e7b014b48 in memory
flw f5, 0(x2) # load 0xc353e50e7b014b48 from memory into f5
fcvt.d.s f12, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcba7f107c82fbf74 # load x3 with value 0xcba7f107c82fbf74
sd x3, 0(x2) # store 0xcba7f107c82fbf74 in memory
flw f5, 0(x2) # load 0xcba7f107c82fbf74 from memory into f5
fcvt.d.s f13, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66fa8a951c886210 # load x3 with value 0x66fa8a951c886210
sd x3, 0(x2) # store 0x66fa8a951c886210 in memory
flw f16, 0(x2) # load 0x66fa8a951c886210 from memory into f16
fcvt.d.s f14, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9e588df3eed6f00 # load x3 with value 0xb9e588df3eed6f00
sd x3, 0(x2) # store 0xb9e588df3eed6f00 in memory
flw f22, 0(x2) # load 0xb9e588df3eed6f00 from memory into f22
fcvt.d.s f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x646cf42e34347041 # load x3 with value 0x646cf42e34347041
sd x3, 0(x2) # store 0x646cf42e34347041 in memory
flw f3, 0(x2) # load 0x646cf42e34347041 from memory into f3
fcvt.d.s f16, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7c380179ddc35a4 # load x3 with value 0xd7c380179ddc35a4
sd x3, 0(x2) # store 0xd7c380179ddc35a4 in memory
flw f3, 0(x2) # load 0xd7c380179ddc35a4 from memory into f3
fcvt.d.s f17, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x545ecd637ab423db # load x3 with value 0x545ecd637ab423db
sd x3, 0(x2) # store 0x545ecd637ab423db in memory
flw f18, 0(x2) # load 0x545ecd637ab423db from memory into f18
fcvt.d.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000a23d0526d952 # load x3 with value 0x8000a23d0526d952
sd x3, 0(x2) # store 0x8000a23d0526d952 in memory
flw f11, 0(x2) # load 0x8000a23d0526d952 from memory into f11
fcvt.d.s f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x50ab81b19cc98a56 # load x3 with value 0x50ab81b19cc98a56
sd x3, 0(x2) # store 0x50ab81b19cc98a56 in memory
flw f20, 0(x2) # load 0x50ab81b19cc98a56 from memory into f20
fcvt.d.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d2167c2c69b9dae # load x3 with value 0x9d2167c2c69b9dae
sd x3, 0(x2) # store 0x9d2167c2c69b9dae in memory
flw f22, 0(x2) # load 0x9d2167c2c69b9dae from memory into f22
fcvt.d.s f21, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f6bbd67bf77a1c8 # load x3 with value 0x6f6bbd67bf77a1c8
sd x3, 0(x2) # store 0x6f6bbd67bf77a1c8 in memory
flw f30, 0(x2) # load 0x6f6bbd67bf77a1c8 from memory into f30
fcvt.d.s f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x816ac2d5aab7db32 # load x3 with value 0x816ac2d5aab7db32
sd x3, 0(x2) # store 0x816ac2d5aab7db32 in memory
flw f29, 0(x2) # load 0x816ac2d5aab7db32 from memory into f29
fcvt.d.s f23, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65d04b750095fada # load x3 with value 0x65d04b750095fada
sd x3, 0(x2) # store 0x65d04b750095fada in memory
flw f7, 0(x2) # load 0x65d04b750095fada from memory into f7
fcvt.d.s f24, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee991a2897d56d7a # load x3 with value 0xee991a2897d56d7a
sd x3, 0(x2) # store 0xee991a2897d56d7a in memory
flw f26, 0(x2) # load 0xee991a2897d56d7a from memory into f26
fcvt.d.s f25, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93f2d691bbfddca7 # load x3 with value 0x93f2d691bbfddca7
sd x3, 0(x2) # store 0x93f2d691bbfddca7 in memory
flw f24, 0(x2) # load 0x93f2d691bbfddca7 from memory into f24
fcvt.d.s f26, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb1aa3f6e79a2eda1 # load x3 with value 0xb1aa3f6e79a2eda1
sd x3, 0(x2) # store 0xb1aa3f6e79a2eda1 in memory
flw f11, 0(x2) # load 0xb1aa3f6e79a2eda1 from memory into f11
fcvt.d.s f27, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64587fab28d89bfd # load x3 with value 0x64587fab28d89bfd
sd x3, 0(x2) # store 0x64587fab28d89bfd in memory
flw f30, 0(x2) # load 0x64587fab28d89bfd from memory into f30
fcvt.d.s f28, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c40646872618dd7 # load x3 with value 0x6c40646872618dd7
sd x3, 0(x2) # store 0x6c40646872618dd7 in memory
flw f1, 0(x2) # load 0x6c40646872618dd7 from memory into f1
fcvt.d.s f29, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84dc427c3678afbe # load x3 with value 0x84dc427c3678afbe
sd x3, 0(x2) # store 0x84dc427c3678afbe in memory
flw f24, 0(x2) # load 0x84dc427c3678afbe from memory into f24
fcvt.d.s f30, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3cf18aa7db37c67e # load x3 with value 0x3cf18aa7db37c67e
sd x3, 0(x2) # store 0x3cf18aa7db37c67e in memory
flw f28, 0(x2) # load 0x3cf18aa7db37c67e from memory into f28
fcvt.d.s f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flw f27, 0(x2) # load 0x0000000000000000 from memory into f27
fcvt.d.s f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sd x3, 0(x2) # store 0x0000000080000000 in memory
flw f22, 0(x2) # load 0x0000000080000000 from memory into f22
fcvt.d.s f17, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
flw f7, 0(x2) # load 0x000000003f800000 from memory into f7
fcvt.d.s f12, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sd x3, 0(x2) # store 0x00000000bf800000 in memory
flw f5, 0(x2) # load 0x00000000bf800000 from memory into f5
fcvt.d.s f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sd x3, 0(x2) # store 0x000000003fc00000 in memory
flw f7, 0(x2) # load 0x000000003fc00000 from memory into f7
fcvt.d.s f6, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sd x3, 0(x2) # store 0x00000000bfc00000 in memory
flw f28, 0(x2) # load 0x00000000bfc00000 from memory into f28
fcvt.d.s f8, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sd x3, 0(x2) # store 0x0000000040000000 in memory
flw f19, 0(x2) # load 0x0000000040000000 from memory into f19
fcvt.d.s f27, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sd x3, 0(x2) # store 0x00000000c0000000 in memory
flw f10, 0(x2) # load 0x00000000c0000000 from memory into f10
fcvt.d.s f2, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sd x3, 0(x2) # store 0x0000000000800000 in memory
flw f11, 0(x2) # load 0x0000000000800000 from memory into f11
fcvt.d.s f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sd x3, 0(x2) # store 0x0000000080800000 in memory
flw f29, 0(x2) # load 0x0000000080800000 from memory into f29
fcvt.d.s f1, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sd x3, 0(x2) # store 0x000000007f7fffff in memory
flw f3, 0(x2) # load 0x000000007f7fffff from memory into f3
fcvt.d.s f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sd x3, 0(x2) # store 0x00000000ff7fffff in memory
flw f27, 0(x2) # load 0x00000000ff7fffff from memory into f27
fcvt.d.s f20, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sd x3, 0(x2) # store 0x00000000007fffff in memory
flw f14, 0(x2) # load 0x00000000007fffff from memory into f14
fcvt.d.s f24, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sd x3, 0(x2) # store 0x00000000807fffff in memory
flw f16, 0(x2) # load 0x00000000807fffff from memory into f16
fcvt.d.s f29, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sd x3, 0(x2) # store 0x0000000000400000 in memory
flw f8, 0(x2) # load 0x0000000000400000 from memory into f8
fcvt.d.s f28, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sd x3, 0(x2) # store 0x0000000080400000 in memory
flw f30, 0(x2) # load 0x0000000080400000 from memory into f30
fcvt.d.s f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
flw f18, 0(x2) # load 0x0000000000000001 from memory into f18
fcvt.d.s f3, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sd x3, 0(x2) # store 0x0000000080000001 in memory
flw f17, 0(x2) # load 0x0000000080000001 from memory into f17
fcvt.d.s f13, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sd x3, 0(x2) # store 0x000000007f800000 in memory
flw f31, 0(x2) # load 0x000000007f800000 from memory into f31
fcvt.d.s f9, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sd x3, 0(x2) # store 0x00000000ff800000 in memory
flw f23, 0(x2) # load 0x00000000ff800000 from memory into f23
fcvt.d.s f13, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sd x3, 0(x2) # store 0x000000007fc00000 in memory
flw f14, 0(x2) # load 0x000000007fc00000 from memory into f14
fcvt.d.s f15, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sd x3, 0(x2) # store 0x000000007fffffff in memory
flw f6, 0(x2) # load 0x000000007fffffff from memory into f6
fcvt.d.s f9, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffffffff # load x3 with value 0x00000000ffffffff
sd x3, 0(x2) # store 0x00000000ffffffff in memory
flw f6, 0(x2) # load 0x00000000ffffffff from memory into f6
fcvt.d.s f30, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sd x3, 0(x2) # store 0x000000007f800001 in memory
flw f21, 0(x2) # load 0x000000007f800001 from memory into f21
fcvt.d.s f16, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sd x3, 0(x2) # store 0x000000007fbfffff in memory
flw f17, 0(x2) # load 0x000000007fbfffff from memory into f17
fcvt.d.s f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffbfffff # load x3 with value 0x00000000ffbfffff
sd x3, 0(x2) # store 0x00000000ffbfffff in memory
flw f10, 0(x2) # load 0x00000000ffbfffff from memory into f10
fcvt.d.s f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sd x3, 0(x2) # store 0x000000007ef8654f in memory
flw f7, 0(x2) # load 0x000000007ef8654f from memory into f7
fcvt.d.s f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sd x3, 0(x2) # store 0x00000000813d9ab0 in memory
flw f5, 0(x2) # load 0x00000000813d9ab0 from memory into f5
fcvt.d.s f7, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xddca115735ee7131 # load x3 with value 0xddca115735ee7131
sd x3, 0(x2) # store 0xddca115735ee7131 in memory
flw f0, 0(x2) # load 0xddca115735ee7131 from memory into f0
fcvt.d.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14eb0c78b912a56f # load x3 with value 0x14eb0c78b912a56f
sd x3, 0(x2) # store 0x14eb0c78b912a56f in memory
flw f1, 0(x2) # load 0x14eb0c78b912a56f from memory into f1
fcvt.d.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d0d986a8dd9e53c # load x3 with value 0x0d0d986a8dd9e53c
sd x3, 0(x2) # store 0x0d0d986a8dd9e53c in memory
flw f2, 0(x2) # load 0x0d0d986a8dd9e53c from memory into f2
fcvt.d.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x890b09345cc791da # load x3 with value 0x890b09345cc791da
sd x3, 0(x2) # store 0x890b09345cc791da in memory
flw f3, 0(x2) # load 0x890b09345cc791da from memory into f3
fcvt.d.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45b131052cd63611 # load x3 with value 0x45b131052cd63611
sd x3, 0(x2) # store 0x45b131052cd63611 in memory
flw f4, 0(x2) # load 0x45b131052cd63611 from memory into f4
fcvt.d.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8588097feb2fbb3 # load x3 with value 0xe8588097feb2fbb3
sd x3, 0(x2) # store 0xe8588097feb2fbb3 in memory
flw f5, 0(x2) # load 0xe8588097feb2fbb3 from memory into f5
fcvt.d.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad9b8a8c5bc57453 # load x3 with value 0xad9b8a8c5bc57453
sd x3, 0(x2) # store 0xad9b8a8c5bc57453 in memory
flw f6, 0(x2) # load 0xad9b8a8c5bc57453 from memory into f6
fcvt.d.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e319dfb1e41fa71 # load x3 with value 0x8e319dfb1e41fa71
sd x3, 0(x2) # store 0x8e319dfb1e41fa71 in memory
flw f7, 0(x2) # load 0x8e319dfb1e41fa71 from memory into f7
fcvt.d.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd696cee1bd62e2ec # load x3 with value 0xd696cee1bd62e2ec
sd x3, 0(x2) # store 0xd696cee1bd62e2ec in memory
flw f8, 0(x2) # load 0xd696cee1bd62e2ec from memory into f8
fcvt.d.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9cb35a7ffd86c693 # load x3 with value 0x9cb35a7ffd86c693
sd x3, 0(x2) # store 0x9cb35a7ffd86c693 in memory
flw f9, 0(x2) # load 0x9cb35a7ffd86c693 from memory into f9
fcvt.d.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc94dcf71da75ccf1 # load x3 with value 0xc94dcf71da75ccf1
sd x3, 0(x2) # store 0xc94dcf71da75ccf1 in memory
flw f10, 0(x2) # load 0xc94dcf71da75ccf1 from memory into f10
fcvt.d.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0969c2ba678c5353 # load x3 with value 0x0969c2ba678c5353
sd x3, 0(x2) # store 0x0969c2ba678c5353 in memory
flw f11, 0(x2) # load 0x0969c2ba678c5353 from memory into f11
fcvt.d.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x25ac179411378221 # load x3 with value 0x25ac179411378221
sd x3, 0(x2) # store 0x25ac179411378221 in memory
flw f12, 0(x2) # load 0x25ac179411378221 from memory into f12
fcvt.d.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad177dc63591762c # load x3 with value 0xad177dc63591762c
sd x3, 0(x2) # store 0xad177dc63591762c in memory
flw f13, 0(x2) # load 0xad177dc63591762c from memory into f13
fcvt.d.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66768b183c1b1fb1 # load x3 with value 0x66768b183c1b1fb1
sd x3, 0(x2) # store 0x66768b183c1b1fb1 in memory
flw f14, 0(x2) # load 0x66768b183c1b1fb1 from memory into f14
fcvt.d.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xea39d086b806b393 # load x3 with value 0xea39d086b806b393
sd x3, 0(x2) # store 0xea39d086b806b393 in memory
flw f15, 0(x2) # load 0xea39d086b806b393 from memory into f15
fcvt.d.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f03d943f5a3a11d # load x3 with value 0x8f03d943f5a3a11d
sd x3, 0(x2) # store 0x8f03d943f5a3a11d in memory
flw f16, 0(x2) # load 0x8f03d943f5a3a11d from memory into f16
fcvt.d.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3ef7f1cee6b6f41 # load x3 with value 0xd3ef7f1cee6b6f41
sd x3, 0(x2) # store 0xd3ef7f1cee6b6f41 in memory
flw f17, 0(x2) # load 0xd3ef7f1cee6b6f41 from memory into f17
fcvt.d.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a6b6159d31d7f3d # load x3 with value 0x1a6b6159d31d7f3d
sd x3, 0(x2) # store 0x1a6b6159d31d7f3d in memory
flw f18, 0(x2) # load 0x1a6b6159d31d7f3d from memory into f18
fcvt.d.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcf389c2b3587efe7 # load x3 with value 0xcf389c2b3587efe7
sd x3, 0(x2) # store 0xcf389c2b3587efe7 in memory
flw f19, 0(x2) # load 0xcf389c2b3587efe7 from memory into f19
fcvt.d.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x344bcbd966ba1e43 # load x3 with value 0x344bcbd966ba1e43
sd x3, 0(x2) # store 0x344bcbd966ba1e43 in memory
flw f20, 0(x2) # load 0x344bcbd966ba1e43 from memory into f20
fcvt.d.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa61f6ad53e3b5b47 # load x3 with value 0xa61f6ad53e3b5b47
sd x3, 0(x2) # store 0xa61f6ad53e3b5b47 in memory
flw f21, 0(x2) # load 0xa61f6ad53e3b5b47 from memory into f21
fcvt.d.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb2ee23f59c0959d # load x3 with value 0xeb2ee23f59c0959d
sd x3, 0(x2) # store 0xeb2ee23f59c0959d in memory
flw f22, 0(x2) # load 0xeb2ee23f59c0959d from memory into f22
fcvt.d.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e6783b0297fcc2e # load x3 with value 0x4e6783b0297fcc2e
sd x3, 0(x2) # store 0x4e6783b0297fcc2e in memory
flw f23, 0(x2) # load 0x4e6783b0297fcc2e from memory into f23
fcvt.d.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4a0f4b7ef28afa2d # load x3 with value 0x4a0f4b7ef28afa2d
sd x3, 0(x2) # store 0x4a0f4b7ef28afa2d in memory
flw f24, 0(x2) # load 0x4a0f4b7ef28afa2d from memory into f24
fcvt.d.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2075fefffe7a43bd # load x3 with value 0x2075fefffe7a43bd
sd x3, 0(x2) # store 0x2075fefffe7a43bd in memory
flw f25, 0(x2) # load 0x2075fefffe7a43bd from memory into f25
fcvt.d.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe997daa2fdbd42bd # load x3 with value 0xe997daa2fdbd42bd
sd x3, 0(x2) # store 0xe997daa2fdbd42bd in memory
flw f26, 0(x2) # load 0xe997daa2fdbd42bd from memory into f26
fcvt.d.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52f623be8235c357 # load x3 with value 0x52f623be8235c357
sd x3, 0(x2) # store 0x52f623be8235c357 in memory
flw f27, 0(x2) # load 0x52f623be8235c357 from memory into f27
fcvt.d.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x438d888ea7102281 # load x3 with value 0x438d888ea7102281
sd x3, 0(x2) # store 0x438d888ea7102281 in memory
flw f28, 0(x2) # load 0x438d888ea7102281 from memory into f28
fcvt.d.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35c9a1fda264baf7 # load x3 with value 0x35c9a1fda264baf7
sd x3, 0(x2) # store 0x35c9a1fda264baf7 in memory
flw f29, 0(x2) # load 0x35c9a1fda264baf7 from memory into f29
fcvt.d.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x970bc1bf3a807fec # load x3 with value 0x970bc1bf3a807fec
sd x3, 0(x2) # store 0x970bc1bf3a807fec in memory
flw f30, 0(x2) # load 0x970bc1bf3a807fec from memory into f30
fcvt.d.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c6ff086d3095988 # load x3 with value 0x4c6ff086d3095988
sd x3, 0(x2) # store 0x4c6ff086d3095988 in memory
flw f31, 0(x2) # load 0x4c6ff086d3095988 from memory into f31
fcvt.d.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
fcvt.d.s f19, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f13, 0(x2) # load 0xaaaaaaaa80000000 from memory into f13
fcvt.d.s f31, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f17, 0(x2) # load 0x000000003f800000 from memory into f17
fcvt.d.s f6, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f9, 0(x2) # load 0xdeadbeefbf800000 from memory into f9
fcvt.d.s f30, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f16, 0(x2) # load 0xa1b2c3d400800000 from memory into f16
fcvt.d.s f13, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f29, 0(x2) # load 0xffffffef80800000 from memory into f29
fcvt.d.s f28, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f26)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
fcvt.d.s f27, f26 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f28, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f28
fcvt.d.s f6, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f2, 0(x2) # load 0x7fffffff7f800000 from memory into f2
fcvt.d.s f14, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f15, 0(x2) # load 0xfffffffeff800000 from memory into f15
fcvt.d.s f2, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f18, 0(x2) # load 0xfeedbee57fc00000 from memory into f18
fcvt.d.s f5, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f19, 0(x2) # load 0xffc0deff7fffffff from memory into f19
fcvt.d.s f14, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f22, 0(x2) # load 0xfeffffff7f800001 from memory into f22
fcvt.d.s f12, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f1, 0(x2) # load 0xfffffeff7fbfffff from memory into f1
fcvt.d.s f14, f1 # perform operation second time to make sure flags don't change

.EQU SIGSIZE,0


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
