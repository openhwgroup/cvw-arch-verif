///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fsub.s.S
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
add x6, x3, x23 # perform first operation
fsub.s f28, f27, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x8 # perform first operation
fsub.s f10, f30, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x23, x17 # perform first operation
fsub.s f16, f22, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f12, f9, f11 # perform first operation
fsub.s f9, f12, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f5, f8, f23 # perform first operation
fsub.s f13, f18, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x23, x26 # perform first operation
fsub.s f26, f31, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f11, f8, f16 # perform first operation
fsub.s f11, f19, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f18, f25 # perform first operation
fsub.s f21, f14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f31, f27 # perform first operation
fsub.s f29, f24, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f15, f22, f11 # perform first operation
fsub.s f22, f7, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f16, f20 # perform first operation
fsub.s f20, f13, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f10, f25 # perform first operation
fsub.s f19, f30, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x495c9446 # load x3 with value 0x495c9446
sw x3, 0(x2) # store 0x495c9446 in memory
flw f0, 0(x2) # load 0x495c9446 from memory into f0
la x2, scratch
li x3, 0x9870f906 # load x3 with value 0x9870f906
sw x3, 0(x2) # store 0x9870f906 in memory
flw f3, 0(x2) # load 0x9870f906 from memory into f3
fsub.s f22, f0, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x2b898b28 # load x3 with value 0x2b898b28
sw x3, 0(x2) # store 0x2b898b28 in memory
flw f1, 0(x2) # load 0x2b898b28 from memory into f1
la x2, scratch
li x3, 0x6adf668a # load x3 with value 0x6adf668a
sw x3, 0(x2) # store 0x6adf668a in memory
flw f11, 0(x2) # load 0x6adf668a from memory into f11
fsub.s f22, f1, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xf39b6a88 # load x3 with value 0xf39b6a88
sw x3, 0(x2) # store 0xf39b6a88 in memory
flw f2, 0(x2) # load 0xf39b6a88 from memory into f2
la x2, scratch
li x3, 0x44f8b250 # load x3 with value 0x44f8b250
sw x3, 0(x2) # store 0x44f8b250 in memory
flw f28, 0(x2) # load 0x44f8b250 from memory into f28
fsub.s f7, f2, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xfbcc9219 # load x3 with value 0xfbcc9219
sw x3, 0(x2) # store 0xfbcc9219 in memory
flw f3, 0(x2) # load 0xfbcc9219 from memory into f3
la x2, scratch
li x3, 0xcf077280 # load x3 with value 0xcf077280
sw x3, 0(x2) # store 0xcf077280 in memory
flw f6, 0(x2) # load 0xcf077280 from memory into f6
fsub.s f12, f3, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd56f8a81 # load x3 with value 0xd56f8a81
sw x3, 0(x2) # store 0xd56f8a81 in memory
flw f4, 0(x2) # load 0xd56f8a81 from memory into f4
la x2, scratch
li x3, 0x7ce0dd0f # load x3 with value 0x7ce0dd0f
sw x3, 0(x2) # store 0x7ce0dd0f in memory
flw f17, 0(x2) # load 0x7ce0dd0f from memory into f17
fsub.s f7, f4, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x26a3e20b # load x3 with value 0x26a3e20b
sw x3, 0(x2) # store 0x26a3e20b in memory
flw f5, 0(x2) # load 0x26a3e20b from memory into f5
la x2, scratch
li x3, 0x1be68f3d # load x3 with value 0x1be68f3d
sw x3, 0(x2) # store 0x1be68f3d in memory
flw f7, 0(x2) # load 0x1be68f3d from memory into f7
fsub.s f22, f5, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x87c59006 # load x3 with value 0x87c59006
sw x3, 0(x2) # store 0x87c59006 in memory
flw f6, 0(x2) # load 0x87c59006 from memory into f6
la x2, scratch
li x3, 0x862e695d # load x3 with value 0x862e695d
sw x3, 0(x2) # store 0x862e695d in memory
flw f14, 0(x2) # load 0x862e695d from memory into f14
fsub.s f17, f6, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc411263a # load x3 with value 0xc411263a
sw x3, 0(x2) # store 0xc411263a in memory
flw f7, 0(x2) # load 0xc411263a from memory into f7
la x2, scratch
li x3, 0x7677fdb3 # load x3 with value 0x7677fdb3
sw x3, 0(x2) # store 0x7677fdb3 in memory
flw f6, 0(x2) # load 0x7677fdb3 from memory into f6
fsub.s f13, f7, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x7d5d0a48 # load x3 with value 0x7d5d0a48
sw x3, 0(x2) # store 0x7d5d0a48 in memory
flw f8, 0(x2) # load 0x7d5d0a48 from memory into f8
la x2, scratch
li x3, 0xa0bc8ef8 # load x3 with value 0xa0bc8ef8
sw x3, 0(x2) # store 0xa0bc8ef8 in memory
flw f30, 0(x2) # load 0xa0bc8ef8 from memory into f30
fsub.s f11, f8, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xb8b27f82 # load x3 with value 0xb8b27f82
sw x3, 0(x2) # store 0xb8b27f82 in memory
flw f9, 0(x2) # load 0xb8b27f82 from memory into f9
la x2, scratch
li x3, 0x9bea8042 # load x3 with value 0x9bea8042
sw x3, 0(x2) # store 0x9bea8042 in memory
flw f17, 0(x2) # load 0x9bea8042 from memory into f17
fsub.s f20, f9, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x1486a172 # load x3 with value 0x1486a172
sw x3, 0(x2) # store 0x1486a172 in memory
flw f10, 0(x2) # load 0x1486a172 from memory into f10
la x2, scratch
li x3, 0x4a8219d7 # load x3 with value 0x4a8219d7
sw x3, 0(x2) # store 0x4a8219d7 in memory
flw f15, 0(x2) # load 0x4a8219d7 from memory into f15
fsub.s f1, f10, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x5968db55 # load x3 with value 0x5968db55
sw x3, 0(x2) # store 0x5968db55 in memory
flw f11, 0(x2) # load 0x5968db55 from memory into f11
la x2, scratch
li x3, 0xd9ba95e3 # load x3 with value 0xd9ba95e3
sw x3, 0(x2) # store 0xd9ba95e3 in memory
flw f22, 0(x2) # load 0xd9ba95e3 from memory into f22
fsub.s f6, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x20cdec39 # load x3 with value 0x20cdec39
sw x3, 0(x2) # store 0x20cdec39 in memory
flw f12, 0(x2) # load 0x20cdec39 from memory into f12
la x2, scratch
li x3, 0x38a70c7e # load x3 with value 0x38a70c7e
sw x3, 0(x2) # store 0x38a70c7e in memory
flw f5, 0(x2) # load 0x38a70c7e from memory into f5
fsub.s f12, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x1c7d9fb5 # load x3 with value 0x1c7d9fb5
sw x3, 0(x2) # store 0x1c7d9fb5 in memory
flw f13, 0(x2) # load 0x1c7d9fb5 from memory into f13
la x2, scratch
li x3, 0xe109c764 # load x3 with value 0xe109c764
sw x3, 0(x2) # store 0xe109c764 in memory
flw f27, 0(x2) # load 0xe109c764 from memory into f27
fsub.s f15, f13, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xcfebc293 # load x3 with value 0xcfebc293
sw x3, 0(x2) # store 0xcfebc293 in memory
flw f14, 0(x2) # load 0xcfebc293 from memory into f14
la x2, scratch
li x3, 0x8b8c517e # load x3 with value 0x8b8c517e
sw x3, 0(x2) # store 0x8b8c517e in memory
flw f30, 0(x2) # load 0x8b8c517e from memory into f30
fsub.s f27, f14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x23f0eaa7 # load x3 with value 0x23f0eaa7
sw x3, 0(x2) # store 0x23f0eaa7 in memory
flw f15, 0(x2) # load 0x23f0eaa7 from memory into f15
la x2, scratch
li x3, 0x04cebb1d # load x3 with value 0x04cebb1d
sw x3, 0(x2) # store 0x04cebb1d in memory
flw f29, 0(x2) # load 0x04cebb1d from memory into f29
fsub.s f9, f15, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x8581ec1f # load x3 with value 0x8581ec1f
sw x3, 0(x2) # store 0x8581ec1f in memory
flw f16, 0(x2) # load 0x8581ec1f from memory into f16
la x2, scratch
li x3, 0x10d9022f # load x3 with value 0x10d9022f
sw x3, 0(x2) # store 0x10d9022f in memory
flw f22, 0(x2) # load 0x10d9022f from memory into f22
fsub.s f11, f16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4c88de1b # load x3 with value 0x4c88de1b
sw x3, 0(x2) # store 0x4c88de1b in memory
flw f17, 0(x2) # load 0x4c88de1b from memory into f17
la x2, scratch
li x3, 0x82ea1783 # load x3 with value 0x82ea1783
sw x3, 0(x2) # store 0x82ea1783 in memory
flw f28, 0(x2) # load 0x82ea1783 from memory into f28
fsub.s f20, f17, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x2141bca0 # load x3 with value 0x2141bca0
sw x3, 0(x2) # store 0x2141bca0 in memory
flw f18, 0(x2) # load 0x2141bca0 from memory into f18
la x2, scratch
li x3, 0x29a1c088 # load x3 with value 0x29a1c088
sw x3, 0(x2) # store 0x29a1c088 in memory
flw f24, 0(x2) # load 0x29a1c088 from memory into f24
fsub.s f31, f18, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x7969f896 # load x3 with value 0x7969f896
sw x3, 0(x2) # store 0x7969f896 in memory
flw f19, 0(x2) # load 0x7969f896 from memory into f19
la x2, scratch
li x3, 0x00e3e7a6 # load x3 with value 0x00e3e7a6
sw x3, 0(x2) # store 0x00e3e7a6 in memory
flw f9, 0(x2) # load 0x00e3e7a6 from memory into f9
fsub.s f7, f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x2329e1b6 # load x3 with value 0x2329e1b6
sw x3, 0(x2) # store 0x2329e1b6 in memory
flw f20, 0(x2) # load 0x2329e1b6 from memory into f20
la x2, scratch
li x3, 0xbbec2a23 # load x3 with value 0xbbec2a23
sw x3, 0(x2) # store 0xbbec2a23 in memory
flw f19, 0(x2) # load 0xbbec2a23 from memory into f19
fsub.s f30, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x8457d719 # load x3 with value 0x8457d719
sw x3, 0(x2) # store 0x8457d719 in memory
flw f21, 0(x2) # load 0x8457d719 from memory into f21
la x2, scratch
li x3, 0xdae851f0 # load x3 with value 0xdae851f0
sw x3, 0(x2) # store 0xdae851f0 in memory
flw f31, 0(x2) # load 0xdae851f0 from memory into f31
fsub.s f27, f21, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x0320a572 # load x3 with value 0x0320a572
sw x3, 0(x2) # store 0x0320a572 in memory
flw f22, 0(x2) # load 0x0320a572 from memory into f22
la x2, scratch
li x3, 0x8a13099c # load x3 with value 0x8a13099c
sw x3, 0(x2) # store 0x8a13099c in memory
flw f7, 0(x2) # load 0x8a13099c from memory into f7
fsub.s f11, f22, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x279a5e0e # load x3 with value 0x279a5e0e
sw x3, 0(x2) # store 0x279a5e0e in memory
flw f23, 0(x2) # load 0x279a5e0e from memory into f23
la x2, scratch
li x3, 0xe6be6413 # load x3 with value 0xe6be6413
sw x3, 0(x2) # store 0xe6be6413 in memory
flw f20, 0(x2) # load 0xe6be6413 from memory into f20
fsub.s f29, f23, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xe94d03bd # load x3 with value 0xe94d03bd
sw x3, 0(x2) # store 0xe94d03bd in memory
flw f24, 0(x2) # load 0xe94d03bd from memory into f24
la x2, scratch
li x3, 0xbcb82403 # load x3 with value 0xbcb82403
sw x3, 0(x2) # store 0xbcb82403 in memory
flw f14, 0(x2) # load 0xbcb82403 from memory into f14
fsub.s f3, f24, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xddc62cab # load x3 with value 0xddc62cab
sw x3, 0(x2) # store 0xddc62cab in memory
flw f25, 0(x2) # load 0xddc62cab from memory into f25
la x2, scratch
li x3, 0xa97c39ef # load x3 with value 0xa97c39ef
sw x3, 0(x2) # store 0xa97c39ef in memory
flw f31, 0(x2) # load 0xa97c39ef from memory into f31
fsub.s f20, f25, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x66c788e2 # load x3 with value 0x66c788e2
sw x3, 0(x2) # store 0x66c788e2 in memory
flw f26, 0(x2) # load 0x66c788e2 from memory into f26
la x2, scratch
li x3, 0xe21b0fa1 # load x3 with value 0xe21b0fa1
sw x3, 0(x2) # store 0xe21b0fa1 in memory
flw f16, 0(x2) # load 0xe21b0fa1 from memory into f16
fsub.s f26, f26, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x37c05554 # load x3 with value 0x37c05554
sw x3, 0(x2) # store 0x37c05554 in memory
flw f27, 0(x2) # load 0x37c05554 from memory into f27
la x2, scratch
li x3, 0xbdba2c00 # load x3 with value 0xbdba2c00
sw x3, 0(x2) # store 0xbdba2c00 in memory
flw f22, 0(x2) # load 0xbdba2c00 from memory into f22
fsub.s f26, f27, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xcb5e7e69 # load x3 with value 0xcb5e7e69
sw x3, 0(x2) # store 0xcb5e7e69 in memory
flw f28, 0(x2) # load 0xcb5e7e69 from memory into f28
la x2, scratch
li x3, 0xffcb2f5b # load x3 with value 0xffcb2f5b
sw x3, 0(x2) # store 0xffcb2f5b in memory
flw f27, 0(x2) # load 0xffcb2f5b from memory into f27
fsub.s f10, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x81b9c120 # load x3 with value 0x81b9c120
sw x3, 0(x2) # store 0x81b9c120 in memory
flw f29, 0(x2) # load 0x81b9c120 from memory into f29
la x2, scratch
li x3, 0x15ddd634 # load x3 with value 0x15ddd634
sw x3, 0(x2) # store 0x15ddd634 in memory
flw f27, 0(x2) # load 0x15ddd634 from memory into f27
fsub.s f19, f29, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xcf609b5a # load x3 with value 0xcf609b5a
sw x3, 0(x2) # store 0xcf609b5a in memory
flw f30, 0(x2) # load 0xcf609b5a from memory into f30
la x2, scratch
li x3, 0x6ffa1357 # load x3 with value 0x6ffa1357
sw x3, 0(x2) # store 0x6ffa1357 in memory
flw f25, 0(x2) # load 0x6ffa1357 from memory into f25
fsub.s f27, f30, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xe9acba80 # load x3 with value 0xe9acba80
sw x3, 0(x2) # store 0xe9acba80 in memory
flw f31, 0(x2) # load 0xe9acba80 from memory into f31
la x2, scratch
li x3, 0x68059726 # load x3 with value 0x68059726
sw x3, 0(x2) # store 0x68059726 in memory
flw f10, 0(x2) # load 0x68059726 from memory into f10
fsub.s f3, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x7cf6950b # load x3 with value 0x7cf6950b
sw x3, 0(x2) # store 0x7cf6950b in memory
flw f11, 0(x2) # load 0x7cf6950b from memory into f11
la x2, scratch
li x3, 0x8822758c # load x3 with value 0x8822758c
sw x3, 0(x2) # store 0x8822758c in memory
flw f0, 0(x2) # load 0x8822758c from memory into f0
fsub.s f25, f11, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x392c9375 # load x3 with value 0x392c9375
sw x3, 0(x2) # store 0x392c9375 in memory
flw f2, 0(x2) # load 0x392c9375 from memory into f2
la x2, scratch
li x3, 0xb33c02f9 # load x3 with value 0xb33c02f9
sw x3, 0(x2) # store 0xb33c02f9 in memory
flw f1, 0(x2) # load 0xb33c02f9 from memory into f1
fsub.s f6, f2, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x5017f9a4 # load x3 with value 0x5017f9a4
sw x3, 0(x2) # store 0x5017f9a4 in memory
flw f20, 0(x2) # load 0x5017f9a4 from memory into f20
la x2, scratch
li x3, 0xc99e6700 # load x3 with value 0xc99e6700
sw x3, 0(x2) # store 0xc99e6700 in memory
flw f2, 0(x2) # load 0xc99e6700 from memory into f2
fsub.s f15, f20, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xe4dadc2e # load x3 with value 0xe4dadc2e
sw x3, 0(x2) # store 0xe4dadc2e in memory
flw f28, 0(x2) # load 0xe4dadc2e from memory into f28
la x2, scratch
li x3, 0x24101791 # load x3 with value 0x24101791
sw x3, 0(x2) # store 0x24101791 in memory
flw f3, 0(x2) # load 0x24101791 from memory into f3
fsub.s f19, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9f7e17de # load x3 with value 0x9f7e17de
sw x3, 0(x2) # store 0x9f7e17de in memory
flw f9, 0(x2) # load 0x9f7e17de from memory into f9
la x2, scratch
li x3, 0x0a58f09e # load x3 with value 0x0a58f09e
sw x3, 0(x2) # store 0x0a58f09e in memory
flw f4, 0(x2) # load 0x0a58f09e from memory into f4
fsub.s f12, f9, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa666febc # load x3 with value 0xa666febc
sw x3, 0(x2) # store 0xa666febc in memory
flw f19, 0(x2) # load 0xa666febc from memory into f19
la x2, scratch
li x3, 0xaba01b97 # load x3 with value 0xaba01b97
sw x3, 0(x2) # store 0xaba01b97 in memory
flw f5, 0(x2) # load 0xaba01b97 from memory into f5
fsub.s f12, f19, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd7529876 # load x3 with value 0xd7529876
sw x3, 0(x2) # store 0xd7529876 in memory
flw f12, 0(x2) # load 0xd7529876 from memory into f12
la x2, scratch
li x3, 0x4a7a208e # load x3 with value 0x4a7a208e
sw x3, 0(x2) # store 0x4a7a208e in memory
flw f6, 0(x2) # load 0x4a7a208e from memory into f6
fsub.s f24, f12, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6efb0433 # load x3 with value 0x6efb0433
sw x3, 0(x2) # store 0x6efb0433 in memory
flw f30, 0(x2) # load 0x6efb0433 from memory into f30
la x2, scratch
li x3, 0x0fab3aa7 # load x3 with value 0x0fab3aa7
sw x3, 0(x2) # store 0x0fab3aa7 in memory
flw f7, 0(x2) # load 0x0fab3aa7 from memory into f7
fsub.s f10, f30, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xc0e8911e # load x3 with value 0xc0e8911e
sw x3, 0(x2) # store 0xc0e8911e in memory
flw f29, 0(x2) # load 0xc0e8911e from memory into f29
la x2, scratch
li x3, 0x19372167 # load x3 with value 0x19372167
sw x3, 0(x2) # store 0x19372167 in memory
flw f8, 0(x2) # load 0x19372167 from memory into f8
fsub.s f21, f29, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xd4b05088 # load x3 with value 0xd4b05088
sw x3, 0(x2) # store 0xd4b05088 in memory
flw f27, 0(x2) # load 0xd4b05088 from memory into f27
la x2, scratch
li x3, 0xbf65b266 # load x3 with value 0xbf65b266
sw x3, 0(x2) # store 0xbf65b266 in memory
flw f9, 0(x2) # load 0xbf65b266 from memory into f9
fsub.s f19, f27, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x49bfe4d5 # load x3 with value 0x49bfe4d5
sw x3, 0(x2) # store 0x49bfe4d5 in memory
flw f6, 0(x2) # load 0x49bfe4d5 from memory into f6
la x2, scratch
li x3, 0xd652abcf # load x3 with value 0xd652abcf
sw x3, 0(x2) # store 0xd652abcf in memory
flw f10, 0(x2) # load 0xd652abcf from memory into f10
fsub.s f2, f6, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xd5d7651c # load x3 with value 0xd5d7651c
sw x3, 0(x2) # store 0xd5d7651c in memory
flw f10, 0(x2) # load 0xd5d7651c from memory into f10
la x2, scratch
li x3, 0x7230387b # load x3 with value 0x7230387b
sw x3, 0(x2) # store 0x7230387b in memory
flw f11, 0(x2) # load 0x7230387b from memory into f11
fsub.s f9, f10, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x1e0d4f68 # load x3 with value 0x1e0d4f68
sw x3, 0(x2) # store 0x1e0d4f68 in memory
flw f19, 0(x2) # load 0x1e0d4f68 from memory into f19
la x2, scratch
li x3, 0xdf61be3e # load x3 with value 0xdf61be3e
sw x3, 0(x2) # store 0xdf61be3e in memory
flw f12, 0(x2) # load 0xdf61be3e from memory into f12
fsub.s f16, f19, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xe3ab4018 # load x3 with value 0xe3ab4018
sw x3, 0(x2) # store 0xe3ab4018 in memory
flw f29, 0(x2) # load 0xe3ab4018 from memory into f29
la x2, scratch
li x3, 0xa6858fba # load x3 with value 0xa6858fba
sw x3, 0(x2) # store 0xa6858fba in memory
flw f13, 0(x2) # load 0xa6858fba from memory into f13
fsub.s f3, f29, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x26a12b9d # load x3 with value 0x26a12b9d
sw x3, 0(x2) # store 0x26a12b9d in memory
flw f5, 0(x2) # load 0x26a12b9d from memory into f5
la x2, scratch
li x3, 0x4091d232 # load x3 with value 0x4091d232
sw x3, 0(x2) # store 0x4091d232 in memory
flw f14, 0(x2) # load 0x4091d232 from memory into f14
fsub.s f3, f5, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x5acacd4d # load x3 with value 0x5acacd4d
sw x3, 0(x2) # store 0x5acacd4d in memory
flw f17, 0(x2) # load 0x5acacd4d from memory into f17
la x2, scratch
li x3, 0xeae37c80 # load x3 with value 0xeae37c80
sw x3, 0(x2) # store 0xeae37c80 in memory
flw f15, 0(x2) # load 0xeae37c80 from memory into f15
fsub.s f18, f17, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x1449ec42 # load x3 with value 0x1449ec42
sw x3, 0(x2) # store 0x1449ec42 in memory
flw f28, 0(x2) # load 0x1449ec42 from memory into f28
la x2, scratch
li x3, 0x86994ed7 # load x3 with value 0x86994ed7
sw x3, 0(x2) # store 0x86994ed7 in memory
flw f16, 0(x2) # load 0x86994ed7 from memory into f16
fsub.s f21, f28, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xdbcad9a2 # load x3 with value 0xdbcad9a2
sw x3, 0(x2) # store 0xdbcad9a2 in memory
flw f25, 0(x2) # load 0xdbcad9a2 from memory into f25
la x2, scratch
li x3, 0x1d707b14 # load x3 with value 0x1d707b14
sw x3, 0(x2) # store 0x1d707b14 in memory
flw f17, 0(x2) # load 0x1d707b14 from memory into f17
fsub.s f27, f25, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xa280ec29 # load x3 with value 0xa280ec29
sw x3, 0(x2) # store 0xa280ec29 in memory
flw f3, 0(x2) # load 0xa280ec29 from memory into f3
la x2, scratch
li x3, 0x799ec60d # load x3 with value 0x799ec60d
sw x3, 0(x2) # store 0x799ec60d in memory
flw f18, 0(x2) # load 0x799ec60d from memory into f18
fsub.s f10, f3, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xc9e1887b # load x3 with value 0xc9e1887b
sw x3, 0(x2) # store 0xc9e1887b in memory
flw f31, 0(x2) # load 0xc9e1887b from memory into f31
la x2, scratch
li x3, 0x297d7b6f # load x3 with value 0x297d7b6f
sw x3, 0(x2) # store 0x297d7b6f in memory
flw f19, 0(x2) # load 0x297d7b6f from memory into f19
fsub.s f18, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x2228248d # load x3 with value 0x2228248d
sw x3, 0(x2) # store 0x2228248d in memory
flw f19, 0(x2) # load 0x2228248d from memory into f19
la x2, scratch
li x3, 0x829fd3cd # load x3 with value 0x829fd3cd
sw x3, 0(x2) # store 0x829fd3cd in memory
flw f20, 0(x2) # load 0x829fd3cd from memory into f20
fsub.s f1, f19, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xb327703a # load x3 with value 0xb327703a
sw x3, 0(x2) # store 0xb327703a in memory
flw f26, 0(x2) # load 0xb327703a from memory into f26
la x2, scratch
li x3, 0x86fdae36 # load x3 with value 0x86fdae36
sw x3, 0(x2) # store 0x86fdae36 in memory
flw f21, 0(x2) # load 0x86fdae36 from memory into f21
fsub.s f30, f26, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xa300837c # load x3 with value 0xa300837c
sw x3, 0(x2) # store 0xa300837c in memory
flw f14, 0(x2) # load 0xa300837c from memory into f14
la x2, scratch
li x3, 0x054dea18 # load x3 with value 0x054dea18
sw x3, 0(x2) # store 0x054dea18 in memory
flw f22, 0(x2) # load 0x054dea18 from memory into f22
fsub.s f15, f14, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x7672618e # load x3 with value 0x7672618e
sw x3, 0(x2) # store 0x7672618e in memory
flw f21, 0(x2) # load 0x7672618e from memory into f21
la x2, scratch
li x3, 0xc97648d1 # load x3 with value 0xc97648d1
sw x3, 0(x2) # store 0xc97648d1 in memory
flw f23, 0(x2) # load 0xc97648d1 from memory into f23
fsub.s f1, f21, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xcfc3b876 # load x3 with value 0xcfc3b876
sw x3, 0(x2) # store 0xcfc3b876 in memory
flw f20, 0(x2) # load 0xcfc3b876 from memory into f20
la x2, scratch
li x3, 0x057b5b86 # load x3 with value 0x057b5b86
sw x3, 0(x2) # store 0x057b5b86 in memory
flw f24, 0(x2) # load 0x057b5b86 from memory into f24
fsub.s f18, f20, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x1c9d359a # load x3 with value 0x1c9d359a
sw x3, 0(x2) # store 0x1c9d359a in memory
flw f7, 0(x2) # load 0x1c9d359a from memory into f7
la x2, scratch
li x3, 0x974e974d # load x3 with value 0x974e974d
sw x3, 0(x2) # store 0x974e974d in memory
flw f25, 0(x2) # load 0x974e974d from memory into f25
fsub.s f6, f7, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x62713550 # load x3 with value 0x62713550
sw x3, 0(x2) # store 0x62713550 in memory
flw f6, 0(x2) # load 0x62713550 from memory into f6
la x2, scratch
li x3, 0x68d82d35 # load x3 with value 0x68d82d35
sw x3, 0(x2) # store 0x68d82d35 in memory
flw f26, 0(x2) # load 0x68d82d35 from memory into f26
fsub.s f3, f6, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xd23f5b0c # load x3 with value 0xd23f5b0c
sw x3, 0(x2) # store 0xd23f5b0c in memory
flw f3, 0(x2) # load 0xd23f5b0c from memory into f3
la x2, scratch
li x3, 0x4ec959c7 # load x3 with value 0x4ec959c7
sw x3, 0(x2) # store 0x4ec959c7 in memory
flw f27, 0(x2) # load 0x4ec959c7 from memory into f27
fsub.s f27, f3, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x46b8965c # load x3 with value 0x46b8965c
sw x3, 0(x2) # store 0x46b8965c in memory
flw f15, 0(x2) # load 0x46b8965c from memory into f15
la x2, scratch
li x3, 0x0a6f99ab # load x3 with value 0x0a6f99ab
sw x3, 0(x2) # store 0x0a6f99ab in memory
flw f28, 0(x2) # load 0x0a6f99ab from memory into f28
fsub.s f29, f15, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xde8fa1ea # load x3 with value 0xde8fa1ea
sw x3, 0(x2) # store 0xde8fa1ea in memory
flw f3, 0(x2) # load 0xde8fa1ea from memory into f3
la x2, scratch
li x3, 0x670158c2 # load x3 with value 0x670158c2
sw x3, 0(x2) # store 0x670158c2 in memory
flw f29, 0(x2) # load 0x670158c2 from memory into f29
fsub.s f19, f3, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x3f36d07d # load x3 with value 0x3f36d07d
sw x3, 0(x2) # store 0x3f36d07d in memory
flw f3, 0(x2) # load 0x3f36d07d from memory into f3
la x2, scratch
li x3, 0x486cacae # load x3 with value 0x486cacae
sw x3, 0(x2) # store 0x486cacae in memory
flw f30, 0(x2) # load 0x486cacae from memory into f30
fsub.s f18, f3, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xdd6a6e69 # load x3 with value 0xdd6a6e69
sw x3, 0(x2) # store 0xdd6a6e69 in memory
flw f1, 0(x2) # load 0xdd6a6e69 from memory into f1
la x2, scratch
li x3, 0x3d4b6e00 # load x3 with value 0x3d4b6e00
sw x3, 0(x2) # store 0x3d4b6e00 in memory
flw f31, 0(x2) # load 0x3d4b6e00 from memory into f31
fsub.s f3, f1, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x02536efe # load x3 with value 0x02536efe
sw x3, 0(x2) # store 0x02536efe in memory
flw f14, 0(x2) # load 0x02536efe from memory into f14
la x2, scratch
li x3, 0x713f49ea # load x3 with value 0x713f49ea
sw x3, 0(x2) # store 0x713f49ea in memory
flw f12, 0(x2) # load 0x713f49ea from memory into f12
fsub.s f0, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x95d8d472 # load x3 with value 0x95d8d472
sw x3, 0(x2) # store 0x95d8d472 in memory
flw f17, 0(x2) # load 0x95d8d472 from memory into f17
la x2, scratch
li x3, 0x07b03bb4 # load x3 with value 0x07b03bb4
sw x3, 0(x2) # store 0x07b03bb4 in memory
flw f30, 0(x2) # load 0x07b03bb4 from memory into f30
fsub.s f1, f17, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x3d76881f # load x3 with value 0x3d76881f
sw x3, 0(x2) # store 0x3d76881f in memory
flw f8, 0(x2) # load 0x3d76881f from memory into f8
la x2, scratch
li x3, 0x7da9dde4 # load x3 with value 0x7da9dde4
sw x3, 0(x2) # store 0x7da9dde4 in memory
flw f6, 0(x2) # load 0x7da9dde4 from memory into f6
fsub.s f2, f8, f6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0xfd1c5a5c # load x3 with value 0xfd1c5a5c
sw x3, 0(x2) # store 0xfd1c5a5c in memory
flw f21, 0(x2) # load 0xfd1c5a5c from memory into f21
la x2, scratch
li x3, 0xa0b68acb # load x3 with value 0xa0b68acb
sw x3, 0(x2) # store 0xa0b68acb in memory
flw f31, 0(x2) # load 0xa0b68acb from memory into f31
fsub.s f3, f21, f31 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7383b9db # load x3 with value 0x7383b9db
sw x3, 0(x2) # store 0x7383b9db in memory
flw f11, 0(x2) # load 0x7383b9db from memory into f11
la x2, scratch
li x3, 0x342e4fab # load x3 with value 0x342e4fab
sw x3, 0(x2) # store 0x342e4fab in memory
flw f20, 0(x2) # load 0x342e4fab from memory into f20
fsub.s f4, f11, f20 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xba81a840 # load x3 with value 0xba81a840
sw x3, 0(x2) # store 0xba81a840 in memory
flw f16, 0(x2) # load 0xba81a840 from memory into f16
la x2, scratch
li x3, 0xc628a181 # load x3 with value 0xc628a181
sw x3, 0(x2) # store 0xc628a181 in memory
flw f20, 0(x2) # load 0xc628a181 from memory into f20
fsub.s f5, f16, f20 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x76c381c0 # load x3 with value 0x76c381c0
sw x3, 0(x2) # store 0x76c381c0 in memory
flw f14, 0(x2) # load 0x76c381c0 from memory into f14
la x2, scratch
li x3, 0xa08c665a # load x3 with value 0xa08c665a
sw x3, 0(x2) # store 0xa08c665a in memory
flw f3, 0(x2) # load 0xa08c665a from memory into f3
fsub.s f6, f14, f3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb2e56724 # load x3 with value 0xb2e56724
sw x3, 0(x2) # store 0xb2e56724 in memory
flw f4, 0(x2) # load 0xb2e56724 from memory into f4
la x2, scratch
li x3, 0xf05d46d7 # load x3 with value 0xf05d46d7
sw x3, 0(x2) # store 0xf05d46d7 in memory
flw f20, 0(x2) # load 0xf05d46d7 from memory into f20
fsub.s f7, f4, f20 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x4fae1ca4 # load x3 with value 0x4fae1ca4
sw x3, 0(x2) # store 0x4fae1ca4 in memory
flw f27, 0(x2) # load 0x4fae1ca4 from memory into f27
la x2, scratch
li x3, 0xb123f1be # load x3 with value 0xb123f1be
sw x3, 0(x2) # store 0xb123f1be in memory
flw f7, 0(x2) # load 0xb123f1be from memory into f7
fsub.s f8, f27, f7 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x9cb01336 # load x3 with value 0x9cb01336
sw x3, 0(x2) # store 0x9cb01336 in memory
flw f31, 0(x2) # load 0x9cb01336 from memory into f31
la x2, scratch
li x3, 0x5e399580 # load x3 with value 0x5e399580
sw x3, 0(x2) # store 0x5e399580 in memory
flw f17, 0(x2) # load 0x5e399580 from memory into f17
fsub.s f9, f31, f17 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x7483d53d # load x3 with value 0x7483d53d
sw x3, 0(x2) # store 0x7483d53d in memory
flw f24, 0(x2) # load 0x7483d53d from memory into f24
la x2, scratch
li x3, 0xec34a687 # load x3 with value 0xec34a687
sw x3, 0(x2) # store 0xec34a687 in memory
flw f13, 0(x2) # load 0xec34a687 from memory into f13
fsub.s f10, f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x44f979ba # load x3 with value 0x44f979ba
sw x3, 0(x2) # store 0x44f979ba in memory
flw f14, 0(x2) # load 0x44f979ba from memory into f14
la x2, scratch
li x3, 0x95afc982 # load x3 with value 0x95afc982
sw x3, 0(x2) # store 0x95afc982 in memory
flw f22, 0(x2) # load 0x95afc982 from memory into f22
fsub.s f11, f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xb33eacad # load x3 with value 0xb33eacad
sw x3, 0(x2) # store 0xb33eacad in memory
flw f29, 0(x2) # load 0xb33eacad from memory into f29
la x2, scratch
li x3, 0x65a24f64 # load x3 with value 0x65a24f64
sw x3, 0(x2) # store 0x65a24f64 in memory
flw f24, 0(x2) # load 0x65a24f64 from memory into f24
fsub.s f12, f29, f24 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x736a76f9 # load x3 with value 0x736a76f9
sw x3, 0(x2) # store 0x736a76f9 in memory
flw f22, 0(x2) # load 0x736a76f9 from memory into f22
la x2, scratch
li x3, 0xbe7da60e # load x3 with value 0xbe7da60e
sw x3, 0(x2) # store 0xbe7da60e in memory
flw f29, 0(x2) # load 0xbe7da60e from memory into f29
fsub.s f13, f22, f29 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x67c70c71 # load x3 with value 0x67c70c71
sw x3, 0(x2) # store 0x67c70c71 in memory
flw f24, 0(x2) # load 0x67c70c71 from memory into f24
la x2, scratch
li x3, 0xe595455a # load x3 with value 0xe595455a
sw x3, 0(x2) # store 0xe595455a in memory
flw f23, 0(x2) # load 0xe595455a from memory into f23
fsub.s f14, f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xee52cdba # load x3 with value 0xee52cdba
sw x3, 0(x2) # store 0xee52cdba in memory
flw f26, 0(x2) # load 0xee52cdba from memory into f26
la x2, scratch
li x3, 0x2e8fcceb # load x3 with value 0x2e8fcceb
sw x3, 0(x2) # store 0x2e8fcceb in memory
flw f1, 0(x2) # load 0x2e8fcceb from memory into f1
fsub.s f15, f26, f1 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x67f80045 # load x3 with value 0x67f80045
sw x3, 0(x2) # store 0x67f80045 in memory
flw f13, 0(x2) # load 0x67f80045 from memory into f13
la x2, scratch
li x3, 0x4a3a2e89 # load x3 with value 0x4a3a2e89
sw x3, 0(x2) # store 0x4a3a2e89 in memory
flw f27, 0(x2) # load 0x4a3a2e89 from memory into f27
fsub.s f16, f13, f27 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x8c574521 # load x3 with value 0x8c574521
sw x3, 0(x2) # store 0x8c574521 in memory
flw f29, 0(x2) # load 0x8c574521 from memory into f29
la x2, scratch
li x3, 0x9b449bba # load x3 with value 0x9b449bba
sw x3, 0(x2) # store 0x9b449bba in memory
flw f25, 0(x2) # load 0x9b449bba from memory into f25
fsub.s f17, f29, f25 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x5cbaed0d # load x3 with value 0x5cbaed0d
sw x3, 0(x2) # store 0x5cbaed0d in memory
flw f10, 0(x2) # load 0x5cbaed0d from memory into f10
la x2, scratch
li x3, 0xf79b7bad # load x3 with value 0xf79b7bad
sw x3, 0(x2) # store 0xf79b7bad in memory
flw f24, 0(x2) # load 0xf79b7bad from memory into f24
fsub.s f18, f10, f24 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0xb0d9417b # load x3 with value 0xb0d9417b
sw x3, 0(x2) # store 0xb0d9417b in memory
flw f6, 0(x2) # load 0xb0d9417b from memory into f6
la x2, scratch
li x3, 0xac595647 # load x3 with value 0xac595647
sw x3, 0(x2) # store 0xac595647 in memory
flw f27, 0(x2) # load 0xac595647 from memory into f27
fsub.s f19, f6, f27 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x4206a221 # load x3 with value 0x4206a221
sw x3, 0(x2) # store 0x4206a221 in memory
flw f28, 0(x2) # load 0x4206a221 from memory into f28
la x2, scratch
li x3, 0x6d9d5b14 # load x3 with value 0x6d9d5b14
sw x3, 0(x2) # store 0x6d9d5b14 in memory
flw f7, 0(x2) # load 0x6d9d5b14 from memory into f7
fsub.s f20, f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x83f4bf5d # load x3 with value 0x83f4bf5d
sw x3, 0(x2) # store 0x83f4bf5d in memory
flw f6, 0(x2) # load 0x83f4bf5d from memory into f6
la x2, scratch
li x3, 0x204f1017 # load x3 with value 0x204f1017
sw x3, 0(x2) # store 0x204f1017 in memory
flw f1, 0(x2) # load 0x204f1017 from memory into f1
fsub.s f21, f6, f1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x81a603aa # load x3 with value 0x81a603aa
sw x3, 0(x2) # store 0x81a603aa in memory
flw f27, 0(x2) # load 0x81a603aa from memory into f27
la x2, scratch
li x3, 0x4d5978f5 # load x3 with value 0x4d5978f5
sw x3, 0(x2) # store 0x4d5978f5 in memory
flw f25, 0(x2) # load 0x4d5978f5 from memory into f25
fsub.s f22, f27, f25 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x6042bcc7 # load x3 with value 0x6042bcc7
sw x3, 0(x2) # store 0x6042bcc7 in memory
flw f11, 0(x2) # load 0x6042bcc7 from memory into f11
la x2, scratch
li x3, 0xd7b4de5f # load x3 with value 0xd7b4de5f
sw x3, 0(x2) # store 0xd7b4de5f in memory
flw f31, 0(x2) # load 0xd7b4de5f from memory into f31
fsub.s f23, f11, f31 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xcbd67978 # load x3 with value 0xcbd67978
sw x3, 0(x2) # store 0xcbd67978 in memory
flw f20, 0(x2) # load 0xcbd67978 from memory into f20
la x2, scratch
li x3, 0x66342fb3 # load x3 with value 0x66342fb3
sw x3, 0(x2) # store 0x66342fb3 in memory
flw f4, 0(x2) # load 0x66342fb3 from memory into f4
fsub.s f24, f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xc077c4ff # load x3 with value 0xc077c4ff
sw x3, 0(x2) # store 0xc077c4ff in memory
flw f28, 0(x2) # load 0xc077c4ff from memory into f28
la x2, scratch
li x3, 0x75864885 # load x3 with value 0x75864885
sw x3, 0(x2) # store 0x75864885 in memory
flw f10, 0(x2) # load 0x75864885 from memory into f10
fsub.s f25, f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x99a4a6a3 # load x3 with value 0x99a4a6a3
sw x3, 0(x2) # store 0x99a4a6a3 in memory
flw f1, 0(x2) # load 0x99a4a6a3 from memory into f1
la x2, scratch
li x3, 0x9e11a9a0 # load x3 with value 0x9e11a9a0
sw x3, 0(x2) # store 0x9e11a9a0 in memory
flw f21, 0(x2) # load 0x9e11a9a0 from memory into f21
fsub.s f26, f1, f21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xee480ec4 # load x3 with value 0xee480ec4
sw x3, 0(x2) # store 0xee480ec4 in memory
flw f21, 0(x2) # load 0xee480ec4 from memory into f21
la x2, scratch
li x3, 0xbcbeacc3 # load x3 with value 0xbcbeacc3
sw x3, 0(x2) # store 0xbcbeacc3 in memory
flw f14, 0(x2) # load 0xbcbeacc3 from memory into f14
fsub.s f27, f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xfc933b6f # load x3 with value 0xfc933b6f
sw x3, 0(x2) # store 0xfc933b6f in memory
flw f9, 0(x2) # load 0xfc933b6f from memory into f9
la x2, scratch
li x3, 0x3595b65c # load x3 with value 0x3595b65c
sw x3, 0(x2) # store 0x3595b65c in memory
flw f6, 0(x2) # load 0x3595b65c from memory into f6
fsub.s f28, f9, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x82168fe0 # load x3 with value 0x82168fe0
sw x3, 0(x2) # store 0x82168fe0 in memory
flw f1, 0(x2) # load 0x82168fe0 from memory into f1
la x2, scratch
li x3, 0xc512ba67 # load x3 with value 0xc512ba67
sw x3, 0(x2) # store 0xc512ba67 in memory
flw f10, 0(x2) # load 0xc512ba67 from memory into f10
fsub.s f29, f1, f10 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x718d5bd4 # load x3 with value 0x718d5bd4
sw x3, 0(x2) # store 0x718d5bd4 in memory
flw f1, 0(x2) # load 0x718d5bd4 from memory into f1
la x2, scratch
li x3, 0x06035918 # load x3 with value 0x06035918
sw x3, 0(x2) # store 0x06035918 in memory
flw f16, 0(x2) # load 0x06035918 from memory into f16
fsub.s f30, f1, f16 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xcaff3144 # load x3 with value 0xcaff3144
sw x3, 0(x2) # store 0xcaff3144 in memory
flw f1, 0(x2) # load 0xcaff3144 from memory into f1
la x2, scratch
li x3, 0x2fc376ce # load x3 with value 0x2fc376ce
sw x3, 0(x2) # store 0x2fc376ce in memory
flw f3, 0(x2) # load 0x2fc376ce from memory into f3
fsub.s f31, f1, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x87cd1a6f # load x3 with value 0x87cd1a6f
sw x3, 0(x2) # store 0x87cd1a6f in memory
flw f23, 0(x2) # load 0x87cd1a6f from memory into f23
fsub.s f31, f29, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0x7312aa5f # load x3 with value 0x7312aa5f
sw x3, 0(x2) # store 0x7312aa5f in memory
flw f6, 0(x2) # load 0x7312aa5f from memory into f6
fsub.s f17, f1, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x449c5c63 # load x3 with value 0x449c5c63
sw x3, 0(x2) # store 0x449c5c63 in memory
flw f9, 0(x2) # load 0x449c5c63 from memory into f9
fsub.s f28, f23, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xf301858b # load x3 with value 0xf301858b
sw x3, 0(x2) # store 0xf301858b in memory
flw f20, 0(x2) # load 0xf301858b from memory into f20
fsub.s f8, f11, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
la x2, scratch
li x3, 0x8384fdcb # load x3 with value 0x8384fdcb
sw x3, 0(x2) # store 0x8384fdcb in memory
flw f30, 0(x2) # load 0x8384fdcb from memory into f30
fsub.s f23, f4, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xbbab6212 # load x3 with value 0xbbab6212
sw x3, 0(x2) # store 0xbbab6212 in memory
flw f21, 0(x2) # load 0xbbab6212 from memory into f21
fsub.s f12, f27, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x33b7ed00 # load x3 with value 0x33b7ed00
sw x3, 0(x2) # store 0x33b7ed00 in memory
flw f22, 0(x2) # load 0x33b7ed00 from memory into f22
fsub.s f12, f13, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0xbea52d78 # load x3 with value 0xbea52d78
sw x3, 0(x2) # store 0xbea52d78 in memory
flw f7, 0(x2) # load 0xbea52d78 from memory into f7
fsub.s f22, f26, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x8f686b22 # load x3 with value 0x8f686b22
sw x3, 0(x2) # store 0x8f686b22 in memory
flw f31, 0(x2) # load 0x8f686b22 from memory into f31
fsub.s f7, f14, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x4d25f30e # load x3 with value 0x4d25f30e
sw x3, 0(x2) # store 0x4d25f30e in memory
flw f22, 0(x2) # load 0x4d25f30e from memory into f22
fsub.s f2, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0xbc83fa51 # load x3 with value 0xbc83fa51
sw x3, 0(x2) # store 0xbc83fa51 in memory
flw f2, 0(x2) # load 0xbc83fa51 from memory into f2
fsub.s f14, f28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x1877d241 # load x3 with value 0x1877d241
sw x3, 0(x2) # store 0x1877d241 in memory
flw f16, 0(x2) # load 0x1877d241 from memory into f16
fsub.s f3, f22, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x2a99bb76 # load x3 with value 0x2a99bb76
sw x3, 0(x2) # store 0x2a99bb76 in memory
flw f31, 0(x2) # load 0x2a99bb76 from memory into f31
fsub.s f10, f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0xddfbd412 # load x3 with value 0xddfbd412
sw x3, 0(x2) # store 0xddfbd412 in memory
flw f22, 0(x2) # load 0xddfbd412 from memory into f22
fsub.s f29, f2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0xc5bd615d # load x3 with value 0xc5bd615d
sw x3, 0(x2) # store 0xc5bd615d in memory
flw f19, 0(x2) # load 0xc5bd615d from memory into f19
fsub.s f11, f13, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x7de24c6e # load x3 with value 0x7de24c6e
sw x3, 0(x2) # store 0x7de24c6e in memory
flw f2, 0(x2) # load 0x7de24c6e from memory into f2
fsub.s f8, f28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x3dc5dff8 # load x3 with value 0x3dc5dff8
sw x3, 0(x2) # store 0x3dc5dff8 in memory
flw f15, 0(x2) # load 0x3dc5dff8 from memory into f15
fsub.s f23, f11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x58440a0d # load x3 with value 0x58440a0d
sw x3, 0(x2) # store 0x58440a0d in memory
flw f16, 0(x2) # load 0x58440a0d from memory into f16
fsub.s f31, f21, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
la x2, scratch
li x3, 0x7a732c75 # load x3 with value 0x7a732c75
sw x3, 0(x2) # store 0x7a732c75 in memory
flw f18, 0(x2) # load 0x7a732c75 from memory into f18
fsub.s f23, f16, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x251a3640 # load x3 with value 0x251a3640
sw x3, 0(x2) # store 0x251a3640 in memory
flw f7, 0(x2) # load 0x251a3640 from memory into f7
fsub.s f30, f3, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0xf55389ff # load x3 with value 0xf55389ff
sw x3, 0(x2) # store 0xf55389ff in memory
flw f4, 0(x2) # load 0xf55389ff from memory into f4
fsub.s f7, f24, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
la x2, scratch
li x3, 0xb7cfccd0 # load x3 with value 0xb7cfccd0
sw x3, 0(x2) # store 0xb7cfccd0 in memory
flw f22, 0(x2) # load 0xb7cfccd0 from memory into f22
fsub.s f2, f1, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0xdafa2099 # load x3 with value 0xdafa2099
sw x3, 0(x2) # store 0xdafa2099 in memory
flw f19, 0(x2) # load 0xdafa2099 from memory into f19
fsub.s f2, f14, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0xc2284ded # load x3 with value 0xc2284ded
sw x3, 0(x2) # store 0xc2284ded in memory
flw f4, 0(x2) # load 0xc2284ded from memory into f4
fsub.s f12, f1, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x02943d9b # load x3 with value 0x02943d9b
sw x3, 0(x2) # store 0x02943d9b in memory
flw f11, 0(x2) # load 0x02943d9b from memory into f11
fsub.s f22, f24, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0xeabbb8cc # load x3 with value 0xeabbb8cc
sw x3, 0(x2) # store 0xeabbb8cc in memory
flw f19, 0(x2) # load 0xeabbb8cc from memory into f19
fsub.s f6, f18, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0xfd9c0ba1 # load x3 with value 0xfd9c0ba1
sw x3, 0(x2) # store 0xfd9c0ba1 in memory
flw f21, 0(x2) # load 0xfd9c0ba1 from memory into f21
fsub.s f19, f29, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
la x2, scratch
li x3, 0x1dc76d1e # load x3 with value 0x1dc76d1e
sw x3, 0(x2) # store 0x1dc76d1e in memory
flw f20, 0(x2) # load 0x1dc76d1e from memory into f20
fsub.s f7, f4, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xcfcc56f9 # load x3 with value 0xcfcc56f9
sw x3, 0(x2) # store 0xcfcc56f9 in memory
flw f2, 0(x2) # load 0xcfcc56f9 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fsub.s f24, f2, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0xa3906fb6 # load x3 with value 0xa3906fb6
sw x3, 0(x2) # store 0xa3906fb6 in memory
flw f24, 0(x2) # load 0xa3906fb6 from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fsub.s f15, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x24613f73 # load x3 with value 0x24613f73
sw x3, 0(x2) # store 0x24613f73 in memory
flw f7, 0(x2) # load 0x24613f73 from memory into f7
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fsub.s f23, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x33b6a84b # load x3 with value 0x33b6a84b
sw x3, 0(x2) # store 0x33b6a84b in memory
flw f25, 0(x2) # load 0x33b6a84b from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f7, f25, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x651bf802 # load x3 with value 0x651bf802
sw x3, 0(x2) # store 0x651bf802 in memory
flw f11, 0(x2) # load 0x651bf802 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fsub.s f31, f11, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0x84281f1f # load x3 with value 0x84281f1f
sw x3, 0(x2) # store 0x84281f1f in memory
flw f19, 0(x2) # load 0x84281f1f from memory into f19
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsub.s f30, f19, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x4176d2ee # load x3 with value 0x4176d2ee
sw x3, 0(x2) # store 0x4176d2ee in memory
flw f3, 0(x2) # load 0x4176d2ee from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fsub.s f14, f3, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x47862ed3 # load x3 with value 0x47862ed3
sw x3, 0(x2) # store 0x47862ed3 in memory
flw f17, 0(x2) # load 0x47862ed3 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fsub.s f9, f17, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x496380d8 # load x3 with value 0x496380d8
sw x3, 0(x2) # store 0x496380d8 in memory
flw f31, 0(x2) # load 0x496380d8 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fsub.s f24, f31, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0xf9914b63 # load x3 with value 0xf9914b63
sw x3, 0(x2) # store 0xf9914b63 in memory
flw f25, 0(x2) # load 0xf9914b63 from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f4, f25, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0xf113e653 # load x3 with value 0xf113e653
sw x3, 0(x2) # store 0xf113e653 in memory
flw f20, 0(x2) # load 0xf113e653 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fsub.s f3, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x2532a6a5 # load x3 with value 0x2532a6a5
sw x3, 0(x2) # store 0x2532a6a5 in memory
flw f15, 0(x2) # load 0x2532a6a5 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fsub.s f25, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0xae83b0e8 # load x3 with value 0xae83b0e8
sw x3, 0(x2) # store 0xae83b0e8 in memory
flw f11, 0(x2) # load 0xae83b0e8 from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fsub.s f3, f11, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x5ec5114c # load x3 with value 0x5ec5114c
sw x3, 0(x2) # store 0x5ec5114c in memory
flw f15, 0(x2) # load 0x5ec5114c from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fsub.s f23, f15, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x25089103 # load x3 with value 0x25089103
sw x3, 0(x2) # store 0x25089103 in memory
flw f3, 0(x2) # load 0x25089103 from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsub.s f29, f3, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x049bc3d5 # load x3 with value 0x049bc3d5
sw x3, 0(x2) # store 0x049bc3d5 in memory
flw f22, 0(x2) # load 0x049bc3d5 from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f27, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x5bdbc015 # load x3 with value 0x5bdbc015
sw x3, 0(x2) # store 0x5bdbc015 in memory
flw f3, 0(x2) # load 0x5bdbc015 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fsub.s f6, f3, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x5f84433a # load x3 with value 0x5f84433a
sw x3, 0(x2) # store 0x5f84433a in memory
flw f15, 0(x2) # load 0x5f84433a from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fsub.s f16, f15, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x87249a1d # load x3 with value 0x87249a1d
sw x3, 0(x2) # store 0x87249a1d in memory
flw f18, 0(x2) # load 0x87249a1d from memory into f18
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fsub.s f21, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xfb9aa5a7 # load x3 with value 0xfb9aa5a7
sw x3, 0(x2) # store 0xfb9aa5a7 in memory
flw f3, 0(x2) # load 0xfb9aa5a7 from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fsub.s f26, f3, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0xa7ebabb5 # load x3 with value 0xa7ebabb5
sw x3, 0(x2) # store 0xa7ebabb5 in memory
flw f3, 0(x2) # load 0xa7ebabb5 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f2, f3, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x568e708b # load x3 with value 0x568e708b
sw x3, 0(x2) # store 0x568e708b in memory
flw f26, 0(x2) # load 0x568e708b from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fsub.s f11, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x6fa9240f # load x3 with value 0x6fa9240f
sw x3, 0(x2) # store 0x6fa9240f in memory
flw f13, 0(x2) # load 0x6fa9240f from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fsub.s f10, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0xdda5598e # load x3 with value 0xdda5598e
sw x3, 0(x2) # store 0xdda5598e in memory
flw f30, 0(x2) # load 0xdda5598e from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fsub.s f15, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x1cc12ab4 # load x3 with value 0x1cc12ab4
sw x3, 0(x2) # store 0x1cc12ab4 in memory
flw f20, 0(x2) # load 0x1cc12ab4 from memory into f20
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fsub.s f4, f20, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0x2c8ce9cd # load x3 with value 0x2c8ce9cd
sw x3, 0(x2) # store 0x2c8ce9cd in memory
flw f6, 0(x2) # load 0x2c8ce9cd from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fsub.s f8, f6, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x9f241413 # load x3 with value 0x9f241413
sw x3, 0(x2) # store 0x9f241413 in memory
flw f4, 0(x2) # load 0x9f241413 from memory into f4
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f31, f4, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x14b5691e # load x3 with value 0x14b5691e
sw x3, 0(x2) # store 0x14b5691e in memory
flw f21, 0(x2) # load 0x14b5691e from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fsub.s f23, f21, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xf256d6ad # load x3 with value 0xf256d6ad
sw x3, 0(x2) # store 0xf256d6ad in memory
flw f0, 0(x2) # load 0xf256d6ad from memory into f0
la x2, scratch
li x3, 0x24630312 # load x3 with value 0x24630312
sw x3, 0(x2) # store 0x24630312 in memory
flw f25, 0(x2) # load 0x24630312 from memory into f25
fsub.s f0, f0, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x428637ff # load x3 with value 0x428637ff
sw x3, 0(x2) # store 0x428637ff in memory
flw f1, 0(x2) # load 0x428637ff from memory into f1
la x2, scratch
li x3, 0x0b1d6642 # load x3 with value 0x0b1d6642
sw x3, 0(x2) # store 0x0b1d6642 in memory
flw f11, 0(x2) # load 0x0b1d6642 from memory into f11
fsub.s f1, f1, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x4775e075 # load x3 with value 0x4775e075
sw x3, 0(x2) # store 0x4775e075 in memory
flw f2, 0(x2) # load 0x4775e075 from memory into f2
la x2, scratch
li x3, 0xb1b4eb6e # load x3 with value 0xb1b4eb6e
sw x3, 0(x2) # store 0xb1b4eb6e in memory
flw f17, 0(x2) # load 0xb1b4eb6e from memory into f17
fsub.s f2, f2, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x07cb3413 # load x3 with value 0x07cb3413
sw x3, 0(x2) # store 0x07cb3413 in memory
flw f3, 0(x2) # load 0x07cb3413 from memory into f3
la x2, scratch
li x3, 0x310efc7e # load x3 with value 0x310efc7e
sw x3, 0(x2) # store 0x310efc7e in memory
flw f17, 0(x2) # load 0x310efc7e from memory into f17
fsub.s f3, f3, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
la x2, scratch
li x3, 0x0b91ca90 # load x3 with value 0x0b91ca90
sw x3, 0(x2) # store 0x0b91ca90 in memory
flw f4, 0(x2) # load 0x0b91ca90 from memory into f4
la x2, scratch
li x3, 0xc1bef9f2 # load x3 with value 0xc1bef9f2
sw x3, 0(x2) # store 0xc1bef9f2 in memory
flw f7, 0(x2) # load 0xc1bef9f2 from memory into f7
fsub.s f4, f4, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x14cffe14 # load x3 with value 0x14cffe14
sw x3, 0(x2) # store 0x14cffe14 in memory
flw f5, 0(x2) # load 0x14cffe14 from memory into f5
la x2, scratch
li x3, 0xacbe16af # load x3 with value 0xacbe16af
sw x3, 0(x2) # store 0xacbe16af in memory
flw f21, 0(x2) # load 0xacbe16af from memory into f21
fsub.s f5, f5, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x332c525c # load x3 with value 0x332c525c
sw x3, 0(x2) # store 0x332c525c in memory
flw f6, 0(x2) # load 0x332c525c from memory into f6
la x2, scratch
li x3, 0xd092118f # load x3 with value 0xd092118f
sw x3, 0(x2) # store 0xd092118f in memory
flw f22, 0(x2) # load 0xd092118f from memory into f22
fsub.s f6, f6, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2f08a280 # load x3 with value 0x2f08a280
sw x3, 0(x2) # store 0x2f08a280 in memory
flw f7, 0(x2) # load 0x2f08a280 from memory into f7
la x2, scratch
li x3, 0xe7342f3f # load x3 with value 0xe7342f3f
sw x3, 0(x2) # store 0xe7342f3f in memory
flw f6, 0(x2) # load 0xe7342f3f from memory into f6
fsub.s f7, f7, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x8407b4bc # load x3 with value 0x8407b4bc
sw x3, 0(x2) # store 0x8407b4bc in memory
flw f8, 0(x2) # load 0x8407b4bc from memory into f8
la x2, scratch
li x3, 0xa8ceb379 # load x3 with value 0xa8ceb379
sw x3, 0(x2) # store 0xa8ceb379 in memory
flw f15, 0(x2) # load 0xa8ceb379 from memory into f15
fsub.s f8, f8, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x49f09447 # load x3 with value 0x49f09447
sw x3, 0(x2) # store 0x49f09447 in memory
flw f9, 0(x2) # load 0x49f09447 from memory into f9
la x2, scratch
li x3, 0x9289ea97 # load x3 with value 0x9289ea97
sw x3, 0(x2) # store 0x9289ea97 in memory
flw f15, 0(x2) # load 0x9289ea97 from memory into f15
fsub.s f9, f9, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x4aeec5db # load x3 with value 0x4aeec5db
sw x3, 0(x2) # store 0x4aeec5db in memory
flw f10, 0(x2) # load 0x4aeec5db from memory into f10
la x2, scratch
li x3, 0x33a2cf69 # load x3 with value 0x33a2cf69
sw x3, 0(x2) # store 0x33a2cf69 in memory
flw f22, 0(x2) # load 0x33a2cf69 from memory into f22
fsub.s f10, f10, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x041f9135 # load x3 with value 0x041f9135
sw x3, 0(x2) # store 0x041f9135 in memory
flw f11, 0(x2) # load 0x041f9135 from memory into f11
la x2, scratch
li x3, 0xe6fb48d0 # load x3 with value 0xe6fb48d0
sw x3, 0(x2) # store 0xe6fb48d0 in memory
flw f23, 0(x2) # load 0xe6fb48d0 from memory into f23
fsub.s f11, f11, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xf8d1f964 # load x3 with value 0xf8d1f964
sw x3, 0(x2) # store 0xf8d1f964 in memory
flw f12, 0(x2) # load 0xf8d1f964 from memory into f12
la x2, scratch
li x3, 0x5194e720 # load x3 with value 0x5194e720
sw x3, 0(x2) # store 0x5194e720 in memory
flw f27, 0(x2) # load 0x5194e720 from memory into f27
fsub.s f12, f12, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x4a6f7045 # load x3 with value 0x4a6f7045
sw x3, 0(x2) # store 0x4a6f7045 in memory
flw f13, 0(x2) # load 0x4a6f7045 from memory into f13
la x2, scratch
li x3, 0x31ac46c6 # load x3 with value 0x31ac46c6
sw x3, 0(x2) # store 0x31ac46c6 in memory
flw f17, 0(x2) # load 0x31ac46c6 from memory into f17
fsub.s f13, f13, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xa4f01258 # load x3 with value 0xa4f01258
sw x3, 0(x2) # store 0xa4f01258 in memory
flw f14, 0(x2) # load 0xa4f01258 from memory into f14
la x2, scratch
li x3, 0x7d5c69b8 # load x3 with value 0x7d5c69b8
sw x3, 0(x2) # store 0x7d5c69b8 in memory
flw f29, 0(x2) # load 0x7d5c69b8 from memory into f29
fsub.s f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x7b60ae3c # load x3 with value 0x7b60ae3c
sw x3, 0(x2) # store 0x7b60ae3c in memory
flw f15, 0(x2) # load 0x7b60ae3c from memory into f15
la x2, scratch
li x3, 0x982f15b1 # load x3 with value 0x982f15b1
sw x3, 0(x2) # store 0x982f15b1 in memory
flw f18, 0(x2) # load 0x982f15b1 from memory into f18
fsub.s f15, f15, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x25966cc1 # load x3 with value 0x25966cc1
sw x3, 0(x2) # store 0x25966cc1 in memory
flw f16, 0(x2) # load 0x25966cc1 from memory into f16
la x2, scratch
li x3, 0xb1a305b9 # load x3 with value 0xb1a305b9
sw x3, 0(x2) # store 0xb1a305b9 in memory
flw f3, 0(x2) # load 0xb1a305b9 from memory into f3
fsub.s f16, f16, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xe4b05ccd # load x3 with value 0xe4b05ccd
sw x3, 0(x2) # store 0xe4b05ccd in memory
flw f17, 0(x2) # load 0xe4b05ccd from memory into f17
la x2, scratch
li x3, 0x9e3ecb68 # load x3 with value 0x9e3ecb68
sw x3, 0(x2) # store 0x9e3ecb68 in memory
flw f31, 0(x2) # load 0x9e3ecb68 from memory into f31
fsub.s f17, f17, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x3016da68 # load x3 with value 0x3016da68
sw x3, 0(x2) # store 0x3016da68 in memory
flw f18, 0(x2) # load 0x3016da68 from memory into f18
la x2, scratch
li x3, 0x950dda0d # load x3 with value 0x950dda0d
sw x3, 0(x2) # store 0x950dda0d in memory
flw f25, 0(x2) # load 0x950dda0d from memory into f25
fsub.s f18, f18, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x43d23219 # load x3 with value 0x43d23219
sw x3, 0(x2) # store 0x43d23219 in memory
flw f19, 0(x2) # load 0x43d23219 from memory into f19
la x2, scratch
li x3, 0xa0c66aa9 # load x3 with value 0xa0c66aa9
sw x3, 0(x2) # store 0xa0c66aa9 in memory
flw f14, 0(x2) # load 0xa0c66aa9 from memory into f14
fsub.s f19, f19, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xb5d6000a # load x3 with value 0xb5d6000a
sw x3, 0(x2) # store 0xb5d6000a in memory
flw f20, 0(x2) # load 0xb5d6000a from memory into f20
la x2, scratch
li x3, 0x976f8de8 # load x3 with value 0x976f8de8
sw x3, 0(x2) # store 0x976f8de8 in memory
flw f5, 0(x2) # load 0x976f8de8 from memory into f5
fsub.s f20, f20, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xb3ad1063 # load x3 with value 0xb3ad1063
sw x3, 0(x2) # store 0xb3ad1063 in memory
flw f21, 0(x2) # load 0xb3ad1063 from memory into f21
la x2, scratch
li x3, 0x45ef3558 # load x3 with value 0x45ef3558
sw x3, 0(x2) # store 0x45ef3558 in memory
flw f7, 0(x2) # load 0x45ef3558 from memory into f7
fsub.s f21, f21, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0xc38f350a # load x3 with value 0xc38f350a
sw x3, 0(x2) # store 0xc38f350a in memory
flw f22, 0(x2) # load 0xc38f350a from memory into f22
la x2, scratch
li x3, 0x73cc9c91 # load x3 with value 0x73cc9c91
sw x3, 0(x2) # store 0x73cc9c91 in memory
flw f14, 0(x2) # load 0x73cc9c91 from memory into f14
fsub.s f22, f22, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x26105fbd # load x3 with value 0x26105fbd
sw x3, 0(x2) # store 0x26105fbd in memory
flw f23, 0(x2) # load 0x26105fbd from memory into f23
la x2, scratch
li x3, 0x6c5a2315 # load x3 with value 0x6c5a2315
sw x3, 0(x2) # store 0x6c5a2315 in memory
flw f27, 0(x2) # load 0x6c5a2315 from memory into f27
fsub.s f23, f23, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xae3dcfc7 # load x3 with value 0xae3dcfc7
sw x3, 0(x2) # store 0xae3dcfc7 in memory
flw f24, 0(x2) # load 0xae3dcfc7 from memory into f24
la x2, scratch
li x3, 0x29c951b8 # load x3 with value 0x29c951b8
sw x3, 0(x2) # store 0x29c951b8 in memory
flw f13, 0(x2) # load 0x29c951b8 from memory into f13
fsub.s f24, f24, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x3efd62e9 # load x3 with value 0x3efd62e9
sw x3, 0(x2) # store 0x3efd62e9 in memory
flw f25, 0(x2) # load 0x3efd62e9 from memory into f25
la x2, scratch
li x3, 0xcb5019c2 # load x3 with value 0xcb5019c2
sw x3, 0(x2) # store 0xcb5019c2 in memory
flw f7, 0(x2) # load 0xcb5019c2 from memory into f7
fsub.s f25, f25, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x3523c381 # load x3 with value 0x3523c381
sw x3, 0(x2) # store 0x3523c381 in memory
flw f26, 0(x2) # load 0x3523c381 from memory into f26
la x2, scratch
li x3, 0xed601b00 # load x3 with value 0xed601b00
sw x3, 0(x2) # store 0xed601b00 in memory
flw f6, 0(x2) # load 0xed601b00 from memory into f6
fsub.s f26, f26, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x986fa57c # load x3 with value 0x986fa57c
sw x3, 0(x2) # store 0x986fa57c in memory
flw f27, 0(x2) # load 0x986fa57c from memory into f27
la x2, scratch
li x3, 0x403cde1c # load x3 with value 0x403cde1c
sw x3, 0(x2) # store 0x403cde1c in memory
flw f22, 0(x2) # load 0x403cde1c from memory into f22
fsub.s f27, f27, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x9b344f80 # load x3 with value 0x9b344f80
sw x3, 0(x2) # store 0x9b344f80 in memory
flw f28, 0(x2) # load 0x9b344f80 from memory into f28
la x2, scratch
li x3, 0x7d577217 # load x3 with value 0x7d577217
sw x3, 0(x2) # store 0x7d577217 in memory
flw f11, 0(x2) # load 0x7d577217 from memory into f11
fsub.s f28, f28, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xdcdb9798 # load x3 with value 0xdcdb9798
sw x3, 0(x2) # store 0xdcdb9798 in memory
flw f29, 0(x2) # load 0xdcdb9798 from memory into f29
la x2, scratch
li x3, 0xec93b213 # load x3 with value 0xec93b213
sw x3, 0(x2) # store 0xec93b213 in memory
flw f1, 0(x2) # load 0xec93b213 from memory into f1
fsub.s f29, f29, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x8bf79622 # load x3 with value 0x8bf79622
sw x3, 0(x2) # store 0x8bf79622 in memory
flw f30, 0(x2) # load 0x8bf79622 from memory into f30
la x2, scratch
li x3, 0xae565f1c # load x3 with value 0xae565f1c
sw x3, 0(x2) # store 0xae565f1c in memory
flw f8, 0(x2) # load 0xae565f1c from memory into f8
fsub.s f30, f30, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x7ad9f99c # load x3 with value 0x7ad9f99c
sw x3, 0(x2) # store 0x7ad9f99c in memory
flw f31, 0(x2) # load 0x7ad9f99c from memory into f31
la x2, scratch
li x3, 0x610add58 # load x3 with value 0x610add58
sw x3, 0(x2) # store 0x610add58 in memory
flw f7, 0(x2) # load 0x610add58 from memory into f7
fsub.s f31, f31, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x50940e20 # load x3 with value 0x50940e20
sw x3, 0(x2) # store 0x50940e20 in memory
flw f3, 0(x2) # load 0x50940e20 from memory into f3
la x2, scratch
li x3, 0x6b45b4d8 # load x3 with value 0x6b45b4d8
sw x3, 0(x2) # store 0x6b45b4d8 in memory
flw f0, 0(x2) # load 0x6b45b4d8 from memory into f0
fsub.s f0, f3, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xda7c543f # load x3 with value 0xda7c543f
sw x3, 0(x2) # store 0xda7c543f in memory
flw f8, 0(x2) # load 0xda7c543f from memory into f8
la x2, scratch
li x3, 0xcf9dd38b # load x3 with value 0xcf9dd38b
sw x3, 0(x2) # store 0xcf9dd38b in memory
flw f1, 0(x2) # load 0xcf9dd38b from memory into f1
fsub.s f1, f8, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x4fbbf99d # load x3 with value 0x4fbbf99d
sw x3, 0(x2) # store 0x4fbbf99d in memory
flw f22, 0(x2) # load 0x4fbbf99d from memory into f22
la x2, scratch
li x3, 0xd5586758 # load x3 with value 0xd5586758
sw x3, 0(x2) # store 0xd5586758 in memory
flw f2, 0(x2) # load 0xd5586758 from memory into f2
fsub.s f2, f22, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x6b8a8c7b # load x3 with value 0x6b8a8c7b
sw x3, 0(x2) # store 0x6b8a8c7b in memory
flw f13, 0(x2) # load 0x6b8a8c7b from memory into f13
la x2, scratch
li x3, 0x1fb749d4 # load x3 with value 0x1fb749d4
sw x3, 0(x2) # store 0x1fb749d4 in memory
flw f3, 0(x2) # load 0x1fb749d4 from memory into f3
fsub.s f3, f13, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfde5b885 # load x3 with value 0xfde5b885
sw x3, 0(x2) # store 0xfde5b885 in memory
flw f3, 0(x2) # load 0xfde5b885 from memory into f3
la x2, scratch
li x3, 0xccb21d83 # load x3 with value 0xccb21d83
sw x3, 0(x2) # store 0xccb21d83 in memory
flw f4, 0(x2) # load 0xccb21d83 from memory into f4
fsub.s f4, f3, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4f20b53f # load x3 with value 0x4f20b53f
sw x3, 0(x2) # store 0x4f20b53f in memory
flw f20, 0(x2) # load 0x4f20b53f from memory into f20
la x2, scratch
li x3, 0x626fdc33 # load x3 with value 0x626fdc33
sw x3, 0(x2) # store 0x626fdc33 in memory
flw f5, 0(x2) # load 0x626fdc33 from memory into f5
fsub.s f5, f20, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x10b958be # load x3 with value 0x10b958be
sw x3, 0(x2) # store 0x10b958be in memory
flw f14, 0(x2) # load 0x10b958be from memory into f14
la x2, scratch
li x3, 0xa4df4eed # load x3 with value 0xa4df4eed
sw x3, 0(x2) # store 0xa4df4eed in memory
flw f6, 0(x2) # load 0xa4df4eed from memory into f6
fsub.s f6, f14, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbdb3130c # load x3 with value 0xbdb3130c
sw x3, 0(x2) # store 0xbdb3130c in memory
flw f5, 0(x2) # load 0xbdb3130c from memory into f5
la x2, scratch
li x3, 0xfb7a55ea # load x3 with value 0xfb7a55ea
sw x3, 0(x2) # store 0xfb7a55ea in memory
flw f7, 0(x2) # load 0xfb7a55ea from memory into f7
fsub.s f7, f5, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x6326084a # load x3 with value 0x6326084a
sw x3, 0(x2) # store 0x6326084a in memory
flw f21, 0(x2) # load 0x6326084a from memory into f21
la x2, scratch
li x3, 0x23804259 # load x3 with value 0x23804259
sw x3, 0(x2) # store 0x23804259 in memory
flw f8, 0(x2) # load 0x23804259 from memory into f8
fsub.s f8, f21, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xcc6f36f2 # load x3 with value 0xcc6f36f2
sw x3, 0(x2) # store 0xcc6f36f2 in memory
flw f23, 0(x2) # load 0xcc6f36f2 from memory into f23
la x2, scratch
li x3, 0xede66f97 # load x3 with value 0xede66f97
sw x3, 0(x2) # store 0xede66f97 in memory
flw f9, 0(x2) # load 0xede66f97 from memory into f9
fsub.s f9, f23, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xf2390cb1 # load x3 with value 0xf2390cb1
sw x3, 0(x2) # store 0xf2390cb1 in memory
flw f3, 0(x2) # load 0xf2390cb1 from memory into f3
la x2, scratch
li x3, 0x6ea5c71f # load x3 with value 0x6ea5c71f
sw x3, 0(x2) # store 0x6ea5c71f in memory
flw f10, 0(x2) # load 0x6ea5c71f from memory into f10
fsub.s f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xef7684af # load x3 with value 0xef7684af
sw x3, 0(x2) # store 0xef7684af in memory
flw f8, 0(x2) # load 0xef7684af from memory into f8
la x2, scratch
li x3, 0xfe8b22fe # load x3 with value 0xfe8b22fe
sw x3, 0(x2) # store 0xfe8b22fe in memory
flw f11, 0(x2) # load 0xfe8b22fe from memory into f11
fsub.s f11, f8, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x7ef24bc7 # load x3 with value 0x7ef24bc7
sw x3, 0(x2) # store 0x7ef24bc7 in memory
flw f8, 0(x2) # load 0x7ef24bc7 from memory into f8
la x2, scratch
li x3, 0x7c210866 # load x3 with value 0x7c210866
sw x3, 0(x2) # store 0x7c210866 in memory
flw f12, 0(x2) # load 0x7c210866 from memory into f12
fsub.s f12, f8, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x96651228 # load x3 with value 0x96651228
sw x3, 0(x2) # store 0x96651228 in memory
flw f7, 0(x2) # load 0x96651228 from memory into f7
la x2, scratch
li x3, 0x948be2f4 # load x3 with value 0x948be2f4
sw x3, 0(x2) # store 0x948be2f4 in memory
flw f13, 0(x2) # load 0x948be2f4 from memory into f13
fsub.s f13, f7, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x453ec2a4 # load x3 with value 0x453ec2a4
sw x3, 0(x2) # store 0x453ec2a4 in memory
flw f15, 0(x2) # load 0x453ec2a4 from memory into f15
la x2, scratch
li x3, 0xf820cf21 # load x3 with value 0xf820cf21
sw x3, 0(x2) # store 0xf820cf21 in memory
flw f14, 0(x2) # load 0xf820cf21 from memory into f14
fsub.s f14, f15, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0xdb5291b1 # load x3 with value 0xdb5291b1
sw x3, 0(x2) # store 0xdb5291b1 in memory
flw f11, 0(x2) # load 0xdb5291b1 from memory into f11
la x2, scratch
li x3, 0x58fe9425 # load x3 with value 0x58fe9425
sw x3, 0(x2) # store 0x58fe9425 in memory
flw f15, 0(x2) # load 0x58fe9425 from memory into f15
fsub.s f15, f11, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xd4a52a1e # load x3 with value 0xd4a52a1e
sw x3, 0(x2) # store 0xd4a52a1e in memory
flw f7, 0(x2) # load 0xd4a52a1e from memory into f7
la x2, scratch
li x3, 0xcd9b4cf5 # load x3 with value 0xcd9b4cf5
sw x3, 0(x2) # store 0xcd9b4cf5 in memory
flw f16, 0(x2) # load 0xcd9b4cf5 from memory into f16
fsub.s f16, f7, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x16552cdb # load x3 with value 0x16552cdb
sw x3, 0(x2) # store 0x16552cdb in memory
flw f3, 0(x2) # load 0x16552cdb from memory into f3
la x2, scratch
li x3, 0x9fc85bb5 # load x3 with value 0x9fc85bb5
sw x3, 0(x2) # store 0x9fc85bb5 in memory
flw f17, 0(x2) # load 0x9fc85bb5 from memory into f17
fsub.s f17, f3, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x6efcb17c # load x3 with value 0x6efcb17c
sw x3, 0(x2) # store 0x6efcb17c in memory
flw f22, 0(x2) # load 0x6efcb17c from memory into f22
la x2, scratch
li x3, 0x5b7990c0 # load x3 with value 0x5b7990c0
sw x3, 0(x2) # store 0x5b7990c0 in memory
flw f18, 0(x2) # load 0x5b7990c0 from memory into f18
fsub.s f18, f22, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xa4fc5a95 # load x3 with value 0xa4fc5a95
sw x3, 0(x2) # store 0xa4fc5a95 in memory
flw f8, 0(x2) # load 0xa4fc5a95 from memory into f8
la x2, scratch
li x3, 0xba32845e # load x3 with value 0xba32845e
sw x3, 0(x2) # store 0xba32845e in memory
flw f19, 0(x2) # load 0xba32845e from memory into f19
fsub.s f19, f8, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x65c06c12 # load x3 with value 0x65c06c12
sw x3, 0(x2) # store 0x65c06c12 in memory
flw f18, 0(x2) # load 0x65c06c12 from memory into f18
la x2, scratch
li x3, 0x2e04527d # load x3 with value 0x2e04527d
sw x3, 0(x2) # store 0x2e04527d in memory
flw f20, 0(x2) # load 0x2e04527d from memory into f20
fsub.s f20, f18, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xf2c77d54 # load x3 with value 0xf2c77d54
sw x3, 0(x2) # store 0xf2c77d54 in memory
flw f19, 0(x2) # load 0xf2c77d54 from memory into f19
la x2, scratch
li x3, 0xf8a13fbc # load x3 with value 0xf8a13fbc
sw x3, 0(x2) # store 0xf8a13fbc in memory
flw f21, 0(x2) # load 0xf8a13fbc from memory into f21
fsub.s f21, f19, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0xfe7abdb2 # load x3 with value 0xfe7abdb2
sw x3, 0(x2) # store 0xfe7abdb2 in memory
flw f28, 0(x2) # load 0xfe7abdb2 from memory into f28
la x2, scratch
li x3, 0x23ea1ac2 # load x3 with value 0x23ea1ac2
sw x3, 0(x2) # store 0x23ea1ac2 in memory
flw f22, 0(x2) # load 0x23ea1ac2 from memory into f22
fsub.s f22, f28, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xea15fe2c # load x3 with value 0xea15fe2c
sw x3, 0(x2) # store 0xea15fe2c in memory
flw f10, 0(x2) # load 0xea15fe2c from memory into f10
la x2, scratch
li x3, 0x4a3027d6 # load x3 with value 0x4a3027d6
sw x3, 0(x2) # store 0x4a3027d6 in memory
flw f23, 0(x2) # load 0x4a3027d6 from memory into f23
fsub.s f23, f10, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x752cc610 # load x3 with value 0x752cc610
sw x3, 0(x2) # store 0x752cc610 in memory
flw f12, 0(x2) # load 0x752cc610 from memory into f12
la x2, scratch
li x3, 0xa5fd6bd5 # load x3 with value 0xa5fd6bd5
sw x3, 0(x2) # store 0xa5fd6bd5 in memory
flw f24, 0(x2) # load 0xa5fd6bd5 from memory into f24
fsub.s f24, f12, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x64347818 # load x3 with value 0x64347818
sw x3, 0(x2) # store 0x64347818 in memory
flw f25, 0(x2) # load 0x64347818 from memory into f25
la x2, scratch
li x3, 0x1750c0ab # load x3 with value 0x1750c0ab
sw x3, 0(x2) # store 0x1750c0ab in memory
flw f25, 0(x2) # load 0x1750c0ab from memory into f25
fsub.s f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x983be9ec # load x3 with value 0x983be9ec
sw x3, 0(x2) # store 0x983be9ec in memory
flw f11, 0(x2) # load 0x983be9ec from memory into f11
la x2, scratch
li x3, 0x7bd3e32d # load x3 with value 0x7bd3e32d
sw x3, 0(x2) # store 0x7bd3e32d in memory
flw f26, 0(x2) # load 0x7bd3e32d from memory into f26
fsub.s f26, f11, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xf3c8f2d6 # load x3 with value 0xf3c8f2d6
sw x3, 0(x2) # store 0xf3c8f2d6 in memory
flw f31, 0(x2) # load 0xf3c8f2d6 from memory into f31
la x2, scratch
li x3, 0x38c673e8 # load x3 with value 0x38c673e8
sw x3, 0(x2) # store 0x38c673e8 in memory
flw f27, 0(x2) # load 0x38c673e8 from memory into f27
fsub.s f27, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0xf035a63c # load x3 with value 0xf035a63c
sw x3, 0(x2) # store 0xf035a63c in memory
flw f1, 0(x2) # load 0xf035a63c from memory into f1
la x2, scratch
li x3, 0xf0a91db5 # load x3 with value 0xf0a91db5
sw x3, 0(x2) # store 0xf0a91db5 in memory
flw f28, 0(x2) # load 0xf0a91db5 from memory into f28
fsub.s f28, f1, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x4520638c # load x3 with value 0x4520638c
sw x3, 0(x2) # store 0x4520638c in memory
flw f24, 0(x2) # load 0x4520638c from memory into f24
la x2, scratch
li x3, 0x4856283a # load x3 with value 0x4856283a
sw x3, 0(x2) # store 0x4856283a in memory
flw f29, 0(x2) # load 0x4856283a from memory into f29
fsub.s f29, f24, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x9c92c7db # load x3 with value 0x9c92c7db
sw x3, 0(x2) # store 0x9c92c7db in memory
flw f16, 0(x2) # load 0x9c92c7db from memory into f16
la x2, scratch
li x3, 0x5f7f136b # load x3 with value 0x5f7f136b
sw x3, 0(x2) # store 0x5f7f136b in memory
flw f30, 0(x2) # load 0x5f7f136b from memory into f30
fsub.s f30, f16, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0xf4d9cf1c # load x3 with value 0xf4d9cf1c
sw x3, 0(x2) # store 0xf4d9cf1c in memory
flw f9, 0(x2) # load 0xf4d9cf1c from memory into f9
la x2, scratch
li x3, 0x12da8e25 # load x3 with value 0x12da8e25
sw x3, 0(x2) # store 0x12da8e25 in memory
flw f31, 0(x2) # load 0x12da8e25 from memory into f31
fsub.s f31, f9, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x1c24b56a # load x3 with value 0x1c24b56a
sw x3, 0(x2) # store 0x1c24b56a in memory
flw f18, 0(x2) # load 0x1c24b56a from memory into f18
la x2, scratch
li x3, 0x8e368299 # load x3 with value 0x8e368299
sw x3, 0(x2) # store 0x8e368299 in memory
flw f31, 0(x2) # load 0x8e368299 from memory into f31
fsub.s f29, f18, f31, dyn # perform operation
fsub.s f29, f18, f31, rdn # perform operation
fsub.s f29, f18, f31, rmm # perform operation
fsub.s f29, f18, f31, rne # perform operation
fsub.s f29, f18, f31, rtz # perform operation
fsub.s f29, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f6, f9, f14, dyn # perform operation
fsub.s f6, f9, f14, rdn # perform operation
fsub.s f6, f9, f14, rmm # perform operation
fsub.s f6, f9, f14, rne # perform operation
fsub.s f6, f9, f14, rtz # perform operation
fsub.s f6, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fsub.s f8, f26, f22, dyn # perform operation
fsub.s f8, f26, f22, rdn # perform operation
fsub.s f8, f26, f22, rmm # perform operation
fsub.s f8, f26, f22, rne # perform operation
fsub.s f8, f26, f22, rtz # perform operation
fsub.s f8, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fsub.s f17, f30, f19, dyn # perform operation
fsub.s f17, f30, f19, rdn # perform operation
fsub.s f17, f30, f19, rmm # perform operation
fsub.s f17, f30, f19, rne # perform operation
fsub.s f17, f30, f19, rtz # perform operation
fsub.s f17, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f23, f29, f14, dyn # perform operation
fsub.s f23, f29, f14, rdn # perform operation
fsub.s f23, f29, f14, rmm # perform operation
fsub.s f23, f29, f14, rne # perform operation
fsub.s f23, f29, f14, rtz # perform operation
fsub.s f23, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f20, f22, f29, dyn # perform operation
fsub.s f20, f22, f29, rdn # perform operation
fsub.s f20, f22, f29, rmm # perform operation
fsub.s f20, f22, f29, rne # perform operation
fsub.s f20, f22, f29, rtz # perform operation
fsub.s f20, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fsub.s f22, f5, f3, dyn # perform operation
fsub.s f22, f5, f3, rdn # perform operation
fsub.s f22, f5, f3, rmm # perform operation
fsub.s f22, f5, f3, rne # perform operation
fsub.s f22, f5, f3, rtz # perform operation
fsub.s f22, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f25, f21, f13, dyn # perform operation
fsub.s f25, f21, f13, rdn # perform operation
fsub.s f25, f21, f13, rmm # perform operation
fsub.s f25, f21, f13, rne # perform operation
fsub.s f25, f21, f13, rtz # perform operation
fsub.s f25, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fsub.s f22, f6, f25, dyn # perform operation
fsub.s f22, f6, f25, rdn # perform operation
fsub.s f22, f6, f25, rmm # perform operation
fsub.s f22, f6, f25, rne # perform operation
fsub.s f22, f6, f25, rtz # perform operation
fsub.s f22, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f9, f7, f27, dyn # perform operation
fsub.s f9, f7, f27, rdn # perform operation
fsub.s f9, f7, f27, rmm # perform operation
fsub.s f9, f7, f27, rne # perform operation
fsub.s f9, f7, f27, rtz # perform operation
fsub.s f9, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fsub.s f3, f17, f25, dyn # perform operation
fsub.s f3, f17, f25, rdn # perform operation
fsub.s f3, f17, f25, rmm # perform operation
fsub.s f3, f17, f25, rne # perform operation
fsub.s f3, f17, f25, rtz # perform operation
fsub.s f3, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f21, f16, f5, dyn # perform operation
fsub.s f21, f16, f5, rdn # perform operation
fsub.s f21, f16, f5, rmm # perform operation
fsub.s f21, f16, f5, rne # perform operation
fsub.s f21, f16, f5, rtz # perform operation
fsub.s f21, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fsub.s f3, f21, f25, dyn # perform operation
fsub.s f3, f21, f25, rdn # perform operation
fsub.s f3, f21, f25, rmm # perform operation
fsub.s f3, f21, f25, rne # perform operation
fsub.s f3, f21, f25, rtz # perform operation
fsub.s f3, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fsub.s f30, f10, f26, dyn # perform operation
fsub.s f30, f10, f26, rdn # perform operation
fsub.s f30, f10, f26, rmm # perform operation
fsub.s f30, f10, f26, rne # perform operation
fsub.s f30, f10, f26, rtz # perform operation
fsub.s f30, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f24, f21, f29, dyn # perform operation
fsub.s f24, f21, f29, rdn # perform operation
fsub.s f24, f21, f29, rmm # perform operation
fsub.s f24, f21, f29, rne # perform operation
fsub.s f24, f21, f29, rtz # perform operation
fsub.s f24, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fsub.s f26, f14, f6, dyn # perform operation
fsub.s f26, f14, f6, rdn # perform operation
fsub.s f26, f14, f6, rmm # perform operation
fsub.s f26, f14, f6, rne # perform operation
fsub.s f26, f14, f6, rtz # perform operation
fsub.s f26, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fsub.s f30, f3, f24, dyn # perform operation
fsub.s f30, f3, f24, rdn # perform operation
fsub.s f30, f3, f24, rmm # perform operation
fsub.s f30, f3, f24, rne # perform operation
fsub.s f30, f3, f24, rtz # perform operation
fsub.s f30, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f23, f20, f5, dyn # perform operation
fsub.s f23, f20, f5, rdn # perform operation
fsub.s f23, f20, f5, rmm # perform operation
fsub.s f23, f20, f5, rne # perform operation
fsub.s f23, f20, f5, rtz # perform operation
fsub.s f23, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fsub.s f23, f28, f26, dyn # perform operation
fsub.s f23, f28, f26, rdn # perform operation
fsub.s f23, f28, f26, rmm # perform operation
fsub.s f23, f28, f26, rne # perform operation
fsub.s f23, f28, f26, rtz # perform operation
fsub.s f23, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f5, f25, f20, dyn # perform operation
fsub.s f5, f25, f20, rdn # perform operation
fsub.s f5, f25, f20, rmm # perform operation
fsub.s f5, f25, f20, rne # perform operation
fsub.s f5, f25, f20, rtz # perform operation
fsub.s f5, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f6, f11, f27, dyn # perform operation
fsub.s f6, f11, f27, rdn # perform operation
fsub.s f6, f11, f27, rmm # perform operation
fsub.s f6, f11, f27, rne # perform operation
fsub.s f6, f11, f27, rtz # perform operation
fsub.s f6, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fsub.s f21, f26, f28, dyn # perform operation
fsub.s f21, f26, f28, rdn # perform operation
fsub.s f21, f26, f28, rmm # perform operation
fsub.s f21, f26, f28, rne # perform operation
fsub.s f21, f26, f28, rtz # perform operation
fsub.s f21, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fsub.s f3, f17, f19, dyn # perform operation
fsub.s f3, f17, f19, rdn # perform operation
fsub.s f3, f17, f19, rmm # perform operation
fsub.s f3, f17, f19, rne # perform operation
fsub.s f3, f17, f19, rtz # perform operation
fsub.s f3, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
fsub.s f17, f28, f13, dyn # perform operation
fsub.s f17, f28, f13, rdn # perform operation
fsub.s f17, f28, f13, rmm # perform operation
fsub.s f17, f28, f13, rne # perform operation
fsub.s f17, f28, f13, rtz # perform operation
fsub.s f17, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fsub.s f15, f27, f1, dyn # perform operation
fsub.s f15, f27, f1, rdn # perform operation
fsub.s f15, f27, f1, rmm # perform operation
fsub.s f15, f27, f1, rne # perform operation
fsub.s f15, f27, f1, rtz # perform operation
fsub.s f15, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f29, f9, f15, dyn # perform operation
fsub.s f29, f9, f15, rdn # perform operation
fsub.s f29, f9, f15, rmm # perform operation
fsub.s f29, f9, f15, rne # perform operation
fsub.s f29, f9, f15, rtz # perform operation
fsub.s f29, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fsub.s f8, f12, f7, dyn # perform operation
fsub.s f8, f12, f7, rdn # perform operation
fsub.s f8, f12, f7, rmm # perform operation
fsub.s f8, f12, f7, rne # perform operation
fsub.s f8, f12, f7, rtz # perform operation
fsub.s f8, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fsub.s f26, f16, f29, dyn # perform operation
fsub.s f26, f16, f29, rdn # perform operation
fsub.s f26, f16, f29, rmm # perform operation
fsub.s f26, f16, f29, rne # perform operation
fsub.s f26, f16, f29, rtz # perform operation
fsub.s f26, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fsub.s f9, f20, f1, dyn # perform operation
fsub.s f9, f20, f1, rdn # perform operation
fsub.s f9, f20, f1, rmm # perform operation
fsub.s f9, f20, f1, rne # perform operation
fsub.s f9, f20, f1, rtz # perform operation
fsub.s f9, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fsub.s f27, f9, f13, dyn # perform operation
fsub.s f27, f9, f13, rdn # perform operation
fsub.s f27, f9, f13, rmm # perform operation
fsub.s f27, f9, f13, rne # perform operation
fsub.s f27, f9, f13, rtz # perform operation
fsub.s f27, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fsub.s f2, f11, f15, dyn # perform operation
fsub.s f2, f11, f15, rdn # perform operation
fsub.s f2, f11, f15, rmm # perform operation
fsub.s f2, f11, f15, rne # perform operation
fsub.s f2, f11, f15, rtz # perform operation
fsub.s f2, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fsub.s f31, f25, f3, dyn # perform operation
fsub.s f31, f25, f3, rdn # perform operation
fsub.s f31, f25, f3, rmm # perform operation
fsub.s f31, f25, f3, rne # perform operation
fsub.s f31, f25, f3, rtz # perform operation
fsub.s f31, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f24, f15, f22, dyn # perform operation
fsub.s f24, f15, f22, rdn # perform operation
fsub.s f24, f15, f22, rmm # perform operation
fsub.s f24, f15, f22, rne # perform operation
fsub.s f24, f15, f22, rtz # perform operation
fsub.s f24, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fsub.s f20, f27, f19, dyn # perform operation
fsub.s f20, f27, f19, rdn # perform operation
fsub.s f20, f27, f19, rmm # perform operation
fsub.s f20, f27, f19, rne # perform operation
fsub.s f20, f27, f19, rtz # perform operation
fsub.s f20, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f30, f31, f1, dyn # perform operation
fsub.s f30, f31, f1, rdn # perform operation
fsub.s f30, f31, f1, rmm # perform operation
fsub.s f30, f31, f1, rne # perform operation
fsub.s f30, f31, f1, rtz # perform operation
fsub.s f30, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f19, f6, f13, dyn # perform operation
fsub.s f19, f6, f13, rdn # perform operation
fsub.s f19, f6, f13, rmm # perform operation
fsub.s f19, f6, f13, rne # perform operation
fsub.s f19, f6, f13, rtz # perform operation
fsub.s f19, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f20, f19, f31, dyn # perform operation
fsub.s f20, f19, f31, rdn # perform operation
fsub.s f20, f19, f31, rmm # perform operation
fsub.s f20, f19, f31, rne # perform operation
fsub.s f20, f19, f31, rtz # perform operation
fsub.s f20, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fsub.s f25, f20, f14, dyn # perform operation
fsub.s f25, f20, f14, rdn # perform operation
fsub.s f25, f20, f14, rmm # perform operation
fsub.s f25, f20, f14, rne # perform operation
fsub.s f25, f20, f14, rtz # perform operation
fsub.s f25, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f27, f29, f24, dyn # perform operation
fsub.s f27, f29, f24, rdn # perform operation
fsub.s f27, f29, f24, rmm # perform operation
fsub.s f27, f29, f24, rne # perform operation
fsub.s f27, f29, f24, rtz # perform operation
fsub.s f27, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fsub.s f10, f6, f15, dyn # perform operation
fsub.s f10, f6, f15, rdn # perform operation
fsub.s f10, f6, f15, rmm # perform operation
fsub.s f10, f6, f15, rne # perform operation
fsub.s f10, f6, f15, rtz # perform operation
fsub.s f10, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fsub.s f11, f2, f28, dyn # perform operation
fsub.s f11, f2, f28, rdn # perform operation
fsub.s f11, f2, f28, rmm # perform operation
fsub.s f11, f2, f28, rne # perform operation
fsub.s f11, f2, f28, rtz # perform operation
fsub.s f11, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f18, f16, f20, dyn # perform operation
fsub.s f18, f16, f20, rdn # perform operation
fsub.s f18, f16, f20, rmm # perform operation
fsub.s f18, f16, f20, rne # perform operation
fsub.s f18, f16, f20, rtz # perform operation
fsub.s f18, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f9, f20, f3, dyn # perform operation
fsub.s f9, f20, f3, rdn # perform operation
fsub.s f9, f20, f3, rmm # perform operation
fsub.s f9, f20, f3, rne # perform operation
fsub.s f9, f20, f3, rtz # perform operation
fsub.s f9, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fsub.s f17, f25, f21, dyn # perform operation
fsub.s f17, f25, f21, rdn # perform operation
fsub.s f17, f25, f21, rmm # perform operation
fsub.s f17, f25, f21, rne # perform operation
fsub.s f17, f25, f21, rtz # perform operation
fsub.s f17, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fsub.s f5, f12, f17, dyn # perform operation
fsub.s f5, f12, f17, rdn # perform operation
fsub.s f5, f12, f17, rmm # perform operation
fsub.s f5, f12, f17, rne # perform operation
fsub.s f5, f12, f17, rtz # perform operation
fsub.s f5, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fsub.s f25, f16, f23, dyn # perform operation
fsub.s f25, f16, f23, rdn # perform operation
fsub.s f25, f16, f23, rmm # perform operation
fsub.s f25, f16, f23, rne # perform operation
fsub.s f25, f16, f23, rtz # perform operation
fsub.s f25, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fsub.s f17, f19, f2, dyn # perform operation
fsub.s f17, f19, f2, rdn # perform operation
fsub.s f17, f19, f2, rmm # perform operation
fsub.s f17, f19, f2, rne # perform operation
fsub.s f17, f19, f2, rtz # perform operation
fsub.s f17, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f26, f23, f2, dyn # perform operation
fsub.s f26, f23, f2, rdn # perform operation
fsub.s f26, f23, f2, rmm # perform operation
fsub.s f26, f23, f2, rne # perform operation
fsub.s f26, f23, f2, rtz # perform operation
fsub.s f26, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fsub.s f19, f16, f24, dyn # perform operation
fsub.s f19, f16, f24, rdn # perform operation
fsub.s f19, f16, f24, rmm # perform operation
fsub.s f19, f16, f24, rne # perform operation
fsub.s f19, f16, f24, rtz # perform operation
fsub.s f19, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f22, f15, f9, dyn # perform operation
fsub.s f22, f15, f9, rdn # perform operation
fsub.s f22, f15, f9, rmm # perform operation
fsub.s f22, f15, f9, rne # perform operation
fsub.s f22, f15, f9, rtz # perform operation
fsub.s f22, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fsub.s f12, f6, f18, dyn # perform operation
fsub.s f12, f6, f18, rdn # perform operation
fsub.s f12, f6, f18, rmm # perform operation
fsub.s f12, f6, f18, rne # perform operation
fsub.s f12, f6, f18, rtz # perform operation
fsub.s f12, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fsub.s f27, f24, f12, dyn # perform operation
fsub.s f27, f24, f12, rdn # perform operation
fsub.s f27, f24, f12, rmm # perform operation
fsub.s f27, f24, f12, rne # perform operation
fsub.s f27, f24, f12, rtz # perform operation
fsub.s f27, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fsub.s f9, f3, f12, dyn # perform operation
fsub.s f9, f3, f12, rdn # perform operation
fsub.s f9, f3, f12, rmm # perform operation
fsub.s f9, f3, f12, rne # perform operation
fsub.s f9, f3, f12, rtz # perform operation
fsub.s f9, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fsub.s f24, f31, f30, dyn # perform operation
fsub.s f24, f31, f30, rdn # perform operation
fsub.s f24, f31, f30, rmm # perform operation
fsub.s f24, f31, f30, rne # perform operation
fsub.s f24, f31, f30, rtz # perform operation
fsub.s f24, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fsub.s f19, f24, f17, dyn # perform operation
fsub.s f19, f24, f17, rdn # perform operation
fsub.s f19, f24, f17, rmm # perform operation
fsub.s f19, f24, f17, rne # perform operation
fsub.s f19, f24, f17, rtz # perform operation
fsub.s f19, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fsub.s f27, f6, f2, dyn # perform operation
fsub.s f27, f6, f2, rdn # perform operation
fsub.s f27, f6, f2, rmm # perform operation
fsub.s f27, f6, f2, rne # perform operation
fsub.s f27, f6, f2, rtz # perform operation
fsub.s f27, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f8, f7, f19, dyn # perform operation
fsub.s f8, f7, f19, rdn # perform operation
fsub.s f8, f7, f19, rmm # perform operation
fsub.s f8, f7, f19, rne # perform operation
fsub.s f8, f7, f19, rtz # perform operation
fsub.s f8, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fsub.s f10, f17, f23, dyn # perform operation
fsub.s f10, f17, f23, rdn # perform operation
fsub.s f10, f17, f23, rmm # perform operation
fsub.s f10, f17, f23, rne # perform operation
fsub.s f10, f17, f23, rtz # perform operation
fsub.s f10, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fsub.s f28, f5, f22, dyn # perform operation
fsub.s f28, f5, f22, rdn # perform operation
fsub.s f28, f5, f22, rmm # perform operation
fsub.s f28, f5, f22, rne # perform operation
fsub.s f28, f5, f22, rtz # perform operation
fsub.s f28, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fsub.s f28, f15, f10, dyn # perform operation
fsub.s f28, f15, f10, rdn # perform operation
fsub.s f28, f15, f10, rmm # perform operation
fsub.s f28, f15, f10, rne # perform operation
fsub.s f28, f15, f10, rtz # perform operation
fsub.s f28, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f12, f25, f6, dyn # perform operation
fsub.s f12, f25, f6, rdn # perform operation
fsub.s f12, f25, f6, rmm # perform operation
fsub.s f12, f25, f6, rne # perform operation
fsub.s f12, f25, f6, rtz # perform operation
fsub.s f12, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f2, f16, f28, dyn # perform operation
fsub.s f2, f16, f28, rdn # perform operation
fsub.s f2, f16, f28, rmm # perform operation
fsub.s f2, f16, f28, rne # perform operation
fsub.s f2, f16, f28, rtz # perform operation
fsub.s f2, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fsub.s f2, f27, f3, dyn # perform operation
fsub.s f2, f27, f3, rdn # perform operation
fsub.s f2, f27, f3, rmm # perform operation
fsub.s f2, f27, f3, rne # perform operation
fsub.s f2, f27, f3, rtz # perform operation
fsub.s f2, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fsub.s f27, f2, f22, dyn # perform operation
fsub.s f27, f2, f22, rdn # perform operation
fsub.s f27, f2, f22, rmm # perform operation
fsub.s f27, f2, f22, rne # perform operation
fsub.s f27, f2, f22, rtz # perform operation
fsub.s f27, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fsub.s f12, f9, f24, dyn # perform operation
fsub.s f12, f9, f24, rdn # perform operation
fsub.s f12, f9, f24, rmm # perform operation
fsub.s f12, f9, f24, rne # perform operation
fsub.s f12, f9, f24, rtz # perform operation
fsub.s f12, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fsub.s f11, f17, f25, dyn # perform operation
fsub.s f11, f17, f25, rdn # perform operation
fsub.s f11, f17, f25, rmm # perform operation
fsub.s f11, f17, f25, rne # perform operation
fsub.s f11, f17, f25, rtz # perform operation
fsub.s f11, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fsub.s f8, f6, f15, dyn # perform operation
fsub.s f8, f6, f15, rdn # perform operation
fsub.s f8, f6, f15, rmm # perform operation
fsub.s f8, f6, f15, rne # perform operation
fsub.s f8, f6, f15, rtz # perform operation
fsub.s f8, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f9, f11, f22, dyn # perform operation
fsub.s f9, f11, f22, rdn # perform operation
fsub.s f9, f11, f22, rmm # perform operation
fsub.s f9, f11, f22, rne # perform operation
fsub.s f9, f11, f22, rtz # perform operation
fsub.s f9, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f7, f3, f2, dyn # perform operation
fsub.s f7, f3, f2, rdn # perform operation
fsub.s f7, f3, f2, rmm # perform operation
fsub.s f7, f3, f2, rne # perform operation
fsub.s f7, f3, f2, rtz # perform operation
fsub.s f7, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fsub.s f6, f31, f18, dyn # perform operation
fsub.s f6, f31, f18, rdn # perform operation
fsub.s f6, f31, f18, rmm # perform operation
fsub.s f6, f31, f18, rne # perform operation
fsub.s f6, f31, f18, rtz # perform operation
fsub.s f6, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fsub.s f10, f12, f22, dyn # perform operation
fsub.s f10, f12, f22, rdn # perform operation
fsub.s f10, f12, f22, rmm # perform operation
fsub.s f10, f12, f22, rne # perform operation
fsub.s f10, f12, f22, rtz # perform operation
fsub.s f10, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f31, f27, f11, dyn # perform operation
fsub.s f31, f27, f11, rdn # perform operation
fsub.s f31, f27, f11, rmm # perform operation
fsub.s f31, f27, f11, rne # perform operation
fsub.s f31, f27, f11, rtz # perform operation
fsub.s f31, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fsub.s f29, f19, f6, dyn # perform operation
fsub.s f29, f19, f6, rdn # perform operation
fsub.s f29, f19, f6, rmm # perform operation
fsub.s f29, f19, f6, rne # perform operation
fsub.s f29, f19, f6, rtz # perform operation
fsub.s f29, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fsub.s f10, f21, f1, dyn # perform operation
fsub.s f10, f21, f1, rdn # perform operation
fsub.s f10, f21, f1, rmm # perform operation
fsub.s f10, f21, f1, rne # perform operation
fsub.s f10, f21, f1, rtz # perform operation
fsub.s f10, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fsub.s f13, f27, f28, dyn # perform operation
fsub.s f13, f27, f28, rdn # perform operation
fsub.s f13, f27, f28, rmm # perform operation
fsub.s f13, f27, f28, rne # perform operation
fsub.s f13, f27, f28, rtz # perform operation
fsub.s f13, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f11, f27, f25, dyn # perform operation
fsub.s f11, f27, f25, rdn # perform operation
fsub.s f11, f27, f25, rmm # perform operation
fsub.s f11, f27, f25, rne # perform operation
fsub.s f11, f27, f25, rtz # perform operation
fsub.s f11, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fsub.s f25, f5, f30, dyn # perform operation
fsub.s f25, f5, f30, rdn # perform operation
fsub.s f25, f5, f30, rmm # perform operation
fsub.s f25, f5, f30, rne # perform operation
fsub.s f25, f5, f30, rtz # perform operation
fsub.s f25, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f11, f14, f18, dyn # perform operation
fsub.s f11, f14, f18, rdn # perform operation
fsub.s f11, f14, f18, rmm # perform operation
fsub.s f11, f14, f18, rne # perform operation
fsub.s f11, f14, f18, rtz # perform operation
fsub.s f11, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fsub.s f10, f17, f2, dyn # perform operation
fsub.s f10, f17, f2, rdn # perform operation
fsub.s f10, f17, f2, rmm # perform operation
fsub.s f10, f17, f2, rne # perform operation
fsub.s f10, f17, f2, rtz # perform operation
fsub.s f10, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fsub.s f25, f9, f31, dyn # perform operation
fsub.s f25, f9, f31, rdn # perform operation
fsub.s f25, f9, f31, rmm # perform operation
fsub.s f25, f9, f31, rne # perform operation
fsub.s f25, f9, f31, rtz # perform operation
fsub.s f25, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fsub.s f14, f8, f25, dyn # perform operation
fsub.s f14, f8, f25, rdn # perform operation
fsub.s f14, f8, f25, rmm # perform operation
fsub.s f14, f8, f25, rne # perform operation
fsub.s f14, f8, f25, rtz # perform operation
fsub.s f14, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fsub.s f17, f27, f9, dyn # perform operation
fsub.s f17, f27, f9, rdn # perform operation
fsub.s f17, f27, f9, rmm # perform operation
fsub.s f17, f27, f9, rne # perform operation
fsub.s f17, f27, f9, rtz # perform operation
fsub.s f17, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fsub.s f10, f11, f13, dyn # perform operation
fsub.s f10, f11, f13, rdn # perform operation
fsub.s f10, f11, f13, rmm # perform operation
fsub.s f10, f11, f13, rne # perform operation
fsub.s f10, f11, f13, rtz # perform operation
fsub.s f10, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fsub.s f10, f21, f20, dyn # perform operation
fsub.s f10, f21, f20, rdn # perform operation
fsub.s f10, f21, f20, rmm # perform operation
fsub.s f10, f21, f20, rne # perform operation
fsub.s f10, f21, f20, rtz # perform operation
fsub.s f10, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f20, f24, f19, dyn # perform operation
fsub.s f20, f24, f19, rdn # perform operation
fsub.s f20, f24, f19, rmm # perform operation
fsub.s f20, f24, f19, rne # perform operation
fsub.s f20, f24, f19, rtz # perform operation
fsub.s f20, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f26, f28, f31, dyn # perform operation
fsub.s f26, f28, f31, rdn # perform operation
fsub.s f26, f28, f31, rmm # perform operation
fsub.s f26, f28, f31, rne # perform operation
fsub.s f26, f28, f31, rtz # perform operation
fsub.s f26, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fsub.s f20, f26, f8, dyn # perform operation
fsub.s f20, f26, f8, rdn # perform operation
fsub.s f20, f26, f8, rmm # perform operation
fsub.s f20, f26, f8, rne # perform operation
fsub.s f20, f26, f8, rtz # perform operation
fsub.s f20, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f28, f10, f24, dyn # perform operation
fsub.s f28, f10, f24, rdn # perform operation
fsub.s f28, f10, f24, rmm # perform operation
fsub.s f28, f10, f24, rne # perform operation
fsub.s f28, f10, f24, rtz # perform operation
fsub.s f28, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f18, f24, f9, dyn # perform operation
fsub.s f18, f24, f9, rdn # perform operation
fsub.s f18, f24, f9, rmm # perform operation
fsub.s f18, f24, f9, rne # perform operation
fsub.s f18, f24, f9, rtz # perform operation
fsub.s f18, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f7, f16, f10, dyn # perform operation
fsub.s f7, f16, f10, rdn # perform operation
fsub.s f7, f16, f10, rmm # perform operation
fsub.s f7, f16, f10, rne # perform operation
fsub.s f7, f16, f10, rtz # perform operation
fsub.s f7, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fsub.s f7, f24, f12, dyn # perform operation
fsub.s f7, f24, f12, rdn # perform operation
fsub.s f7, f24, f12, rmm # perform operation
fsub.s f7, f24, f12, rne # perform operation
fsub.s f7, f24, f12, rtz # perform operation
fsub.s f7, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fsub.s f22, f1, f11, dyn # perform operation
fsub.s f22, f1, f11, rdn # perform operation
fsub.s f22, f1, f11, rmm # perform operation
fsub.s f22, f1, f11, rne # perform operation
fsub.s f22, f1, f11, rtz # perform operation
fsub.s f22, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fsub.s f3, f23, f19, dyn # perform operation
fsub.s f3, f23, f19, rdn # perform operation
fsub.s f3, f23, f19, rmm # perform operation
fsub.s f3, f23, f19, rne # perform operation
fsub.s f3, f23, f19, rtz # perform operation
fsub.s f3, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f15, f25, f31, dyn # perform operation
fsub.s f15, f25, f31, rdn # perform operation
fsub.s f15, f25, f31, rmm # perform operation
fsub.s f15, f25, f31, rne # perform operation
fsub.s f15, f25, f31, rtz # perform operation
fsub.s f15, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f30, f12, f20, dyn # perform operation
fsub.s f30, f12, f20, rdn # perform operation
fsub.s f30, f12, f20, rmm # perform operation
fsub.s f30, f12, f20, rne # perform operation
fsub.s f30, f12, f20, rtz # perform operation
fsub.s f30, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f25, f31, f10, dyn # perform operation
fsub.s f25, f31, f10, rdn # perform operation
fsub.s f25, f31, f10, rmm # perform operation
fsub.s f25, f31, f10, rne # perform operation
fsub.s f25, f31, f10, rtz # perform operation
fsub.s f25, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fsub.s f17, f6, f5, dyn # perform operation
fsub.s f17, f6, f5, rdn # perform operation
fsub.s f17, f6, f5, rmm # perform operation
fsub.s f17, f6, f5, rne # perform operation
fsub.s f17, f6, f5, rtz # perform operation
fsub.s f17, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fsub.s f25, f29, f11, dyn # perform operation
fsub.s f25, f29, f11, rdn # perform operation
fsub.s f25, f29, f11, rmm # perform operation
fsub.s f25, f29, f11, rne # perform operation
fsub.s f25, f29, f11, rtz # perform operation
fsub.s f25, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fsub.s f30, f2, f24, dyn # perform operation
fsub.s f30, f2, f24, rdn # perform operation
fsub.s f30, f2, f24, rmm # perform operation
fsub.s f30, f2, f24, rne # perform operation
fsub.s f30, f2, f24, rtz # perform operation
fsub.s f30, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fsub.s f28, f8, f24, dyn # perform operation
fsub.s f28, f8, f24, rdn # perform operation
fsub.s f28, f8, f24, rmm # perform operation
fsub.s f28, f8, f24, rne # perform operation
fsub.s f28, f8, f24, rtz # perform operation
fsub.s f28, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fsub.s f3, f23, f19, dyn # perform operation
fsub.s f3, f23, f19, rdn # perform operation
fsub.s f3, f23, f19, rmm # perform operation
fsub.s f3, f23, f19, rne # perform operation
fsub.s f3, f23, f19, rtz # perform operation
fsub.s f3, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f5, f26, f20, dyn # perform operation
fsub.s f5, f26, f20, rdn # perform operation
fsub.s f5, f26, f20, rmm # perform operation
fsub.s f5, f26, f20, rne # perform operation
fsub.s f5, f26, f20, rtz # perform operation
fsub.s f5, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fsub.s f8, f9, f10, dyn # perform operation
fsub.s f8, f9, f10, rdn # perform operation
fsub.s f8, f9, f10, rmm # perform operation
fsub.s f8, f9, f10, rne # perform operation
fsub.s f8, f9, f10, rtz # perform operation
fsub.s f8, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fsub.s f28, f31, f5, dyn # perform operation
fsub.s f28, f31, f5, rdn # perform operation
fsub.s f28, f31, f5, rmm # perform operation
fsub.s f28, f31, f5, rne # perform operation
fsub.s f28, f31, f5, rtz # perform operation
fsub.s f28, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fsub.s f31, f11, f16, dyn # perform operation
fsub.s f31, f11, f16, rdn # perform operation
fsub.s f31, f11, f16, rmm # perform operation
fsub.s f31, f11, f16, rne # perform operation
fsub.s f31, f11, f16, rtz # perform operation
fsub.s f31, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fsub.s f24, f22, f21, dyn # perform operation
fsub.s f24, f22, f21, rdn # perform operation
fsub.s f24, f22, f21, rmm # perform operation
fsub.s f24, f22, f21, rne # perform operation
fsub.s f24, f22, f21, rtz # perform operation
fsub.s f24, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fsub.s f18, f17, f2, dyn # perform operation
fsub.s f18, f17, f2, rdn # perform operation
fsub.s f18, f17, f2, rmm # perform operation
fsub.s f18, f17, f2, rne # perform operation
fsub.s f18, f17, f2, rtz # perform operation
fsub.s f18, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fsub.s f16, f11, f19, dyn # perform operation
fsub.s f16, f11, f19, rdn # perform operation
fsub.s f16, f11, f19, rmm # perform operation
fsub.s f16, f11, f19, rne # perform operation
fsub.s f16, f11, f19, rtz # perform operation
fsub.s f16, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fsub.s f16, f28, f19, dyn # perform operation
fsub.s f16, f28, f19, rdn # perform operation
fsub.s f16, f28, f19, rmm # perform operation
fsub.s f16, f28, f19, rne # perform operation
fsub.s f16, f28, f19, rtz # perform operation
fsub.s f16, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fsub.s f15, f13, f1, dyn # perform operation
fsub.s f15, f13, f1, rdn # perform operation
fsub.s f15, f13, f1, rmm # perform operation
fsub.s f15, f13, f1, rne # perform operation
fsub.s f15, f13, f1, rtz # perform operation
fsub.s f15, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fsub.s f8, f19, f9, dyn # perform operation
fsub.s f8, f19, f9, rdn # perform operation
fsub.s f8, f19, f9, rmm # perform operation
fsub.s f8, f19, f9, rne # perform operation
fsub.s f8, f19, f9, rtz # perform operation
fsub.s f8, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f30, f2, f13, dyn # perform operation
fsub.s f30, f2, f13, rdn # perform operation
fsub.s f30, f2, f13, rmm # perform operation
fsub.s f30, f2, f13, rne # perform operation
fsub.s f30, f2, f13, rtz # perform operation
fsub.s f30, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fsub.s f10, f12, f14, dyn # perform operation
fsub.s f10, f12, f14, rdn # perform operation
fsub.s f10, f12, f14, rmm # perform operation
fsub.s f10, f12, f14, rne # perform operation
fsub.s f10, f12, f14, rtz # perform operation
fsub.s f10, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f5, f7, f14, dyn # perform operation
fsub.s f5, f7, f14, rdn # perform operation
fsub.s f5, f7, f14, rmm # perform operation
fsub.s f5, f7, f14, rne # perform operation
fsub.s f5, f7, f14, rtz # perform operation
fsub.s f5, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fsub.s f5, f25, f28, dyn # perform operation
fsub.s f5, f25, f28, rdn # perform operation
fsub.s f5, f25, f28, rmm # perform operation
fsub.s f5, f25, f28, rne # perform operation
fsub.s f5, f25, f28, rtz # perform operation
fsub.s f5, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fsub.s f10, f13, f27, dyn # perform operation
fsub.s f10, f13, f27, rdn # perform operation
fsub.s f10, f13, f27, rmm # perform operation
fsub.s f10, f13, f27, rne # perform operation
fsub.s f10, f13, f27, rtz # perform operation
fsub.s f10, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fsub.s f24, f14, f13, dyn # perform operation
fsub.s f24, f14, f13, rdn # perform operation
fsub.s f24, f14, f13, rmm # perform operation
fsub.s f24, f14, f13, rne # perform operation
fsub.s f24, f14, f13, rtz # perform operation
fsub.s f24, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f15, f3, f17, dyn # perform operation
fsub.s f15, f3, f17, rdn # perform operation
fsub.s f15, f3, f17, rmm # perform operation
fsub.s f15, f3, f17, rne # perform operation
fsub.s f15, f3, f17, rtz # perform operation
fsub.s f15, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fsub.s f23, f2, f6, dyn # perform operation
fsub.s f23, f2, f6, rdn # perform operation
fsub.s f23, f2, f6, rmm # perform operation
fsub.s f23, f2, f6, rne # perform operation
fsub.s f23, f2, f6, rtz # perform operation
fsub.s f23, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fsub.s f25, f26, f20, dyn # perform operation
fsub.s f25, f26, f20, rdn # perform operation
fsub.s f25, f26, f20, rmm # perform operation
fsub.s f25, f26, f20, rne # perform operation
fsub.s f25, f26, f20, rtz # perform operation
fsub.s f25, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f15, f17, f27, dyn # perform operation
fsub.s f15, f17, f27, rdn # perform operation
fsub.s f15, f17, f27, rmm # perform operation
fsub.s f15, f17, f27, rne # perform operation
fsub.s f15, f17, f27, rtz # perform operation
fsub.s f15, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f23, f8, f12, dyn # perform operation
fsub.s f23, f8, f12, rdn # perform operation
fsub.s f23, f8, f12, rmm # perform operation
fsub.s f23, f8, f12, rne # perform operation
fsub.s f23, f8, f12, rtz # perform operation
fsub.s f23, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fsub.s f28, f17, f29, dyn # perform operation
fsub.s f28, f17, f29, rdn # perform operation
fsub.s f28, f17, f29, rmm # perform operation
fsub.s f28, f17, f29, rne # perform operation
fsub.s f28, f17, f29, rtz # perform operation
fsub.s f28, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fsub.s f2, f23, f19, dyn # perform operation
fsub.s f2, f23, f19, rdn # perform operation
fsub.s f2, f23, f19, rmm # perform operation
fsub.s f2, f23, f19, rne # perform operation
fsub.s f2, f23, f19, rtz # perform operation
fsub.s f2, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fsub.s f15, f29, f30, dyn # perform operation
fsub.s f15, f29, f30, rdn # perform operation
fsub.s f15, f29, f30, rmm # perform operation
fsub.s f15, f29, f30, rne # perform operation
fsub.s f15, f29, f30, rtz # perform operation
fsub.s f15, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f27, f30, f3, dyn # perform operation
fsub.s f27, f30, f3, rdn # perform operation
fsub.s f27, f30, f3, rmm # perform operation
fsub.s f27, f30, f3, rne # perform operation
fsub.s f27, f30, f3, rtz # perform operation
fsub.s f27, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f19, f30, f29, dyn # perform operation
fsub.s f19, f30, f29, rdn # perform operation
fsub.s f19, f30, f29, rmm # perform operation
fsub.s f19, f30, f29, rne # perform operation
fsub.s f19, f30, f29, rtz # perform operation
fsub.s f19, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fsub.s f11, f5, f16, dyn # perform operation
fsub.s f11, f5, f16, rdn # perform operation
fsub.s f11, f5, f16, rmm # perform operation
fsub.s f11, f5, f16, rne # perform operation
fsub.s f11, f5, f16, rtz # perform operation
fsub.s f11, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fsub.s f28, f13, f8, dyn # perform operation
fsub.s f28, f13, f8, rdn # perform operation
fsub.s f28, f13, f8, rmm # perform operation
fsub.s f28, f13, f8, rne # perform operation
fsub.s f28, f13, f8, rtz # perform operation
fsub.s f28, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f29, f5, f25, dyn # perform operation
fsub.s f29, f5, f25, rdn # perform operation
fsub.s f29, f5, f25, rmm # perform operation
fsub.s f29, f5, f25, rne # perform operation
fsub.s f29, f5, f25, rtz # perform operation
fsub.s f29, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fsub.s f12, f25, f15, dyn # perform operation
fsub.s f12, f25, f15, rdn # perform operation
fsub.s f12, f25, f15, rmm # perform operation
fsub.s f12, f25, f15, rne # perform operation
fsub.s f12, f25, f15, rtz # perform operation
fsub.s f12, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fsub.s f1, f17, f27, dyn # perform operation
fsub.s f1, f17, f27, rdn # perform operation
fsub.s f1, f17, f27, rmm # perform operation
fsub.s f1, f17, f27, rne # perform operation
fsub.s f1, f17, f27, rtz # perform operation
fsub.s f1, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fsub.s f3, f22, f26, dyn # perform operation
fsub.s f3, f22, f26, rdn # perform operation
fsub.s f3, f22, f26, rmm # perform operation
fsub.s f3, f22, f26, rne # perform operation
fsub.s f3, f22, f26, rtz # perform operation
fsub.s f3, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fsub.s f26, f23, f16, dyn # perform operation
fsub.s f26, f23, f16, rdn # perform operation
fsub.s f26, f23, f16, rmm # perform operation
fsub.s f26, f23, f16, rne # perform operation
fsub.s f26, f23, f16, rtz # perform operation
fsub.s f26, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fsub.s f27, f14, f24, dyn # perform operation
fsub.s f27, f14, f24, rdn # perform operation
fsub.s f27, f14, f24, rmm # perform operation
fsub.s f27, f14, f24, rne # perform operation
fsub.s f27, f14, f24, rtz # perform operation
fsub.s f27, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fsub.s f25, f10, f15, dyn # perform operation
fsub.s f25, f10, f15, rdn # perform operation
fsub.s f25, f10, f15, rmm # perform operation
fsub.s f25, f10, f15, rne # perform operation
fsub.s f25, f10, f15, rtz # perform operation
fsub.s f25, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f18, f25, f17, dyn # perform operation
fsub.s f18, f25, f17, rdn # perform operation
fsub.s f18, f25, f17, rmm # perform operation
fsub.s f18, f25, f17, rne # perform operation
fsub.s f18, f25, f17, rtz # perform operation
fsub.s f18, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f30, f14, f22, dyn # perform operation
fsub.s f30, f14, f22, rdn # perform operation
fsub.s f30, f14, f22, rmm # perform operation
fsub.s f30, f14, f22, rne # perform operation
fsub.s f30, f14, f22, rtz # perform operation
fsub.s f30, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
fsub.s f27, f1, f26, dyn # perform operation
fsub.s f27, f1, f26, rdn # perform operation
fsub.s f27, f1, f26, rmm # perform operation
fsub.s f27, f1, f26, rne # perform operation
fsub.s f27, f1, f26, rtz # perform operation
fsub.s f27, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f3, f11, f18, dyn # perform operation
fsub.s f3, f11, f18, rdn # perform operation
fsub.s f3, f11, f18, rmm # perform operation
fsub.s f3, f11, f18, rne # perform operation
fsub.s f3, f11, f18, rtz # perform operation
fsub.s f3, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fsub.s f17, f15, f11, dyn # perform operation
fsub.s f17, f15, f11, rdn # perform operation
fsub.s f17, f15, f11, rmm # perform operation
fsub.s f17, f15, f11, rne # perform operation
fsub.s f17, f15, f11, rtz # perform operation
fsub.s f17, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fsub.s f22, f30, f9, dyn # perform operation
fsub.s f22, f30, f9, rdn # perform operation
fsub.s f22, f30, f9, rmm # perform operation
fsub.s f22, f30, f9, rne # perform operation
fsub.s f22, f30, f9, rtz # perform operation
fsub.s f22, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fsub.s f5, f12, f15, dyn # perform operation
fsub.s f5, f12, f15, rdn # perform operation
fsub.s f5, f12, f15, rmm # perform operation
fsub.s f5, f12, f15, rne # perform operation
fsub.s f5, f12, f15, rtz # perform operation
fsub.s f5, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fsub.s f15, f23, f17, dyn # perform operation
fsub.s f15, f23, f17, rdn # perform operation
fsub.s f15, f23, f17, rmm # perform operation
fsub.s f15, f23, f17, rne # perform operation
fsub.s f15, f23, f17, rtz # perform operation
fsub.s f15, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f12, f22, f6, dyn # perform operation
fsub.s f12, f22, f6, rdn # perform operation
fsub.s f12, f22, f6, rmm # perform operation
fsub.s f12, f22, f6, rne # perform operation
fsub.s f12, f22, f6, rtz # perform operation
fsub.s f12, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fsub.s f21, f20, f3, dyn # perform operation
fsub.s f21, f20, f3, rdn # perform operation
fsub.s f21, f20, f3, rmm # perform operation
fsub.s f21, f20, f3, rne # perform operation
fsub.s f21, f20, f3, rtz # perform operation
fsub.s f21, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f27, f18, f28, dyn # perform operation
fsub.s f27, f18, f28, rdn # perform operation
fsub.s f27, f18, f28, rmm # perform operation
fsub.s f27, f18, f28, rne # perform operation
fsub.s f27, f18, f28, rtz # perform operation
fsub.s f27, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fsub.s f17, f27, f6, dyn # perform operation
fsub.s f17, f27, f6, rdn # perform operation
fsub.s f17, f27, f6, rmm # perform operation
fsub.s f17, f27, f6, rne # perform operation
fsub.s f17, f27, f6, rtz # perform operation
fsub.s f17, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fsub.s f22, f24, f2, dyn # perform operation
fsub.s f22, f24, f2, rdn # perform operation
fsub.s f22, f24, f2, rmm # perform operation
fsub.s f22, f24, f2, rne # perform operation
fsub.s f22, f24, f2, rtz # perform operation
fsub.s f22, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f19, f9, f11, dyn # perform operation
fsub.s f19, f9, f11, rdn # perform operation
fsub.s f19, f9, f11, rmm # perform operation
fsub.s f19, f9, f11, rne # perform operation
fsub.s f19, f9, f11, rtz # perform operation
fsub.s f19, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fsub.s f17, f30, f28, dyn # perform operation
fsub.s f17, f30, f28, rdn # perform operation
fsub.s f17, f30, f28, rmm # perform operation
fsub.s f17, f30, f28, rne # perform operation
fsub.s f17, f30, f28, rtz # perform operation
fsub.s f17, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fsub.s f5, f20, f2, dyn # perform operation
fsub.s f5, f20, f2, rdn # perform operation
fsub.s f5, f20, f2, rmm # perform operation
fsub.s f5, f20, f2, rne # perform operation
fsub.s f5, f20, f2, rtz # perform operation
fsub.s f5, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f1, f27, f24, dyn # perform operation
fsub.s f1, f27, f24, rdn # perform operation
fsub.s f1, f27, f24, rmm # perform operation
fsub.s f1, f27, f24, rne # perform operation
fsub.s f1, f27, f24, rtz # perform operation
fsub.s f1, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f21, f26, f23, dyn # perform operation
fsub.s f21, f26, f23, rdn # perform operation
fsub.s f21, f26, f23, rmm # perform operation
fsub.s f21, f26, f23, rne # perform operation
fsub.s f21, f26, f23, rtz # perform operation
fsub.s f21, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fsub.s f6, f5, f19, dyn # perform operation
fsub.s f6, f5, f19, rdn # perform operation
fsub.s f6, f5, f19, rmm # perform operation
fsub.s f6, f5, f19, rne # perform operation
fsub.s f6, f5, f19, rtz # perform operation
fsub.s f6, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f29, f24, f26, dyn # perform operation
fsub.s f29, f24, f26, rdn # perform operation
fsub.s f29, f24, f26, rmm # perform operation
fsub.s f29, f24, f26, rne # perform operation
fsub.s f29, f24, f26, rtz # perform operation
fsub.s f29, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fsub.s f25, f8, f21, dyn # perform operation
fsub.s f25, f8, f21, rdn # perform operation
fsub.s f25, f8, f21, rmm # perform operation
fsub.s f25, f8, f21, rne # perform operation
fsub.s f25, f8, f21, rtz # perform operation
fsub.s f25, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f24, f25, f3, dyn # perform operation
fsub.s f24, f25, f3, rdn # perform operation
fsub.s f24, f25, f3, rmm # perform operation
fsub.s f24, f25, f3, rne # perform operation
fsub.s f24, f25, f3, rtz # perform operation
fsub.s f24, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fsub.s f16, f12, f18, dyn # perform operation
fsub.s f16, f12, f18, rdn # perform operation
fsub.s f16, f12, f18, rmm # perform operation
fsub.s f16, f12, f18, rne # perform operation
fsub.s f16, f12, f18, rtz # perform operation
fsub.s f16, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fsub.s f9, f26, f15, dyn # perform operation
fsub.s f9, f26, f15, rdn # perform operation
fsub.s f9, f26, f15, rmm # perform operation
fsub.s f9, f26, f15, rne # perform operation
fsub.s f9, f26, f15, rtz # perform operation
fsub.s f9, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f21, f6, f27, dyn # perform operation
fsub.s f21, f6, f27, rdn # perform operation
fsub.s f21, f6, f27, rmm # perform operation
fsub.s f21, f6, f27, rne # perform operation
fsub.s f21, f6, f27, rtz # perform operation
fsub.s f21, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fsub.s f15, f2, f16, dyn # perform operation
fsub.s f15, f2, f16, rdn # perform operation
fsub.s f15, f2, f16, rmm # perform operation
fsub.s f15, f2, f16, rne # perform operation
fsub.s f15, f2, f16, rtz # perform operation
fsub.s f15, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f16, f27, f26, dyn # perform operation
fsub.s f16, f27, f26, rdn # perform operation
fsub.s f16, f27, f26, rmm # perform operation
fsub.s f16, f27, f26, rne # perform operation
fsub.s f16, f27, f26, rtz # perform operation
fsub.s f16, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fsub.s f28, f20, f24, dyn # perform operation
fsub.s f28, f20, f24, rdn # perform operation
fsub.s f28, f20, f24, rmm # perform operation
fsub.s f28, f20, f24, rne # perform operation
fsub.s f28, f20, f24, rtz # perform operation
fsub.s f28, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f19, f1, f2, dyn # perform operation
fsub.s f19, f1, f2, rdn # perform operation
fsub.s f19, f1, f2, rmm # perform operation
fsub.s f19, f1, f2, rne # perform operation
fsub.s f19, f1, f2, rtz # perform operation
fsub.s f19, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fsub.s f17, f27, f21, dyn # perform operation
fsub.s f17, f27, f21, rdn # perform operation
fsub.s f17, f27, f21, rmm # perform operation
fsub.s f17, f27, f21, rne # perform operation
fsub.s f17, f27, f21, rtz # perform operation
fsub.s f17, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
fsub.s f27, f18, f26, dyn # perform operation
fsub.s f27, f18, f26, rdn # perform operation
fsub.s f27, f18, f26, rmm # perform operation
fsub.s f27, f18, f26, rne # perform operation
fsub.s f27, f18, f26, rtz # perform operation
fsub.s f27, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f3, f21, f16, dyn # perform operation
fsub.s f3, f21, f16, rdn # perform operation
fsub.s f3, f21, f16, rmm # perform operation
fsub.s f3, f21, f16, rne # perform operation
fsub.s f3, f21, f16, rtz # perform operation
fsub.s f3, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fsub.s f17, f18, f20, dyn # perform operation
fsub.s f17, f18, f20, rdn # perform operation
fsub.s f17, f18, f20, rmm # perform operation
fsub.s f17, f18, f20, rne # perform operation
fsub.s f17, f18, f20, rtz # perform operation
fsub.s f17, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f27, f1, f12, dyn # perform operation
fsub.s f27, f1, f12, rdn # perform operation
fsub.s f27, f1, f12, rmm # perform operation
fsub.s f27, f1, f12, rne # perform operation
fsub.s f27, f1, f12, rtz # perform operation
fsub.s f27, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsub.s f11, f20, f2, dyn # perform operation
fsub.s f11, f20, f2, rdn # perform operation
fsub.s f11, f20, f2, rmm # perform operation
fsub.s f11, f20, f2, rne # perform operation
fsub.s f11, f20, f2, rtz # perform operation
fsub.s f11, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fsub.s f25, f17, f6, dyn # perform operation
fsub.s f25, f17, f6, rdn # perform operation
fsub.s f25, f17, f6, rmm # perform operation
fsub.s f25, f17, f6, rne # perform operation
fsub.s f25, f17, f6, rtz # perform operation
fsub.s f25, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f24, f1, f29, dyn # perform operation
fsub.s f24, f1, f29, rdn # perform operation
fsub.s f24, f1, f29, rmm # perform operation
fsub.s f24, f1, f29, rne # perform operation
fsub.s f24, f1, f29, rtz # perform operation
fsub.s f24, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fsub.s f13, f9, f31, dyn # perform operation
fsub.s f13, f9, f31, rdn # perform operation
fsub.s f13, f9, f31, rmm # perform operation
fsub.s f13, f9, f31, rne # perform operation
fsub.s f13, f9, f31, rtz # perform operation
fsub.s f13, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fsub.s f30, f17, f21, dyn # perform operation
fsub.s f30, f17, f21, rdn # perform operation
fsub.s f30, f17, f21, rmm # perform operation
fsub.s f30, f17, f21, rne # perform operation
fsub.s f30, f17, f21, rtz # perform operation
fsub.s f30, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f27, f31, f13, dyn # perform operation
fsub.s f27, f31, f13, rdn # perform operation
fsub.s f27, f31, f13, rmm # perform operation
fsub.s f27, f31, f13, rne # perform operation
fsub.s f27, f31, f13, rtz # perform operation
fsub.s f27, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fsub.s f2, f16, f29, dyn # perform operation
fsub.s f2, f16, f29, rdn # perform operation
fsub.s f2, f16, f29, rmm # perform operation
fsub.s f2, f16, f29, rne # perform operation
fsub.s f2, f16, f29, rtz # perform operation
fsub.s f2, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fsub.s f28, f24, f30, dyn # perform operation
fsub.s f28, f24, f30, rdn # perform operation
fsub.s f28, f24, f30, rmm # perform operation
fsub.s f28, f24, f30, rne # perform operation
fsub.s f28, f24, f30, rtz # perform operation
fsub.s f28, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f17, f2, f13, dyn # perform operation
fsub.s f17, f2, f13, rdn # perform operation
fsub.s f17, f2, f13, rmm # perform operation
fsub.s f17, f2, f13, rne # perform operation
fsub.s f17, f2, f13, rtz # perform operation
fsub.s f17, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fsub.s f11, f10, f31, dyn # perform operation
fsub.s f11, f10, f31, rdn # perform operation
fsub.s f11, f10, f31, rmm # perform operation
fsub.s f11, f10, f31, rne # perform operation
fsub.s f11, f10, f31, rtz # perform operation
fsub.s f11, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f28, f7, f11, dyn # perform operation
fsub.s f28, f7, f11, rdn # perform operation
fsub.s f28, f7, f11, rmm # perform operation
fsub.s f28, f7, f11, rne # perform operation
fsub.s f28, f7, f11, rtz # perform operation
fsub.s f28, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fsub.s f8, f17, f24, dyn # perform operation
fsub.s f8, f17, f24, rdn # perform operation
fsub.s f8, f17, f24, rmm # perform operation
fsub.s f8, f17, f24, rne # perform operation
fsub.s f8, f17, f24, rtz # perform operation
fsub.s f8, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f22, f5, f29, dyn # perform operation
fsub.s f22, f5, f29, rdn # perform operation
fsub.s f22, f5, f29, rmm # perform operation
fsub.s f22, f5, f29, rne # perform operation
fsub.s f22, f5, f29, rtz # perform operation
fsub.s f22, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f1, f7, f26, dyn # perform operation
fsub.s f1, f7, f26, rdn # perform operation
fsub.s f1, f7, f26, rmm # perform operation
fsub.s f1, f7, f26, rne # perform operation
fsub.s f1, f7, f26, rtz # perform operation
fsub.s f1, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fsub.s f23, f2, f10, dyn # perform operation
fsub.s f23, f2, f10, rdn # perform operation
fsub.s f23, f2, f10, rmm # perform operation
fsub.s f23, f2, f10, rne # perform operation
fsub.s f23, f2, f10, rtz # perform operation
fsub.s f23, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fsub.s f6, f14, f17, dyn # perform operation
fsub.s f6, f14, f17, rdn # perform operation
fsub.s f6, f14, f17, rmm # perform operation
fsub.s f6, f14, f17, rne # perform operation
fsub.s f6, f14, f17, rtz # perform operation
fsub.s f6, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsub.s f20, f8, f30, dyn # perform operation
fsub.s f20, f8, f30, rdn # perform operation
fsub.s f20, f8, f30, rmm # perform operation
fsub.s f20, f8, f30, rne # perform operation
fsub.s f20, f8, f30, rtz # perform operation
fsub.s f20, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fsub.s f23, f15, f14, dyn # perform operation
fsub.s f23, f15, f14, rdn # perform operation
fsub.s f23, f15, f14, rmm # perform operation
fsub.s f23, f15, f14, rne # perform operation
fsub.s f23, f15, f14, rtz # perform operation
fsub.s f23, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fsub.s f28, f23, f7, dyn # perform operation
fsub.s f28, f23, f7, rdn # perform operation
fsub.s f28, f23, f7, rmm # perform operation
fsub.s f28, f23, f7, rne # perform operation
fsub.s f28, f23, f7, rtz # perform operation
fsub.s f28, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f16, f27, f23, dyn # perform operation
fsub.s f16, f27, f23, rdn # perform operation
fsub.s f16, f27, f23, rmm # perform operation
fsub.s f16, f27, f23, rne # perform operation
fsub.s f16, f27, f23, rtz # perform operation
fsub.s f16, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fsub.s f9, f8, f27, dyn # perform operation
fsub.s f9, f8, f27, rdn # perform operation
fsub.s f9, f8, f27, rmm # perform operation
fsub.s f9, f8, f27, rne # perform operation
fsub.s f9, f8, f27, rtz # perform operation
fsub.s f9, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fsub.s f25, f21, f9, dyn # perform operation
fsub.s f25, f21, f9, rdn # perform operation
fsub.s f25, f21, f9, rmm # perform operation
fsub.s f25, f21, f9, rne # perform operation
fsub.s f25, f21, f9, rtz # perform operation
fsub.s f25, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fsub.s f18, f30, f28, dyn # perform operation
fsub.s f18, f30, f28, rdn # perform operation
fsub.s f18, f30, f28, rmm # perform operation
fsub.s f18, f30, f28, rne # perform operation
fsub.s f18, f30, f28, rtz # perform operation
fsub.s f18, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f16, f10, f5, dyn # perform operation
fsub.s f16, f10, f5, rdn # perform operation
fsub.s f16, f10, f5, rmm # perform operation
fsub.s f16, f10, f5, rne # perform operation
fsub.s f16, f10, f5, rtz # perform operation
fsub.s f16, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fsub.s f5, f8, f24, dyn # perform operation
fsub.s f5, f8, f24, rdn # perform operation
fsub.s f5, f8, f24, rmm # perform operation
fsub.s f5, f8, f24, rne # perform operation
fsub.s f5, f8, f24, rtz # perform operation
fsub.s f5, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f10, f3, f18, dyn # perform operation
fsub.s f10, f3, f18, rdn # perform operation
fsub.s f10, f3, f18, rmm # perform operation
fsub.s f10, f3, f18, rne # perform operation
fsub.s f10, f3, f18, rtz # perform operation
fsub.s f10, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f19, f26, f21, dyn # perform operation
fsub.s f19, f26, f21, rdn # perform operation
fsub.s f19, f26, f21, rmm # perform operation
fsub.s f19, f26, f21, rne # perform operation
fsub.s f19, f26, f21, rtz # perform operation
fsub.s f19, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fsub.s f18, f21, f28, dyn # perform operation
fsub.s f18, f21, f28, rdn # perform operation
fsub.s f18, f21, f28, rmm # perform operation
fsub.s f18, f21, f28, rne # perform operation
fsub.s f18, f21, f28, rtz # perform operation
fsub.s f18, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fsub.s f31, f18, f29, dyn # perform operation
fsub.s f31, f18, f29, rdn # perform operation
fsub.s f31, f18, f29, rmm # perform operation
fsub.s f31, f18, f29, rne # perform operation
fsub.s f31, f18, f29, rtz # perform operation
fsub.s f31, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fsub.s f7, f17, f12, dyn # perform operation
fsub.s f7, f17, f12, rdn # perform operation
fsub.s f7, f17, f12, rmm # perform operation
fsub.s f7, f17, f12, rne # perform operation
fsub.s f7, f17, f12, rtz # perform operation
fsub.s f7, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fsub.s f10, f9, f12, dyn # perform operation
fsub.s f10, f9, f12, rdn # perform operation
fsub.s f10, f9, f12, rmm # perform operation
fsub.s f10, f9, f12, rne # perform operation
fsub.s f10, f9, f12, rtz # perform operation
fsub.s f10, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f2, f10, f28, dyn # perform operation
fsub.s f2, f10, f28, rdn # perform operation
fsub.s f2, f10, f28, rmm # perform operation
fsub.s f2, f10, f28, rne # perform operation
fsub.s f2, f10, f28, rtz # perform operation
fsub.s f2, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsub.s f3, f18, f14, dyn # perform operation
fsub.s f3, f18, f14, rdn # perform operation
fsub.s f3, f18, f14, rmm # perform operation
fsub.s f3, f18, f14, rne # perform operation
fsub.s f3, f18, f14, rtz # perform operation
fsub.s f3, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fsub.s f1, f15, f2, dyn # perform operation
fsub.s f1, f15, f2, rdn # perform operation
fsub.s f1, f15, f2, rmm # perform operation
fsub.s f1, f15, f2, rne # perform operation
fsub.s f1, f15, f2, rtz # perform operation
fsub.s f1, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsub.s f2, f29, f6, dyn # perform operation
fsub.s f2, f29, f6, rdn # perform operation
fsub.s f2, f29, f6, rmm # perform operation
fsub.s f2, f29, f6, rne # perform operation
fsub.s f2, f29, f6, rtz # perform operation
fsub.s f2, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fsub.s f23, f11, f20, dyn # perform operation
fsub.s f23, f11, f20, rdn # perform operation
fsub.s f23, f11, f20, rmm # perform operation
fsub.s f23, f11, f20, rne # perform operation
fsub.s f23, f11, f20, rtz # perform operation
fsub.s f23, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsub.s f27, f6, f12, dyn # perform operation
fsub.s f27, f6, f12, rdn # perform operation
fsub.s f27, f6, f12, rmm # perform operation
fsub.s f27, f6, f12, rne # perform operation
fsub.s f27, f6, f12, rtz # perform operation
fsub.s f27, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fsub.s f6, f28, f21, dyn # perform operation
fsub.s f6, f28, f21, rdn # perform operation
fsub.s f6, f28, f21, rmm # perform operation
fsub.s f6, f28, f21, rne # perform operation
fsub.s f6, f28, f21, rtz # perform operation
fsub.s f6, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fsub.s f29, f15, f7, dyn # perform operation
fsub.s f29, f15, f7, rdn # perform operation
fsub.s f29, f15, f7, rmm # perform operation
fsub.s f29, f15, f7, rne # perform operation
fsub.s f29, f15, f7, rtz # perform operation
fsub.s f29, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f1, f12, f23, dyn # perform operation
fsub.s f1, f12, f23, rdn # perform operation
fsub.s f1, f12, f23, rmm # perform operation
fsub.s f1, f12, f23, rne # perform operation
fsub.s f1, f12, f23, rtz # perform operation
fsub.s f1, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f11, f25, f3, dyn # perform operation
fsub.s f11, f25, f3, rdn # perform operation
fsub.s f11, f25, f3, rmm # perform operation
fsub.s f11, f25, f3, rne # perform operation
fsub.s f11, f25, f3, rtz # perform operation
fsub.s f11, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f5, f24, f26, dyn # perform operation
fsub.s f5, f24, f26, rdn # perform operation
fsub.s f5, f24, f26, rmm # perform operation
fsub.s f5, f24, f26, rne # perform operation
fsub.s f5, f24, f26, rtz # perform operation
fsub.s f5, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fsub.s f2, f8, f20, dyn # perform operation
fsub.s f2, f8, f20, rdn # perform operation
fsub.s f2, f8, f20, rmm # perform operation
fsub.s f2, f8, f20, rne # perform operation
fsub.s f2, f8, f20, rtz # perform operation
fsub.s f2, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f25, f31, f3, dyn # perform operation
fsub.s f25, f31, f3, rdn # perform operation
fsub.s f25, f31, f3, rmm # perform operation
fsub.s f25, f31, f3, rne # perform operation
fsub.s f25, f31, f3, rtz # perform operation
fsub.s f25, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsub.s f28, f17, f30, dyn # perform operation
fsub.s f28, f17, f30, rdn # perform operation
fsub.s f28, f17, f30, rmm # perform operation
fsub.s f28, f17, f30, rne # perform operation
fsub.s f28, f17, f30, rtz # perform operation
fsub.s f28, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fsub.s f11, f16, f3, dyn # perform operation
fsub.s f11, f16, f3, rdn # perform operation
fsub.s f11, f16, f3, rmm # perform operation
fsub.s f11, f16, f3, rne # perform operation
fsub.s f11, f16, f3, rtz # perform operation
fsub.s f11, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fsub.s f15, f29, f12, dyn # perform operation
fsub.s f15, f29, f12, rdn # perform operation
fsub.s f15, f29, f12, rmm # perform operation
fsub.s f15, f29, f12, rne # perform operation
fsub.s f15, f29, f12, rtz # perform operation
fsub.s f15, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fsub.s f24, f1, f30, dyn # perform operation
fsub.s f24, f1, f30, rdn # perform operation
fsub.s f24, f1, f30, rmm # perform operation
fsub.s f24, f1, f30, rne # perform operation
fsub.s f24, f1, f30, rtz # perform operation
fsub.s f24, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fsub.s f24, f3, f29, dyn # perform operation
fsub.s f24, f3, f29, rdn # perform operation
fsub.s f24, f3, f29, rmm # perform operation
fsub.s f24, f3, f29, rne # perform operation
fsub.s f24, f3, f29, rtz # perform operation
fsub.s f24, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fsub.s f19, f5, f3, dyn # perform operation
fsub.s f19, f5, f3, rdn # perform operation
fsub.s f19, f5, f3, rmm # perform operation
fsub.s f19, f5, f3, rne # perform operation
fsub.s f19, f5, f3, rtz # perform operation
fsub.s f19, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fsub.s f29, f13, f23, dyn # perform operation
fsub.s f29, f13, f23, rdn # perform operation
fsub.s f29, f13, f23, rmm # perform operation
fsub.s f29, f13, f23, rne # perform operation
fsub.s f29, f13, f23, rtz # perform operation
fsub.s f29, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f15, f16, f5, dyn # perform operation
fsub.s f15, f16, f5, rdn # perform operation
fsub.s f15, f16, f5, rmm # perform operation
fsub.s f15, f16, f5, rne # perform operation
fsub.s f15, f16, f5, rtz # perform operation
fsub.s f15, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fsub.s f10, f27, f2, dyn # perform operation
fsub.s f10, f27, f2, rdn # perform operation
fsub.s f10, f27, f2, rmm # perform operation
fsub.s f10, f27, f2, rne # perform operation
fsub.s f10, f27, f2, rtz # perform operation
fsub.s f10, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fsub.s f3, f11, f15, dyn # perform operation
fsub.s f3, f11, f15, rdn # perform operation
fsub.s f3, f11, f15, rmm # perform operation
fsub.s f3, f11, f15, rne # perform operation
fsub.s f3, f11, f15, rtz # perform operation
fsub.s f3, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f19, f2, f12, dyn # perform operation
fsub.s f19, f2, f12, rdn # perform operation
fsub.s f19, f2, f12, rmm # perform operation
fsub.s f19, f2, f12, rne # perform operation
fsub.s f19, f2, f12, rtz # perform operation
fsub.s f19, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsub.s f14, f22, f3, dyn # perform operation
fsub.s f14, f22, f3, rdn # perform operation
fsub.s f14, f22, f3, rmm # perform operation
fsub.s f14, f22, f3, rne # perform operation
fsub.s f14, f22, f3, rtz # perform operation
fsub.s f14, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fsub.s f7, f13, f27, dyn # perform operation
fsub.s f7, f13, f27, rdn # perform operation
fsub.s f7, f13, f27, rmm # perform operation
fsub.s f7, f13, f27, rne # perform operation
fsub.s f7, f13, f27, rtz # perform operation
fsub.s f7, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fsub.s f12, f1, f10, dyn # perform operation
fsub.s f12, f1, f10, rdn # perform operation
fsub.s f12, f1, f10, rmm # perform operation
fsub.s f12, f1, f10, rne # perform operation
fsub.s f12, f1, f10, rtz # perform operation
fsub.s f12, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fsub.s f29, f14, f23, dyn # perform operation
fsub.s f29, f14, f23, rdn # perform operation
fsub.s f29, f14, f23, rmm # perform operation
fsub.s f29, f14, f23, rne # perform operation
fsub.s f29, f14, f23, rtz # perform operation
fsub.s f29, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fsub.s f29, f15, f24, dyn # perform operation
fsub.s f29, f15, f24, rdn # perform operation
fsub.s f29, f15, f24, rmm # perform operation
fsub.s f29, f15, f24, rne # perform operation
fsub.s f29, f15, f24, rtz # perform operation
fsub.s f29, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsub.s f27, f12, f25, dyn # perform operation
fsub.s f27, f12, f25, rdn # perform operation
fsub.s f27, f12, f25, rmm # perform operation
fsub.s f27, f12, f25, rne # perform operation
fsub.s f27, f12, f25, rtz # perform operation
fsub.s f27, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fsub.s f13, f11, f17, dyn # perform operation
fsub.s f13, f11, f17, rdn # perform operation
fsub.s f13, f11, f17, rmm # perform operation
fsub.s f13, f11, f17, rne # perform operation
fsub.s f13, f11, f17, rtz # perform operation
fsub.s f13, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fsub.s f1, f17, f24, dyn # perform operation
fsub.s f1, f17, f24, rdn # perform operation
fsub.s f1, f17, f24, rmm # perform operation
fsub.s f1, f17, f24, rne # perform operation
fsub.s f1, f17, f24, rtz # perform operation
fsub.s f1, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f3, f27, f10, dyn # perform operation
fsub.s f3, f27, f10, rdn # perform operation
fsub.s f3, f27, f10, rmm # perform operation
fsub.s f3, f27, f10, rne # perform operation
fsub.s f3, f27, f10, rtz # perform operation
fsub.s f3, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fsub.s f19, f16, f8, dyn # perform operation
fsub.s f19, f16, f8, rdn # perform operation
fsub.s f19, f16, f8, rmm # perform operation
fsub.s f19, f16, f8, rne # perform operation
fsub.s f19, f16, f8, rtz # perform operation
fsub.s f19, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f23, f14, f6, dyn # perform operation
fsub.s f23, f14, f6, rdn # perform operation
fsub.s f23, f14, f6, rmm # perform operation
fsub.s f23, f14, f6, rne # perform operation
fsub.s f23, f14, f6, rtz # perform operation
fsub.s f23, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f12, f17, f2, dyn # perform operation
fsub.s f12, f17, f2, rdn # perform operation
fsub.s f12, f17, f2, rmm # perform operation
fsub.s f12, f17, f2, rne # perform operation
fsub.s f12, f17, f2, rtz # perform operation
fsub.s f12, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f23, f28, f20, dyn # perform operation
fsub.s f23, f28, f20, rdn # perform operation
fsub.s f23, f28, f20, rmm # perform operation
fsub.s f23, f28, f20, rne # perform operation
fsub.s f23, f28, f20, rtz # perform operation
fsub.s f23, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fsub.s f1, f31, f12, dyn # perform operation
fsub.s f1, f31, f12, rdn # perform operation
fsub.s f1, f31, f12, rmm # perform operation
fsub.s f1, f31, f12, rne # perform operation
fsub.s f1, f31, f12, rtz # perform operation
fsub.s f1, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsub.s f20, f19, f14, dyn # perform operation
fsub.s f20, f19, f14, rdn # perform operation
fsub.s f20, f19, f14, rmm # perform operation
fsub.s f20, f19, f14, rne # perform operation
fsub.s f20, f19, f14, rtz # perform operation
fsub.s f20, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f26, f14, f9, dyn # perform operation
fsub.s f26, f14, f9, rdn # perform operation
fsub.s f26, f14, f9, rmm # perform operation
fsub.s f26, f14, f9, rne # perform operation
fsub.s f26, f14, f9, rtz # perform operation
fsub.s f26, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f11, f24, f3, dyn # perform operation
fsub.s f11, f24, f3, rdn # perform operation
fsub.s f11, f24, f3, rmm # perform operation
fsub.s f11, f24, f3, rne # perform operation
fsub.s f11, f24, f3, rtz # perform operation
fsub.s f11, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fsub.s f7, f13, f24, dyn # perform operation
fsub.s f7, f13, f24, rdn # perform operation
fsub.s f7, f13, f24, rmm # perform operation
fsub.s f7, f13, f24, rne # perform operation
fsub.s f7, f13, f24, rtz # perform operation
fsub.s f7, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fsub.s f24, f27, f15, dyn # perform operation
fsub.s f24, f27, f15, rdn # perform operation
fsub.s f24, f27, f15, rmm # perform operation
fsub.s f24, f27, f15, rne # perform operation
fsub.s f24, f27, f15, rtz # perform operation
fsub.s f24, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fsub.s f1, f2, f24, dyn # perform operation
fsub.s f1, f2, f24, rdn # perform operation
fsub.s f1, f2, f24, rmm # perform operation
fsub.s f1, f2, f24, rne # perform operation
fsub.s f1, f2, f24, rtz # perform operation
fsub.s f1, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f19, f11, f9, dyn # perform operation
fsub.s f19, f11, f9, rdn # perform operation
fsub.s f19, f11, f9, rmm # perform operation
fsub.s f19, f11, f9, rne # perform operation
fsub.s f19, f11, f9, rtz # perform operation
fsub.s f19, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fsub.s f19, f31, f27, dyn # perform operation
fsub.s f19, f31, f27, rdn # perform operation
fsub.s f19, f31, f27, rmm # perform operation
fsub.s f19, f31, f27, rne # perform operation
fsub.s f19, f31, f27, rtz # perform operation
fsub.s f19, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
fsub.s f15, f2, f29, dyn # perform operation
fsub.s f15, f2, f29, rdn # perform operation
fsub.s f15, f2, f29, rmm # perform operation
fsub.s f15, f2, f29, rne # perform operation
fsub.s f15, f2, f29, rtz # perform operation
fsub.s f15, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f7, f14, f17, dyn # perform operation
fsub.s f7, f14, f17, rdn # perform operation
fsub.s f7, f14, f17, rmm # perform operation
fsub.s f7, f14, f17, rne # perform operation
fsub.s f7, f14, f17, rtz # perform operation
fsub.s f7, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fsub.s f18, f3, f1, dyn # perform operation
fsub.s f18, f3, f1, rdn # perform operation
fsub.s f18, f3, f1, rmm # perform operation
fsub.s f18, f3, f1, rne # perform operation
fsub.s f18, f3, f1, rtz # perform operation
fsub.s f18, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
fsub.s f11, f25, f16, dyn # perform operation
fsub.s f11, f25, f16, rdn # perform operation
fsub.s f11, f25, f16, rmm # perform operation
fsub.s f11, f25, f16, rne # perform operation
fsub.s f11, f25, f16, rtz # perform operation
fsub.s f11, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fsub.s f11, f2, f7, dyn # perform operation
fsub.s f11, f2, f7, rdn # perform operation
fsub.s f11, f2, f7, rmm # perform operation
fsub.s f11, f2, f7, rne # perform operation
fsub.s f11, f2, f7, rtz # perform operation
fsub.s f11, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fsub.s f21, f25, f9, dyn # perform operation
fsub.s f21, f25, f9, rdn # perform operation
fsub.s f21, f25, f9, rmm # perform operation
fsub.s f21, f25, f9, rne # perform operation
fsub.s f21, f25, f9, rtz # perform operation
fsub.s f21, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fsub.s f5, f10, f30, dyn # perform operation
fsub.s f5, f10, f30, rdn # perform operation
fsub.s f5, f10, f30, rmm # perform operation
fsub.s f5, f10, f30, rne # perform operation
fsub.s f5, f10, f30, rtz # perform operation
fsub.s f5, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fsub.s f27, f10, f18, dyn # perform operation
fsub.s f27, f10, f18, rdn # perform operation
fsub.s f27, f10, f18, rmm # perform operation
fsub.s f27, f10, f18, rne # perform operation
fsub.s f27, f10, f18, rtz # perform operation
fsub.s f27, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f18, f22, f30, dyn # perform operation
fsub.s f18, f22, f30, rdn # perform operation
fsub.s f18, f22, f30, rmm # perform operation
fsub.s f18, f22, f30, rne # perform operation
fsub.s f18, f22, f30, rtz # perform operation
fsub.s f18, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f24, f19, f20, dyn # perform operation
fsub.s f24, f19, f20, rdn # perform operation
fsub.s f24, f19, f20, rmm # perform operation
fsub.s f24, f19, f20, rne # perform operation
fsub.s f24, f19, f20, rtz # perform operation
fsub.s f24, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fsub.s f21, f23, f3, dyn # perform operation
fsub.s f21, f23, f3, rdn # perform operation
fsub.s f21, f23, f3, rmm # perform operation
fsub.s f21, f23, f3, rne # perform operation
fsub.s f21, f23, f3, rtz # perform operation
fsub.s f21, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fsub.s f18, f3, f27, dyn # perform operation
fsub.s f18, f3, f27, rdn # perform operation
fsub.s f18, f3, f27, rmm # perform operation
fsub.s f18, f3, f27, rne # perform operation
fsub.s f18, f3, f27, rtz # perform operation
fsub.s f18, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fsub.s f24, f15, f2, dyn # perform operation
fsub.s f24, f15, f2, rdn # perform operation
fsub.s f24, f15, f2, rmm # perform operation
fsub.s f24, f15, f2, rne # perform operation
fsub.s f24, f15, f2, rtz # perform operation
fsub.s f24, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fsub.s f22, f31, f3, dyn # perform operation
fsub.s f22, f31, f3, rdn # perform operation
fsub.s f22, f31, f3, rmm # perform operation
fsub.s f22, f31, f3, rne # perform operation
fsub.s f22, f31, f3, rtz # perform operation
fsub.s f22, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fsub.s f20, f22, f18, dyn # perform operation
fsub.s f20, f22, f18, rdn # perform operation
fsub.s f20, f22, f18, rmm # perform operation
fsub.s f20, f22, f18, rne # perform operation
fsub.s f20, f22, f18, rtz # perform operation
fsub.s f20, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fsub.s f20, f11, f8, dyn # perform operation
fsub.s f20, f11, f8, rdn # perform operation
fsub.s f20, f11, f8, rmm # perform operation
fsub.s f20, f11, f8, rne # perform operation
fsub.s f20, f11, f8, rtz # perform operation
fsub.s f20, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f8, f25, f10, dyn # perform operation
fsub.s f8, f25, f10, rdn # perform operation
fsub.s f8, f25, f10, rmm # perform operation
fsub.s f8, f25, f10, rne # perform operation
fsub.s f8, f25, f10, rtz # perform operation
fsub.s f8, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fsub.s f2, f8, f23, dyn # perform operation
fsub.s f2, f8, f23, rdn # perform operation
fsub.s f2, f8, f23, rmm # perform operation
fsub.s f2, f8, f23, rne # perform operation
fsub.s f2, f8, f23, rtz # perform operation
fsub.s f2, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsub.s f8, f14, f10, dyn # perform operation
fsub.s f8, f14, f10, rdn # perform operation
fsub.s f8, f14, f10, rmm # perform operation
fsub.s f8, f14, f10, rne # perform operation
fsub.s f8, f14, f10, rtz # perform operation
fsub.s f8, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f14, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fsub.s f7, f18, f20, dyn # perform operation
fsub.s f7, f18, f20, rdn # perform operation
fsub.s f7, f18, f20, rmm # perform operation
fsub.s f7, f18, f20, rne # perform operation
fsub.s f7, f18, f20, rtz # perform operation
fsub.s f7, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f1, f24, f11, dyn # perform operation
fsub.s f1, f24, f11, rdn # perform operation
fsub.s f1, f24, f11, rmm # perform operation
fsub.s f1, f24, f11, rne # perform operation
fsub.s f1, f24, f11, rtz # perform operation
fsub.s f1, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fsub.s f19, f26, f5, dyn # perform operation
fsub.s f19, f26, f5, rdn # perform operation
fsub.s f19, f26, f5, rmm # perform operation
fsub.s f19, f26, f5, rne # perform operation
fsub.s f19, f26, f5, rtz # perform operation
fsub.s f19, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fsub.s f21, f19, f8, dyn # perform operation
fsub.s f21, f19, f8, rdn # perform operation
fsub.s f21, f19, f8, rmm # perform operation
fsub.s f21, f19, f8, rne # perform operation
fsub.s f21, f19, f8, rtz # perform operation
fsub.s f21, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fsub.s f18, f1, f20, dyn # perform operation
fsub.s f18, f1, f20, rdn # perform operation
fsub.s f18, f1, f20, rmm # perform operation
fsub.s f18, f1, f20, rne # perform operation
fsub.s f18, f1, f20, rtz # perform operation
fsub.s f18, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fsub.s f17, f10, f6, dyn # perform operation
fsub.s f17, f10, f6, rdn # perform operation
fsub.s f17, f10, f6, rmm # perform operation
fsub.s f17, f10, f6, rne # perform operation
fsub.s f17, f10, f6, rtz # perform operation
fsub.s f17, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f18, f28, f20, dyn # perform operation
fsub.s f18, f28, f20, rdn # perform operation
fsub.s f18, f28, f20, rmm # perform operation
fsub.s f18, f28, f20, rne # perform operation
fsub.s f18, f28, f20, rtz # perform operation
fsub.s f18, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsub.s f9, f7, f8, dyn # perform operation
fsub.s f9, f7, f8, rdn # perform operation
fsub.s f9, f7, f8, rmm # perform operation
fsub.s f9, f7, f8, rne # perform operation
fsub.s f9, f7, f8, rtz # perform operation
fsub.s f9, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fsub.s f24, f25, f19, dyn # perform operation
fsub.s f24, f25, f19, rdn # perform operation
fsub.s f24, f25, f19, rmm # perform operation
fsub.s f24, f25, f19, rne # perform operation
fsub.s f24, f25, f19, rtz # perform operation
fsub.s f24, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fsub.s f31, f18, f3, dyn # perform operation
fsub.s f31, f18, f3, rdn # perform operation
fsub.s f31, f18, f3, rmm # perform operation
fsub.s f31, f18, f3, rne # perform operation
fsub.s f31, f18, f3, rtz # perform operation
fsub.s f31, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fsub.s f14, f6, f8, dyn # perform operation
fsub.s f14, f6, f8, rdn # perform operation
fsub.s f14, f6, f8, rmm # perform operation
fsub.s f14, f6, f8, rne # perform operation
fsub.s f14, f6, f8, rtz # perform operation
fsub.s f14, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsub.s f27, f28, f17, dyn # perform operation
fsub.s f27, f28, f17, rdn # perform operation
fsub.s f27, f28, f17, rmm # perform operation
fsub.s f27, f28, f17, rne # perform operation
fsub.s f27, f28, f17, rtz # perform operation
fsub.s f27, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fsub.s f17, f21, f15, dyn # perform operation
fsub.s f17, f21, f15, rdn # perform operation
fsub.s f17, f21, f15, rmm # perform operation
fsub.s f17, f21, f15, rne # perform operation
fsub.s f17, f21, f15, rtz # perform operation
fsub.s f17, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f21, f8, f16, dyn # perform operation
fsub.s f21, f8, f16, rdn # perform operation
fsub.s f21, f8, f16, rmm # perform operation
fsub.s f21, f8, f16, rne # perform operation
fsub.s f21, f8, f16, rtz # perform operation
fsub.s f21, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fsub.s f21, f23, f31, dyn # perform operation
fsub.s f21, f23, f31, rdn # perform operation
fsub.s f21, f23, f31, rmm # perform operation
fsub.s f21, f23, f31, rne # perform operation
fsub.s f21, f23, f31, rtz # perform operation
fsub.s f21, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsub.s f27, f17, f3, dyn # perform operation
fsub.s f27, f17, f3, rdn # perform operation
fsub.s f27, f17, f3, rmm # perform operation
fsub.s f27, f17, f3, rne # perform operation
fsub.s f27, f17, f3, rtz # perform operation
fsub.s f27, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsub.s f27, f11, f2, dyn # perform operation
fsub.s f27, f11, f2, rdn # perform operation
fsub.s f27, f11, f2, rmm # perform operation
fsub.s f27, f11, f2, rne # perform operation
fsub.s f27, f11, f2, rtz # perform operation
fsub.s f27, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fsub.s f26, f13, f11, dyn # perform operation
fsub.s f26, f13, f11, rdn # perform operation
fsub.s f26, f13, f11, rmm # perform operation
fsub.s f26, f13, f11, rne # perform operation
fsub.s f26, f13, f11, rtz # perform operation
fsub.s f26, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f18, f31, f14, dyn # perform operation
fsub.s f18, f31, f14, rdn # perform operation
fsub.s f18, f31, f14, rmm # perform operation
fsub.s f18, f31, f14, rne # perform operation
fsub.s f18, f31, f14, rtz # perform operation
fsub.s f18, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fsub.s f29, f26, f6, dyn # perform operation
fsub.s f29, f26, f6, rdn # perform operation
fsub.s f29, f26, f6, rmm # perform operation
fsub.s f29, f26, f6, rne # perform operation
fsub.s f29, f26, f6, rtz # perform operation
fsub.s f29, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fsub.s f12, f29, f15, dyn # perform operation
fsub.s f12, f29, f15, rdn # perform operation
fsub.s f12, f29, f15, rmm # perform operation
fsub.s f12, f29, f15, rne # perform operation
fsub.s f12, f29, f15, rtz # perform operation
fsub.s f12, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fsub.s f23, f8, f27, dyn # perform operation
fsub.s f23, f8, f27, rdn # perform operation
fsub.s f23, f8, f27, rmm # perform operation
fsub.s f23, f8, f27, rne # perform operation
fsub.s f23, f8, f27, rtz # perform operation
fsub.s f23, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fsub.s f19, f15, f10, dyn # perform operation
fsub.s f19, f15, f10, rdn # perform operation
fsub.s f19, f15, f10, rmm # perform operation
fsub.s f19, f15, f10, rne # perform operation
fsub.s f19, f15, f10, rtz # perform operation
fsub.s f19, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fsub.s f25, f26, f8, dyn # perform operation
fsub.s f25, f26, f8, rdn # perform operation
fsub.s f25, f26, f8, rmm # perform operation
fsub.s f25, f26, f8, rne # perform operation
fsub.s f25, f26, f8, rtz # perform operation
fsub.s f25, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fsub.s f19, f10, f31, dyn # perform operation
fsub.s f19, f10, f31, rdn # perform operation
fsub.s f19, f10, f31, rmm # perform operation
fsub.s f19, f10, f31, rne # perform operation
fsub.s f19, f10, f31, rtz # perform operation
fsub.s f19, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f20, f31, f10, dyn # perform operation
fsub.s f20, f31, f10, rdn # perform operation
fsub.s f20, f31, f10, rmm # perform operation
fsub.s f20, f31, f10, rne # perform operation
fsub.s f20, f31, f10, rtz # perform operation
fsub.s f20, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f21, f18, f10, dyn # perform operation
fsub.s f21, f18, f10, rdn # perform operation
fsub.s f21, f18, f10, rmm # perform operation
fsub.s f21, f18, f10, rne # perform operation
fsub.s f21, f18, f10, rtz # perform operation
fsub.s f21, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fsub.s f20, f9, f30, dyn # perform operation
fsub.s f20, f9, f30, rdn # perform operation
fsub.s f20, f9, f30, rmm # perform operation
fsub.s f20, f9, f30, rne # perform operation
fsub.s f20, f9, f30, rtz # perform operation
fsub.s f20, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fsub.s f11, f26, f15, dyn # perform operation
fsub.s f11, f26, f15, rdn # perform operation
fsub.s f11, f26, f15, rmm # perform operation
fsub.s f11, f26, f15, rne # perform operation
fsub.s f11, f26, f15, rtz # perform operation
fsub.s f11, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f22, f7, f31, dyn # perform operation
fsub.s f22, f7, f31, rdn # perform operation
fsub.s f22, f7, f31, rmm # perform operation
fsub.s f22, f7, f31, rne # perform operation
fsub.s f22, f7, f31, rtz # perform operation
fsub.s f22, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fsub.s f9, f24, f7, dyn # perform operation
fsub.s f9, f24, f7, rdn # perform operation
fsub.s f9, f24, f7, rmm # perform operation
fsub.s f9, f24, f7, rne # perform operation
fsub.s f9, f24, f7, rtz # perform operation
fsub.s f9, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f5, f12, f3, dyn # perform operation
fsub.s f5, f12, f3, rdn # perform operation
fsub.s f5, f12, f3, rmm # perform operation
fsub.s f5, f12, f3, rne # perform operation
fsub.s f5, f12, f3, rtz # perform operation
fsub.s f5, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fsub.s f17, f15, f24, dyn # perform operation
fsub.s f17, f15, f24, rdn # perform operation
fsub.s f17, f15, f24, rmm # perform operation
fsub.s f17, f15, f24, rne # perform operation
fsub.s f17, f15, f24, rtz # perform operation
fsub.s f17, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f2, f9, f16, dyn # perform operation
fsub.s f2, f9, f16, rdn # perform operation
fsub.s f2, f9, f16, rmm # perform operation
fsub.s f2, f9, f16, rne # perform operation
fsub.s f2, f9, f16, rtz # perform operation
fsub.s f2, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fsub.s f25, f31, f10, dyn # perform operation
fsub.s f25, f31, f10, rdn # perform operation
fsub.s f25, f31, f10, rmm # perform operation
fsub.s f25, f31, f10, rne # perform operation
fsub.s f25, f31, f10, rtz # perform operation
fsub.s f25, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fsub.s f16, f7, f25, dyn # perform operation
fsub.s f16, f7, f25, rdn # perform operation
fsub.s f16, f7, f25, rmm # perform operation
fsub.s f16, f7, f25, rne # perform operation
fsub.s f16, f7, f25, rtz # perform operation
fsub.s f16, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fsub.s f22, f14, f21, dyn # perform operation
fsub.s f22, f14, f21, rdn # perform operation
fsub.s f22, f14, f21, rmm # perform operation
fsub.s f22, f14, f21, rne # perform operation
fsub.s f22, f14, f21, rtz # perform operation
fsub.s f22, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fsub.s f5, f2, f27, dyn # perform operation
fsub.s f5, f2, f27, rdn # perform operation
fsub.s f5, f2, f27, rmm # perform operation
fsub.s f5, f2, f27, rne # perform operation
fsub.s f5, f2, f27, rtz # perform operation
fsub.s f5, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fsub.s f9, f23, f13, dyn # perform operation
fsub.s f9, f23, f13, rdn # perform operation
fsub.s f9, f23, f13, rmm # perform operation
fsub.s f9, f23, f13, rne # perform operation
fsub.s f9, f23, f13, rtz # perform operation
fsub.s f9, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsub.s f9, f25, f31, dyn # perform operation
fsub.s f9, f25, f31, rdn # perform operation
fsub.s f9, f25, f31, rmm # perform operation
fsub.s f9, f25, f31, rne # perform operation
fsub.s f9, f25, f31, rtz # perform operation
fsub.s f9, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fsub.s f6, f28, f22, dyn # perform operation
fsub.s f6, f28, f22, rdn # perform operation
fsub.s f6, f28, f22, rmm # perform operation
fsub.s f6, f28, f22, rne # perform operation
fsub.s f6, f28, f22, rtz # perform operation
fsub.s f6, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fsub.s f7, f2, f26, dyn # perform operation
fsub.s f7, f2, f26, rdn # perform operation
fsub.s f7, f2, f26, rmm # perform operation
fsub.s f7, f2, f26, rne # perform operation
fsub.s f7, f2, f26, rtz # perform operation
fsub.s f7, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f21, f9, f17, dyn # perform operation
fsub.s f21, f9, f17, rdn # perform operation
fsub.s f21, f9, f17, rmm # perform operation
fsub.s f21, f9, f17, rne # perform operation
fsub.s f21, f9, f17, rtz # perform operation
fsub.s f21, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fsub.s f11, f30, f18, dyn # perform operation
fsub.s f11, f30, f18, rdn # perform operation
fsub.s f11, f30, f18, rmm # perform operation
fsub.s f11, f30, f18, rne # perform operation
fsub.s f11, f30, f18, rtz # perform operation
fsub.s f11, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fsub.s f1, f15, f3, dyn # perform operation
fsub.s f1, f15, f3, rdn # perform operation
fsub.s f1, f15, f3, rmm # perform operation
fsub.s f1, f15, f3, rne # perform operation
fsub.s f1, f15, f3, rtz # perform operation
fsub.s f1, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fsub.s f1, f31, f7, dyn # perform operation
fsub.s f1, f31, f7, rdn # perform operation
fsub.s f1, f31, f7, rmm # perform operation
fsub.s f1, f31, f7, rne # perform operation
fsub.s f1, f31, f7, rtz # perform operation
fsub.s f1, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f20, f19, f22, dyn # perform operation
fsub.s f20, f19, f22, rdn # perform operation
fsub.s f20, f19, f22, rmm # perform operation
fsub.s f20, f19, f22, rne # perform operation
fsub.s f20, f19, f22, rtz # perform operation
fsub.s f20, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fsub.s f1, f5, f12, dyn # perform operation
fsub.s f1, f5, f12, rdn # perform operation
fsub.s f1, f5, f12, rmm # perform operation
fsub.s f1, f5, f12, rne # perform operation
fsub.s f1, f5, f12, rtz # perform operation
fsub.s f1, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f29, f24, f9, dyn # perform operation
fsub.s f29, f24, f9, rdn # perform operation
fsub.s f29, f24, f9, rmm # perform operation
fsub.s f29, f24, f9, rne # perform operation
fsub.s f29, f24, f9, rtz # perform operation
fsub.s f29, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f29, f17, f9, dyn # perform operation
fsub.s f29, f17, f9, rdn # perform operation
fsub.s f29, f17, f9, rmm # perform operation
fsub.s f29, f17, f9, rne # perform operation
fsub.s f29, f17, f9, rtz # perform operation
fsub.s f29, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fsub.s f21, f2, f7, dyn # perform operation
fsub.s f21, f2, f7, rdn # perform operation
fsub.s f21, f2, f7, rmm # perform operation
fsub.s f21, f2, f7, rne # perform operation
fsub.s f21, f2, f7, rtz # perform operation
fsub.s f21, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f22, f19, f7, dyn # perform operation
fsub.s f22, f19, f7, rdn # perform operation
fsub.s f22, f19, f7, rmm # perform operation
fsub.s f22, f19, f7, rne # perform operation
fsub.s f22, f19, f7, rtz # perform operation
fsub.s f22, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsub.s f14, f24, f5, dyn # perform operation
fsub.s f14, f24, f5, rdn # perform operation
fsub.s f14, f24, f5, rmm # perform operation
fsub.s f14, f24, f5, rne # perform operation
fsub.s f14, f24, f5, rtz # perform operation
fsub.s f14, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f17, f15, f13, dyn # perform operation
fsub.s f17, f15, f13, rdn # perform operation
fsub.s f17, f15, f13, rmm # perform operation
fsub.s f17, f15, f13, rne # perform operation
fsub.s f17, f15, f13, rtz # perform operation
fsub.s f17, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f31, f5, f29, dyn # perform operation
fsub.s f31, f5, f29, rdn # perform operation
fsub.s f31, f5, f29, rmm # perform operation
fsub.s f31, f5, f29, rne # perform operation
fsub.s f31, f5, f29, rtz # perform operation
fsub.s f31, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fsub.s f6, f25, f13, dyn # perform operation
fsub.s f6, f25, f13, rdn # perform operation
fsub.s f6, f25, f13, rmm # perform operation
fsub.s f6, f25, f13, rne # perform operation
fsub.s f6, f25, f13, rtz # perform operation
fsub.s f6, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fsub.s f15, f26, f30, dyn # perform operation
fsub.s f15, f26, f30, rdn # perform operation
fsub.s f15, f26, f30, rmm # perform operation
fsub.s f15, f26, f30, rne # perform operation
fsub.s f15, f26, f30, rtz # perform operation
fsub.s f15, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fsub.s f19, f29, f13, dyn # perform operation
fsub.s f19, f29, f13, rdn # perform operation
fsub.s f19, f29, f13, rmm # perform operation
fsub.s f19, f29, f13, rne # perform operation
fsub.s f19, f29, f13, rtz # perform operation
fsub.s f19, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fsub.s f13, f21, f8, dyn # perform operation
fsub.s f13, f21, f8, rdn # perform operation
fsub.s f13, f21, f8, rmm # perform operation
fsub.s f13, f21, f8, rne # perform operation
fsub.s f13, f21, f8, rtz # perform operation
fsub.s f13, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f5, f20, f22, dyn # perform operation
fsub.s f5, f20, f22, rdn # perform operation
fsub.s f5, f20, f22, rmm # perform operation
fsub.s f5, f20, f22, rne # perform operation
fsub.s f5, f20, f22, rtz # perform operation
fsub.s f5, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f31, f5, f13, dyn # perform operation
fsub.s f31, f5, f13, rdn # perform operation
fsub.s f31, f5, f13, rmm # perform operation
fsub.s f31, f5, f13, rne # perform operation
fsub.s f31, f5, f13, rtz # perform operation
fsub.s f31, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f27, f28, f7, dyn # perform operation
fsub.s f27, f28, f7, rdn # perform operation
fsub.s f27, f28, f7, rmm # perform operation
fsub.s f27, f28, f7, rne # perform operation
fsub.s f27, f28, f7, rtz # perform operation
fsub.s f27, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fsub.s f25, f24, f5, dyn # perform operation
fsub.s f25, f24, f5, rdn # perform operation
fsub.s f25, f24, f5, rmm # perform operation
fsub.s f25, f24, f5, rne # perform operation
fsub.s f25, f24, f5, rtz # perform operation
fsub.s f25, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f20, f17, f12, dyn # perform operation
fsub.s f20, f17, f12, rdn # perform operation
fsub.s f20, f17, f12, rmm # perform operation
fsub.s f20, f17, f12, rne # perform operation
fsub.s f20, f17, f12, rtz # perform operation
fsub.s f20, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fsub.s f15, f12, f18, dyn # perform operation
fsub.s f15, f12, f18, rdn # perform operation
fsub.s f15, f12, f18, rmm # perform operation
fsub.s f15, f12, f18, rne # perform operation
fsub.s f15, f12, f18, rtz # perform operation
fsub.s f15, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fsub.s f7, f27, f28, dyn # perform operation
fsub.s f7, f27, f28, rdn # perform operation
fsub.s f7, f27, f28, rmm # perform operation
fsub.s f7, f27, f28, rne # perform operation
fsub.s f7, f27, f28, rtz # perform operation
fsub.s f7, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f2, f23, f17, dyn # perform operation
fsub.s f2, f23, f17, rdn # perform operation
fsub.s f2, f23, f17, rmm # perform operation
fsub.s f2, f23, f17, rne # perform operation
fsub.s f2, f23, f17, rtz # perform operation
fsub.s f2, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsub.s f14, f21, f17, dyn # perform operation
fsub.s f14, f21, f17, rdn # perform operation
fsub.s f14, f21, f17, rmm # perform operation
fsub.s f14, f21, f17, rne # perform operation
fsub.s f14, f21, f17, rtz # perform operation
fsub.s f14, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fsub.s f31, f30, f3, dyn # perform operation
fsub.s f31, f30, f3, rdn # perform operation
fsub.s f31, f30, f3, rmm # perform operation
fsub.s f31, f30, f3, rne # perform operation
fsub.s f31, f30, f3, rtz # perform operation
fsub.s f31, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fsub.s f23, f16, f20, dyn # perform operation
fsub.s f23, f16, f20, rdn # perform operation
fsub.s f23, f16, f20, rmm # perform operation
fsub.s f23, f16, f20, rne # perform operation
fsub.s f23, f16, f20, rtz # perform operation
fsub.s f23, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fsub.s f23, f30, f15, dyn # perform operation
fsub.s f23, f30, f15, rdn # perform operation
fsub.s f23, f30, f15, rmm # perform operation
fsub.s f23, f30, f15, rne # perform operation
fsub.s f23, f30, f15, rtz # perform operation
fsub.s f23, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fsub.s f11, f22, f13, dyn # perform operation
fsub.s f11, f22, f13, rdn # perform operation
fsub.s f11, f22, f13, rmm # perform operation
fsub.s f11, f22, f13, rne # perform operation
fsub.s f11, f22, f13, rtz # perform operation
fsub.s f11, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fsub.s f20, f19, f13, dyn # perform operation
fsub.s f20, f19, f13, rdn # perform operation
fsub.s f20, f19, f13, rmm # perform operation
fsub.s f20, f19, f13, rne # perform operation
fsub.s f20, f19, f13, rtz # perform operation
fsub.s f20, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f5, f2, f31, dyn # perform operation
fsub.s f5, f2, f31, rdn # perform operation
fsub.s f5, f2, f31, rmm # perform operation
fsub.s f5, f2, f31, rne # perform operation
fsub.s f5, f2, f31, rtz # perform operation
fsub.s f5, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fsub.s f15, f1, f18, dyn # perform operation
fsub.s f15, f1, f18, rdn # perform operation
fsub.s f15, f1, f18, rmm # perform operation
fsub.s f15, f1, f18, rne # perform operation
fsub.s f15, f1, f18, rtz # perform operation
fsub.s f15, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f26, f16, f13, dyn # perform operation
fsub.s f26, f16, f13, rdn # perform operation
fsub.s f26, f16, f13, rmm # perform operation
fsub.s f26, f16, f13, rne # perform operation
fsub.s f26, f16, f13, rtz # perform operation
fsub.s f26, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsub.s f9, f20, f29, dyn # perform operation
fsub.s f9, f20, f29, rdn # perform operation
fsub.s f9, f20, f29, rmm # perform operation
fsub.s f9, f20, f29, rne # perform operation
fsub.s f9, f20, f29, rtz # perform operation
fsub.s f9, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fsub.s f31, f23, f5, dyn # perform operation
fsub.s f31, f23, f5, rdn # perform operation
fsub.s f31, f23, f5, rmm # perform operation
fsub.s f31, f23, f5, rne # perform operation
fsub.s f31, f23, f5, rtz # perform operation
fsub.s f31, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsub.s f11, f10, f23, dyn # perform operation
fsub.s f11, f10, f23, rdn # perform operation
fsub.s f11, f10, f23, rmm # perform operation
fsub.s f11, f10, f23, rne # perform operation
fsub.s f11, f10, f23, rtz # perform operation
fsub.s f11, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fsub.s f20, f3, f14, dyn # perform operation
fsub.s f20, f3, f14, rdn # perform operation
fsub.s f20, f3, f14, rmm # perform operation
fsub.s f20, f3, f14, rne # perform operation
fsub.s f20, f3, f14, rtz # perform operation
fsub.s f20, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f25, f26, f27, dyn # perform operation
fsub.s f25, f26, f27, rdn # perform operation
fsub.s f25, f26, f27, rmm # perform operation
fsub.s f25, f26, f27, rne # perform operation
fsub.s f25, f26, f27, rtz # perform operation
fsub.s f25, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fsub.s f6, f9, f28, dyn # perform operation
fsub.s f6, f9, f28, rdn # perform operation
fsub.s f6, f9, f28, rmm # perform operation
fsub.s f6, f9, f28, rne # perform operation
fsub.s f6, f9, f28, rtz # perform operation
fsub.s f6, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f2, f9, f11, dyn # perform operation
fsub.s f2, f9, f11, rdn # perform operation
fsub.s f2, f9, f11, rmm # perform operation
fsub.s f2, f9, f11, rne # perform operation
fsub.s f2, f9, f11, rtz # perform operation
fsub.s f2, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f30, f18, f17, dyn # perform operation
fsub.s f30, f18, f17, rdn # perform operation
fsub.s f30, f18, f17, rmm # perform operation
fsub.s f30, f18, f17, rne # perform operation
fsub.s f30, f18, f17, rtz # perform operation
fsub.s f30, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f19, f23, f9, dyn # perform operation
fsub.s f19, f23, f9, rdn # perform operation
fsub.s f19, f23, f9, rmm # perform operation
fsub.s f19, f23, f9, rne # perform operation
fsub.s f19, f23, f9, rtz # perform operation
fsub.s f19, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f26, f19, f31, dyn # perform operation
fsub.s f26, f19, f31, rdn # perform operation
fsub.s f26, f19, f31, rmm # perform operation
fsub.s f26, f19, f31, rne # perform operation
fsub.s f26, f19, f31, rtz # perform operation
fsub.s f26, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fsub.s f13, f20, f23, dyn # perform operation
fsub.s f13, f20, f23, rdn # perform operation
fsub.s f13, f20, f23, rmm # perform operation
fsub.s f13, f20, f23, rne # perform operation
fsub.s f13, f20, f23, rtz # perform operation
fsub.s f13, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f27, f15, f22, dyn # perform operation
fsub.s f27, f15, f22, rdn # perform operation
fsub.s f27, f15, f22, rmm # perform operation
fsub.s f27, f15, f22, rne # perform operation
fsub.s f27, f15, f22, rtz # perform operation
fsub.s f27, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fsub.s f29, f15, f14, dyn # perform operation
fsub.s f29, f15, f14, rdn # perform operation
fsub.s f29, f15, f14, rmm # perform operation
fsub.s f29, f15, f14, rne # perform operation
fsub.s f29, f15, f14, rtz # perform operation
fsub.s f29, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fsub.s f24, f20, f9, dyn # perform operation
fsub.s f24, f20, f9, rdn # perform operation
fsub.s f24, f20, f9, rmm # perform operation
fsub.s f24, f20, f9, rne # perform operation
fsub.s f24, f20, f9, rtz # perform operation
fsub.s f24, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fsub.s f10, f23, f28, dyn # perform operation
fsub.s f10, f23, f28, rdn # perform operation
fsub.s f10, f23, f28, rmm # perform operation
fsub.s f10, f23, f28, rne # perform operation
fsub.s f10, f23, f28, rtz # perform operation
fsub.s f10, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fsub.s f18, f21, f3, dyn # perform operation
fsub.s f18, f21, f3, rdn # perform operation
fsub.s f18, f21, f3, rmm # perform operation
fsub.s f18, f21, f3, rne # perform operation
fsub.s f18, f21, f3, rtz # perform operation
fsub.s f18, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fsub.s f27, f18, f6, dyn # perform operation
fsub.s f27, f18, f6, rdn # perform operation
fsub.s f27, f18, f6, rmm # perform operation
fsub.s f27, f18, f6, rne # perform operation
fsub.s f27, f18, f6, rtz # perform operation
fsub.s f27, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fsub.s f7, f14, f22, dyn # perform operation
fsub.s f7, f14, f22, rdn # perform operation
fsub.s f7, f14, f22, rmm # perform operation
fsub.s f7, f14, f22, rne # perform operation
fsub.s f7, f14, f22, rtz # perform operation
fsub.s f7, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fsub.s f29, f31, f30, dyn # perform operation
fsub.s f29, f31, f30, rdn # perform operation
fsub.s f29, f31, f30, rmm # perform operation
fsub.s f29, f31, f30, rne # perform operation
fsub.s f29, f31, f30, rtz # perform operation
fsub.s f29, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f1, f27, f22, dyn # perform operation
fsub.s f1, f27, f22, rdn # perform operation
fsub.s f1, f27, f22, rmm # perform operation
fsub.s f1, f27, f22, rne # perform operation
fsub.s f1, f27, f22, rtz # perform operation
fsub.s f1, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fsub.s f5, f14, f30, dyn # perform operation
fsub.s f5, f14, f30, rdn # perform operation
fsub.s f5, f14, f30, rmm # perform operation
fsub.s f5, f14, f30, rne # perform operation
fsub.s f5, f14, f30, rtz # perform operation
fsub.s f5, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fsub.s f2, f6, f10, dyn # perform operation
fsub.s f2, f6, f10, rdn # perform operation
fsub.s f2, f6, f10, rmm # perform operation
fsub.s f2, f6, f10, rne # perform operation
fsub.s f2, f6, f10, rtz # perform operation
fsub.s f2, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsub.s f29, f18, f22, dyn # perform operation
fsub.s f29, f18, f22, rdn # perform operation
fsub.s f29, f18, f22, rmm # perform operation
fsub.s f29, f18, f22, rne # perform operation
fsub.s f29, f18, f22, rtz # perform operation
fsub.s f29, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fsub.s f10, f7, f24, dyn # perform operation
fsub.s f10, f7, f24, rdn # perform operation
fsub.s f10, f7, f24, rmm # perform operation
fsub.s f10, f7, f24, rne # perform operation
fsub.s f10, f7, f24, rtz # perform operation
fsub.s f10, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fsub.s f9, f2, f8, dyn # perform operation
fsub.s f9, f2, f8, rdn # perform operation
fsub.s f9, f2, f8, rmm # perform operation
fsub.s f9, f2, f8, rne # perform operation
fsub.s f9, f2, f8, rtz # perform operation
fsub.s f9, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fsub.s f6, f12, f7, dyn # perform operation
fsub.s f6, f12, f7, rdn # perform operation
fsub.s f6, f12, f7, rmm # perform operation
fsub.s f6, f12, f7, rne # perform operation
fsub.s f6, f12, f7, rtz # perform operation
fsub.s f6, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fsub.s f24, f7, f21, dyn # perform operation
fsub.s f24, f7, f21, rdn # perform operation
fsub.s f24, f7, f21, rmm # perform operation
fsub.s f24, f7, f21, rne # perform operation
fsub.s f24, f7, f21, rtz # perform operation
fsub.s f24, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f11, f7, f14, dyn # perform operation
fsub.s f11, f7, f14, rdn # perform operation
fsub.s f11, f7, f14, rmm # perform operation
fsub.s f11, f7, f14, rne # perform operation
fsub.s f11, f7, f14, rtz # perform operation
fsub.s f11, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsub.s f23, f8, f25, dyn # perform operation
fsub.s f23, f8, f25, rdn # perform operation
fsub.s f23, f8, f25, rmm # perform operation
fsub.s f23, f8, f25, rne # perform operation
fsub.s f23, f8, f25, rtz # perform operation
fsub.s f23, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fsub.s f10, f19, f6, dyn # perform operation
fsub.s f10, f19, f6, rdn # perform operation
fsub.s f10, f19, f6, rmm # perform operation
fsub.s f10, f19, f6, rne # perform operation
fsub.s f10, f19, f6, rtz # perform operation
fsub.s f10, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fsub.s f28, f14, f25, dyn # perform operation
fsub.s f28, f14, f25, rdn # perform operation
fsub.s f28, f14, f25, rmm # perform operation
fsub.s f28, f14, f25, rne # perform operation
fsub.s f28, f14, f25, rtz # perform operation
fsub.s f28, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fsub.s f9, f28, f15, dyn # perform operation
fsub.s f9, f28, f15, rdn # perform operation
fsub.s f9, f28, f15, rmm # perform operation
fsub.s f9, f28, f15, rne # perform operation
fsub.s f9, f28, f15, rtz # perform operation
fsub.s f9, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fsub.s f20, f7, f11, dyn # perform operation
fsub.s f20, f7, f11, rdn # perform operation
fsub.s f20, f7, f11, rmm # perform operation
fsub.s f20, f7, f11, rne # perform operation
fsub.s f20, f7, f11, rtz # perform operation
fsub.s f20, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fsub.s f8, f26, f3, dyn # perform operation
fsub.s f8, f26, f3, rdn # perform operation
fsub.s f8, f26, f3, rmm # perform operation
fsub.s f8, f26, f3, rne # perform operation
fsub.s f8, f26, f3, rtz # perform operation
fsub.s f8, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fsub.s f30, f12, f25, dyn # perform operation
fsub.s f30, f12, f25, rdn # perform operation
fsub.s f30, f12, f25, rmm # perform operation
fsub.s f30, f12, f25, rne # perform operation
fsub.s f30, f12, f25, rtz # perform operation
fsub.s f30, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f1, f26, f27, dyn # perform operation
fsub.s f1, f26, f27, rdn # perform operation
fsub.s f1, f26, f27, rmm # perform operation
fsub.s f1, f26, f27, rne # perform operation
fsub.s f1, f26, f27, rtz # perform operation
fsub.s f1, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fsub.s f21, f16, f24, dyn # perform operation
fsub.s f21, f16, f24, rdn # perform operation
fsub.s f21, f16, f24, rmm # perform operation
fsub.s f21, f16, f24, rne # perform operation
fsub.s f21, f16, f24, rtz # perform operation
fsub.s f21, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fsub.s f11, f13, f29, dyn # perform operation
fsub.s f11, f13, f29, rdn # perform operation
fsub.s f11, f13, f29, rmm # perform operation
fsub.s f11, f13, f29, rne # perform operation
fsub.s f11, f13, f29, rtz # perform operation
fsub.s f11, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fsub.s f12, f9, f27, dyn # perform operation
fsub.s f12, f9, f27, rdn # perform operation
fsub.s f12, f9, f27, rmm # perform operation
fsub.s f12, f9, f27, rne # perform operation
fsub.s f12, f9, f27, rtz # perform operation
fsub.s f12, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f18, f1, f20, dyn # perform operation
fsub.s f18, f1, f20, rdn # perform operation
fsub.s f18, f1, f20, rmm # perform operation
fsub.s f18, f1, f20, rne # perform operation
fsub.s f18, f1, f20, rtz # perform operation
fsub.s f18, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f2, f17, f7, dyn # perform operation
fsub.s f2, f17, f7, rdn # perform operation
fsub.s f2, f17, f7, rmm # perform operation
fsub.s f2, f17, f7, rne # perform operation
fsub.s f2, f17, f7, rtz # perform operation
fsub.s f2, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fsub.s f23, f25, f24, dyn # perform operation
fsub.s f23, f25, f24, rdn # perform operation
fsub.s f23, f25, f24, rmm # perform operation
fsub.s f23, f25, f24, rne # perform operation
fsub.s f23, f25, f24, rtz # perform operation
fsub.s f23, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fsub.s f28, f15, f25, dyn # perform operation
fsub.s f28, f15, f25, rdn # perform operation
fsub.s f28, f15, f25, rmm # perform operation
fsub.s f28, f15, f25, rne # perform operation
fsub.s f28, f15, f25, rtz # perform operation
fsub.s f28, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f6, f11, f12, dyn # perform operation
fsub.s f6, f11, f12, rdn # perform operation
fsub.s f6, f11, f12, rmm # perform operation
fsub.s f6, f11, f12, rne # perform operation
fsub.s f6, f11, f12, rtz # perform operation
fsub.s f6, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fsub.s f12, f21, f16, dyn # perform operation
fsub.s f12, f21, f16, rdn # perform operation
fsub.s f12, f21, f16, rmm # perform operation
fsub.s f12, f21, f16, rne # perform operation
fsub.s f12, f21, f16, rtz # perform operation
fsub.s f12, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fsub.s f17, f2, f31, dyn # perform operation
fsub.s f17, f2, f31, rdn # perform operation
fsub.s f17, f2, f31, rmm # perform operation
fsub.s f17, f2, f31, rne # perform operation
fsub.s f17, f2, f31, rtz # perform operation
fsub.s f17, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f27, f30, f17, dyn # perform operation
fsub.s f27, f30, f17, rdn # perform operation
fsub.s f27, f30, f17, rmm # perform operation
fsub.s f27, f30, f17, rne # perform operation
fsub.s f27, f30, f17, rtz # perform operation
fsub.s f27, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fsub.s f23, f29, f24, dyn # perform operation
fsub.s f23, f29, f24, rdn # perform operation
fsub.s f23, f29, f24, rmm # perform operation
fsub.s f23, f29, f24, rne # perform operation
fsub.s f23, f29, f24, rtz # perform operation
fsub.s f23, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fsub.s f14, f1, f30, dyn # perform operation
fsub.s f14, f1, f30, rdn # perform operation
fsub.s f14, f1, f30, rmm # perform operation
fsub.s f14, f1, f30, rne # perform operation
fsub.s f14, f1, f30, rtz # perform operation
fsub.s f14, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fsub.s f1, f27, f8, dyn # perform operation
fsub.s f1, f27, f8, rdn # perform operation
fsub.s f1, f27, f8, rmm # perform operation
fsub.s f1, f27, f8, rne # perform operation
fsub.s f1, f27, f8, rtz # perform operation
fsub.s f1, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fsub.s f26, f5, f28, dyn # perform operation
fsub.s f26, f5, f28, rdn # perform operation
fsub.s f26, f5, f28, rmm # perform operation
fsub.s f26, f5, f28, rne # perform operation
fsub.s f26, f5, f28, rtz # perform operation
fsub.s f26, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fsub.s f23, f14, f25, dyn # perform operation
fsub.s f23, f14, f25, rdn # perform operation
fsub.s f23, f14, f25, rmm # perform operation
fsub.s f23, f14, f25, rne # perform operation
fsub.s f23, f14, f25, rtz # perform operation
fsub.s f23, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fsub.s f26, f7, f31, dyn # perform operation
fsub.s f26, f7, f31, rdn # perform operation
fsub.s f26, f7, f31, rmm # perform operation
fsub.s f26, f7, f31, rne # perform operation
fsub.s f26, f7, f31, rtz # perform operation
fsub.s f26, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fsub.s f19, f29, f3, dyn # perform operation
fsub.s f19, f29, f3, rdn # perform operation
fsub.s f19, f29, f3, rmm # perform operation
fsub.s f19, f29, f3, rne # perform operation
fsub.s f19, f29, f3, rtz # perform operation
fsub.s f19, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fsub.s f5, f21, f6, dyn # perform operation
fsub.s f5, f21, f6, rdn # perform operation
fsub.s f5, f21, f6, rmm # perform operation
fsub.s f5, f21, f6, rne # perform operation
fsub.s f5, f21, f6, rtz # perform operation
fsub.s f5, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fsub.s f19, f1, f30, dyn # perform operation
fsub.s f19, f1, f30, rdn # perform operation
fsub.s f19, f1, f30, rmm # perform operation
fsub.s f19, f1, f30, rne # perform operation
fsub.s f19, f1, f30, rtz # perform operation
fsub.s f19, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fsub.s f10, f15, f19, dyn # perform operation
fsub.s f10, f15, f19, rdn # perform operation
fsub.s f10, f15, f19, rmm # perform operation
fsub.s f10, f15, f19, rne # perform operation
fsub.s f10, f15, f19, rtz # perform operation
fsub.s f10, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f30, f12, f13, dyn # perform operation
fsub.s f30, f12, f13, rdn # perform operation
fsub.s f30, f12, f13, rmm # perform operation
fsub.s f30, f12, f13, rne # perform operation
fsub.s f30, f12, f13, rtz # perform operation
fsub.s f30, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fsub.s f10, f30, f29, dyn # perform operation
fsub.s f10, f30, f29, rdn # perform operation
fsub.s f10, f30, f29, rmm # perform operation
fsub.s f10, f30, f29, rne # perform operation
fsub.s f10, f30, f29, rtz # perform operation
fsub.s f10, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f29, f10, f27, dyn # perform operation
fsub.s f29, f10, f27, rdn # perform operation
fsub.s f29, f10, f27, rmm # perform operation
fsub.s f29, f10, f27, rne # perform operation
fsub.s f29, f10, f27, rtz # perform operation
fsub.s f29, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f22, f25, f2, dyn # perform operation
fsub.s f22, f25, f2, rdn # perform operation
fsub.s f22, f25, f2, rmm # perform operation
fsub.s f22, f25, f2, rne # perform operation
fsub.s f22, f25, f2, rtz # perform operation
fsub.s f22, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fsub.s f16, f25, f3, dyn # perform operation
fsub.s f16, f25, f3, rdn # perform operation
fsub.s f16, f25, f3, rmm # perform operation
fsub.s f16, f25, f3, rne # perform operation
fsub.s f16, f25, f3, rtz # perform operation
fsub.s f16, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fsub.s f28, f11, f22, dyn # perform operation
fsub.s f28, f11, f22, rdn # perform operation
fsub.s f28, f11, f22, rmm # perform operation
fsub.s f28, f11, f22, rne # perform operation
fsub.s f28, f11, f22, rtz # perform operation
fsub.s f28, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fsub.s f11, f30, f26, dyn # perform operation
fsub.s f11, f30, f26, rdn # perform operation
fsub.s f11, f30, f26, rmm # perform operation
fsub.s f11, f30, f26, rne # perform operation
fsub.s f11, f30, f26, rtz # perform operation
fsub.s f11, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f30, f13, f3, dyn # perform operation
fsub.s f30, f13, f3, rdn # perform operation
fsub.s f30, f13, f3, rmm # perform operation
fsub.s f30, f13, f3, rne # perform operation
fsub.s f30, f13, f3, rtz # perform operation
fsub.s f30, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f10, f8, f11, dyn # perform operation
fsub.s f10, f8, f11, rdn # perform operation
fsub.s f10, f8, f11, rmm # perform operation
fsub.s f10, f8, f11, rne # perform operation
fsub.s f10, f8, f11, rtz # perform operation
fsub.s f10, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fsub.s f19, f23, f14, dyn # perform operation
fsub.s f19, f23, f14, rdn # perform operation
fsub.s f19, f23, f14, rmm # perform operation
fsub.s f19, f23, f14, rne # perform operation
fsub.s f19, f23, f14, rtz # perform operation
fsub.s f19, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fsub.s f13, f31, f24, dyn # perform operation
fsub.s f13, f31, f24, rdn # perform operation
fsub.s f13, f31, f24, rmm # perform operation
fsub.s f13, f31, f24, rne # perform operation
fsub.s f13, f31, f24, rtz # perform operation
fsub.s f13, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f1, f20, f13, dyn # perform operation
fsub.s f1, f20, f13, rdn # perform operation
fsub.s f1, f20, f13, rmm # perform operation
fsub.s f1, f20, f13, rne # perform operation
fsub.s f1, f20, f13, rtz # perform operation
fsub.s f1, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f8, f15, f25, dyn # perform operation
fsub.s f8, f15, f25, rdn # perform operation
fsub.s f8, f15, f25, rmm # perform operation
fsub.s f8, f15, f25, rne # perform operation
fsub.s f8, f15, f25, rtz # perform operation
fsub.s f8, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fsub.s f13, f9, f30, dyn # perform operation
fsub.s f13, f9, f30, rdn # perform operation
fsub.s f13, f9, f30, rmm # perform operation
fsub.s f13, f9, f30, rne # perform operation
fsub.s f13, f9, f30, rtz # perform operation
fsub.s f13, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fsub.s f25, f12, f28, dyn # perform operation
fsub.s f25, f12, f28, rdn # perform operation
fsub.s f25, f12, f28, rmm # perform operation
fsub.s f25, f12, f28, rne # perform operation
fsub.s f25, f12, f28, rtz # perform operation
fsub.s f25, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fsub.s f16, f25, f13, dyn # perform operation
fsub.s f16, f25, f13, rdn # perform operation
fsub.s f16, f25, f13, rmm # perform operation
fsub.s f16, f25, f13, rne # perform operation
fsub.s f16, f25, f13, rtz # perform operation
fsub.s f16, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f8, 0(x2) # load 0xffffffff from memory into f8
fsub.s f26, f19, f8, dyn # perform operation
fsub.s f26, f19, f8, rdn # perform operation
fsub.s f26, f19, f8, rmm # perform operation
fsub.s f26, f19, f8, rne # perform operation
fsub.s f26, f19, f8, rtz # perform operation
fsub.s f26, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f15, f22, f2, dyn # perform operation
fsub.s f15, f22, f2, rdn # perform operation
fsub.s f15, f22, f2, rmm # perform operation
fsub.s f15, f22, f2, rne # perform operation
fsub.s f15, f22, f2, rtz # perform operation
fsub.s f15, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fsub.s f27, f14, f7, dyn # perform operation
fsub.s f27, f14, f7, rdn # perform operation
fsub.s f27, f14, f7, rmm # perform operation
fsub.s f27, f14, f7, rne # perform operation
fsub.s f27, f14, f7, rtz # perform operation
fsub.s f27, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fsub.s f6, f5, f25, dyn # perform operation
fsub.s f6, f5, f25, rdn # perform operation
fsub.s f6, f5, f25, rmm # perform operation
fsub.s f6, f5, f25, rne # perform operation
fsub.s f6, f5, f25, rtz # perform operation
fsub.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fsub.s f16, f20, f24, dyn # perform operation
fsub.s f16, f20, f24, rdn # perform operation
fsub.s f16, f20, f24, rmm # perform operation
fsub.s f16, f20, f24, rne # perform operation
fsub.s f16, f20, f24, rtz # perform operation
fsub.s f16, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fsub.s f17, f18, f23, dyn # perform operation
fsub.s f17, f18, f23, rdn # perform operation
fsub.s f17, f18, f23, rmm # perform operation
fsub.s f17, f18, f23, rne # perform operation
fsub.s f17, f18, f23, rtz # perform operation
fsub.s f17, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fsub.s f12, f28, f17, dyn # perform operation
fsub.s f12, f28, f17, rdn # perform operation
fsub.s f12, f28, f17, rmm # perform operation
fsub.s f12, f28, f17, rne # perform operation
fsub.s f12, f28, f17, rtz # perform operation
fsub.s f12, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f8, f18, f19, dyn # perform operation
fsub.s f8, f18, f19, rdn # perform operation
fsub.s f8, f18, f19, rmm # perform operation
fsub.s f8, f18, f19, rne # perform operation
fsub.s f8, f18, f19, rtz # perform operation
fsub.s f8, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f12, f30, f23, dyn # perform operation
fsub.s f12, f30, f23, rdn # perform operation
fsub.s f12, f30, f23, rmm # perform operation
fsub.s f12, f30, f23, rne # perform operation
fsub.s f12, f30, f23, rtz # perform operation
fsub.s f12, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fsub.s f23, f19, f1, dyn # perform operation
fsub.s f23, f19, f1, rdn # perform operation
fsub.s f23, f19, f1, rmm # perform operation
fsub.s f23, f19, f1, rne # perform operation
fsub.s f23, f19, f1, rtz # perform operation
fsub.s f23, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fsub.s f22, f5, f9, dyn # perform operation
fsub.s f22, f5, f9, rdn # perform operation
fsub.s f22, f5, f9, rmm # perform operation
fsub.s f22, f5, f9, rne # perform operation
fsub.s f22, f5, f9, rtz # perform operation
fsub.s f22, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fsub.s f2, f30, f5, dyn # perform operation
fsub.s f2, f30, f5, rdn # perform operation
fsub.s f2, f30, f5, rmm # perform operation
fsub.s f2, f30, f5, rne # perform operation
fsub.s f2, f30, f5, rtz # perform operation
fsub.s f2, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f14, f25, f15, dyn # perform operation
fsub.s f14, f25, f15, rdn # perform operation
fsub.s f14, f25, f15, rmm # perform operation
fsub.s f14, f25, f15, rne # perform operation
fsub.s f14, f25, f15, rtz # perform operation
fsub.s f14, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fsub.s f16, f27, f5, dyn # perform operation
fsub.s f16, f27, f5, rdn # perform operation
fsub.s f16, f27, f5, rmm # perform operation
fsub.s f16, f27, f5, rne # perform operation
fsub.s f16, f27, f5, rtz # perform operation
fsub.s f16, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fsub.s f22, f18, f23, dyn # perform operation
fsub.s f22, f18, f23, rdn # perform operation
fsub.s f22, f18, f23, rmm # perform operation
fsub.s f22, f18, f23, rne # perform operation
fsub.s f22, f18, f23, rtz # perform operation
fsub.s f22, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f24, f26, f27, dyn # perform operation
fsub.s f24, f26, f27, rdn # perform operation
fsub.s f24, f26, f27, rmm # perform operation
fsub.s f24, f26, f27, rne # perform operation
fsub.s f24, f26, f27, rtz # perform operation
fsub.s f24, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fsub.s f19, f6, f21, dyn # perform operation
fsub.s f19, f6, f21, rdn # perform operation
fsub.s f19, f6, f21, rmm # perform operation
fsub.s f19, f6, f21, rne # perform operation
fsub.s f19, f6, f21, rtz # perform operation
fsub.s f19, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f13, f29, f10, dyn # perform operation
fsub.s f13, f29, f10, rdn # perform operation
fsub.s f13, f29, f10, rmm # perform operation
fsub.s f13, f29, f10, rne # perform operation
fsub.s f13, f29, f10, rtz # perform operation
fsub.s f13, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsub.s f17, f12, f10, dyn # perform operation
fsub.s f17, f12, f10, rdn # perform operation
fsub.s f17, f12, f10, rmm # perform operation
fsub.s f17, f12, f10, rne # perform operation
fsub.s f17, f12, f10, rtz # perform operation
fsub.s f17, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fsub.s f20, f5, f6, dyn # perform operation
fsub.s f20, f5, f6, rdn # perform operation
fsub.s f20, f5, f6, rmm # perform operation
fsub.s f20, f5, f6, rne # perform operation
fsub.s f20, f5, f6, rtz # perform operation
fsub.s f20, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fsub.s f30, f2, f28, dyn # perform operation
fsub.s f30, f2, f28, rdn # perform operation
fsub.s f30, f2, f28, rmm # perform operation
fsub.s f30, f2, f28, rne # perform operation
fsub.s f30, f2, f28, rtz # perform operation
fsub.s f30, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fsub.s f12, f30, f11, dyn # perform operation
fsub.s f12, f30, f11, rdn # perform operation
fsub.s f12, f30, f11, rmm # perform operation
fsub.s f12, f30, f11, rne # perform operation
fsub.s f12, f30, f11, rtz # perform operation
fsub.s f12, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsub.s f21, f22, f13, dyn # perform operation
fsub.s f21, f22, f13, rdn # perform operation
fsub.s f21, f22, f13, rmm # perform operation
fsub.s f21, f22, f13, rne # perform operation
fsub.s f21, f22, f13, rtz # perform operation
fsub.s f21, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fsub.s f6, f29, f19, dyn # perform operation
fsub.s f6, f29, f19, rdn # perform operation
fsub.s f6, f29, f19, rmm # perform operation
fsub.s f6, f29, f19, rne # perform operation
fsub.s f6, f29, f19, rtz # perform operation
fsub.s f6, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fsub.s f8, f11, f22, dyn # perform operation
fsub.s f8, f11, f22, rdn # perform operation
fsub.s f8, f11, f22, rmm # perform operation
fsub.s f8, f11, f22, rne # perform operation
fsub.s f8, f11, f22, rtz # perform operation
fsub.s f8, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fsub.s f2, f31, f11, dyn # perform operation
fsub.s f2, f31, f11, rdn # perform operation
fsub.s f2, f31, f11, rmm # perform operation
fsub.s f2, f31, f11, rne # perform operation
fsub.s f2, f31, f11, rtz # perform operation
fsub.s f2, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fsub.s f18, f30, f26, dyn # perform operation
fsub.s f18, f30, f26, rdn # perform operation
fsub.s f18, f30, f26, rmm # perform operation
fsub.s f18, f30, f26, rne # perform operation
fsub.s f18, f30, f26, rtz # perform operation
fsub.s f18, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fsub.s f9, f10, f30, dyn # perform operation
fsub.s f9, f10, f30, rdn # perform operation
fsub.s f9, f10, f30, rmm # perform operation
fsub.s f9, f10, f30, rne # perform operation
fsub.s f9, f10, f30, rtz # perform operation
fsub.s f9, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fsub.s f12, f25, f5, dyn # perform operation
fsub.s f12, f25, f5, rdn # perform operation
fsub.s f12, f25, f5, rmm # perform operation
fsub.s f12, f25, f5, rne # perform operation
fsub.s f12, f25, f5, rtz # perform operation
fsub.s f12, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f10, f26, f27, dyn # perform operation
fsub.s f10, f26, f27, rdn # perform operation
fsub.s f10, f26, f27, rmm # perform operation
fsub.s f10, f26, f27, rne # perform operation
fsub.s f10, f26, f27, rtz # perform operation
fsub.s f10, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fsub.s f25, f5, f9, dyn # perform operation
fsub.s f25, f5, f9, rdn # perform operation
fsub.s f25, f5, f9, rmm # perform operation
fsub.s f25, f5, f9, rne # perform operation
fsub.s f25, f5, f9, rtz # perform operation
fsub.s f25, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fsub.s f14, f7, f19, dyn # perform operation
fsub.s f14, f7, f19, rdn # perform operation
fsub.s f14, f7, f19, rmm # perform operation
fsub.s f14, f7, f19, rne # perform operation
fsub.s f14, f7, f19, rtz # perform operation
fsub.s f14, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fsub.s f29, f9, f24, dyn # perform operation
fsub.s f29, f9, f24, rdn # perform operation
fsub.s f29, f9, f24, rmm # perform operation
fsub.s f29, f9, f24, rne # perform operation
fsub.s f29, f9, f24, rtz # perform operation
fsub.s f29, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fsub.s f17, f7, f10, dyn # perform operation
fsub.s f17, f7, f10, rdn # perform operation
fsub.s f17, f7, f10, rmm # perform operation
fsub.s f17, f7, f10, rne # perform operation
fsub.s f17, f7, f10, rtz # perform operation
fsub.s f17, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f26, f2, f12, dyn # perform operation
fsub.s f26, f2, f12, rdn # perform operation
fsub.s f26, f2, f12, rmm # perform operation
fsub.s f26, f2, f12, rne # perform operation
fsub.s f26, f2, f12, rtz # perform operation
fsub.s f26, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fsub.s f26, f25, f10, dyn # perform operation
fsub.s f26, f25, f10, rdn # perform operation
fsub.s f26, f25, f10, rmm # perform operation
fsub.s f26, f25, f10, rne # perform operation
fsub.s f26, f25, f10, rtz # perform operation
fsub.s f26, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f8, f22, f31, dyn # perform operation
fsub.s f8, f22, f31, rdn # perform operation
fsub.s f8, f22, f31, rmm # perform operation
fsub.s f8, f22, f31, rne # perform operation
fsub.s f8, f22, f31, rtz # perform operation
fsub.s f8, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f5, f8, f22, dyn # perform operation
fsub.s f5, f8, f22, rdn # perform operation
fsub.s f5, f8, f22, rmm # perform operation
fsub.s f5, f8, f22, rne # perform operation
fsub.s f5, f8, f22, rtz # perform operation
fsub.s f5, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f3, f31, f13, dyn # perform operation
fsub.s f3, f31, f13, rdn # perform operation
fsub.s f3, f31, f13, rmm # perform operation
fsub.s f3, f31, f13, rne # perform operation
fsub.s f3, f31, f13, rtz # perform operation
fsub.s f3, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fsub.s f30, f5, f8, dyn # perform operation
fsub.s f30, f5, f8, rdn # perform operation
fsub.s f30, f5, f8, rmm # perform operation
fsub.s f30, f5, f8, rne # perform operation
fsub.s f30, f5, f8, rtz # perform operation
fsub.s f30, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fsub.s f26, f12, f8, dyn # perform operation
fsub.s f26, f12, f8, rdn # perform operation
fsub.s f26, f12, f8, rmm # perform operation
fsub.s f26, f12, f8, rne # perform operation
fsub.s f26, f12, f8, rtz # perform operation
fsub.s f26, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fsub.s f26, f22, f18, dyn # perform operation
fsub.s f26, f22, f18, rdn # perform operation
fsub.s f26, f22, f18, rmm # perform operation
fsub.s f26, f22, f18, rne # perform operation
fsub.s f26, f22, f18, rtz # perform operation
fsub.s f26, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fsub.s f24, f14, f18, dyn # perform operation
fsub.s f24, f14, f18, rdn # perform operation
fsub.s f24, f14, f18, rmm # perform operation
fsub.s f24, f14, f18, rne # perform operation
fsub.s f24, f14, f18, rtz # perform operation
fsub.s f24, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fsub.s f3, f14, f7, dyn # perform operation
fsub.s f3, f14, f7, rdn # perform operation
fsub.s f3, f14, f7, rmm # perform operation
fsub.s f3, f14, f7, rne # perform operation
fsub.s f3, f14, f7, rtz # perform operation
fsub.s f3, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fsub.s f9, f30, f12, dyn # perform operation
fsub.s f9, f30, f12, rdn # perform operation
fsub.s f9, f30, f12, rmm # perform operation
fsub.s f9, f30, f12, rne # perform operation
fsub.s f9, f30, f12, rtz # perform operation
fsub.s f9, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fsub.s f2, f22, f20, dyn # perform operation
fsub.s f2, f22, f20, rdn # perform operation
fsub.s f2, f22, f20, rmm # perform operation
fsub.s f2, f22, f20, rne # perform operation
fsub.s f2, f22, f20, rtz # perform operation
fsub.s f2, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f27, f29, f3, dyn # perform operation
fsub.s f27, f29, f3, rdn # perform operation
fsub.s f27, f29, f3, rmm # perform operation
fsub.s f27, f29, f3, rne # perform operation
fsub.s f27, f29, f3, rtz # perform operation
fsub.s f27, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fsub.s f7, f3, f13, dyn # perform operation
fsub.s f7, f3, f13, rdn # perform operation
fsub.s f7, f3, f13, rmm # perform operation
fsub.s f7, f3, f13, rne # perform operation
fsub.s f7, f3, f13, rtz # perform operation
fsub.s f7, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fsub.s f14, f24, f17, dyn # perform operation
fsub.s f14, f24, f17, rdn # perform operation
fsub.s f14, f24, f17, rmm # perform operation
fsub.s f14, f24, f17, rne # perform operation
fsub.s f14, f24, f17, rtz # perform operation
fsub.s f14, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fsub.s f21, f14, f2, dyn # perform operation
fsub.s f21, f14, f2, rdn # perform operation
fsub.s f21, f14, f2, rmm # perform operation
fsub.s f21, f14, f2, rne # perform operation
fsub.s f21, f14, f2, rtz # perform operation
fsub.s f21, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fsub.s f27, f30, f11, dyn # perform operation
fsub.s f27, f30, f11, rdn # perform operation
fsub.s f27, f30, f11, rmm # perform operation
fsub.s f27, f30, f11, rne # perform operation
fsub.s f27, f30, f11, rtz # perform operation
fsub.s f27, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fsub.s f6, f24, f1, dyn # perform operation
fsub.s f6, f24, f1, rdn # perform operation
fsub.s f6, f24, f1, rmm # perform operation
fsub.s f6, f24, f1, rne # perform operation
fsub.s f6, f24, f1, rtz # perform operation
fsub.s f6, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fsub.s f17, f2, f18, dyn # perform operation
fsub.s f17, f2, f18, rdn # perform operation
fsub.s f17, f2, f18, rmm # perform operation
fsub.s f17, f2, f18, rne # perform operation
fsub.s f17, f2, f18, rtz # perform operation
fsub.s f17, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fsub.s f28, f5, f10, dyn # perform operation
fsub.s f28, f5, f10, rdn # perform operation
fsub.s f28, f5, f10, rmm # perform operation
fsub.s f28, f5, f10, rne # perform operation
fsub.s f28, f5, f10, rtz # perform operation
fsub.s f28, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fsub.s f7, f3, f21, dyn # perform operation
fsub.s f7, f3, f21, rdn # perform operation
fsub.s f7, f3, f21, rmm # perform operation
fsub.s f7, f3, f21, rne # perform operation
fsub.s f7, f3, f21, rtz # perform operation
fsub.s f7, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f5, f27, f15, dyn # perform operation
fsub.s f5, f27, f15, rdn # perform operation
fsub.s f5, f27, f15, rmm # perform operation
fsub.s f5, f27, f15, rne # perform operation
fsub.s f5, f27, f15, rtz # perform operation
fsub.s f5, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fsub.s f19, f27, f31, dyn # perform operation
fsub.s f19, f27, f31, rdn # perform operation
fsub.s f19, f27, f31, rmm # perform operation
fsub.s f19, f27, f31, rne # perform operation
fsub.s f19, f27, f31, rtz # perform operation
fsub.s f19, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fsub.s f18, f31, f26, dyn # perform operation
fsub.s f18, f31, f26, rdn # perform operation
fsub.s f18, f31, f26, rmm # perform operation
fsub.s f18, f31, f26, rne # perform operation
fsub.s f18, f31, f26, rtz # perform operation
fsub.s f18, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fsub.s f31, f19, f25, dyn # perform operation
fsub.s f31, f19, f25, rdn # perform operation
fsub.s f31, f19, f25, rmm # perform operation
fsub.s f31, f19, f25, rne # perform operation
fsub.s f31, f19, f25, rtz # perform operation
fsub.s f31, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fsub.s f25, f19, f20, dyn # perform operation
fsub.s f25, f19, f20, rdn # perform operation
fsub.s f25, f19, f20, rmm # perform operation
fsub.s f25, f19, f20, rne # perform operation
fsub.s f25, f19, f20, rtz # perform operation
fsub.s f25, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fsub.s f13, f20, f7, dyn # perform operation
fsub.s f13, f20, f7, rdn # perform operation
fsub.s f13, f20, f7, rmm # perform operation
fsub.s f13, f20, f7, rne # perform operation
fsub.s f13, f20, f7, rtz # perform operation
fsub.s f13, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fsub.s f28, f5, f14, dyn # perform operation
fsub.s f28, f5, f14, rdn # perform operation
fsub.s f28, f5, f14, rmm # perform operation
fsub.s f28, f5, f14, rne # perform operation
fsub.s f28, f5, f14, rtz # perform operation
fsub.s f28, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fsub.s f16, f10, f1, dyn # perform operation
fsub.s f16, f10, f1, rdn # perform operation
fsub.s f16, f10, f1, rmm # perform operation
fsub.s f16, f10, f1, rne # perform operation
fsub.s f16, f10, f1, rtz # perform operation
fsub.s f16, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fsub.s f31, f2, f22, dyn # perform operation
fsub.s f31, f2, f22, rdn # perform operation
fsub.s f31, f2, f22, rmm # perform operation
fsub.s f31, f2, f22, rne # perform operation
fsub.s f31, f2, f22, rtz # perform operation
fsub.s f31, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fsub.s f11, f21, f5, dyn # perform operation
fsub.s f11, f21, f5, rdn # perform operation
fsub.s f11, f21, f5, rmm # perform operation
fsub.s f11, f21, f5, rne # perform operation
fsub.s f11, f21, f5, rtz # perform operation
fsub.s f11, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fsub.s f10, f12, f21, dyn # perform operation
fsub.s f10, f12, f21, rdn # perform operation
fsub.s f10, f12, f21, rmm # perform operation
fsub.s f10, f12, f21, rne # perform operation
fsub.s f10, f12, f21, rtz # perform operation
fsub.s f10, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f23, f16, f10, dyn # perform operation
fsub.s f23, f16, f10, rdn # perform operation
fsub.s f23, f16, f10, rmm # perform operation
fsub.s f23, f16, f10, rne # perform operation
fsub.s f23, f16, f10, rtz # perform operation
fsub.s f23, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fsub.s f25, f1, f8, dyn # perform operation
fsub.s f25, f1, f8, rdn # perform operation
fsub.s f25, f1, f8, rmm # perform operation
fsub.s f25, f1, f8, rne # perform operation
fsub.s f25, f1, f8, rtz # perform operation
fsub.s f25, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fsub.s f8, f10, f1, dyn # perform operation
fsub.s f8, f10, f1, rdn # perform operation
fsub.s f8, f10, f1, rmm # perform operation
fsub.s f8, f10, f1, rne # perform operation
fsub.s f8, f10, f1, rtz # perform operation
fsub.s f8, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f5, f28, f27, dyn # perform operation
fsub.s f5, f28, f27, rdn # perform operation
fsub.s f5, f28, f27, rmm # perform operation
fsub.s f5, f28, f27, rne # perform operation
fsub.s f5, f28, f27, rtz # perform operation
fsub.s f5, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fsub.s f5, f16, f1, dyn # perform operation
fsub.s f5, f16, f1, rdn # perform operation
fsub.s f5, f16, f1, rmm # perform operation
fsub.s f5, f16, f1, rne # perform operation
fsub.s f5, f16, f1, rtz # perform operation
fsub.s f5, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f16, f15, f24, dyn # perform operation
fsub.s f16, f15, f24, rdn # perform operation
fsub.s f16, f15, f24, rmm # perform operation
fsub.s f16, f15, f24, rne # perform operation
fsub.s f16, f15, f24, rtz # perform operation
fsub.s f16, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fsub.s f24, f10, f21, dyn # perform operation
fsub.s f24, f10, f21, rdn # perform operation
fsub.s f24, f10, f21, rmm # perform operation
fsub.s f24, f10, f21, rne # perform operation
fsub.s f24, f10, f21, rtz # perform operation
fsub.s f24, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fsub.s f14, f12, f3, dyn # perform operation
fsub.s f14, f12, f3, rdn # perform operation
fsub.s f14, f12, f3, rmm # perform operation
fsub.s f14, f12, f3, rne # perform operation
fsub.s f14, f12, f3, rtz # perform operation
fsub.s f14, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f24, f9, f27, dyn # perform operation
fsub.s f24, f9, f27, rdn # perform operation
fsub.s f24, f9, f27, rmm # perform operation
fsub.s f24, f9, f27, rne # perform operation
fsub.s f24, f9, f27, rtz # perform operation
fsub.s f24, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fsub.s f1, f3, f27, dyn # perform operation
fsub.s f1, f3, f27, rdn # perform operation
fsub.s f1, f3, f27, rmm # perform operation
fsub.s f1, f3, f27, rne # perform operation
fsub.s f1, f3, f27, rtz # perform operation
fsub.s f1, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fsub.s f13, f8, f22, dyn # perform operation
fsub.s f13, f8, f22, rdn # perform operation
fsub.s f13, f8, f22, rmm # perform operation
fsub.s f13, f8, f22, rne # perform operation
fsub.s f13, f8, f22, rtz # perform operation
fsub.s f13, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fsub.s f21, f31, f12, dyn # perform operation
fsub.s f21, f31, f12, rdn # perform operation
fsub.s f21, f31, f12, rmm # perform operation
fsub.s f21, f31, f12, rne # perform operation
fsub.s f21, f31, f12, rtz # perform operation
fsub.s f21, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsub.s f12, f24, f13, dyn # perform operation
fsub.s f12, f24, f13, rdn # perform operation
fsub.s f12, f24, f13, rmm # perform operation
fsub.s f12, f24, f13, rne # perform operation
fsub.s f12, f24, f13, rtz # perform operation
fsub.s f12, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fsub.s f12, f2, f21, dyn # perform operation
fsub.s f12, f2, f21, rdn # perform operation
fsub.s f12, f2, f21, rmm # perform operation
fsub.s f12, f2, f21, rne # perform operation
fsub.s f12, f2, f21, rtz # perform operation
fsub.s f12, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fsub.s f25, f27, f26, dyn # perform operation
fsub.s f25, f27, f26, rdn # perform operation
fsub.s f25, f27, f26, rmm # perform operation
fsub.s f25, f27, f26, rne # perform operation
fsub.s f25, f27, f26, rtz # perform operation
fsub.s f25, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fsub.s f10, f24, f23, dyn # perform operation
fsub.s f10, f24, f23, rdn # perform operation
fsub.s f10, f24, f23, rmm # perform operation
fsub.s f10, f24, f23, rne # perform operation
fsub.s f10, f24, f23, rtz # perform operation
fsub.s f10, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fsub.s f15, f5, f31, dyn # perform operation
fsub.s f15, f5, f31, rdn # perform operation
fsub.s f15, f5, f31, rmm # perform operation
fsub.s f15, f5, f31, rne # perform operation
fsub.s f15, f5, f31, rtz # perform operation
fsub.s f15, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fsub.s f30, f27, f28, dyn # perform operation
fsub.s f30, f27, f28, rdn # perform operation
fsub.s f30, f27, f28, rmm # perform operation
fsub.s f30, f27, f28, rne # perform operation
fsub.s f30, f27, f28, rtz # perform operation
fsub.s f30, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
fsub.s f18, f27, f25, dyn # perform operation
fsub.s f18, f27, f25, rdn # perform operation
fsub.s f18, f27, f25, rmm # perform operation
fsub.s f18, f27, f25, rne # perform operation
fsub.s f18, f27, f25, rtz # perform operation
fsub.s f18, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fsub.s f29, f25, f23, dyn # perform operation
fsub.s f29, f25, f23, rdn # perform operation
fsub.s f29, f25, f23, rmm # perform operation
fsub.s f29, f25, f23, rne # perform operation
fsub.s f29, f25, f23, rtz # perform operation
fsub.s f29, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fsub.s f30, f17, f12, dyn # perform operation
fsub.s f30, f17, f12, rdn # perform operation
fsub.s f30, f17, f12, rmm # perform operation
fsub.s f30, f17, f12, rne # perform operation
fsub.s f30, f17, f12, rtz # perform operation
fsub.s f30, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fsub.s f3, f28, f18, dyn # perform operation
fsub.s f3, f28, f18, rdn # perform operation
fsub.s f3, f28, f18, rmm # perform operation
fsub.s f3, f28, f18, rne # perform operation
fsub.s f3, f28, f18, rtz # perform operation
fsub.s f3, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fsub.s f31, f2, f1, dyn # perform operation
fsub.s f31, f2, f1, rdn # perform operation
fsub.s f31, f2, f1, rmm # perform operation
fsub.s f31, f2, f1, rne # perform operation
fsub.s f31, f2, f1, rtz # perform operation
fsub.s f31, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f7, f29, f13, dyn # perform operation
fsub.s f7, f29, f13, rdn # perform operation
fsub.s f7, f29, f13, rmm # perform operation
fsub.s f7, f29, f13, rne # perform operation
fsub.s f7, f29, f13, rtz # perform operation
fsub.s f7, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fsub.s f14, f24, f21, dyn # perform operation
fsub.s f14, f24, f21, rdn # perform operation
fsub.s f14, f24, f21, rmm # perform operation
fsub.s f14, f24, f21, rne # perform operation
fsub.s f14, f24, f21, rtz # perform operation
fsub.s f14, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f31, f13, f14, dyn # perform operation
fsub.s f31, f13, f14, rdn # perform operation
fsub.s f31, f13, f14, rmm # perform operation
fsub.s f31, f13, f14, rne # perform operation
fsub.s f31, f13, f14, rtz # perform operation
fsub.s f31, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f14, f26, f31, dyn # perform operation
fsub.s f14, f26, f31, rdn # perform operation
fsub.s f14, f26, f31, rmm # perform operation
fsub.s f14, f26, f31, rne # perform operation
fsub.s f14, f26, f31, rtz # perform operation
fsub.s f14, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fsub.s f17, f23, f10, dyn # perform operation
fsub.s f17, f23, f10, rdn # perform operation
fsub.s f17, f23, f10, rmm # perform operation
fsub.s f17, f23, f10, rne # perform operation
fsub.s f17, f23, f10, rtz # perform operation
fsub.s f17, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fsub.s f25, f1, f19, dyn # perform operation
fsub.s f25, f1, f19, rdn # perform operation
fsub.s f25, f1, f19, rmm # perform operation
fsub.s f25, f1, f19, rne # perform operation
fsub.s f25, f1, f19, rtz # perform operation
fsub.s f25, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fsub.s f25, f18, f26, dyn # perform operation
fsub.s f25, f18, f26, rdn # perform operation
fsub.s f25, f18, f26, rmm # perform operation
fsub.s f25, f18, f26, rne # perform operation
fsub.s f25, f18, f26, rtz # perform operation
fsub.s f25, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fsub.s f6, f5, f28, dyn # perform operation
fsub.s f6, f5, f28, rdn # perform operation
fsub.s f6, f5, f28, rmm # perform operation
fsub.s f6, f5, f28, rne # perform operation
fsub.s f6, f5, f28, rtz # perform operation
fsub.s f6, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fsub.s f18, f17, f20, dyn # perform operation
fsub.s f18, f17, f20, rdn # perform operation
fsub.s f18, f17, f20, rmm # perform operation
fsub.s f18, f17, f20, rne # perform operation
fsub.s f18, f17, f20, rtz # perform operation
fsub.s f18, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f14, f29, f12, dyn # perform operation
fsub.s f14, f29, f12, rdn # perform operation
fsub.s f14, f29, f12, rmm # perform operation
fsub.s f14, f29, f12, rne # perform operation
fsub.s f14, f29, f12, rtz # perform operation
fsub.s f14, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f23, f1, f13, dyn # perform operation
fsub.s f23, f1, f13, rdn # perform operation
fsub.s f23, f1, f13, rmm # perform operation
fsub.s f23, f1, f13, rne # perform operation
fsub.s f23, f1, f13, rtz # perform operation
fsub.s f23, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f10, f15, f26, dyn # perform operation
fsub.s f10, f15, f26, rdn # perform operation
fsub.s f10, f15, f26, rmm # perform operation
fsub.s f10, f15, f26, rne # perform operation
fsub.s f10, f15, f26, rtz # perform operation
fsub.s f10, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fsub.s f27, f8, f26, dyn # perform operation
fsub.s f27, f8, f26, rdn # perform operation
fsub.s f27, f8, f26, rmm # perform operation
fsub.s f27, f8, f26, rne # perform operation
fsub.s f27, f8, f26, rtz # perform operation
fsub.s f27, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsub.s f8, f7, f14, dyn # perform operation
fsub.s f8, f7, f14, rdn # perform operation
fsub.s f8, f7, f14, rmm # perform operation
fsub.s f8, f7, f14, rne # perform operation
fsub.s f8, f7, f14, rtz # perform operation
fsub.s f8, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fsub.s f20, f2, f28, dyn # perform operation
fsub.s f20, f2, f28, rdn # perform operation
fsub.s f20, f2, f28, rmm # perform operation
fsub.s f20, f2, f28, rne # perform operation
fsub.s f20, f2, f28, rtz # perform operation
fsub.s f20, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsub.s f28, f7, f14, dyn # perform operation
fsub.s f28, f7, f14, rdn # perform operation
fsub.s f28, f7, f14, rmm # perform operation
fsub.s f28, f7, f14, rne # perform operation
fsub.s f28, f7, f14, rtz # perform operation
fsub.s f28, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fsub.s f5, f31, f3, dyn # perform operation
fsub.s f5, f31, f3, rdn # perform operation
fsub.s f5, f31, f3, rmm # perform operation
fsub.s f5, f31, f3, rne # perform operation
fsub.s f5, f31, f3, rtz # perform operation
fsub.s f5, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f30, f2, f25, dyn # perform operation
fsub.s f30, f2, f25, rdn # perform operation
fsub.s f30, f2, f25, rmm # perform operation
fsub.s f30, f2, f25, rne # perform operation
fsub.s f30, f2, f25, rtz # perform operation
fsub.s f30, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fsub.s f13, f11, f2, dyn # perform operation
fsub.s f13, f11, f2, rdn # perform operation
fsub.s f13, f11, f2, rmm # perform operation
fsub.s f13, f11, f2, rne # perform operation
fsub.s f13, f11, f2, rtz # perform operation
fsub.s f13, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f7, f28, f2, dyn # perform operation
fsub.s f7, f28, f2, rdn # perform operation
fsub.s f7, f28, f2, rmm # perform operation
fsub.s f7, f28, f2, rne # perform operation
fsub.s f7, f28, f2, rtz # perform operation
fsub.s f7, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fsub.s f22, f5, f28, dyn # perform operation
fsub.s f22, f5, f28, rdn # perform operation
fsub.s f22, f5, f28, rmm # perform operation
fsub.s f22, f5, f28, rne # perform operation
fsub.s f22, f5, f28, rtz # perform operation
fsub.s f22, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fsub.s f8, f31, f27, dyn # perform operation
fsub.s f8, f31, f27, rdn # perform operation
fsub.s f8, f31, f27, rmm # perform operation
fsub.s f8, f31, f27, rne # perform operation
fsub.s f8, f31, f27, rtz # perform operation
fsub.s f8, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f29, f23, f15, dyn # perform operation
fsub.s f29, f23, f15, rdn # perform operation
fsub.s f29, f23, f15, rmm # perform operation
fsub.s f29, f23, f15, rne # perform operation
fsub.s f29, f23, f15, rtz # perform operation
fsub.s f29, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fsub.s f17, f8, f26, dyn # perform operation
fsub.s f17, f8, f26, rdn # perform operation
fsub.s f17, f8, f26, rmm # perform operation
fsub.s f17, f8, f26, rne # perform operation
fsub.s f17, f8, f26, rtz # perform operation
fsub.s f17, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fsub.s f5, f31, f21, dyn # perform operation
fsub.s f5, f31, f21, rdn # perform operation
fsub.s f5, f31, f21, rmm # perform operation
fsub.s f5, f31, f21, rne # perform operation
fsub.s f5, f31, f21, rtz # perform operation
fsub.s f5, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fsub.s f11, f6, f13, dyn # perform operation
fsub.s f11, f6, f13, rdn # perform operation
fsub.s f11, f6, f13, rmm # perform operation
fsub.s f11, f6, f13, rne # perform operation
fsub.s f11, f6, f13, rtz # perform operation
fsub.s f11, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
fsub.s f1, f19, f5, dyn # perform operation
fsub.s f1, f19, f5, rdn # perform operation
fsub.s f1, f19, f5, rmm # perform operation
fsub.s f1, f19, f5, rne # perform operation
fsub.s f1, f19, f5, rtz # perform operation
fsub.s f1, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f17, f10, f13, dyn # perform operation
fsub.s f17, f10, f13, rdn # perform operation
fsub.s f17, f10, f13, rmm # perform operation
fsub.s f17, f10, f13, rne # perform operation
fsub.s f17, f10, f13, rtz # perform operation
fsub.s f17, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fsub.s f22, f2, f7, dyn # perform operation
fsub.s f22, f2, f7, rdn # perform operation
fsub.s f22, f2, f7, rmm # perform operation
fsub.s f22, f2, f7, rne # perform operation
fsub.s f22, f2, f7, rtz # perform operation
fsub.s f22, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f16, f22, f14, dyn # perform operation
fsub.s f16, f22, f14, rdn # perform operation
fsub.s f16, f22, f14, rmm # perform operation
fsub.s f16, f22, f14, rne # perform operation
fsub.s f16, f22, f14, rtz # perform operation
fsub.s f16, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fsub.s f12, f30, f18, dyn # perform operation
fsub.s f12, f30, f18, rdn # perform operation
fsub.s f12, f30, f18, rmm # perform operation
fsub.s f12, f30, f18, rne # perform operation
fsub.s f12, f30, f18, rtz # perform operation
fsub.s f12, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fsub.s f19, f9, f2, dyn # perform operation
fsub.s f19, f9, f2, rdn # perform operation
fsub.s f19, f9, f2, rmm # perform operation
fsub.s f19, f9, f2, rne # perform operation
fsub.s f19, f9, f2, rtz # perform operation
fsub.s f19, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fsub.s f26, f16, f2, dyn # perform operation
fsub.s f26, f16, f2, rdn # perform operation
fsub.s f26, f16, f2, rmm # perform operation
fsub.s f26, f16, f2, rne # perform operation
fsub.s f26, f16, f2, rtz # perform operation
fsub.s f26, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f5, f6, f10, dyn # perform operation
fsub.s f5, f6, f10, rdn # perform operation
fsub.s f5, f6, f10, rmm # perform operation
fsub.s f5, f6, f10, rne # perform operation
fsub.s f5, f6, f10, rtz # perform operation
fsub.s f5, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fsub.s f23, f22, f2, dyn # perform operation
fsub.s f23, f22, f2, rdn # perform operation
fsub.s f23, f22, f2, rmm # perform operation
fsub.s f23, f22, f2, rne # perform operation
fsub.s f23, f22, f2, rtz # perform operation
fsub.s f23, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f1, f10, f9, dyn # perform operation
fsub.s f1, f10, f9, rdn # perform operation
fsub.s f1, f10, f9, rmm # perform operation
fsub.s f1, f10, f9, rne # perform operation
fsub.s f1, f10, f9, rtz # perform operation
fsub.s f1, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsub.s f28, f11, f8, dyn # perform operation
fsub.s f28, f11, f8, rdn # perform operation
fsub.s f28, f11, f8, rmm # perform operation
fsub.s f28, f11, f8, rne # perform operation
fsub.s f28, f11, f8, rtz # perform operation
fsub.s f28, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f14, f20, f27, dyn # perform operation
fsub.s f14, f20, f27, rdn # perform operation
fsub.s f14, f20, f27, rmm # perform operation
fsub.s f14, f20, f27, rne # perform operation
fsub.s f14, f20, f27, rtz # perform operation
fsub.s f14, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fsub.s f20, f16, f6, dyn # perform operation
fsub.s f20, f16, f6, rdn # perform operation
fsub.s f20, f16, f6, rmm # perform operation
fsub.s f20, f16, f6, rne # perform operation
fsub.s f20, f16, f6, rtz # perform operation
fsub.s f20, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f12, f8, f22, dyn # perform operation
fsub.s f12, f8, f22, rdn # perform operation
fsub.s f12, f8, f22, rmm # perform operation
fsub.s f12, f8, f22, rne # perform operation
fsub.s f12, f8, f22, rtz # perform operation
fsub.s f12, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fsub.s f22, f20, f1, dyn # perform operation
fsub.s f22, f20, f1, rdn # perform operation
fsub.s f22, f20, f1, rmm # perform operation
fsub.s f22, f20, f1, rne # perform operation
fsub.s f22, f20, f1, rtz # perform operation
fsub.s f22, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsub.s f21, f30, f14, dyn # perform operation
fsub.s f21, f30, f14, rdn # perform operation
fsub.s f21, f30, f14, rmm # perform operation
fsub.s f21, f30, f14, rne # perform operation
fsub.s f21, f30, f14, rtz # perform operation
fsub.s f21, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fsub.s f16, f22, f12, dyn # perform operation
fsub.s f16, f22, f12, rdn # perform operation
fsub.s f16, f22, f12, rmm # perform operation
fsub.s f16, f22, f12, rne # perform operation
fsub.s f16, f22, f12, rtz # perform operation
fsub.s f16, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsub.s f12, f24, f14, dyn # perform operation
fsub.s f12, f24, f14, rdn # perform operation
fsub.s f12, f24, f14, rmm # perform operation
fsub.s f12, f24, f14, rne # perform operation
fsub.s f12, f24, f14, rtz # perform operation
fsub.s f12, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fsub.s f10, f8, f14, dyn # perform operation
fsub.s f10, f8, f14, rdn # perform operation
fsub.s f10, f8, f14, rmm # perform operation
fsub.s f10, f8, f14, rne # perform operation
fsub.s f10, f8, f14, rtz # perform operation
fsub.s f10, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f30, f7, f5, dyn # perform operation
fsub.s f30, f7, f5, rdn # perform operation
fsub.s f30, f7, f5, rmm # perform operation
fsub.s f30, f7, f5, rne # perform operation
fsub.s f30, f7, f5, rtz # perform operation
fsub.s f30, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f26, f13, f6, dyn # perform operation
fsub.s f26, f13, f6, rdn # perform operation
fsub.s f26, f13, f6, rmm # perform operation
fsub.s f26, f13, f6, rne # perform operation
fsub.s f26, f13, f6, rtz # perform operation
fsub.s f26, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f26, f8, f2, dyn # perform operation
fsub.s f26, f8, f2, rdn # perform operation
fsub.s f26, f8, f2, rmm # perform operation
fsub.s f26, f8, f2, rne # perform operation
fsub.s f26, f8, f2, rtz # perform operation
fsub.s f26, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f1, f30, f9, dyn # perform operation
fsub.s f1, f30, f9, rdn # perform operation
fsub.s f1, f30, f9, rmm # perform operation
fsub.s f1, f30, f9, rne # perform operation
fsub.s f1, f30, f9, rtz # perform operation
fsub.s f1, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fsub.s f7, f29, f19, dyn # perform operation
fsub.s f7, f29, f19, rdn # perform operation
fsub.s f7, f29, f19, rmm # perform operation
fsub.s f7, f29, f19, rne # perform operation
fsub.s f7, f29, f19, rtz # perform operation
fsub.s f7, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fsub.s f13, f22, f1, dyn # perform operation
fsub.s f13, f22, f1, rdn # perform operation
fsub.s f13, f22, f1, rmm # perform operation
fsub.s f13, f22, f1, rne # perform operation
fsub.s f13, f22, f1, rtz # perform operation
fsub.s f13, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fsub.s f24, f9, f7, dyn # perform operation
fsub.s f24, f9, f7, rdn # perform operation
fsub.s f24, f9, f7, rmm # perform operation
fsub.s f24, f9, f7, rne # perform operation
fsub.s f24, f9, f7, rtz # perform operation
fsub.s f24, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f2, f9, f27, dyn # perform operation
fsub.s f2, f9, f27, rdn # perform operation
fsub.s f2, f9, f27, rmm # perform operation
fsub.s f2, f9, f27, rne # perform operation
fsub.s f2, f9, f27, rtz # perform operation
fsub.s f2, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fsub.s f17, f14, f28, dyn # perform operation
fsub.s f17, f14, f28, rdn # perform operation
fsub.s f17, f14, f28, rmm # perform operation
fsub.s f17, f14, f28, rne # perform operation
fsub.s f17, f14, f28, rtz # perform operation
fsub.s f17, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fsub.s f9, f24, f1, dyn # perform operation
fsub.s f9, f24, f1, rdn # perform operation
fsub.s f9, f24, f1, rmm # perform operation
fsub.s f9, f24, f1, rne # perform operation
fsub.s f9, f24, f1, rtz # perform operation
fsub.s f9, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fsub.s f16, f7, f1, dyn # perform operation
fsub.s f16, f7, f1, rdn # perform operation
fsub.s f16, f7, f1, rmm # perform operation
fsub.s f16, f7, f1, rne # perform operation
fsub.s f16, f7, f1, rtz # perform operation
fsub.s f16, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f27, f2, f13, dyn # perform operation
fsub.s f27, f2, f13, rdn # perform operation
fsub.s f27, f2, f13, rmm # perform operation
fsub.s f27, f2, f13, rne # perform operation
fsub.s f27, f2, f13, rtz # perform operation
fsub.s f27, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f1, f3, f16, dyn # perform operation
fsub.s f1, f3, f16, rdn # perform operation
fsub.s f1, f3, f16, rmm # perform operation
fsub.s f1, f3, f16, rne # perform operation
fsub.s f1, f3, f16, rtz # perform operation
fsub.s f1, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f17, f9, f19, dyn # perform operation
fsub.s f17, f9, f19, rdn # perform operation
fsub.s f17, f9, f19, rmm # perform operation
fsub.s f17, f9, f19, rne # perform operation
fsub.s f17, f9, f19, rtz # perform operation
fsub.s f17, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fsub.s f26, f24, f28, dyn # perform operation
fsub.s f26, f24, f28, rdn # perform operation
fsub.s f26, f24, f28, rmm # perform operation
fsub.s f26, f24, f28, rne # perform operation
fsub.s f26, f24, f28, rtz # perform operation
fsub.s f26, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f25, f23, f5, dyn # perform operation
fsub.s f25, f23, f5, rdn # perform operation
fsub.s f25, f23, f5, rmm # perform operation
fsub.s f25, f23, f5, rne # perform operation
fsub.s f25, f23, f5, rtz # perform operation
fsub.s f25, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fsub.s f6, f5, f30, dyn # perform operation
fsub.s f6, f5, f30, rdn # perform operation
fsub.s f6, f5, f30, rmm # perform operation
fsub.s f6, f5, f30, rne # perform operation
fsub.s f6, f5, f30, rtz # perform operation
fsub.s f6, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f1, f10, f7, dyn # perform operation
fsub.s f1, f10, f7, rdn # perform operation
fsub.s f1, f10, f7, rmm # perform operation
fsub.s f1, f10, f7, rne # perform operation
fsub.s f1, f10, f7, rtz # perform operation
fsub.s f1, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f25, f30, f18, dyn # perform operation
fsub.s f25, f30, f18, rdn # perform operation
fsub.s f25, f30, f18, rmm # perform operation
fsub.s f25, f30, f18, rne # perform operation
fsub.s f25, f30, f18, rtz # perform operation
fsub.s f25, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsub.s f15, f17, f23, dyn # perform operation
fsub.s f15, f17, f23, rdn # perform operation
fsub.s f15, f17, f23, rmm # perform operation
fsub.s f15, f17, f23, rne # perform operation
fsub.s f15, f17, f23, rtz # perform operation
fsub.s f15, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f21, f20, f26, dyn # perform operation
fsub.s f21, f20, f26, rdn # perform operation
fsub.s f21, f20, f26, rmm # perform operation
fsub.s f21, f20, f26, rne # perform operation
fsub.s f21, f20, f26, rtz # perform operation
fsub.s f21, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fsub.s f17, f14, f26, dyn # perform operation
fsub.s f17, f14, f26, rdn # perform operation
fsub.s f17, f14, f26, rmm # perform operation
fsub.s f17, f14, f26, rne # perform operation
fsub.s f17, f14, f26, rtz # perform operation
fsub.s f17, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fsub.s f13, f7, f12, dyn # perform operation
fsub.s f13, f7, f12, rdn # perform operation
fsub.s f13, f7, f12, rmm # perform operation
fsub.s f13, f7, f12, rne # perform operation
fsub.s f13, f7, f12, rtz # perform operation
fsub.s f13, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fsub.s f29, f15, f20, dyn # perform operation
fsub.s f29, f15, f20, rdn # perform operation
fsub.s f29, f15, f20, rmm # perform operation
fsub.s f29, f15, f20, rne # perform operation
fsub.s f29, f15, f20, rtz # perform operation
fsub.s f29, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f12, f31, f27, dyn # perform operation
fsub.s f12, f31, f27, rdn # perform operation
fsub.s f12, f31, f27, rmm # perform operation
fsub.s f12, f31, f27, rne # perform operation
fsub.s f12, f31, f27, rtz # perform operation
fsub.s f12, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f13, f31, f9, dyn # perform operation
fsub.s f13, f31, f9, rdn # perform operation
fsub.s f13, f31, f9, rmm # perform operation
fsub.s f13, f31, f9, rne # perform operation
fsub.s f13, f31, f9, rtz # perform operation
fsub.s f13, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fsub.s f8, f31, f7, dyn # perform operation
fsub.s f8, f31, f7, rdn # perform operation
fsub.s f8, f31, f7, rmm # perform operation
fsub.s f8, f31, f7, rne # perform operation
fsub.s f8, f31, f7, rtz # perform operation
fsub.s f8, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fsub.s f16, f14, f20, dyn # perform operation
fsub.s f16, f14, f20, rdn # perform operation
fsub.s f16, f14, f20, rmm # perform operation
fsub.s f16, f14, f20, rne # perform operation
fsub.s f16, f14, f20, rtz # perform operation
fsub.s f16, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fsub.s f17, f13, f26, dyn # perform operation
fsub.s f17, f13, f26, rdn # perform operation
fsub.s f17, f13, f26, rmm # perform operation
fsub.s f17, f13, f26, rne # perform operation
fsub.s f17, f13, f26, rtz # perform operation
fsub.s f17, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fsub.s f25, f16, f26, dyn # perform operation
fsub.s f25, f16, f26, rdn # perform operation
fsub.s f25, f16, f26, rmm # perform operation
fsub.s f25, f16, f26, rne # perform operation
fsub.s f25, f16, f26, rtz # perform operation
fsub.s f25, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f24, f19, f25, dyn # perform operation
fsub.s f24, f19, f25, rdn # perform operation
fsub.s f24, f19, f25, rmm # perform operation
fsub.s f24, f19, f25, rne # perform operation
fsub.s f24, f19, f25, rtz # perform operation
fsub.s f24, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f6, f26, f20, dyn # perform operation
fsub.s f6, f26, f20, rdn # perform operation
fsub.s f6, f26, f20, rmm # perform operation
fsub.s f6, f26, f20, rne # perform operation
fsub.s f6, f26, f20, rtz # perform operation
fsub.s f6, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fsub.s f24, f20, f25, dyn # perform operation
fsub.s f24, f20, f25, rdn # perform operation
fsub.s f24, f20, f25, rmm # perform operation
fsub.s f24, f20, f25, rne # perform operation
fsub.s f24, f20, f25, rtz # perform operation
fsub.s f24, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fsub.s f2, f12, f29, dyn # perform operation
fsub.s f2, f12, f29, rdn # perform operation
fsub.s f2, f12, f29, rmm # perform operation
fsub.s f2, f12, f29, rne # perform operation
fsub.s f2, f12, f29, rtz # perform operation
fsub.s f2, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fsub.s f28, f7, f22, dyn # perform operation
fsub.s f28, f7, f22, rdn # perform operation
fsub.s f28, f7, f22, rmm # perform operation
fsub.s f28, f7, f22, rne # perform operation
fsub.s f28, f7, f22, rtz # perform operation
fsub.s f28, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fsub.s f27, f1, f9, dyn # perform operation
fsub.s f27, f1, f9, rdn # perform operation
fsub.s f27, f1, f9, rmm # perform operation
fsub.s f27, f1, f9, rne # perform operation
fsub.s f27, f1, f9, rtz # perform operation
fsub.s f27, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fsub.s f15, f17, f28, dyn # perform operation
fsub.s f15, f17, f28, rdn # perform operation
fsub.s f15, f17, f28, rmm # perform operation
fsub.s f15, f17, f28, rne # perform operation
fsub.s f15, f17, f28, rtz # perform operation
fsub.s f15, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fsub.s f31, f5, f18, dyn # perform operation
fsub.s f31, f5, f18, rdn # perform operation
fsub.s f31, f5, f18, rmm # perform operation
fsub.s f31, f5, f18, rne # perform operation
fsub.s f31, f5, f18, rtz # perform operation
fsub.s f31, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fsub.s f23, f26, f9, dyn # perform operation
fsub.s f23, f26, f9, rdn # perform operation
fsub.s f23, f26, f9, rmm # perform operation
fsub.s f23, f26, f9, rne # perform operation
fsub.s f23, f26, f9, rtz # perform operation
fsub.s f23, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fsub.s f27, f16, f6, dyn # perform operation
fsub.s f27, f16, f6, rdn # perform operation
fsub.s f27, f16, f6, rmm # perform operation
fsub.s f27, f16, f6, rne # perform operation
fsub.s f27, f16, f6, rtz # perform operation
fsub.s f27, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fsub.s f22, f11, f6, dyn # perform operation
fsub.s f22, f11, f6, rdn # perform operation
fsub.s f22, f11, f6, rmm # perform operation
fsub.s f22, f11, f6, rne # perform operation
fsub.s f22, f11, f6, rtz # perform operation
fsub.s f22, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fsub.s f9, f10, f28, dyn # perform operation
fsub.s f9, f10, f28, rdn # perform operation
fsub.s f9, f10, f28, rmm # perform operation
fsub.s f9, f10, f28, rne # perform operation
fsub.s f9, f10, f28, rtz # perform operation
fsub.s f9, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fsub.s f24, f14, f13, dyn # perform operation
fsub.s f24, f14, f13, rdn # perform operation
fsub.s f24, f14, f13, rmm # perform operation
fsub.s f24, f14, f13, rne # perform operation
fsub.s f24, f14, f13, rtz # perform operation
fsub.s f24, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f27, f31, f5, dyn # perform operation
fsub.s f27, f31, f5, rdn # perform operation
fsub.s f27, f31, f5, rmm # perform operation
fsub.s f27, f31, f5, rne # perform operation
fsub.s f27, f31, f5, rtz # perform operation
fsub.s f27, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fsub.s f26, f21, f24, dyn # perform operation
fsub.s f26, f21, f24, rdn # perform operation
fsub.s f26, f21, f24, rmm # perform operation
fsub.s f26, f21, f24, rne # perform operation
fsub.s f26, f21, f24, rtz # perform operation
fsub.s f26, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fsub.s f26, f22, f16, dyn # perform operation
fsub.s f26, f22, f16, rdn # perform operation
fsub.s f26, f22, f16, rmm # perform operation
fsub.s f26, f22, f16, rne # perform operation
fsub.s f26, f22, f16, rtz # perform operation
fsub.s f26, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fsub.s f5, f8, f23, dyn # perform operation
fsub.s f5, f8, f23, rdn # perform operation
fsub.s f5, f8, f23, rmm # perform operation
fsub.s f5, f8, f23, rne # perform operation
fsub.s f5, f8, f23, rtz # perform operation
fsub.s f5, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsub.s f20, f22, f23, dyn # perform operation
fsub.s f20, f22, f23, rdn # perform operation
fsub.s f20, f22, f23, rmm # perform operation
fsub.s f20, f22, f23, rne # perform operation
fsub.s f20, f22, f23, rtz # perform operation
fsub.s f20, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f22, f9, f21, dyn # perform operation
fsub.s f22, f9, f21, rdn # perform operation
fsub.s f22, f9, f21, rmm # perform operation
fsub.s f22, f9, f21, rne # perform operation
fsub.s f22, f9, f21, rtz # perform operation
fsub.s f22, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fsub.s f13, f17, f21, dyn # perform operation
fsub.s f13, f17, f21, rdn # perform operation
fsub.s f13, f17, f21, rmm # perform operation
fsub.s f13, f17, f21, rne # perform operation
fsub.s f13, f17, f21, rtz # perform operation
fsub.s f13, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f22, f11, f10, dyn # perform operation
fsub.s f22, f11, f10, rdn # perform operation
fsub.s f22, f11, f10, rmm # perform operation
fsub.s f22, f11, f10, rne # perform operation
fsub.s f22, f11, f10, rtz # perform operation
fsub.s f22, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fsub.s f11, f20, f14, dyn # perform operation
fsub.s f11, f20, f14, rdn # perform operation
fsub.s f11, f20, f14, rmm # perform operation
fsub.s f11, f20, f14, rne # perform operation
fsub.s f11, f20, f14, rtz # perform operation
fsub.s f11, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f7, f9, f17, dyn # perform operation
fsub.s f7, f9, f17, rdn # perform operation
fsub.s f7, f9, f17, rmm # perform operation
fsub.s f7, f9, f17, rne # perform operation
fsub.s f7, f9, f17, rtz # perform operation
fsub.s f7, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f2, f19, f3, dyn # perform operation
fsub.s f2, f19, f3, rdn # perform operation
fsub.s f2, f19, f3, rmm # perform operation
fsub.s f2, f19, f3, rne # perform operation
fsub.s f2, f19, f3, rtz # perform operation
fsub.s f2, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsub.s f6, f5, f12, dyn # perform operation
fsub.s f6, f5, f12, rdn # perform operation
fsub.s f6, f5, f12, rmm # perform operation
fsub.s f6, f5, f12, rne # perform operation
fsub.s f6, f5, f12, rtz # perform operation
fsub.s f6, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fsub.s f6, f20, f22, dyn # perform operation
fsub.s f6, f20, f22, rdn # perform operation
fsub.s f6, f20, f22, rmm # perform operation
fsub.s f6, f20, f22, rne # perform operation
fsub.s f6, f20, f22, rtz # perform operation
fsub.s f6, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fsub.s f1, f18, f21, dyn # perform operation
fsub.s f1, f18, f21, rdn # perform operation
fsub.s f1, f18, f21, rmm # perform operation
fsub.s f1, f18, f21, rne # perform operation
fsub.s f1, f18, f21, rtz # perform operation
fsub.s f1, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fsub.s f3, f22, f12, dyn # perform operation
fsub.s f3, f22, f12, rdn # perform operation
fsub.s f3, f22, f12, rmm # perform operation
fsub.s f3, f22, f12, rne # perform operation
fsub.s f3, f22, f12, rtz # perform operation
fsub.s f3, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fsub.s f17, f30, f3, dyn # perform operation
fsub.s f17, f30, f3, rdn # perform operation
fsub.s f17, f30, f3, rmm # perform operation
fsub.s f17, f30, f3, rne # perform operation
fsub.s f17, f30, f3, rtz # perform operation
fsub.s f17, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fsub.s f3, f16, f11, dyn # perform operation
fsub.s f3, f16, f11, rdn # perform operation
fsub.s f3, f16, f11, rmm # perform operation
fsub.s f3, f16, f11, rne # perform operation
fsub.s f3, f16, f11, rtz # perform operation
fsub.s f3, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f7, f21, f18, dyn # perform operation
fsub.s f7, f21, f18, rdn # perform operation
fsub.s f7, f21, f18, rmm # perform operation
fsub.s f7, f21, f18, rne # perform operation
fsub.s f7, f21, f18, rtz # perform operation
fsub.s f7, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f21, f8, f9, dyn # perform operation
fsub.s f21, f8, f9, rdn # perform operation
fsub.s f21, f8, f9, rmm # perform operation
fsub.s f21, f8, f9, rne # perform operation
fsub.s f21, f8, f9, rtz # perform operation
fsub.s f21, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fsub.s f14, f26, f17, dyn # perform operation
fsub.s f14, f26, f17, rdn # perform operation
fsub.s f14, f26, f17, rmm # perform operation
fsub.s f14, f26, f17, rne # perform operation
fsub.s f14, f26, f17, rtz # perform operation
fsub.s f14, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fsub.s f28, f27, f21, dyn # perform operation
fsub.s f28, f27, f21, rdn # perform operation
fsub.s f28, f27, f21, rmm # perform operation
fsub.s f28, f27, f21, rne # perform operation
fsub.s f28, f27, f21, rtz # perform operation
fsub.s f28, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fsub.s f17, f24, f25, dyn # perform operation
fsub.s f17, f24, f25, rdn # perform operation
fsub.s f17, f24, f25, rmm # perform operation
fsub.s f17, f24, f25, rne # perform operation
fsub.s f17, f24, f25, rtz # perform operation
fsub.s f17, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fsub.s f30, f24, f2, dyn # perform operation
fsub.s f30, f24, f2, rdn # perform operation
fsub.s f30, f24, f2, rmm # perform operation
fsub.s f30, f24, f2, rne # perform operation
fsub.s f30, f24, f2, rtz # perform operation
fsub.s f30, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fsub.s f21, f10, f19, dyn # perform operation
fsub.s f21, f10, f19, rdn # perform operation
fsub.s f21, f10, f19, rmm # perform operation
fsub.s f21, f10, f19, rne # perform operation
fsub.s f21, f10, f19, rtz # perform operation
fsub.s f21, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fsub.s f15, f22, f8, dyn # perform operation
fsub.s f15, f22, f8, rdn # perform operation
fsub.s f15, f22, f8, rmm # perform operation
fsub.s f15, f22, f8, rne # perform operation
fsub.s f15, f22, f8, rtz # perform operation
fsub.s f15, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsub.s f8, f20, f3, dyn # perform operation
fsub.s f8, f20, f3, rdn # perform operation
fsub.s f8, f20, f3, rmm # perform operation
fsub.s f8, f20, f3, rne # perform operation
fsub.s f8, f20, f3, rtz # perform operation
fsub.s f8, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fsub.s f2, f20, f9, dyn # perform operation
fsub.s f2, f20, f9, rdn # perform operation
fsub.s f2, f20, f9, rmm # perform operation
fsub.s f2, f20, f9, rne # perform operation
fsub.s f2, f20, f9, rtz # perform operation
fsub.s f2, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f3, f2, f15, dyn # perform operation
fsub.s f3, f2, f15, rdn # perform operation
fsub.s f3, f2, f15, rmm # perform operation
fsub.s f3, f2, f15, rne # perform operation
fsub.s f3, f2, f15, rtz # perform operation
fsub.s f3, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f2, f30, f20, dyn # perform operation
fsub.s f2, f30, f20, rdn # perform operation
fsub.s f2, f30, f20, rmm # perform operation
fsub.s f2, f30, f20, rne # perform operation
fsub.s f2, f30, f20, rtz # perform operation
fsub.s f2, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fsub.s f16, f22, f20, dyn # perform operation
fsub.s f16, f22, f20, rdn # perform operation
fsub.s f16, f22, f20, rmm # perform operation
fsub.s f16, f22, f20, rne # perform operation
fsub.s f16, f22, f20, rtz # perform operation
fsub.s f16, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fsub.s f19, f20, f15, dyn # perform operation
fsub.s f19, f20, f15, rdn # perform operation
fsub.s f19, f20, f15, rmm # perform operation
fsub.s f19, f20, f15, rne # perform operation
fsub.s f19, f20, f15, rtz # perform operation
fsub.s f19, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fsub.s f30, f17, f16, dyn # perform operation
fsub.s f30, f17, f16, rdn # perform operation
fsub.s f30, f17, f16, rmm # perform operation
fsub.s f30, f17, f16, rne # perform operation
fsub.s f30, f17, f16, rtz # perform operation
fsub.s f30, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fsub.s f7, f31, f13, dyn # perform operation
fsub.s f7, f31, f13, rdn # perform operation
fsub.s f7, f31, f13, rmm # perform operation
fsub.s f7, f31, f13, rne # perform operation
fsub.s f7, f31, f13, rtz # perform operation
fsub.s f7, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fsub.s f7, f2, f15, dyn # perform operation
fsub.s f7, f2, f15, rdn # perform operation
fsub.s f7, f2, f15, rmm # perform operation
fsub.s f7, f2, f15, rne # perform operation
fsub.s f7, f2, f15, rtz # perform operation
fsub.s f7, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsub.s f5, f30, f12, dyn # perform operation
fsub.s f5, f30, f12, rdn # perform operation
fsub.s f5, f30, f12, rmm # perform operation
fsub.s f5, f30, f12, rne # perform operation
fsub.s f5, f30, f12, rtz # perform operation
fsub.s f5, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f27, f24, f5, dyn # perform operation
fsub.s f27, f24, f5, rdn # perform operation
fsub.s f27, f24, f5, rmm # perform operation
fsub.s f27, f24, f5, rne # perform operation
fsub.s f27, f24, f5, rtz # perform operation
fsub.s f27, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fsub.s f10, f16, f26, dyn # perform operation
fsub.s f10, f16, f26, rdn # perform operation
fsub.s f10, f16, f26, rmm # perform operation
fsub.s f10, f16, f26, rne # perform operation
fsub.s f10, f16, f26, rtz # perform operation
fsub.s f10, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fsub.s f5, f27, f16, dyn # perform operation
fsub.s f5, f27, f16, rdn # perform operation
fsub.s f5, f27, f16, rmm # perform operation
fsub.s f5, f27, f16, rne # perform operation
fsub.s f5, f27, f16, rtz # perform operation
fsub.s f5, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fsub.s f31, f12, f25, dyn # perform operation
fsub.s f31, f12, f25, rdn # perform operation
fsub.s f31, f12, f25, rmm # perform operation
fsub.s f31, f12, f25, rne # perform operation
fsub.s f31, f12, f25, rtz # perform operation
fsub.s f31, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fsub.s f27, f13, f18, dyn # perform operation
fsub.s f27, f13, f18, rdn # perform operation
fsub.s f27, f13, f18, rmm # perform operation
fsub.s f27, f13, f18, rne # perform operation
fsub.s f27, f13, f18, rtz # perform operation
fsub.s f27, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fsub.s f22, f31, f15, dyn # perform operation
fsub.s f22, f31, f15, rdn # perform operation
fsub.s f22, f31, f15, rmm # perform operation
fsub.s f22, f31, f15, rne # perform operation
fsub.s f22, f31, f15, rtz # perform operation
fsub.s f22, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fsub.s f6, f23, f24, dyn # perform operation
fsub.s f6, f23, f24, rdn # perform operation
fsub.s f6, f23, f24, rmm # perform operation
fsub.s f6, f23, f24, rne # perform operation
fsub.s f6, f23, f24, rtz # perform operation
fsub.s f6, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fsub.s f20, f2, f17, dyn # perform operation
fsub.s f20, f2, f17, rdn # perform operation
fsub.s f20, f2, f17, rmm # perform operation
fsub.s f20, f2, f17, rne # perform operation
fsub.s f20, f2, f17, rtz # perform operation
fsub.s f20, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fsub.s f25, f16, f10, dyn # perform operation
fsub.s f25, f16, f10, rdn # perform operation
fsub.s f25, f16, f10, rmm # perform operation
fsub.s f25, f16, f10, rne # perform operation
fsub.s f25, f16, f10, rtz # perform operation
fsub.s f25, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f12, f18, f20, dyn # perform operation
fsub.s f12, f18, f20, rdn # perform operation
fsub.s f12, f18, f20, rmm # perform operation
fsub.s f12, f18, f20, rne # perform operation
fsub.s f12, f18, f20, rtz # perform operation
fsub.s f12, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f28, f7, f23, dyn # perform operation
fsub.s f28, f7, f23, rdn # perform operation
fsub.s f28, f7, f23, rmm # perform operation
fsub.s f28, f7, f23, rne # perform operation
fsub.s f28, f7, f23, rtz # perform operation
fsub.s f28, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fsub.s f29, f21, f20, dyn # perform operation
fsub.s f29, f21, f20, rdn # perform operation
fsub.s f29, f21, f20, rmm # perform operation
fsub.s f29, f21, f20, rne # perform operation
fsub.s f29, f21, f20, rtz # perform operation
fsub.s f29, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fsub.s f28, f27, f22, dyn # perform operation
fsub.s f28, f27, f22, rdn # perform operation
fsub.s f28, f27, f22, rmm # perform operation
fsub.s f28, f27, f22, rne # perform operation
fsub.s f28, f27, f22, rtz # perform operation
fsub.s f28, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fsub.s f5, f30, f16, dyn # perform operation
fsub.s f5, f30, f16, rdn # perform operation
fsub.s f5, f30, f16, rmm # perform operation
fsub.s f5, f30, f16, rne # perform operation
fsub.s f5, f30, f16, rtz # perform operation
fsub.s f5, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f14, f2, f10, dyn # perform operation
fsub.s f14, f2, f10, rdn # perform operation
fsub.s f14, f2, f10, rmm # perform operation
fsub.s f14, f2, f10, rne # perform operation
fsub.s f14, f2, f10, rtz # perform operation
fsub.s f14, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fsub.s f14, f20, f18, dyn # perform operation
fsub.s f14, f20, f18, rdn # perform operation
fsub.s f14, f20, f18, rmm # perform operation
fsub.s f14, f20, f18, rne # perform operation
fsub.s f14, f20, f18, rtz # perform operation
fsub.s f14, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f1, f22, f18, dyn # perform operation
fsub.s f1, f22, f18, rdn # perform operation
fsub.s f1, f22, f18, rmm # perform operation
fsub.s f1, f22, f18, rne # perform operation
fsub.s f1, f22, f18, rtz # perform operation
fsub.s f1, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f8, 0(x2) # load 0xffffffff from memory into f8
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fsub.s f2, f8, f26, dyn # perform operation
fsub.s f2, f8, f26, rdn # perform operation
fsub.s f2, f8, f26, rmm # perform operation
fsub.s f2, f8, f26, rne # perform operation
fsub.s f2, f8, f26, rtz # perform operation
fsub.s f2, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f19, f25, f2, dyn # perform operation
fsub.s f19, f25, f2, rdn # perform operation
fsub.s f19, f25, f2, rmm # perform operation
fsub.s f19, f25, f2, rne # perform operation
fsub.s f19, f25, f2, rtz # perform operation
fsub.s f19, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fsub.s f29, f20, f10, dyn # perform operation
fsub.s f29, f20, f10, rdn # perform operation
fsub.s f29, f20, f10, rmm # perform operation
fsub.s f29, f20, f10, rne # perform operation
fsub.s f29, f20, f10, rtz # perform operation
fsub.s f29, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f21, f25, f23, dyn # perform operation
fsub.s f21, f25, f23, rdn # perform operation
fsub.s f21, f25, f23, rmm # perform operation
fsub.s f21, f25, f23, rne # perform operation
fsub.s f21, f25, f23, rtz # perform operation
fsub.s f21, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f12, f24, f20, dyn # perform operation
fsub.s f12, f24, f20, rdn # perform operation
fsub.s f12, f24, f20, rmm # perform operation
fsub.s f12, f24, f20, rne # perform operation
fsub.s f12, f24, f20, rtz # perform operation
fsub.s f12, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fsub.s f2, f30, f21, dyn # perform operation
fsub.s f2, f30, f21, rdn # perform operation
fsub.s f2, f30, f21, rmm # perform operation
fsub.s f2, f30, f21, rne # perform operation
fsub.s f2, f30, f21, rtz # perform operation
fsub.s f2, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f11, f8, f1, dyn # perform operation
fsub.s f11, f8, f1, rdn # perform operation
fsub.s f11, f8, f1, rmm # perform operation
fsub.s f11, f8, f1, rne # perform operation
fsub.s f11, f8, f1, rtz # perform operation
fsub.s f11, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f26, f8, f18, dyn # perform operation
fsub.s f26, f8, f18, rdn # perform operation
fsub.s f26, f8, f18, rmm # perform operation
fsub.s f26, f8, f18, rne # perform operation
fsub.s f26, f8, f18, rtz # perform operation
fsub.s f26, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsub.s f21, f18, f23, dyn # perform operation
fsub.s f21, f18, f23, rdn # perform operation
fsub.s f21, f18, f23, rmm # perform operation
fsub.s f21, f18, f23, rne # perform operation
fsub.s f21, f18, f23, rtz # perform operation
fsub.s f21, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f24, f11, f21, dyn # perform operation
fsub.s f24, f11, f21, rdn # perform operation
fsub.s f24, f11, f21, rmm # perform operation
fsub.s f24, f11, f21, rne # perform operation
fsub.s f24, f11, f21, rtz # perform operation
fsub.s f24, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fsub.s f5, f3, f26, dyn # perform operation
fsub.s f5, f3, f26, rdn # perform operation
fsub.s f5, f3, f26, rmm # perform operation
fsub.s f5, f3, f26, rne # perform operation
fsub.s f5, f3, f26, rtz # perform operation
fsub.s f5, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fsub.s f27, f19, f18, dyn # perform operation
fsub.s f27, f19, f18, rdn # perform operation
fsub.s f27, f19, f18, rmm # perform operation
fsub.s f27, f19, f18, rne # perform operation
fsub.s f27, f19, f18, rtz # perform operation
fsub.s f27, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f15, f20, f2, dyn # perform operation
fsub.s f15, f20, f2, rdn # perform operation
fsub.s f15, f20, f2, rmm # perform operation
fsub.s f15, f20, f2, rne # perform operation
fsub.s f15, f20, f2, rtz # perform operation
fsub.s f15, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fsub.s f31, f23, f9, dyn # perform operation
fsub.s f31, f23, f9, rdn # perform operation
fsub.s f31, f23, f9, rmm # perform operation
fsub.s f31, f23, f9, rne # perform operation
fsub.s f31, f23, f9, rtz # perform operation
fsub.s f31, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsub.s f14, f24, f2, dyn # perform operation
fsub.s f14, f24, f2, rdn # perform operation
fsub.s f14, f24, f2, rmm # perform operation
fsub.s f14, f24, f2, rne # perform operation
fsub.s f14, f24, f2, rtz # perform operation
fsub.s f14, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fsub.s f12, f2, f24, dyn # perform operation
fsub.s f12, f2, f24, rdn # perform operation
fsub.s f12, f2, f24, rmm # perform operation
fsub.s f12, f2, f24, rne # perform operation
fsub.s f12, f2, f24, rtz # perform operation
fsub.s f12, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fsub.s f26, f16, f27, dyn # perform operation
fsub.s f26, f16, f27, rdn # perform operation
fsub.s f26, f16, f27, rmm # perform operation
fsub.s f26, f16, f27, rne # perform operation
fsub.s f26, f16, f27, rtz # perform operation
fsub.s f26, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fsub.s f19, f8, f14, dyn # perform operation
fsub.s f19, f8, f14, rdn # perform operation
fsub.s f19, f8, f14, rmm # perform operation
fsub.s f19, f8, f14, rne # perform operation
fsub.s f19, f8, f14, rtz # perform operation
fsub.s f19, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fsub.s f6, f11, f22, dyn # perform operation
fsub.s f6, f11, f22, rdn # perform operation
fsub.s f6, f11, f22, rmm # perform operation
fsub.s f6, f11, f22, rne # perform operation
fsub.s f6, f11, f22, rtz # perform operation
fsub.s f6, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fsub.s f9, f10, f21, dyn # perform operation
fsub.s f9, f10, f21, rdn # perform operation
fsub.s f9, f10, f21, rmm # perform operation
fsub.s f9, f10, f21, rne # perform operation
fsub.s f9, f10, f21, rtz # perform operation
fsub.s f9, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fsub.s f16, f8, f12, dyn # perform operation
fsub.s f16, f8, f12, rdn # perform operation
fsub.s f16, f8, f12, rmm # perform operation
fsub.s f16, f8, f12, rne # perform operation
fsub.s f16, f8, f12, rtz # perform operation
fsub.s f16, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f21, f25, f2, dyn # perform operation
fsub.s f21, f25, f2, rdn # perform operation
fsub.s f21, f25, f2, rmm # perform operation
fsub.s f21, f25, f2, rne # perform operation
fsub.s f21, f25, f2, rtz # perform operation
fsub.s f21, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fsub.s f11, f18, f7, dyn # perform operation
fsub.s f11, f18, f7, rdn # perform operation
fsub.s f11, f18, f7, rmm # perform operation
fsub.s f11, f18, f7, rne # perform operation
fsub.s f11, f18, f7, rtz # perform operation
fsub.s f11, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fsub.s f6, f5, f28, dyn # perform operation
fsub.s f6, f5, f28, rdn # perform operation
fsub.s f6, f5, f28, rmm # perform operation
fsub.s f6, f5, f28, rne # perform operation
fsub.s f6, f5, f28, rtz # perform operation
fsub.s f6, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f18, f24, f27, dyn # perform operation
fsub.s f18, f24, f27, rdn # perform operation
fsub.s f18, f24, f27, rmm # perform operation
fsub.s f18, f24, f27, rne # perform operation
fsub.s f18, f24, f27, rtz # perform operation
fsub.s f18, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fsub.s f30, f20, f11, dyn # perform operation
fsub.s f30, f20, f11, rdn # perform operation
fsub.s f30, f20, f11, rmm # perform operation
fsub.s f30, f20, f11, rne # perform operation
fsub.s f30, f20, f11, rtz # perform operation
fsub.s f30, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fsub.s f17, f16, f29, dyn # perform operation
fsub.s f17, f16, f29, rdn # perform operation
fsub.s f17, f16, f29, rmm # perform operation
fsub.s f17, f16, f29, rne # perform operation
fsub.s f17, f16, f29, rtz # perform operation
fsub.s f17, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fsub.s f22, f9, f19, dyn # perform operation
fsub.s f22, f9, f19, rdn # perform operation
fsub.s f22, f9, f19, rmm # perform operation
fsub.s f22, f9, f19, rne # perform operation
fsub.s f22, f9, f19, rtz # perform operation
fsub.s f22, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fsub.s f24, f26, f20, dyn # perform operation
fsub.s f24, f26, f20, rdn # perform operation
fsub.s f24, f26, f20, rmm # perform operation
fsub.s f24, f26, f20, rne # perform operation
fsub.s f24, f26, f20, rtz # perform operation
fsub.s f24, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f29, f9, f31, dyn # perform operation
fsub.s f29, f9, f31, rdn # perform operation
fsub.s f29, f9, f31, rmm # perform operation
fsub.s f29, f9, f31, rne # perform operation
fsub.s f29, f9, f31, rtz # perform operation
fsub.s f29, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fsub.s f28, f16, f7, dyn # perform operation
fsub.s f28, f16, f7, rdn # perform operation
fsub.s f28, f16, f7, rmm # perform operation
fsub.s f28, f16, f7, rne # perform operation
fsub.s f28, f16, f7, rtz # perform operation
fsub.s f28, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fsub.s f29, f19, f5, dyn # perform operation
fsub.s f29, f19, f5, rdn # perform operation
fsub.s f29, f19, f5, rmm # perform operation
fsub.s f29, f19, f5, rne # perform operation
fsub.s f29, f19, f5, rtz # perform operation
fsub.s f29, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f22, f7, f20, dyn # perform operation
fsub.s f22, f7, f20, rdn # perform operation
fsub.s f22, f7, f20, rmm # perform operation
fsub.s f22, f7, f20, rne # perform operation
fsub.s f22, f7, f20, rtz # perform operation
fsub.s f22, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fsub.s f5, f9, f19, dyn # perform operation
fsub.s f5, f9, f19, rdn # perform operation
fsub.s f5, f9, f19, rmm # perform operation
fsub.s f5, f9, f19, rne # perform operation
fsub.s f5, f9, f19, rtz # perform operation
fsub.s f5, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fsub.s f19, f27, f24, dyn # perform operation
fsub.s f19, f27, f24, rdn # perform operation
fsub.s f19, f27, f24, rmm # perform operation
fsub.s f19, f27, f24, rne # perform operation
fsub.s f19, f27, f24, rtz # perform operation
fsub.s f19, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fsub.s f16, f17, f6, dyn # perform operation
fsub.s f16, f17, f6, rdn # perform operation
fsub.s f16, f17, f6, rmm # perform operation
fsub.s f16, f17, f6, rne # perform operation
fsub.s f16, f17, f6, rtz # perform operation
fsub.s f16, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f13, f25, f27, dyn # perform operation
fsub.s f13, f25, f27, rdn # perform operation
fsub.s f13, f25, f27, rmm # perform operation
fsub.s f13, f25, f27, rne # perform operation
fsub.s f13, f25, f27, rtz # perform operation
fsub.s f13, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fsub.s f13, f28, f15, dyn # perform operation
fsub.s f13, f28, f15, rdn # perform operation
fsub.s f13, f28, f15, rmm # perform operation
fsub.s f13, f28, f15, rne # perform operation
fsub.s f13, f28, f15, rtz # perform operation
fsub.s f13, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fsub.s f6, f1, f16, dyn # perform operation
fsub.s f6, f1, f16, rdn # perform operation
fsub.s f6, f1, f16, rmm # perform operation
fsub.s f6, f1, f16, rne # perform operation
fsub.s f6, f1, f16, rtz # perform operation
fsub.s f6, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fsub.s f16, f10, f11, dyn # perform operation
fsub.s f16, f10, f11, rdn # perform operation
fsub.s f16, f10, f11, rmm # perform operation
fsub.s f16, f10, f11, rne # perform operation
fsub.s f16, f10, f11, rtz # perform operation
fsub.s f16, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fsub.s f17, f18, f9, dyn # perform operation
fsub.s f17, f18, f9, rdn # perform operation
fsub.s f17, f18, f9, rmm # perform operation
fsub.s f17, f18, f9, rne # perform operation
fsub.s f17, f18, f9, rtz # perform operation
fsub.s f17, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fsub.s f20, f11, f18, dyn # perform operation
fsub.s f20, f11, f18, rdn # perform operation
fsub.s f20, f11, f18, rmm # perform operation
fsub.s f20, f11, f18, rne # perform operation
fsub.s f20, f11, f18, rtz # perform operation
fsub.s f20, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fsub.s f24, f7, f10, dyn # perform operation
fsub.s f24, f7, f10, rdn # perform operation
fsub.s f24, f7, f10, rmm # perform operation
fsub.s f24, f7, f10, rne # perform operation
fsub.s f24, f7, f10, rtz # perform operation
fsub.s f24, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f1, f22, f3, dyn # perform operation
fsub.s f1, f22, f3, rdn # perform operation
fsub.s f1, f22, f3, rmm # perform operation
fsub.s f1, f22, f3, rne # perform operation
fsub.s f1, f22, f3, rtz # perform operation
fsub.s f1, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fsub.s f18, f8, f30, dyn # perform operation
fsub.s f18, f8, f30, rdn # perform operation
fsub.s f18, f8, f30, rmm # perform operation
fsub.s f18, f8, f30, rne # perform operation
fsub.s f18, f8, f30, rtz # perform operation
fsub.s f18, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fsub.s f26, f17, f10, dyn # perform operation
fsub.s f26, f17, f10, rdn # perform operation
fsub.s f26, f17, f10, rmm # perform operation
fsub.s f26, f17, f10, rne # perform operation
fsub.s f26, f17, f10, rtz # perform operation
fsub.s f26, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f8, f20, f7, dyn # perform operation
fsub.s f8, f20, f7, rdn # perform operation
fsub.s f8, f20, f7, rmm # perform operation
fsub.s f8, f20, f7, rne # perform operation
fsub.s f8, f20, f7, rtz # perform operation
fsub.s f8, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f6, f20, f25, dyn # perform operation
fsub.s f6, f20, f25, rdn # perform operation
fsub.s f6, f20, f25, rmm # perform operation
fsub.s f6, f20, f25, rne # perform operation
fsub.s f6, f20, f25, rtz # perform operation
fsub.s f6, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fsub.s f14, f7, f11, dyn # perform operation
fsub.s f14, f7, f11, rdn # perform operation
fsub.s f14, f7, f11, rmm # perform operation
fsub.s f14, f7, f11, rne # perform operation
fsub.s f14, f7, f11, rtz # perform operation
fsub.s f14, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fsub.s f28, f9, f16, dyn # perform operation
fsub.s f28, f9, f16, rdn # perform operation
fsub.s f28, f9, f16, rmm # perform operation
fsub.s f28, f9, f16, rne # perform operation
fsub.s f28, f9, f16, rtz # perform operation
fsub.s f28, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f10, f22, f26, dyn # perform operation
fsub.s f10, f22, f26, rdn # perform operation
fsub.s f10, f22, f26, rmm # perform operation
fsub.s f10, f22, f26, rne # perform operation
fsub.s f10, f22, f26, rtz # perform operation
fsub.s f10, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fsub.s f25, f27, f22, dyn # perform operation
fsub.s f25, f27, f22, rdn # perform operation
fsub.s f25, f27, f22, rmm # perform operation
fsub.s f25, f27, f22, rne # perform operation
fsub.s f25, f27, f22, rtz # perform operation
fsub.s f25, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fsub.s f10, f25, f28, dyn # perform operation
fsub.s f10, f25, f28, rdn # perform operation
fsub.s f10, f25, f28, rmm # perform operation
fsub.s f10, f25, f28, rne # perform operation
fsub.s f10, f25, f28, rtz # perform operation
fsub.s f10, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fsub.s f23, f22, f16, dyn # perform operation
fsub.s f23, f22, f16, rdn # perform operation
fsub.s f23, f22, f16, rmm # perform operation
fsub.s f23, f22, f16, rne # perform operation
fsub.s f23, f22, f16, rtz # perform operation
fsub.s f23, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fsub.s f23, f5, f1, dyn # perform operation
fsub.s f23, f5, f1, rdn # perform operation
fsub.s f23, f5, f1, rmm # perform operation
fsub.s f23, f5, f1, rne # perform operation
fsub.s f23, f5, f1, rtz # perform operation
fsub.s f23, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fsub.s f24, f7, f27, dyn # perform operation
fsub.s f24, f7, f27, rdn # perform operation
fsub.s f24, f7, f27, rmm # perform operation
fsub.s f24, f7, f27, rne # perform operation
fsub.s f24, f7, f27, rtz # perform operation
fsub.s f24, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fsub.s f15, f25, f1, dyn # perform operation
fsub.s f15, f25, f1, rdn # perform operation
fsub.s f15, f25, f1, rmm # perform operation
fsub.s f15, f25, f1, rne # perform operation
fsub.s f15, f25, f1, rtz # perform operation
fsub.s f15, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f16, f18, f31, dyn # perform operation
fsub.s f16, f18, f31, rdn # perform operation
fsub.s f16, f18, f31, rmm # perform operation
fsub.s f16, f18, f31, rne # perform operation
fsub.s f16, f18, f31, rtz # perform operation
fsub.s f16, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fsub.s f14, f9, f13, dyn # perform operation
fsub.s f14, f9, f13, rdn # perform operation
fsub.s f14, f9, f13, rmm # perform operation
fsub.s f14, f9, f13, rne # perform operation
fsub.s f14, f9, f13, rtz # perform operation
fsub.s f14, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fsub.s f31, f18, f13, dyn # perform operation
fsub.s f31, f18, f13, rdn # perform operation
fsub.s f31, f18, f13, rmm # perform operation
fsub.s f31, f18, f13, rne # perform operation
fsub.s f31, f18, f13, rtz # perform operation
fsub.s f31, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f6, f9, f5, dyn # perform operation
fsub.s f6, f9, f5, rdn # perform operation
fsub.s f6, f9, f5, rmm # perform operation
fsub.s f6, f9, f5, rne # perform operation
fsub.s f6, f9, f5, rtz # perform operation
fsub.s f6, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f20, f21, f11, dyn # perform operation
fsub.s f20, f21, f11, rdn # perform operation
fsub.s f20, f21, f11, rmm # perform operation
fsub.s f20, f21, f11, rne # perform operation
fsub.s f20, f21, f11, rtz # perform operation
fsub.s f20, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsub.s f2, f16, f22, dyn # perform operation
fsub.s f2, f16, f22, rdn # perform operation
fsub.s f2, f16, f22, rmm # perform operation
fsub.s f2, f16, f22, rne # perform operation
fsub.s f2, f16, f22, rtz # perform operation
fsub.s f2, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f27, f21, f10, dyn # perform operation
fsub.s f27, f21, f10, rdn # perform operation
fsub.s f27, f21, f10, rmm # perform operation
fsub.s f27, f21, f10, rne # perform operation
fsub.s f27, f21, f10, rtz # perform operation
fsub.s f27, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fsub.s f16, f12, f20, dyn # perform operation
fsub.s f16, f12, f20, rdn # perform operation
fsub.s f16, f12, f20, rmm # perform operation
fsub.s f16, f12, f20, rne # perform operation
fsub.s f16, f12, f20, rtz # perform operation
fsub.s f16, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fsub.s f8, f14, f13, dyn # perform operation
fsub.s f8, f14, f13, rdn # perform operation
fsub.s f8, f14, f13, rmm # perform operation
fsub.s f8, f14, f13, rne # perform operation
fsub.s f8, f14, f13, rtz # perform operation
fsub.s f8, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fsub.s f23, f25, f9, dyn # perform operation
fsub.s f23, f25, f9, rdn # perform operation
fsub.s f23, f25, f9, rmm # perform operation
fsub.s f23, f25, f9, rne # perform operation
fsub.s f23, f25, f9, rtz # perform operation
fsub.s f23, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fsub.s f10, f18, f27, dyn # perform operation
fsub.s f10, f18, f27, rdn # perform operation
fsub.s f10, f18, f27, rmm # perform operation
fsub.s f10, f18, f27, rne # perform operation
fsub.s f10, f18, f27, rtz # perform operation
fsub.s f10, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f11, f23, f29, dyn # perform operation
fsub.s f11, f23, f29, rdn # perform operation
fsub.s f11, f23, f29, rmm # perform operation
fsub.s f11, f23, f29, rne # perform operation
fsub.s f11, f23, f29, rtz # perform operation
fsub.s f11, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsub.s f26, f28, f14, dyn # perform operation
fsub.s f26, f28, f14, rdn # perform operation
fsub.s f26, f28, f14, rmm # perform operation
fsub.s f26, f28, f14, rne # perform operation
fsub.s f26, f28, f14, rtz # perform operation
fsub.s f26, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fsub.s f15, f24, f22, dyn # perform operation
fsub.s f15, f24, f22, rdn # perform operation
fsub.s f15, f24, f22, rmm # perform operation
fsub.s f15, f24, f22, rne # perform operation
fsub.s f15, f24, f22, rtz # perform operation
fsub.s f15, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fsub.s f31, f11, f6, dyn # perform operation
fsub.s f31, f11, f6, rdn # perform operation
fsub.s f31, f11, f6, rmm # perform operation
fsub.s f31, f11, f6, rne # perform operation
fsub.s f31, f11, f6, rtz # perform operation
fsub.s f31, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsub.s f29, f28, f18, dyn # perform operation
fsub.s f29, f28, f18, rdn # perform operation
fsub.s f29, f28, f18, rmm # perform operation
fsub.s f29, f28, f18, rne # perform operation
fsub.s f29, f28, f18, rtz # perform operation
fsub.s f29, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fsub.s f11, f15, f8, dyn # perform operation
fsub.s f11, f15, f8, rdn # perform operation
fsub.s f11, f15, f8, rmm # perform operation
fsub.s f11, f15, f8, rne # perform operation
fsub.s f11, f15, f8, rtz # perform operation
fsub.s f11, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fsub.s f13, f31, f9, dyn # perform operation
fsub.s f13, f31, f9, rdn # perform operation
fsub.s f13, f31, f9, rmm # perform operation
fsub.s f13, f31, f9, rne # perform operation
fsub.s f13, f31, f9, rtz # perform operation
fsub.s f13, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fsub.s f11, f3, f18, dyn # perform operation
fsub.s f11, f3, f18, rdn # perform operation
fsub.s f11, f3, f18, rmm # perform operation
fsub.s f11, f3, f18, rne # perform operation
fsub.s f11, f3, f18, rtz # perform operation
fsub.s f11, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fsub.s f25, f17, f14, dyn # perform operation
fsub.s f25, f17, f14, rdn # perform operation
fsub.s f25, f17, f14, rmm # perform operation
fsub.s f25, f17, f14, rne # perform operation
fsub.s f25, f17, f14, rtz # perform operation
fsub.s f25, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f11, f13, f2, dyn # perform operation
fsub.s f11, f13, f2, rdn # perform operation
fsub.s f11, f13, f2, rmm # perform operation
fsub.s f11, f13, f2, rne # perform operation
fsub.s f11, f13, f2, rtz # perform operation
fsub.s f11, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fsub.s f9, f19, f12, dyn # perform operation
fsub.s f9, f19, f12, rdn # perform operation
fsub.s f9, f19, f12, rmm # perform operation
fsub.s f9, f19, f12, rne # perform operation
fsub.s f9, f19, f12, rtz # perform operation
fsub.s f9, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
fsub.s f5, f8, f25, dyn # perform operation
fsub.s f5, f8, f25, rdn # perform operation
fsub.s f5, f8, f25, rmm # perform operation
fsub.s f5, f8, f25, rne # perform operation
fsub.s f5, f8, f25, rtz # perform operation
fsub.s f5, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsub.s f28, f18, f7, dyn # perform operation
fsub.s f28, f18, f7, rdn # perform operation
fsub.s f28, f18, f7, rmm # perform operation
fsub.s f28, f18, f7, rne # perform operation
fsub.s f28, f18, f7, rtz # perform operation
fsub.s f28, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fsub.s f9, f11, f7, dyn # perform operation
fsub.s f9, f11, f7, rdn # perform operation
fsub.s f9, f11, f7, rmm # perform operation
fsub.s f9, f11, f7, rne # perform operation
fsub.s f9, f11, f7, rtz # perform operation
fsub.s f9, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fsub.s f17, f12, f23, dyn # perform operation
fsub.s f17, f12, f23, rdn # perform operation
fsub.s f17, f12, f23, rmm # perform operation
fsub.s f17, f12, f23, rne # perform operation
fsub.s f17, f12, f23, rtz # perform operation
fsub.s f17, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fsub.s f25, f3, f5, dyn # perform operation
fsub.s f25, f3, f5, rdn # perform operation
fsub.s f25, f3, f5, rmm # perform operation
fsub.s f25, f3, f5, rne # perform operation
fsub.s f25, f3, f5, rtz # perform operation
fsub.s f25, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fsub.s f10, f21, f14, dyn # perform operation
fsub.s f10, f21, f14, rdn # perform operation
fsub.s f10, f21, f14, rmm # perform operation
fsub.s f10, f21, f14, rne # perform operation
fsub.s f10, f21, f14, rtz # perform operation
fsub.s f10, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fsub.s f29, f14, f21, dyn # perform operation
fsub.s f29, f14, f21, rdn # perform operation
fsub.s f29, f14, f21, rmm # perform operation
fsub.s f29, f14, f21, rne # perform operation
fsub.s f29, f14, f21, rtz # perform operation
fsub.s f29, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fsub.s f2, f29, f17, dyn # perform operation
fsub.s f2, f29, f17, rdn # perform operation
fsub.s f2, f29, f17, rmm # perform operation
fsub.s f2, f29, f17, rne # perform operation
fsub.s f2, f29, f17, rtz # perform operation
fsub.s f2, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fsub.s f23, f11, f20, dyn # perform operation
fsub.s f23, f11, f20, rdn # perform operation
fsub.s f23, f11, f20, rmm # perform operation
fsub.s f23, f11, f20, rne # perform operation
fsub.s f23, f11, f20, rtz # perform operation
fsub.s f23, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fsub.s f21, f12, f18, dyn # perform operation
fsub.s f21, f12, f18, rdn # perform operation
fsub.s f21, f12, f18, rmm # perform operation
fsub.s f21, f12, f18, rne # perform operation
fsub.s f21, f12, f18, rtz # perform operation
fsub.s f21, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fsub.s f18, f9, f15, dyn # perform operation
fsub.s f18, f9, f15, rdn # perform operation
fsub.s f18, f9, f15, rmm # perform operation
fsub.s f18, f9, f15, rne # perform operation
fsub.s f18, f9, f15, rtz # perform operation
fsub.s f18, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f1, f29, f7, dyn # perform operation
fsub.s f1, f29, f7, rdn # perform operation
fsub.s f1, f29, f7, rmm # perform operation
fsub.s f1, f29, f7, rne # perform operation
fsub.s f1, f29, f7, rtz # perform operation
fsub.s f1, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f22, f17, f10, dyn # perform operation
fsub.s f22, f17, f10, rdn # perform operation
fsub.s f22, f17, f10, rmm # perform operation
fsub.s f22, f17, f10, rne # perform operation
fsub.s f22, f17, f10, rtz # perform operation
fsub.s f22, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fsub.s f2, f13, f26, dyn # perform operation
fsub.s f2, f13, f26, rdn # perform operation
fsub.s f2, f13, f26, rmm # perform operation
fsub.s f2, f13, f26, rne # perform operation
fsub.s f2, f13, f26, rtz # perform operation
fsub.s f2, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f28, f23, f10, dyn # perform operation
fsub.s f28, f23, f10, rdn # perform operation
fsub.s f28, f23, f10, rmm # perform operation
fsub.s f28, f23, f10, rne # perform operation
fsub.s f28, f23, f10, rtz # perform operation
fsub.s f28, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fsub.s f9, f5, f31, dyn # perform operation
fsub.s f9, f5, f31, rdn # perform operation
fsub.s f9, f5, f31, rmm # perform operation
fsub.s f9, f5, f31, rne # perform operation
fsub.s f9, f5, f31, rtz # perform operation
fsub.s f9, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fsub.s f31, f1, f25, dyn # perform operation
fsub.s f31, f1, f25, rdn # perform operation
fsub.s f31, f1, f25, rmm # perform operation
fsub.s f31, f1, f25, rne # perform operation
fsub.s f31, f1, f25, rtz # perform operation
fsub.s f31, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fsub.s f12, f21, f6, dyn # perform operation
fsub.s f12, f21, f6, rdn # perform operation
fsub.s f12, f21, f6, rmm # perform operation
fsub.s f12, f21, f6, rne # perform operation
fsub.s f12, f21, f6, rtz # perform operation
fsub.s f12, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fsub.s f19, f15, f22, dyn # perform operation
fsub.s f19, f15, f22, rdn # perform operation
fsub.s f19, f15, f22, rmm # perform operation
fsub.s f19, f15, f22, rne # perform operation
fsub.s f19, f15, f22, rtz # perform operation
fsub.s f19, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f20, f3, f11, dyn # perform operation
fsub.s f20, f3, f11, rdn # perform operation
fsub.s f20, f3, f11, rmm # perform operation
fsub.s f20, f3, f11, rne # perform operation
fsub.s f20, f3, f11, rtz # perform operation
fsub.s f20, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f12, f21, f31, dyn # perform operation
fsub.s f12, f21, f31, rdn # perform operation
fsub.s f12, f21, f31, rmm # perform operation
fsub.s f12, f21, f31, rne # perform operation
fsub.s f12, f21, f31, rtz # perform operation
fsub.s f12, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fsub.s f27, f1, f22, dyn # perform operation
fsub.s f27, f1, f22, rdn # perform operation
fsub.s f27, f1, f22, rmm # perform operation
fsub.s f27, f1, f22, rne # perform operation
fsub.s f27, f1, f22, rtz # perform operation
fsub.s f27, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fsub.s f14, f5, f24, dyn # perform operation
fsub.s f14, f5, f24, rdn # perform operation
fsub.s f14, f5, f24, rmm # perform operation
fsub.s f14, f5, f24, rne # perform operation
fsub.s f14, f5, f24, rtz # perform operation
fsub.s f14, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fsub.s f17, f31, f28, dyn # perform operation
fsub.s f17, f31, f28, rdn # perform operation
fsub.s f17, f31, f28, rmm # perform operation
fsub.s f17, f31, f28, rne # perform operation
fsub.s f17, f31, f28, rtz # perform operation
fsub.s f17, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fsub.s f18, f14, f17, dyn # perform operation
fsub.s f18, f14, f17, rdn # perform operation
fsub.s f18, f14, f17, rmm # perform operation
fsub.s f18, f14, f17, rne # perform operation
fsub.s f18, f14, f17, rtz # perform operation
fsub.s f18, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f30, f6, f9, dyn # perform operation
fsub.s f30, f6, f9, rdn # perform operation
fsub.s f30, f6, f9, rmm # perform operation
fsub.s f30, f6, f9, rne # perform operation
fsub.s f30, f6, f9, rtz # perform operation
fsub.s f30, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fsub.s f14, f26, f25, dyn # perform operation
fsub.s f14, f26, f25, rdn # perform operation
fsub.s f14, f26, f25, rmm # perform operation
fsub.s f14, f26, f25, rne # perform operation
fsub.s f14, f26, f25, rtz # perform operation
fsub.s f14, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fsub.s f22, f7, f25, dyn # perform operation
fsub.s f22, f7, f25, rdn # perform operation
fsub.s f22, f7, f25, rmm # perform operation
fsub.s f22, f7, f25, rne # perform operation
fsub.s f22, f7, f25, rtz # perform operation
fsub.s f22, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fsub.s f16, f12, f11, dyn # perform operation
fsub.s f16, f12, f11, rdn # perform operation
fsub.s f16, f12, f11, rmm # perform operation
fsub.s f16, f12, f11, rne # perform operation
fsub.s f16, f12, f11, rtz # perform operation
fsub.s f16, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fsub.s f3, f6, f26, dyn # perform operation
fsub.s f3, f6, f26, rdn # perform operation
fsub.s f3, f6, f26, rmm # perform operation
fsub.s f3, f6, f26, rne # perform operation
fsub.s f3, f6, f26, rtz # perform operation
fsub.s f3, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f30, f19, f15, dyn # perform operation
fsub.s f30, f19, f15, rdn # perform operation
fsub.s f30, f19, f15, rmm # perform operation
fsub.s f30, f19, f15, rne # perform operation
fsub.s f30, f19, f15, rtz # perform operation
fsub.s f30, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fsub.s f14, f6, f1, dyn # perform operation
fsub.s f14, f6, f1, rdn # perform operation
fsub.s f14, f6, f1, rmm # perform operation
fsub.s f14, f6, f1, rne # perform operation
fsub.s f14, f6, f1, rtz # perform operation
fsub.s f14, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fsub.s f8, f25, f9, dyn # perform operation
fsub.s f8, f25, f9, rdn # perform operation
fsub.s f8, f25, f9, rmm # perform operation
fsub.s f8, f25, f9, rne # perform operation
fsub.s f8, f25, f9, rtz # perform operation
fsub.s f8, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fsub.s f13, f18, f1, dyn # perform operation
fsub.s f13, f18, f1, rdn # perform operation
fsub.s f13, f18, f1, rmm # perform operation
fsub.s f13, f18, f1, rne # perform operation
fsub.s f13, f18, f1, rtz # perform operation
fsub.s f13, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fsub.s f30, f10, f1, dyn # perform operation
fsub.s f30, f10, f1, rdn # perform operation
fsub.s f30, f10, f1, rmm # perform operation
fsub.s f30, f10, f1, rne # perform operation
fsub.s f30, f10, f1, rtz # perform operation
fsub.s f30, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fsub.s f29, f13, f23, dyn # perform operation
fsub.s f29, f13, f23, rdn # perform operation
fsub.s f29, f13, f23, rmm # perform operation
fsub.s f29, f13, f23, rne # perform operation
fsub.s f29, f13, f23, rtz # perform operation
fsub.s f29, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fsub.s f10, f17, f19, dyn # perform operation
fsub.s f10, f17, f19, rdn # perform operation
fsub.s f10, f17, f19, rmm # perform operation
fsub.s f10, f17, f19, rne # perform operation
fsub.s f10, f17, f19, rtz # perform operation
fsub.s f10, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fsub.s f3, f1, f19, dyn # perform operation
fsub.s f3, f1, f19, rdn # perform operation
fsub.s f3, f1, f19, rmm # perform operation
fsub.s f3, f1, f19, rne # perform operation
fsub.s f3, f1, f19, rtz # perform operation
fsub.s f3, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fsub.s f19, f21, f26, dyn # perform operation
fsub.s f19, f21, f26, rdn # perform operation
fsub.s f19, f21, f26, rmm # perform operation
fsub.s f19, f21, f26, rne # perform operation
fsub.s f19, f21, f26, rtz # perform operation
fsub.s f19, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsub.s f29, f30, f14, dyn # perform operation
fsub.s f29, f30, f14, rdn # perform operation
fsub.s f29, f30, f14, rmm # perform operation
fsub.s f29, f30, f14, rne # perform operation
fsub.s f29, f30, f14, rtz # perform operation
fsub.s f29, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f25, f10, f9, dyn # perform operation
fsub.s f25, f10, f9, rdn # perform operation
fsub.s f25, f10, f9, rmm # perform operation
fsub.s f25, f10, f9, rne # perform operation
fsub.s f25, f10, f9, rtz # perform operation
fsub.s f25, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f20, f12, f27, dyn # perform operation
fsub.s f20, f12, f27, rdn # perform operation
fsub.s f20, f12, f27, rmm # perform operation
fsub.s f20, f12, f27, rne # perform operation
fsub.s f20, f12, f27, rtz # perform operation
fsub.s f20, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fsub.s f5, f22, f19, dyn # perform operation
fsub.s f5, f22, f19, rdn # perform operation
fsub.s f5, f22, f19, rmm # perform operation
fsub.s f5, f22, f19, rne # perform operation
fsub.s f5, f22, f19, rtz # perform operation
fsub.s f5, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fsub.s f6, f30, f14, dyn # perform operation
fsub.s f6, f30, f14, rdn # perform operation
fsub.s f6, f30, f14, rmm # perform operation
fsub.s f6, f30, f14, rne # perform operation
fsub.s f6, f30, f14, rtz # perform operation
fsub.s f6, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f31, f14, f26, dyn # perform operation
fsub.s f31, f14, f26, rdn # perform operation
fsub.s f31, f14, f26, rmm # perform operation
fsub.s f31, f14, f26, rne # perform operation
fsub.s f31, f14, f26, rtz # perform operation
fsub.s f31, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fsub.s f25, f17, f15, dyn # perform operation
fsub.s f25, f17, f15, rdn # perform operation
fsub.s f25, f17, f15, rmm # perform operation
fsub.s f25, f17, f15, rne # perform operation
fsub.s f25, f17, f15, rtz # perform operation
fsub.s f25, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fsub.s f9, f2, f12, dyn # perform operation
fsub.s f9, f2, f12, rdn # perform operation
fsub.s f9, f2, f12, rmm # perform operation
fsub.s f9, f2, f12, rne # perform operation
fsub.s f9, f2, f12, rtz # perform operation
fsub.s f9, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fsub.s f23, f21, f25, dyn # perform operation
fsub.s f23, f21, f25, rdn # perform operation
fsub.s f23, f21, f25, rmm # perform operation
fsub.s f23, f21, f25, rne # perform operation
fsub.s f23, f21, f25, rtz # perform operation
fsub.s f23, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsub.s f9, f18, f12, dyn # perform operation
fsub.s f9, f18, f12, rdn # perform operation
fsub.s f9, f18, f12, rmm # perform operation
fsub.s f9, f18, f12, rne # perform operation
fsub.s f9, f18, f12, rtz # perform operation
fsub.s f9, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fsub.s f15, f9, f21, dyn # perform operation
fsub.s f15, f9, f21, rdn # perform operation
fsub.s f15, f9, f21, rmm # perform operation
fsub.s f15, f9, f21, rne # perform operation
fsub.s f15, f9, f21, rtz # perform operation
fsub.s f15, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fsub.s f29, f1, f11, dyn # perform operation
fsub.s f29, f1, f11, rdn # perform operation
fsub.s f29, f1, f11, rmm # perform operation
fsub.s f29, f1, f11, rne # perform operation
fsub.s f29, f1, f11, rtz # perform operation
fsub.s f29, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fsub.s f2, f10, f24, dyn # perform operation
fsub.s f2, f10, f24, rdn # perform operation
fsub.s f2, f10, f24, rmm # perform operation
fsub.s f2, f10, f24, rne # perform operation
fsub.s f2, f10, f24, rtz # perform operation
fsub.s f2, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f10, f19, f16, dyn # perform operation
fsub.s f10, f19, f16, rdn # perform operation
fsub.s f10, f19, f16, rmm # perform operation
fsub.s f10, f19, f16, rne # perform operation
fsub.s f10, f19, f16, rtz # perform operation
fsub.s f10, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fsub.s f13, f25, f30, dyn # perform operation
fsub.s f13, f25, f30, rdn # perform operation
fsub.s f13, f25, f30, rmm # perform operation
fsub.s f13, f25, f30, rne # perform operation
fsub.s f13, f25, f30, rtz # perform operation
fsub.s f13, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f13, f10, f12, dyn # perform operation
fsub.s f13, f10, f12, rdn # perform operation
fsub.s f13, f10, f12, rmm # perform operation
fsub.s f13, f10, f12, rne # perform operation
fsub.s f13, f10, f12, rtz # perform operation
fsub.s f13, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fsub.s f13, f6, f12, dyn # perform operation
fsub.s f13, f6, f12, rdn # perform operation
fsub.s f13, f6, f12, rmm # perform operation
fsub.s f13, f6, f12, rne # perform operation
fsub.s f13, f6, f12, rtz # perform operation
fsub.s f13, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fsub.s f20, f3, f9, dyn # perform operation
fsub.s f20, f3, f9, rdn # perform operation
fsub.s f20, f3, f9, rmm # perform operation
fsub.s f20, f3, f9, rne # perform operation
fsub.s f20, f3, f9, rtz # perform operation
fsub.s f20, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f24, f5, f27, dyn # perform operation
fsub.s f24, f5, f27, rdn # perform operation
fsub.s f24, f5, f27, rmm # perform operation
fsub.s f24, f5, f27, rne # perform operation
fsub.s f24, f5, f27, rtz # perform operation
fsub.s f24, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fsub.s f10, f6, f19, dyn # perform operation
fsub.s f10, f6, f19, rdn # perform operation
fsub.s f10, f6, f19, rmm # perform operation
fsub.s f10, f6, f19, rne # perform operation
fsub.s f10, f6, f19, rtz # perform operation
fsub.s f10, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fsub.s f28, f3, f2, dyn # perform operation
fsub.s f28, f3, f2, rdn # perform operation
fsub.s f28, f3, f2, rmm # perform operation
fsub.s f28, f3, f2, rne # perform operation
fsub.s f28, f3, f2, rtz # perform operation
fsub.s f28, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fsub.s f6, f1, f2, dyn # perform operation
fsub.s f6, f1, f2, rdn # perform operation
fsub.s f6, f1, f2, rmm # perform operation
fsub.s f6, f1, f2, rne # perform operation
fsub.s f6, f1, f2, rtz # perform operation
fsub.s f6, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fsub.s f7, f16, f25, dyn # perform operation
fsub.s f7, f16, f25, rdn # perform operation
fsub.s f7, f16, f25, rmm # perform operation
fsub.s f7, f16, f25, rne # perform operation
fsub.s f7, f16, f25, rtz # perform operation
fsub.s f7, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f16, f25 # perform operation


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
