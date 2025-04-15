///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fsqrt.s.S
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
add x14, x21, x26 # perform first operation
fsqrt.s f9, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x17 # perform first operation
fsqrt.s f5, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x11, x29 # perform first operation
fsqrt.s f22, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f23, f18 # perform first operation
fsqrt.s f18, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x3, x17 # perform first operation
fsqrt.s f27, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x22, x7 # perform first operation
fsqrt.s f22, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f6, f17 # perform first operation
fsqrt.s f22, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f31, f17 # perform first operation
fsqrt.s f19, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f18, f23 # perform first operation
fsqrt.s f16, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f13, f5 # perform first operation
fsqrt.s f13, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f29, f19 # perform first operation
fsqrt.s f19, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f20, f16 # perform first operation
fsqrt.s f27, f22 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75e7b0f28ba08a09 # load x3 with value 0x75e7b0f28ba08a09
sw x3, 0(x2) # store 0x75e7b0f28ba08a09 in memory
flw f0, 0(x2) # load 0x75e7b0f28ba08a09 from memory into f0
fsqrt.s f8, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d4c1afb8421dddb # load x3 with value 0x7d4c1afb8421dddb
sw x3, 0(x2) # store 0x7d4c1afb8421dddb in memory
flw f1, 0(x2) # load 0x7d4c1afb8421dddb from memory into f1
fsqrt.s f29, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeecd71b0e84ff74d # load x3 with value 0xeecd71b0e84ff74d
sw x3, 0(x2) # store 0xeecd71b0e84ff74d in memory
flw f2, 0(x2) # load 0xeecd71b0e84ff74d from memory into f2
fsqrt.s f17, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67347f3a9c904652 # load x3 with value 0x67347f3a9c904652
sw x3, 0(x2) # store 0x67347f3a9c904652 in memory
flw f3, 0(x2) # load 0x67347f3a9c904652 from memory into f3
fsqrt.s f9, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacbb22d56a20cec6 # load x3 with value 0xacbb22d56a20cec6
sw x3, 0(x2) # store 0xacbb22d56a20cec6 in memory
flw f4, 0(x2) # load 0xacbb22d56a20cec6 from memory into f4
fsqrt.s f5, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73f4f848aede5d2 # load x3 with value 0x73f4f848aede5d2
sw x3, 0(x2) # store 0x73f4f848aede5d2 in memory
flw f5, 0(x2) # load 0x73f4f848aede5d2 from memory into f5
fsqrt.s f19, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7352ff02815a11e # load x3 with value 0xe7352ff02815a11e
sw x3, 0(x2) # store 0xe7352ff02815a11e in memory
flw f6, 0(x2) # load 0xe7352ff02815a11e from memory into f6
fsqrt.s f31, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xadb53c840ef26104 # load x3 with value 0xadb53c840ef26104
sw x3, 0(x2) # store 0xadb53c840ef26104 in memory
flw f7, 0(x2) # load 0xadb53c840ef26104 from memory into f7
fsqrt.s f28, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x194a1d7ac5a432a3 # load x3 with value 0x194a1d7ac5a432a3
sw x3, 0(x2) # store 0x194a1d7ac5a432a3 in memory
flw f8, 0(x2) # load 0x194a1d7ac5a432a3 from memory into f8
fsqrt.s f21, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xccb588648b1d8835 # load x3 with value 0xccb588648b1d8835
sw x3, 0(x2) # store 0xccb588648b1d8835 in memory
flw f9, 0(x2) # load 0xccb588648b1d8835 from memory into f9
fsqrt.s f10, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2780f44ce16785eb # load x3 with value 0x2780f44ce16785eb
sw x3, 0(x2) # store 0x2780f44ce16785eb in memory
flw f10, 0(x2) # load 0x2780f44ce16785eb from memory into f10
fsqrt.s f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb767dd7f4a70155c # load x3 with value 0xb767dd7f4a70155c
sw x3, 0(x2) # store 0xb767dd7f4a70155c in memory
flw f11, 0(x2) # load 0xb767dd7f4a70155c from memory into f11
fsqrt.s f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64d155b2cc93c21b # load x3 with value 0x64d155b2cc93c21b
sw x3, 0(x2) # store 0x64d155b2cc93c21b in memory
flw f12, 0(x2) # load 0x64d155b2cc93c21b from memory into f12
fsqrt.s f1, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xddf07d376a34f10f # load x3 with value 0xddf07d376a34f10f
sw x3, 0(x2) # store 0xddf07d376a34f10f in memory
flw f13, 0(x2) # load 0xddf07d376a34f10f from memory into f13
fsqrt.s f25, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcb68458323325f04 # load x3 with value 0xcb68458323325f04
sw x3, 0(x2) # store 0xcb68458323325f04 in memory
flw f14, 0(x2) # load 0xcb68458323325f04 from memory into f14
fsqrt.s f25, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfba19c928ff0975c # load x3 with value 0xfba19c928ff0975c
sw x3, 0(x2) # store 0xfba19c928ff0975c in memory
flw f15, 0(x2) # load 0xfba19c928ff0975c from memory into f15
fsqrt.s f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc1994e438f8b7e5 # load x3 with value 0xdc1994e438f8b7e5
sw x3, 0(x2) # store 0xdc1994e438f8b7e5 in memory
flw f16, 0(x2) # load 0xdc1994e438f8b7e5 from memory into f16
fsqrt.s f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb899e1b99f50b682 # load x3 with value 0xb899e1b99f50b682
sw x3, 0(x2) # store 0xb899e1b99f50b682 in memory
flw f17, 0(x2) # load 0xb899e1b99f50b682 from memory into f17
fsqrt.s f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7cef6692ca273f87 # load x3 with value 0x7cef6692ca273f87
sw x3, 0(x2) # store 0x7cef6692ca273f87 in memory
flw f18, 0(x2) # load 0x7cef6692ca273f87 from memory into f18
fsqrt.s f3, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc38b4b7f81023f15 # load x3 with value 0xc38b4b7f81023f15
sw x3, 0(x2) # store 0xc38b4b7f81023f15 in memory
flw f19, 0(x2) # load 0xc38b4b7f81023f15 from memory into f19
fsqrt.s f22, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x33b84b84984e91a4 # load x3 with value 0x33b84b84984e91a4
sw x3, 0(x2) # store 0x33b84b84984e91a4 in memory
flw f20, 0(x2) # load 0x33b84b84984e91a4 from memory into f20
fsqrt.s f29, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54e0d12d3438c00e # load x3 with value 0x54e0d12d3438c00e
sw x3, 0(x2) # store 0x54e0d12d3438c00e in memory
flw f21, 0(x2) # load 0x54e0d12d3438c00e from memory into f21
fsqrt.s f28, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1b07a062146e01 # load x3 with value 0x4f1b07a062146e01
sw x3, 0(x2) # store 0x4f1b07a062146e01 in memory
flw f22, 0(x2) # load 0x4f1b07a062146e01 from memory into f22
fsqrt.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14ac13bd4d90e475 # load x3 with value 0x14ac13bd4d90e475
sw x3, 0(x2) # store 0x14ac13bd4d90e475 in memory
flw f23, 0(x2) # load 0x14ac13bd4d90e475 from memory into f23
fsqrt.s f1, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa442b807184a829a # load x3 with value 0xa442b807184a829a
sw x3, 0(x2) # store 0xa442b807184a829a in memory
flw f24, 0(x2) # load 0xa442b807184a829a from memory into f24
fsqrt.s f18, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc70682d81209cb96 # load x3 with value 0xc70682d81209cb96
sw x3, 0(x2) # store 0xc70682d81209cb96 in memory
flw f25, 0(x2) # load 0xc70682d81209cb96 from memory into f25
fsqrt.s f11, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4734765963771c2d # load x3 with value 0x4734765963771c2d
sw x3, 0(x2) # store 0x4734765963771c2d in memory
flw f26, 0(x2) # load 0x4734765963771c2d from memory into f26
fsqrt.s f7, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8c99f44b08980e9 # load x3 with value 0xa8c99f44b08980e9
sw x3, 0(x2) # store 0xa8c99f44b08980e9 in memory
flw f27, 0(x2) # load 0xa8c99f44b08980e9 from memory into f27
fsqrt.s f22, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9a95f5fdba20f486 # load x3 with value 0x9a95f5fdba20f486
sw x3, 0(x2) # store 0x9a95f5fdba20f486 in memory
flw f28, 0(x2) # load 0x9a95f5fdba20f486 from memory into f28
fsqrt.s f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x230931e3293fc93d # load x3 with value 0x230931e3293fc93d
sw x3, 0(x2) # store 0x230931e3293fc93d in memory
flw f29, 0(x2) # load 0x230931e3293fc93d from memory into f29
fsqrt.s f1, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc7c15457cc3b9a1 # load x3 with value 0xdc7c15457cc3b9a1
sw x3, 0(x2) # store 0xdc7c15457cc3b9a1 in memory
flw f30, 0(x2) # load 0xdc7c15457cc3b9a1 from memory into f30
fsqrt.s f14, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x190c75066ad7ce8f # load x3 with value 0x190c75066ad7ce8f
sw x3, 0(x2) # store 0x190c75066ad7ce8f in memory
flw f31, 0(x2) # load 0x190c75066ad7ce8f from memory into f31
fsqrt.s f15, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc9f7f2c48fe2508 # load x3 with value 0xdc9f7f2c48fe2508
sw x3, 0(x2) # store 0xdc9f7f2c48fe2508 in memory
flw f14, 0(x2) # load 0xdc9f7f2c48fe2508 from memory into f14
fsqrt.s f0, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6300b3c472703e2 # load x3 with value 0xa6300b3c472703e2
sw x3, 0(x2) # store 0xa6300b3c472703e2 in memory
flw f21, 0(x2) # load 0xa6300b3c472703e2 from memory into f21
fsqrt.s f1, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x375bd0adeef82913 # load x3 with value 0x375bd0adeef82913
sw x3, 0(x2) # store 0x375bd0adeef82913 in memory
flw f3, 0(x2) # load 0x375bd0adeef82913 from memory into f3
fsqrt.s f2, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63eeb510d7b040d7 # load x3 with value 0x63eeb510d7b040d7
sw x3, 0(x2) # store 0x63eeb510d7b040d7 in memory
flw f26, 0(x2) # load 0x63eeb510d7b040d7 from memory into f26
fsqrt.s f3, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2860bd0526786bbe # load x3 with value 0x2860bd0526786bbe
sw x3, 0(x2) # store 0x2860bd0526786bbe in memory
flw f21, 0(x2) # load 0x2860bd0526786bbe from memory into f21
fsqrt.s f4, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbd97fda2a809d9 # load x3 with value 0x7fbd97fda2a809d9
sw x3, 0(x2) # store 0x7fbd97fda2a809d9 in memory
flw f11, 0(x2) # load 0x7fbd97fda2a809d9 from memory into f11
fsqrt.s f5, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb0991ce5ec1bc23 # load x3 with value 0xdb0991ce5ec1bc23
sw x3, 0(x2) # store 0xdb0991ce5ec1bc23 in memory
flw f12, 0(x2) # load 0xdb0991ce5ec1bc23 from memory into f12
fsqrt.s f6, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d0c82b80a4dce3f # load x3 with value 0x7d0c82b80a4dce3f
sw x3, 0(x2) # store 0x7d0c82b80a4dce3f in memory
flw f19, 0(x2) # load 0x7d0c82b80a4dce3f from memory into f19
fsqrt.s f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5165b903527ca8 # load x3 with value 0x5165b903527ca8
sw x3, 0(x2) # store 0x5165b903527ca8 in memory
flw f7, 0(x2) # load 0x5165b903527ca8 from memory into f7
fsqrt.s f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee5a61dc7b5b4eb8 # load x3 with value 0xee5a61dc7b5b4eb8
sw x3, 0(x2) # store 0xee5a61dc7b5b4eb8 in memory
flw f12, 0(x2) # load 0xee5a61dc7b5b4eb8 from memory into f12
fsqrt.s f9, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x741a22af53e2a66f # load x3 with value 0x741a22af53e2a66f
sw x3, 0(x2) # store 0x741a22af53e2a66f in memory
flw f12, 0(x2) # load 0x741a22af53e2a66f from memory into f12
fsqrt.s f10, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb6b05a9861ff9022 # load x3 with value 0xb6b05a9861ff9022
sw x3, 0(x2) # store 0xb6b05a9861ff9022 in memory
flw f15, 0(x2) # load 0xb6b05a9861ff9022 from memory into f15
fsqrt.s f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93c87b48c0b41139 # load x3 with value 0x93c87b48c0b41139
sw x3, 0(x2) # store 0x93c87b48c0b41139 in memory
flw f29, 0(x2) # load 0x93c87b48c0b41139 from memory into f29
fsqrt.s f12, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b253447533e1ed7 # load x3 with value 0x7b253447533e1ed7
sw x3, 0(x2) # store 0x7b253447533e1ed7 in memory
flw f8, 0(x2) # load 0x7b253447533e1ed7 from memory into f8
fsqrt.s f13, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a84a13f5de2a1f1 # load x3 with value 0x2a84a13f5de2a1f1
sw x3, 0(x2) # store 0x2a84a13f5de2a1f1 in memory
flw f2, 0(x2) # load 0x2a84a13f5de2a1f1 from memory into f2
fsqrt.s f14, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc310b1e5a97e9566 # load x3 with value 0xc310b1e5a97e9566
sw x3, 0(x2) # store 0xc310b1e5a97e9566 in memory
flw f1, 0(x2) # load 0xc310b1e5a97e9566 from memory into f1
fsqrt.s f15, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x256bc4b1143334fa # load x3 with value 0x256bc4b1143334fa
sw x3, 0(x2) # store 0x256bc4b1143334fa in memory
flw f31, 0(x2) # load 0x256bc4b1143334fa from memory into f31
fsqrt.s f16, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0f30ab38a249577 # load x3 with value 0xa0f30ab38a249577
sw x3, 0(x2) # store 0xa0f30ab38a249577 in memory
flw f31, 0(x2) # load 0xa0f30ab38a249577 from memory into f31
fsqrt.s f17, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1d96c9ef601b8bd9 # load x3 with value 0x1d96c9ef601b8bd9
sw x3, 0(x2) # store 0x1d96c9ef601b8bd9 in memory
flw f2, 0(x2) # load 0x1d96c9ef601b8bd9 from memory into f2
fsqrt.s f18, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x62b86f828af8c0b0 # load x3 with value 0x62b86f828af8c0b0
sw x3, 0(x2) # store 0x62b86f828af8c0b0 in memory
flw f19, 0(x2) # load 0x62b86f828af8c0b0 from memory into f19
fsqrt.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75fdae52d8760178 # load x3 with value 0x75fdae52d8760178
sw x3, 0(x2) # store 0x75fdae52d8760178 in memory
flw f11, 0(x2) # load 0x75fdae52d8760178 from memory into f11
fsqrt.s f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5266cddd6a80f4e # load x3 with value 0xa5266cddd6a80f4e
sw x3, 0(x2) # store 0xa5266cddd6a80f4e in memory
flw f6, 0(x2) # load 0xa5266cddd6a80f4e from memory into f6
fsqrt.s f21, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2b5d90c4134065b # load x3 with value 0xb2b5d90c4134065b
sw x3, 0(x2) # store 0xb2b5d90c4134065b in memory
flw f23, 0(x2) # load 0xb2b5d90c4134065b from memory into f23
fsqrt.s f22, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf112ced77c13671d # load x3 with value 0xf112ced77c13671d
sw x3, 0(x2) # store 0xf112ced77c13671d in memory
flw f21, 0(x2) # load 0xf112ced77c13671d from memory into f21
fsqrt.s f23, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc03850184d47a011 # load x3 with value 0xc03850184d47a011
sw x3, 0(x2) # store 0xc03850184d47a011 in memory
flw f29, 0(x2) # load 0xc03850184d47a011 from memory into f29
fsqrt.s f24, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x422ae5f690d3ea23 # load x3 with value 0x422ae5f690d3ea23
sw x3, 0(x2) # store 0x422ae5f690d3ea23 in memory
flw f20, 0(x2) # load 0x422ae5f690d3ea23 from memory into f20
fsqrt.s f25, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe860f88b3ad52cb1 # load x3 with value 0xe860f88b3ad52cb1
sw x3, 0(x2) # store 0xe860f88b3ad52cb1 in memory
flw f22, 0(x2) # load 0xe860f88b3ad52cb1 from memory into f22
fsqrt.s f26, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad96e0e9ce4a2083 # load x3 with value 0xad96e0e9ce4a2083
sw x3, 0(x2) # store 0xad96e0e9ce4a2083 in memory
flw f8, 0(x2) # load 0xad96e0e9ce4a2083 from memory into f8
fsqrt.s f27, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8df0cbea3441f22f # load x3 with value 0x8df0cbea3441f22f
sw x3, 0(x2) # store 0x8df0cbea3441f22f in memory
flw f16, 0(x2) # load 0x8df0cbea3441f22f from memory into f16
fsqrt.s f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92e31689df708cb1 # load x3 with value 0x92e31689df708cb1
sw x3, 0(x2) # store 0x92e31689df708cb1 in memory
flw f18, 0(x2) # load 0x92e31689df708cb1 from memory into f18
fsqrt.s f29, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4d74584cb785051 # load x3 with value 0xd4d74584cb785051
sw x3, 0(x2) # store 0xd4d74584cb785051 in memory
flw f3, 0(x2) # load 0xd4d74584cb785051 from memory into f3
fsqrt.s f30, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3aa6db820714a04 # load x3 with value 0xe3aa6db820714a04
sw x3, 0(x2) # store 0xe3aa6db820714a04 in memory
flw f1, 0(x2) # load 0xe3aa6db820714a04 from memory into f1
fsqrt.s f31, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsqrt.s f2, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsqrt.s f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fsqrt.s f26, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fsqrt.s f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsqrt.s f22, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fsqrt.s f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fsqrt.s f10, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsqrt.s f1, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsqrt.s f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsqrt.s f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fsqrt.s f31, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsqrt.s f18, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsqrt.s f5, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fsqrt.s f9, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fsqrt.s f11, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsqrt.s f30, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsqrt.s f14, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsqrt.s f11, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsqrt.s f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsqrt.s f8, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fsqrt.s f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fsqrt.s f27, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fsqrt.s f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fsqrt.s f27, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fsqrt.s f30, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fsqrt.s f16, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fsqrt.s f10, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsqrt.s f21, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63da903b084e8752 # load x3 with value 0x63da903b084e8752
sw x3, 0(x2) # store 0x63da903b084e8752 in memory
flw f0, 0(x2) # load 0x63da903b084e8752 from memory into f0
fsqrt.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35aa40339d558919 # load x3 with value 0x35aa40339d558919
sw x3, 0(x2) # store 0x35aa40339d558919 in memory
flw f1, 0(x2) # load 0x35aa40339d558919 from memory into f1
fsqrt.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc269f7fccc0a45 # load x3 with value 0xbfc269f7fccc0a45
sw x3, 0(x2) # store 0xbfc269f7fccc0a45 in memory
flw f2, 0(x2) # load 0xbfc269f7fccc0a45 from memory into f2
fsqrt.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x68d6e8fbe934303 # load x3 with value 0x68d6e8fbe934303
sw x3, 0(x2) # store 0x68d6e8fbe934303 in memory
flw f3, 0(x2) # load 0x68d6e8fbe934303 from memory into f3
fsqrt.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf95d64107e32f42e # load x3 with value 0xf95d64107e32f42e
sw x3, 0(x2) # store 0xf95d64107e32f42e in memory
flw f4, 0(x2) # load 0xf95d64107e32f42e from memory into f4
fsqrt.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc04b49460577004e # load x3 with value 0xc04b49460577004e
sw x3, 0(x2) # store 0xc04b49460577004e in memory
flw f5, 0(x2) # load 0xc04b49460577004e from memory into f5
fsqrt.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93c036c637d650cc # load x3 with value 0x93c036c637d650cc
sw x3, 0(x2) # store 0x93c036c637d650cc in memory
flw f6, 0(x2) # load 0x93c036c637d650cc from memory into f6
fsqrt.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8171bd7bb39d935 # load x3 with value 0x8171bd7bb39d935
sw x3, 0(x2) # store 0x8171bd7bb39d935 in memory
flw f7, 0(x2) # load 0x8171bd7bb39d935 from memory into f7
fsqrt.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x31771cf9a30ac9f2 # load x3 with value 0x31771cf9a30ac9f2
sw x3, 0(x2) # store 0x31771cf9a30ac9f2 in memory
flw f8, 0(x2) # load 0x31771cf9a30ac9f2 from memory into f8
fsqrt.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xca927a58c18f243a # load x3 with value 0xca927a58c18f243a
sw x3, 0(x2) # store 0xca927a58c18f243a in memory
flw f9, 0(x2) # load 0xca927a58c18f243a from memory into f9
fsqrt.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3eeeb75387d59ae9 # load x3 with value 0x3eeeb75387d59ae9
sw x3, 0(x2) # store 0x3eeeb75387d59ae9 in memory
flw f10, 0(x2) # load 0x3eeeb75387d59ae9 from memory into f10
fsqrt.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc246358b77a32bce # load x3 with value 0xc246358b77a32bce
sw x3, 0(x2) # store 0xc246358b77a32bce in memory
flw f11, 0(x2) # load 0xc246358b77a32bce from memory into f11
fsqrt.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdee9ba1facf6f128 # load x3 with value 0xdee9ba1facf6f128
sw x3, 0(x2) # store 0xdee9ba1facf6f128 in memory
flw f12, 0(x2) # load 0xdee9ba1facf6f128 from memory into f12
fsqrt.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x498bef1ff8585f5b # load x3 with value 0x498bef1ff8585f5b
sw x3, 0(x2) # store 0x498bef1ff8585f5b in memory
flw f13, 0(x2) # load 0x498bef1ff8585f5b from memory into f13
fsqrt.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8b2da105c577470 # load x3 with value 0xe8b2da105c577470
sw x3, 0(x2) # store 0xe8b2da105c577470 in memory
flw f14, 0(x2) # load 0xe8b2da105c577470 from memory into f14
fsqrt.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1dcb8b57bb207ff # load x3 with value 0x1dcb8b57bb207ff
sw x3, 0(x2) # store 0x1dcb8b57bb207ff in memory
flw f15, 0(x2) # load 0x1dcb8b57bb207ff from memory into f15
fsqrt.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f871d10d6eeaf44 # load x3 with value 0x7f871d10d6eeaf44
sw x3, 0(x2) # store 0x7f871d10d6eeaf44 in memory
flw f16, 0(x2) # load 0x7f871d10d6eeaf44 from memory into f16
fsqrt.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4164f6a20cc96e5 # load x3 with value 0xb4164f6a20cc96e5
sw x3, 0(x2) # store 0xb4164f6a20cc96e5 in memory
flw f17, 0(x2) # load 0xb4164f6a20cc96e5 from memory into f17
fsqrt.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x97ed7a08a51bc5f9 # load x3 with value 0x97ed7a08a51bc5f9
sw x3, 0(x2) # store 0x97ed7a08a51bc5f9 in memory
flw f18, 0(x2) # load 0x97ed7a08a51bc5f9 from memory into f18
fsqrt.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd257856ab4c73e0 # load x3 with value 0xd257856ab4c73e0
sw x3, 0(x2) # store 0xd257856ab4c73e0 in memory
flw f19, 0(x2) # load 0xd257856ab4c73e0 from memory into f19
fsqrt.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6e739c1ae42c06b # load x3 with value 0xc6e739c1ae42c06b
sw x3, 0(x2) # store 0xc6e739c1ae42c06b in memory
flw f20, 0(x2) # load 0xc6e739c1ae42c06b from memory into f20
fsqrt.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1eba3da9ca08c2e # load x3 with value 0xe1eba3da9ca08c2e
sw x3, 0(x2) # store 0xe1eba3da9ca08c2e in memory
flw f21, 0(x2) # load 0xe1eba3da9ca08c2e from memory into f21
fsqrt.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf37444fb23d1a3d # load x3 with value 0xaf37444fb23d1a3d
sw x3, 0(x2) # store 0xaf37444fb23d1a3d in memory
flw f22, 0(x2) # load 0xaf37444fb23d1a3d from memory into f22
fsqrt.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefb422883e98e1c9 # load x3 with value 0xefb422883e98e1c9
sw x3, 0(x2) # store 0xefb422883e98e1c9 in memory
flw f23, 0(x2) # load 0xefb422883e98e1c9 from memory into f23
fsqrt.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e6f92fb9818be11 # load x3 with value 0x1e6f92fb9818be11
sw x3, 0(x2) # store 0x1e6f92fb9818be11 in memory
flw f24, 0(x2) # load 0x1e6f92fb9818be11 from memory into f24
fsqrt.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807d45b46797319d # load x3 with value 0x807d45b46797319d
sw x3, 0(x2) # store 0x807d45b46797319d in memory
flw f25, 0(x2) # load 0x807d45b46797319d from memory into f25
fsqrt.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd19599ece738644 # load x3 with value 0xcd19599ece738644
sw x3, 0(x2) # store 0xcd19599ece738644 in memory
flw f26, 0(x2) # load 0xcd19599ece738644 from memory into f26
fsqrt.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc931c1c24b0921c6 # load x3 with value 0xc931c1c24b0921c6
sw x3, 0(x2) # store 0xc931c1c24b0921c6 in memory
flw f27, 0(x2) # load 0xc931c1c24b0921c6 from memory into f27
fsqrt.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6208d827a71fea3c # load x3 with value 0x6208d827a71fea3c
sw x3, 0(x2) # store 0x6208d827a71fea3c in memory
flw f28, 0(x2) # load 0x6208d827a71fea3c from memory into f28
fsqrt.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae551427fc3fe01 # load x3 with value 0xae551427fc3fe01
sw x3, 0(x2) # store 0xae551427fc3fe01 in memory
flw f29, 0(x2) # load 0xae551427fc3fe01 from memory into f29
fsqrt.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae164d0d01ea5181 # load x3 with value 0xae164d0d01ea5181
sw x3, 0(x2) # store 0xae164d0d01ea5181 in memory
flw f30, 0(x2) # load 0xae164d0d01ea5181 from memory into f30
fsqrt.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4caebdafba1d716 # load x3 with value 0xa4caebdafba1d716
sw x3, 0(x2) # store 0xa4caebdafba1d716 in memory
flw f31, 0(x2) # load 0xa4caebdafba1d716 from memory into f31
fsqrt.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5e20029fdaf974b # load x3 with value 0xa5e20029fdaf974b
sw x3, 0(x2) # store 0xa5e20029fdaf974b in memory
flw f25, 0(x2) # load 0xa5e20029fdaf974b from memory into f25
fsqrt.s f8, f25, dyn # perform operation
fsqrt.s f8, f25, rdn # perform operation
fsqrt.s f8, f25, rmm # perform operation
fsqrt.s f8, f25, rne # perform operation
fsqrt.s f8, f25, rtz # perform operation
fsqrt.s f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.s f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.s f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.s f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.s f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.s f8, f25 # perform operation


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
