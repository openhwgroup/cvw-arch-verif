///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfh/WALLY-COV-fround.h.S
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
add x31, x13, x25 # perform first operation
fround.h f17, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x9 # perform first operation
fround.h f20, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x22, x20 # perform first operation
fround.h f21, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f2, f26, f11 # perform first operation
fround.h f2, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x18, x30 # perform first operation
fround.h f25, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x27, x30 # perform first operation
fround.h f27, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f10, f8 # perform first operation
fround.h f16, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f31, f8 # perform first operation
fround.h f7, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f12, f30, f25 # perform first operation
fround.h f12, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f13, f20 # perform first operation
fround.h f13, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f31, f9 # perform first operation
fround.h f9, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f24, f16, f25 # perform first operation
fround.h f19, f8 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc9f669dc # load x3 with value 0xc9f669dc
sw x3, 0(x2) # store 0xc9f669dc in memory
flh f0, 0(x2) # load 0xc9f669dc from memory into f0
fround.h f16, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x293ca84d # load x3 with value 0x293ca84d
sw x3, 0(x2) # store 0x293ca84d in memory
flh f1, 0(x2) # load 0x293ca84d from memory into f1
fround.h f8, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x173ff70c # load x3 with value 0x173ff70c
sw x3, 0(x2) # store 0x173ff70c in memory
flh f2, 0(x2) # load 0x173ff70c from memory into f2
fround.h f3, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb99ef538 # load x3 with value 0xb99ef538
sw x3, 0(x2) # store 0xb99ef538 in memory
flh f3, 0(x2) # load 0xb99ef538 from memory into f3
fround.h f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x361acc5e # load x3 with value 0x361acc5e
sw x3, 0(x2) # store 0x361acc5e in memory
flh f4, 0(x2) # load 0x361acc5e from memory into f4
fround.h f30, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e42f9a7 # load x3 with value 0x2e42f9a7
sw x3, 0(x2) # store 0x2e42f9a7 in memory
flh f5, 0(x2) # load 0x2e42f9a7 from memory into f5
fround.h f30, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21492ed4 # load x3 with value 0x21492ed4
sw x3, 0(x2) # store 0x21492ed4 in memory
flh f6, 0(x2) # load 0x21492ed4 from memory into f6
fround.h f18, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7784ab12 # load x3 with value 0x7784ab12
sw x3, 0(x2) # store 0x7784ab12 in memory
flh f7, 0(x2) # load 0x7784ab12 from memory into f7
fround.h f18, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ccf7490 # load x3 with value 0x2ccf7490
sw x3, 0(x2) # store 0x2ccf7490 in memory
flh f8, 0(x2) # load 0x2ccf7490 from memory into f8
fround.h f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd81047e4 # load x3 with value 0xd81047e4
sw x3, 0(x2) # store 0xd81047e4 in memory
flh f9, 0(x2) # load 0xd81047e4 from memory into f9
fround.h f1, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b11fb89 # load x3 with value 0x8b11fb89
sw x3, 0(x2) # store 0x8b11fb89 in memory
flh f10, 0(x2) # load 0x8b11fb89 from memory into f10
fround.h f14, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbebf681a # load x3 with value 0xbebf681a
sw x3, 0(x2) # store 0xbebf681a in memory
flh f11, 0(x2) # load 0xbebf681a from memory into f11
fround.h f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5d95fda # load x3 with value 0xc5d95fda
sw x3, 0(x2) # store 0xc5d95fda in memory
flh f12, 0(x2) # load 0xc5d95fda from memory into f12
fround.h f18, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3c4da74 # load x3 with value 0xb3c4da74
sw x3, 0(x2) # store 0xb3c4da74 in memory
flh f13, 0(x2) # load 0xb3c4da74 from memory into f13
fround.h f3, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe10b3554 # load x3 with value 0xe10b3554
sw x3, 0(x2) # store 0xe10b3554 in memory
flh f14, 0(x2) # load 0xe10b3554 from memory into f14
fround.h f28, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f502cda # load x3 with value 0x0f502cda
sw x3, 0(x2) # store 0x0f502cda in memory
flh f15, 0(x2) # load 0x0f502cda from memory into f15
fround.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ceb1ea3 # load x3 with value 0x2ceb1ea3
sw x3, 0(x2) # store 0x2ceb1ea3 in memory
flh f16, 0(x2) # load 0x2ceb1ea3 from memory into f16
fround.h f10, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9499ca5c # load x3 with value 0x9499ca5c
sw x3, 0(x2) # store 0x9499ca5c in memory
flh f17, 0(x2) # load 0x9499ca5c from memory into f17
fround.h f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04b4b667 # load x3 with value 0x04b4b667
sw x3, 0(x2) # store 0x04b4b667 in memory
flh f18, 0(x2) # load 0x04b4b667 from memory into f18
fround.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30060323 # load x3 with value 0x30060323
sw x3, 0(x2) # store 0x30060323 in memory
flh f19, 0(x2) # load 0x30060323 from memory into f19
fround.h f25, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a0f06a9 # load x3 with value 0x0a0f06a9
sw x3, 0(x2) # store 0x0a0f06a9 in memory
flh f20, 0(x2) # load 0x0a0f06a9 from memory into f20
fround.h f12, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21760c21 # load x3 with value 0x21760c21
sw x3, 0(x2) # store 0x21760c21 in memory
flh f21, 0(x2) # load 0x21760c21 from memory into f21
fround.h f19, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc417390 # load x3 with value 0xdc417390
sw x3, 0(x2) # store 0xdc417390 in memory
flh f22, 0(x2) # load 0xdc417390 from memory into f22
fround.h f8, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d68ee76 # load x3 with value 0x7d68ee76
sw x3, 0(x2) # store 0x7d68ee76 in memory
flh f23, 0(x2) # load 0x7d68ee76 from memory into f23
fround.h f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3cccf297 # load x3 with value 0x3cccf297
sw x3, 0(x2) # store 0x3cccf297 in memory
flh f24, 0(x2) # load 0x3cccf297 from memory into f24
fround.h f21, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1339ccca # load x3 with value 0x1339ccca
sw x3, 0(x2) # store 0x1339ccca in memory
flh f25, 0(x2) # load 0x1339ccca from memory into f25
fround.h f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdec84ff6 # load x3 with value 0xdec84ff6
sw x3, 0(x2) # store 0xdec84ff6 in memory
flh f26, 0(x2) # load 0xdec84ff6 from memory into f26
fround.h f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13d1335c # load x3 with value 0x13d1335c
sw x3, 0(x2) # store 0x13d1335c in memory
flh f27, 0(x2) # load 0x13d1335c from memory into f27
fround.h f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8cb095d6 # load x3 with value 0x8cb095d6
sw x3, 0(x2) # store 0x8cb095d6 in memory
flh f28, 0(x2) # load 0x8cb095d6 from memory into f28
fround.h f30, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e45d71d # load x3 with value 0x8e45d71d
sw x3, 0(x2) # store 0x8e45d71d in memory
flh f29, 0(x2) # load 0x8e45d71d from memory into f29
fround.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3cfb244c # load x3 with value 0x3cfb244c
sw x3, 0(x2) # store 0x3cfb244c in memory
flh f30, 0(x2) # load 0x3cfb244c from memory into f30
fround.h f29, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0a5fa13 # load x3 with value 0xe0a5fa13
sw x3, 0(x2) # store 0xe0a5fa13 in memory
flh f31, 0(x2) # load 0xe0a5fa13 from memory into f31
fround.h f28, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c66b939 # load x3 with value 0x4c66b939
sw x3, 0(x2) # store 0x4c66b939 in memory
flh f29, 0(x2) # load 0x4c66b939 from memory into f29
fround.h f0, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed5703d3 # load x3 with value 0xed5703d3
sw x3, 0(x2) # store 0xed5703d3 in memory
flh f13, 0(x2) # load 0xed5703d3 from memory into f13
fround.h f1, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x355a84d7 # load x3 with value 0x355a84d7
sw x3, 0(x2) # store 0x355a84d7 in memory
flh f11, 0(x2) # load 0x355a84d7 from memory into f11
fround.h f2, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x898c48dc # load x3 with value 0x898c48dc
sw x3, 0(x2) # store 0x898c48dc in memory
flh f3, 0(x2) # load 0x898c48dc from memory into f3
fround.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x638946be # load x3 with value 0x638946be
sw x3, 0(x2) # store 0x638946be in memory
flh f12, 0(x2) # load 0x638946be from memory into f12
fround.h f4, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13052efe # load x3 with value 0x13052efe
sw x3, 0(x2) # store 0x13052efe in memory
flh f28, 0(x2) # load 0x13052efe from memory into f28
fround.h f5, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe009d5c9 # load x3 with value 0xe009d5c9
sw x3, 0(x2) # store 0xe009d5c9 in memory
flh f21, 0(x2) # load 0xe009d5c9 from memory into f21
fround.h f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86447418 # load x3 with value 0x86447418
sw x3, 0(x2) # store 0x86447418 in memory
flh f31, 0(x2) # load 0x86447418 from memory into f31
fround.h f7, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb966f075 # load x3 with value 0xb966f075
sw x3, 0(x2) # store 0xb966f075 in memory
flh f29, 0(x2) # load 0xb966f075 from memory into f29
fround.h f8, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ec7fc7b # load x3 with value 0x6ec7fc7b
sw x3, 0(x2) # store 0x6ec7fc7b in memory
flh f17, 0(x2) # load 0x6ec7fc7b from memory into f17
fround.h f9, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60737fcc # load x3 with value 0x60737fcc
sw x3, 0(x2) # store 0x60737fcc in memory
flh f12, 0(x2) # load 0x60737fcc from memory into f12
fround.h f10, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8293a1e3 # load x3 with value 0x8293a1e3
sw x3, 0(x2) # store 0x8293a1e3 in memory
flh f26, 0(x2) # load 0x8293a1e3 from memory into f26
fround.h f11, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x451ed935 # load x3 with value 0x451ed935
sw x3, 0(x2) # store 0x451ed935 in memory
flh f27, 0(x2) # load 0x451ed935 from memory into f27
fround.h f12, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x372b9276 # load x3 with value 0x372b9276
sw x3, 0(x2) # store 0x372b9276 in memory
flh f6, 0(x2) # load 0x372b9276 from memory into f6
fround.h f13, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x90c17633 # load x3 with value 0x90c17633
sw x3, 0(x2) # store 0x90c17633 in memory
flh f12, 0(x2) # load 0x90c17633 from memory into f12
fround.h f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1483a39 # load x3 with value 0xa1483a39
sw x3, 0(x2) # store 0xa1483a39 in memory
flh f10, 0(x2) # load 0xa1483a39 from memory into f10
fround.h f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7dec8045 # load x3 with value 0x7dec8045
sw x3, 0(x2) # store 0x7dec8045 in memory
flh f26, 0(x2) # load 0x7dec8045 from memory into f26
fround.h f16, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x39c91553 # load x3 with value 0x39c91553
sw x3, 0(x2) # store 0x39c91553 in memory
flh f12, 0(x2) # load 0x39c91553 from memory into f12
fround.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71ee0216 # load x3 with value 0x71ee0216
sw x3, 0(x2) # store 0x71ee0216 in memory
flh f12, 0(x2) # load 0x71ee0216 from memory into f12
fround.h f18, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9a914143 # load x3 with value 0x9a914143
sw x3, 0(x2) # store 0x9a914143 in memory
flh f7, 0(x2) # load 0x9a914143 from memory into f7
fround.h f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfa9c467 # load x3 with value 0xbfa9c467
sw x3, 0(x2) # store 0xbfa9c467 in memory
flh f25, 0(x2) # load 0xbfa9c467 from memory into f25
fround.h f20, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa794430d # load x3 with value 0xa794430d
sw x3, 0(x2) # store 0xa794430d in memory
flh f28, 0(x2) # load 0xa794430d from memory into f28
fround.h f21, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ab03929 # load x3 with value 0x8ab03929
sw x3, 0(x2) # store 0x8ab03929 in memory
flh f29, 0(x2) # load 0x8ab03929 from memory into f29
fround.h f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x93768bf6 # load x3 with value 0x93768bf6
sw x3, 0(x2) # store 0x93768bf6 in memory
flh f25, 0(x2) # load 0x93768bf6 from memory into f25
fround.h f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e0b5cc2 # load x3 with value 0x4e0b5cc2
sw x3, 0(x2) # store 0x4e0b5cc2 in memory
flh f21, 0(x2) # load 0x4e0b5cc2 from memory into f21
fround.h f24, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb375f3b2 # load x3 with value 0xb375f3b2
sw x3, 0(x2) # store 0xb375f3b2 in memory
flh f15, 0(x2) # load 0xb375f3b2 from memory into f15
fround.h f25, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38d721e6 # load x3 with value 0x38d721e6
sw x3, 0(x2) # store 0x38d721e6 in memory
flh f5, 0(x2) # load 0x38d721e6 from memory into f5
fround.h f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3483b4fa # load x3 with value 0x3483b4fa
sw x3, 0(x2) # store 0x3483b4fa in memory
flh f3, 0(x2) # load 0x3483b4fa from memory into f3
fround.h f27, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x759e1c86 # load x3 with value 0x759e1c86
sw x3, 0(x2) # store 0x759e1c86 in memory
flh f7, 0(x2) # load 0x759e1c86 from memory into f7
fround.h f28, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x62ccd6f5 # load x3 with value 0x62ccd6f5
sw x3, 0(x2) # store 0x62ccd6f5 in memory
flh f23, 0(x2) # load 0x62ccd6f5 from memory into f23
fround.h f29, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2f8b7bba # load x3 with value 0x2f8b7bba
sw x3, 0(x2) # store 0x2f8b7bba in memory
flh f1, 0(x2) # load 0x2f8b7bba from memory into f1
fround.h f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1da2656f # load x3 with value 0x1da2656f
sw x3, 0(x2) # store 0x1da2656f in memory
flh f8, 0(x2) # load 0x1da2656f from memory into f8
fround.h f31, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fround.h f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fround.h f1, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fround.h f6, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fround.h f13, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fround.h f21, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fround.h f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fround.h f18, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fround.h f24, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fround.h f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fround.h f11, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fround.h f31, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fround.h f25, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fround.h f28, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fround.h f18, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fround.h f22, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fround.h f30, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fround.h f27, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fround.h f14, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fround.h f23, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fround.h f20, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fround.h f6, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fround.h f2, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fround.h f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fround.h f2, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fround.h f31, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fround.h f9, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fround.h f19, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fround.h f6, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc95c5bca # load x3 with value 0xc95c5bca
sw x3, 0(x2) # store 0xc95c5bca in memory
flh f0, 0(x2) # load 0xc95c5bca from memory into f0
fround.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75f533a2 # load x3 with value 0x75f533a2
sw x3, 0(x2) # store 0x75f533a2 in memory
flh f1, 0(x2) # load 0x75f533a2 from memory into f1
fround.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x251d967a # load x3 with value 0x251d967a
sw x3, 0(x2) # store 0x251d967a in memory
flh f2, 0(x2) # load 0x251d967a from memory into f2
fround.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a777eef # load x3 with value 0x1a777eef
sw x3, 0(x2) # store 0x1a777eef in memory
flh f3, 0(x2) # load 0x1a777eef from memory into f3
fround.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x131c63f9 # load x3 with value 0x131c63f9
sw x3, 0(x2) # store 0x131c63f9 in memory
flh f4, 0(x2) # load 0x131c63f9 from memory into f4
fround.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeee899e # load x3 with value 0xbeee899e
sw x3, 0(x2) # store 0xbeee899e in memory
flh f5, 0(x2) # load 0xbeee899e from memory into f5
fround.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4dc174fd # load x3 with value 0x4dc174fd
sw x3, 0(x2) # store 0x4dc174fd in memory
flh f6, 0(x2) # load 0x4dc174fd from memory into f6
fround.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6210b4fb # load x3 with value 0x6210b4fb
sw x3, 0(x2) # store 0x6210b4fb in memory
flh f7, 0(x2) # load 0x6210b4fb from memory into f7
fround.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6183d41 # load x3 with value 0xc6183d41
sw x3, 0(x2) # store 0xc6183d41 in memory
flh f8, 0(x2) # load 0xc6183d41 from memory into f8
fround.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f0be46e # load x3 with value 0x5f0be46e
sw x3, 0(x2) # store 0x5f0be46e in memory
flh f9, 0(x2) # load 0x5f0be46e from memory into f9
fround.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29db90fb # load x3 with value 0x29db90fb
sw x3, 0(x2) # store 0x29db90fb in memory
flh f10, 0(x2) # load 0x29db90fb from memory into f10
fround.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12067a83 # load x3 with value 0x12067a83
sw x3, 0(x2) # store 0x12067a83 in memory
flh f11, 0(x2) # load 0x12067a83 from memory into f11
fround.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e2aaf1e # load x3 with value 0x2e2aaf1e
sw x3, 0(x2) # store 0x2e2aaf1e in memory
flh f12, 0(x2) # load 0x2e2aaf1e from memory into f12
fround.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8fbbf289 # load x3 with value 0x8fbbf289
sw x3, 0(x2) # store 0x8fbbf289 in memory
flh f13, 0(x2) # load 0x8fbbf289 from memory into f13
fround.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7eb4115c # load x3 with value 0x7eb4115c
sw x3, 0(x2) # store 0x7eb4115c in memory
flh f14, 0(x2) # load 0x7eb4115c from memory into f14
fround.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc58e8014 # load x3 with value 0xc58e8014
sw x3, 0(x2) # store 0xc58e8014 in memory
flh f15, 0(x2) # load 0xc58e8014 from memory into f15
fround.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f4c41ae # load x3 with value 0x3f4c41ae
sw x3, 0(x2) # store 0x3f4c41ae in memory
flh f16, 0(x2) # load 0x3f4c41ae from memory into f16
fround.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef0e2e22 # load x3 with value 0xef0e2e22
sw x3, 0(x2) # store 0xef0e2e22 in memory
flh f17, 0(x2) # load 0xef0e2e22 from memory into f17
fround.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb62bd66a # load x3 with value 0xb62bd66a
sw x3, 0(x2) # store 0xb62bd66a in memory
flh f18, 0(x2) # load 0xb62bd66a from memory into f18
fround.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x583f1b41 # load x3 with value 0x583f1b41
sw x3, 0(x2) # store 0x583f1b41 in memory
flh f19, 0(x2) # load 0x583f1b41 from memory into f19
fround.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x68be50c3 # load x3 with value 0x68be50c3
sw x3, 0(x2) # store 0x68be50c3 in memory
flh f20, 0(x2) # load 0x68be50c3 from memory into f20
fround.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3cd9a61 # load x3 with value 0xe3cd9a61
sw x3, 0(x2) # store 0xe3cd9a61 in memory
flh f21, 0(x2) # load 0xe3cd9a61 from memory into f21
fround.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0641a070 # load x3 with value 0x0641a070
sw x3, 0(x2) # store 0x0641a070 in memory
flh f22, 0(x2) # load 0x0641a070 from memory into f22
fround.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8accc540 # load x3 with value 0x8accc540
sw x3, 0(x2) # store 0x8accc540 in memory
flh f23, 0(x2) # load 0x8accc540 from memory into f23
fround.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23583043 # load x3 with value 0x23583043
sw x3, 0(x2) # store 0x23583043 in memory
flh f24, 0(x2) # load 0x23583043 from memory into f24
fround.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75efa8ab # load x3 with value 0x75efa8ab
sw x3, 0(x2) # store 0x75efa8ab in memory
flh f25, 0(x2) # load 0x75efa8ab from memory into f25
fround.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcffd017c # load x3 with value 0xcffd017c
sw x3, 0(x2) # store 0xcffd017c in memory
flh f26, 0(x2) # load 0xcffd017c from memory into f26
fround.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8d2c0e7 # load x3 with value 0xb8d2c0e7
sw x3, 0(x2) # store 0xb8d2c0e7 in memory
flh f27, 0(x2) # load 0xb8d2c0e7 from memory into f27
fround.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9ae99041 # load x3 with value 0x9ae99041
sw x3, 0(x2) # store 0x9ae99041 in memory
flh f28, 0(x2) # load 0x9ae99041 from memory into f28
fround.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88d61b52 # load x3 with value 0x88d61b52
sw x3, 0(x2) # store 0x88d61b52 in memory
flh f29, 0(x2) # load 0x88d61b52 from memory into f29
fround.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x913b97dd # load x3 with value 0x913b97dd
sw x3, 0(x2) # store 0x913b97dd in memory
flh f30, 0(x2) # load 0x913b97dd from memory into f30
fround.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd7e32f6 # load x3 with value 0xbd7e32f6
sw x3, 0(x2) # store 0xbd7e32f6 in memory
flh f31, 0(x2) # load 0xbd7e32f6 from memory into f31
fround.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a0f8393 # load x3 with value 0x2a0f8393
sw x3, 0(x2) # store 0x2a0f8393 in memory
flh f15, 0(x2) # load 0x2a0f8393 from memory into f15
fround.h f18, f15, dyn # perform operation
fround.h f18, f15, rdn # perform operation
fround.h f18, f15, rmm # perform operation
fround.h f18, f15, rne # perform operation
fround.h f18, f15, rtz # perform operation
fround.h f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.h f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.h f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.h f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.h f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.h f18, f15 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x09fc71c4 # load x3 with value 0x09fc71c4
sw x3, 0(x2) # store 0x09fc71c4 in memory
flh f29, 0(x2) # load 0x09fc71c4 from memory into f29
fround.h f22, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fround.h f20, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f20, 0(x2) # load 0xfffe8000 from memory into f20
fround.h f19, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f29, 0(x2) # load 0x7fff3c00 from memory into f29
fround.h f27, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f22, 0(x2) # load 0xbeefbc00 from memory into f22
fround.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f8, 0(x2) # load 0xfeff0400 from memory into f8
fround.h f26, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f20, 0(x2) # load 0x0fff8400 from memory into f20
fround.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f17, 0(x2) # load 0xefff7bff from memory into f17
fround.h f12, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f22, 0(x2) # load 0xc0defbff from memory into f22
fround.h f21, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f17, 0(x2) # load 0x4f1a7c00 from memory into f17
fround.h f13, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f27, 0(x2) # load 0x0ffffc00 from memory into f27
fround.h f19, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f9, 0(x2) # load 0xffef7e00 from memory into f9
fround.h f15, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f11, 0(x2) # load 0xfeef7fff from memory into f11
fround.h f30, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f24, 0(x2) # load 0xa1b27c01 from memory into f24
fround.h f18, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f6, 0(x2) # load 0x4fd77dff from memory into f6
fround.h f28, f6 # perform operation second time to make sure flags don't change

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
