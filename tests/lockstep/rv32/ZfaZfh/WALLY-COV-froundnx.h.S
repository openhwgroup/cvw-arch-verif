///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfh/WALLY-COV-froundnx.h.S
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
add x16, x2, x14 # perform first operation
froundnx.h f1, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x21, x5 # perform first operation
froundnx.h f16, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x12, x11 # perform first operation
froundnx.h f29, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f23, f6, f29 # perform first operation
froundnx.h f23, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x24, x13 # perform first operation
froundnx.h f24, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x14, x6 # perform first operation
froundnx.h f14, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f14, f9 # perform first operation
froundnx.h f5, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f10, f11, f25 # perform first operation
froundnx.h f10, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f28, f6 # perform first operation
froundnx.h f21, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f25, f29 # perform first operation
froundnx.h f25, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f3, f25 # perform first operation
froundnx.h f25, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f28, f8 # perform first operation
froundnx.h f2, f15 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0f51024 # load x3 with value 0xd0f51024
sw x3, 0(x2) # store 0xd0f51024 in memory
flh f0, 0(x2) # load 0xd0f51024 from memory into f0
froundnx.h f25, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23526193 # load x3 with value 0x23526193
sw x3, 0(x2) # store 0x23526193 in memory
flh f1, 0(x2) # load 0x23526193 from memory into f1
froundnx.h f22, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf85b86f9 # load x3 with value 0xf85b86f9
sw x3, 0(x2) # store 0xf85b86f9 in memory
flh f2, 0(x2) # load 0xf85b86f9 from memory into f2
froundnx.h f1, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d85b9e4 # load x3 with value 0x2d85b9e4
sw x3, 0(x2) # store 0x2d85b9e4 in memory
flh f3, 0(x2) # load 0x2d85b9e4 from memory into f3
froundnx.h f11, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc20419b # load x3 with value 0xfc20419b
sw x3, 0(x2) # store 0xfc20419b in memory
flh f4, 0(x2) # load 0xfc20419b from memory into f4
froundnx.h f8, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae90c923 # load x3 with value 0xae90c923
sw x3, 0(x2) # store 0xae90c923 in memory
flh f5, 0(x2) # load 0xae90c923 from memory into f5
froundnx.h f2, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4187a0fe # load x3 with value 0x4187a0fe
sw x3, 0(x2) # store 0x4187a0fe in memory
flh f6, 0(x2) # load 0x4187a0fe from memory into f6
froundnx.h f1, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5397441 # load x3 with value 0xa5397441
sw x3, 0(x2) # store 0xa5397441 in memory
flh f7, 0(x2) # load 0xa5397441 from memory into f7
froundnx.h f11, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee3d02b1 # load x3 with value 0xee3d02b1
sw x3, 0(x2) # store 0xee3d02b1 in memory
flh f8, 0(x2) # load 0xee3d02b1 from memory into f8
froundnx.h f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5321eb9 # load x3 with value 0xc5321eb9
sw x3, 0(x2) # store 0xc5321eb9 in memory
flh f9, 0(x2) # load 0xc5321eb9 from memory into f9
froundnx.h f27, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e27a885 # load x3 with value 0x3e27a885
sw x3, 0(x2) # store 0x3e27a885 in memory
flh f10, 0(x2) # load 0x3e27a885 from memory into f10
froundnx.h f23, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8eb5ccf0 # load x3 with value 0x8eb5ccf0
sw x3, 0(x2) # store 0x8eb5ccf0 in memory
flh f11, 0(x2) # load 0x8eb5ccf0 from memory into f11
froundnx.h f20, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x08d8459b # load x3 with value 0x08d8459b
sw x3, 0(x2) # store 0x08d8459b in memory
flh f12, 0(x2) # load 0x08d8459b from memory into f12
froundnx.h f18, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0a0e020 # load x3 with value 0xd0a0e020
sw x3, 0(x2) # store 0xd0a0e020 in memory
flh f13, 0(x2) # load 0xd0a0e020 from memory into f13
froundnx.h f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1855fba7 # load x3 with value 0x1855fba7
sw x3, 0(x2) # store 0x1855fba7 in memory
flh f14, 0(x2) # load 0x1855fba7 from memory into f14
froundnx.h f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0cc1e7cb # load x3 with value 0x0cc1e7cb
sw x3, 0(x2) # store 0x0cc1e7cb in memory
flh f15, 0(x2) # load 0x0cc1e7cb from memory into f15
froundnx.h f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd8734f8 # load x3 with value 0xcd8734f8
sw x3, 0(x2) # store 0xcd8734f8 in memory
flh f16, 0(x2) # load 0xcd8734f8 from memory into f16
froundnx.h f12, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd56d410 # load x3 with value 0xfd56d410
sw x3, 0(x2) # store 0xfd56d410 in memory
flh f17, 0(x2) # load 0xfd56d410 from memory into f17
froundnx.h f28, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x073ef8ee # load x3 with value 0x073ef8ee
sw x3, 0(x2) # store 0x073ef8ee in memory
flh f18, 0(x2) # load 0x073ef8ee from memory into f18
froundnx.h f29, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabaea233 # load x3 with value 0xabaea233
sw x3, 0(x2) # store 0xabaea233 in memory
flh f19, 0(x2) # load 0xabaea233 from memory into f19
froundnx.h f15, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4bc0896 # load x3 with value 0xa4bc0896
sw x3, 0(x2) # store 0xa4bc0896 in memory
flh f20, 0(x2) # load 0xa4bc0896 from memory into f20
froundnx.h f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x049d263c # load x3 with value 0x049d263c
sw x3, 0(x2) # store 0x049d263c in memory
flh f21, 0(x2) # load 0x049d263c from memory into f21
froundnx.h f18, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a47dd5f # load x3 with value 0x5a47dd5f
sw x3, 0(x2) # store 0x5a47dd5f in memory
flh f22, 0(x2) # load 0x5a47dd5f from memory into f22
froundnx.h f3, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f706992 # load x3 with value 0x3f706992
sw x3, 0(x2) # store 0x3f706992 in memory
flh f23, 0(x2) # load 0x3f706992 from memory into f23
froundnx.h f8, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0039955d # load x3 with value 0x0039955d
sw x3, 0(x2) # store 0x0039955d in memory
flh f24, 0(x2) # load 0x0039955d from memory into f24
froundnx.h f26, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdde9c319 # load x3 with value 0xdde9c319
sw x3, 0(x2) # store 0xdde9c319 in memory
flh f25, 0(x2) # load 0xdde9c319 from memory into f25
froundnx.h f20, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x87b00f1e # load x3 with value 0x87b00f1e
sw x3, 0(x2) # store 0x87b00f1e in memory
flh f26, 0(x2) # load 0x87b00f1e from memory into f26
froundnx.h f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x133e760f # load x3 with value 0x133e760f
sw x3, 0(x2) # store 0x133e760f in memory
flh f27, 0(x2) # load 0x133e760f from memory into f27
froundnx.h f2, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8fc6c039 # load x3 with value 0x8fc6c039
sw x3, 0(x2) # store 0x8fc6c039 in memory
flh f28, 0(x2) # load 0x8fc6c039 from memory into f28
froundnx.h f15, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x490c5fca # load x3 with value 0x490c5fca
sw x3, 0(x2) # store 0x490c5fca in memory
flh f29, 0(x2) # load 0x490c5fca from memory into f29
froundnx.h f14, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35c36560 # load x3 with value 0x35c36560
sw x3, 0(x2) # store 0x35c36560 in memory
flh f30, 0(x2) # load 0x35c36560 from memory into f30
froundnx.h f10, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe2844008 # load x3 with value 0xe2844008
sw x3, 0(x2) # store 0xe2844008 in memory
flh f31, 0(x2) # load 0xe2844008 from memory into f31
froundnx.h f23, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d9eec7d # load x3 with value 0x7d9eec7d
sw x3, 0(x2) # store 0x7d9eec7d in memory
flh f15, 0(x2) # load 0x7d9eec7d from memory into f15
froundnx.h f0, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2bee490 # load x3 with value 0xa2bee490
sw x3, 0(x2) # store 0xa2bee490 in memory
flh f17, 0(x2) # load 0xa2bee490 from memory into f17
froundnx.h f1, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd1b8f37f # load x3 with value 0xd1b8f37f
sw x3, 0(x2) # store 0xd1b8f37f in memory
flh f6, 0(x2) # load 0xd1b8f37f from memory into f6
froundnx.h f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21c11412 # load x3 with value 0x21c11412
sw x3, 0(x2) # store 0x21c11412 in memory
flh f15, 0(x2) # load 0x21c11412 from memory into f15
froundnx.h f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5d17db8 # load x3 with value 0xe5d17db8
sw x3, 0(x2) # store 0xe5d17db8 in memory
flh f26, 0(x2) # load 0xe5d17db8 from memory into f26
froundnx.h f4, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92cf3df3 # load x3 with value 0x92cf3df3
sw x3, 0(x2) # store 0x92cf3df3 in memory
flh f9, 0(x2) # load 0x92cf3df3 from memory into f9
froundnx.h f5, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x444f182d # load x3 with value 0x444f182d
sw x3, 0(x2) # store 0x444f182d in memory
flh f11, 0(x2) # load 0x444f182d from memory into f11
froundnx.h f6, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27456608 # load x3 with value 0x27456608
sw x3, 0(x2) # store 0x27456608 in memory
flh f16, 0(x2) # load 0x27456608 from memory into f16
froundnx.h f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65dc4e06 # load x3 with value 0x65dc4e06
sw x3, 0(x2) # store 0x65dc4e06 in memory
flh f2, 0(x2) # load 0x65dc4e06 from memory into f2
froundnx.h f8, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1edc6cbf # load x3 with value 0x1edc6cbf
sw x3, 0(x2) # store 0x1edc6cbf in memory
flh f3, 0(x2) # load 0x1edc6cbf from memory into f3
froundnx.h f9, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x923b87e7 # load x3 with value 0x923b87e7
sw x3, 0(x2) # store 0x923b87e7 in memory
flh f13, 0(x2) # load 0x923b87e7 from memory into f13
froundnx.h f10, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x034f7b4f # load x3 with value 0x034f7b4f
sw x3, 0(x2) # store 0x034f7b4f in memory
flh f10, 0(x2) # load 0x034f7b4f from memory into f10
froundnx.h f11, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c29bf32 # load x3 with value 0x7c29bf32
sw x3, 0(x2) # store 0x7c29bf32 in memory
flh f16, 0(x2) # load 0x7c29bf32 from memory into f16
froundnx.h f12, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x43ba2282 # load x3 with value 0x43ba2282
sw x3, 0(x2) # store 0x43ba2282 in memory
flh f21, 0(x2) # load 0x43ba2282 from memory into f21
froundnx.h f13, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f520fd2 # load x3 with value 0x9f520fd2
sw x3, 0(x2) # store 0x9f520fd2 in memory
flh f1, 0(x2) # load 0x9f520fd2 from memory into f1
froundnx.h f14, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83d4e090 # load x3 with value 0x83d4e090
sw x3, 0(x2) # store 0x83d4e090 in memory
flh f28, 0(x2) # load 0x83d4e090 from memory into f28
froundnx.h f15, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x028af612 # load x3 with value 0x028af612
sw x3, 0(x2) # store 0x028af612 in memory
flh f3, 0(x2) # load 0x028af612 from memory into f3
froundnx.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3de37299 # load x3 with value 0x3de37299
sw x3, 0(x2) # store 0x3de37299 in memory
flh f12, 0(x2) # load 0x3de37299 from memory into f12
froundnx.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xce385125 # load x3 with value 0xce385125
sw x3, 0(x2) # store 0xce385125 in memory
flh f15, 0(x2) # load 0xce385125 from memory into f15
froundnx.h f18, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8aff882 # load x3 with value 0xb8aff882
sw x3, 0(x2) # store 0xb8aff882 in memory
flh f18, 0(x2) # load 0xb8aff882 from memory into f18
froundnx.h f19, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x306edfe4 # load x3 with value 0x306edfe4
sw x3, 0(x2) # store 0x306edfe4 in memory
flh f8, 0(x2) # load 0x306edfe4 from memory into f8
froundnx.h f20, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe745a97f # load x3 with value 0xe745a97f
sw x3, 0(x2) # store 0xe745a97f in memory
flh f12, 0(x2) # load 0xe745a97f from memory into f12
froundnx.h f21, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb8e21d1d # load x3 with value 0xb8e21d1d
sw x3, 0(x2) # store 0xb8e21d1d in memory
flh f15, 0(x2) # load 0xb8e21d1d from memory into f15
froundnx.h f22, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c628453 # load x3 with value 0x2c628453
sw x3, 0(x2) # store 0x2c628453 in memory
flh f19, 0(x2) # load 0x2c628453 from memory into f19
froundnx.h f23, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc41e3899 # load x3 with value 0xc41e3899
sw x3, 0(x2) # store 0xc41e3899 in memory
flh f25, 0(x2) # load 0xc41e3899 from memory into f25
froundnx.h f24, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60d9c1f6 # load x3 with value 0x60d9c1f6
sw x3, 0(x2) # store 0x60d9c1f6 in memory
flh f23, 0(x2) # load 0x60d9c1f6 from memory into f23
froundnx.h f25, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa8733bf7 # load x3 with value 0xa8733bf7
sw x3, 0(x2) # store 0xa8733bf7 in memory
flh f29, 0(x2) # load 0xa8733bf7 from memory into f29
froundnx.h f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3773e669 # load x3 with value 0x3773e669
sw x3, 0(x2) # store 0x3773e669 in memory
flh f6, 0(x2) # load 0x3773e669 from memory into f6
froundnx.h f27, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8a3e7cf3 # load x3 with value 0x8a3e7cf3
sw x3, 0(x2) # store 0x8a3e7cf3 in memory
flh f16, 0(x2) # load 0x8a3e7cf3 from memory into f16
froundnx.h f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3a0ae6d # load x3 with value 0xe3a0ae6d
sw x3, 0(x2) # store 0xe3a0ae6d in memory
flh f31, 0(x2) # load 0xe3a0ae6d from memory into f31
froundnx.h f29, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3c1bc344 # load x3 with value 0x3c1bc344
sw x3, 0(x2) # store 0x3c1bc344 in memory
flh f3, 0(x2) # load 0x3c1bc344 from memory into f3
froundnx.h f30, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe8d305d7 # load x3 with value 0xe8d305d7
sw x3, 0(x2) # store 0xe8d305d7 in memory
flh f1, 0(x2) # load 0xe8d305d7 from memory into f1
froundnx.h f31, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
froundnx.h f11, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
froundnx.h f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
froundnx.h f5, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
froundnx.h f15, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
froundnx.h f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
froundnx.h f17, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
froundnx.h f22, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
froundnx.h f19, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
froundnx.h f24, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
froundnx.h f14, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
froundnx.h f19, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
froundnx.h f9, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
froundnx.h f17, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
froundnx.h f5, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
froundnx.h f6, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
froundnx.h f3, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
froundnx.h f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
froundnx.h f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
froundnx.h f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
froundnx.h f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
froundnx.h f15, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
froundnx.h f15, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
froundnx.h f13, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
froundnx.h f10, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
froundnx.h f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
froundnx.h f31, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
froundnx.h f2, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
froundnx.h f21, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7350d705 # load x3 with value 0x7350d705
sw x3, 0(x2) # store 0x7350d705 in memory
flh f0, 0(x2) # load 0x7350d705 from memory into f0
froundnx.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe7ae8144 # load x3 with value 0xe7ae8144
sw x3, 0(x2) # store 0xe7ae8144 in memory
flh f1, 0(x2) # load 0xe7ae8144 from memory into f1
froundnx.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f45ee0a # load x3 with value 0x0f45ee0a
sw x3, 0(x2) # store 0x0f45ee0a in memory
flh f2, 0(x2) # load 0x0f45ee0a from memory into f2
froundnx.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c6b1cdb # load x3 with value 0x9c6b1cdb
sw x3, 0(x2) # store 0x9c6b1cdb in memory
flh f3, 0(x2) # load 0x9c6b1cdb from memory into f3
froundnx.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x567a1208 # load x3 with value 0x567a1208
sw x3, 0(x2) # store 0x567a1208 in memory
flh f4, 0(x2) # load 0x567a1208 from memory into f4
froundnx.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23024044 # load x3 with value 0x23024044
sw x3, 0(x2) # store 0x23024044 in memory
flh f5, 0(x2) # load 0x23024044 from memory into f5
froundnx.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3008acad # load x3 with value 0x3008acad
sw x3, 0(x2) # store 0x3008acad in memory
flh f6, 0(x2) # load 0x3008acad from memory into f6
froundnx.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac8bceae # load x3 with value 0xac8bceae
sw x3, 0(x2) # store 0xac8bceae in memory
flh f7, 0(x2) # load 0xac8bceae from memory into f7
froundnx.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf468657f # load x3 with value 0xf468657f
sw x3, 0(x2) # store 0xf468657f in memory
flh f8, 0(x2) # load 0xf468657f from memory into f8
froundnx.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c3f8460 # load x3 with value 0x6c3f8460
sw x3, 0(x2) # store 0x6c3f8460 in memory
flh f9, 0(x2) # load 0x6c3f8460 from memory into f9
froundnx.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf29519bf # load x3 with value 0xf29519bf
sw x3, 0(x2) # store 0xf29519bf in memory
flh f10, 0(x2) # load 0xf29519bf from memory into f10
froundnx.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc8a31f63 # load x3 with value 0xc8a31f63
sw x3, 0(x2) # store 0xc8a31f63 in memory
flh f11, 0(x2) # load 0xc8a31f63 from memory into f11
froundnx.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dd83bd8 # load x3 with value 0x2dd83bd8
sw x3, 0(x2) # store 0x2dd83bd8 in memory
flh f12, 0(x2) # load 0x2dd83bd8 from memory into f12
froundnx.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd09620b # load x3 with value 0xcd09620b
sw x3, 0(x2) # store 0xcd09620b in memory
flh f13, 0(x2) # load 0xcd09620b from memory into f13
froundnx.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07305de6 # load x3 with value 0x07305de6
sw x3, 0(x2) # store 0x07305de6 in memory
flh f14, 0(x2) # load 0x07305de6 from memory into f14
froundnx.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6f552f3 # load x3 with value 0xf6f552f3
sw x3, 0(x2) # store 0xf6f552f3 in memory
flh f15, 0(x2) # load 0xf6f552f3 from memory into f15
froundnx.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a803b08 # load x3 with value 0x5a803b08
sw x3, 0(x2) # store 0x5a803b08 in memory
flh f16, 0(x2) # load 0x5a803b08 from memory into f16
froundnx.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x36797682 # load x3 with value 0x36797682
sw x3, 0(x2) # store 0x36797682 in memory
flh f17, 0(x2) # load 0x36797682 from memory into f17
froundnx.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd290c18 # load x3 with value 0xfd290c18
sw x3, 0(x2) # store 0xfd290c18 in memory
flh f18, 0(x2) # load 0xfd290c18 from memory into f18
froundnx.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfa96b213 # load x3 with value 0xfa96b213
sw x3, 0(x2) # store 0xfa96b213 in memory
flh f19, 0(x2) # load 0xfa96b213 from memory into f19
froundnx.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f834918 # load x3 with value 0x5f834918
sw x3, 0(x2) # store 0x5f834918 in memory
flh f20, 0(x2) # load 0x5f834918 from memory into f20
froundnx.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc416cc87 # load x3 with value 0xc416cc87
sw x3, 0(x2) # store 0xc416cc87 in memory
flh f21, 0(x2) # load 0xc416cc87 from memory into f21
froundnx.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dd4eac8 # load x3 with value 0x2dd4eac8
sw x3, 0(x2) # store 0x2dd4eac8 in memory
flh f22, 0(x2) # load 0x2dd4eac8 from memory into f22
froundnx.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f04bc11 # load x3 with value 0x1f04bc11
sw x3, 0(x2) # store 0x1f04bc11 in memory
flh f23, 0(x2) # load 0x1f04bc11 from memory into f23
froundnx.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55800557 # load x3 with value 0x55800557
sw x3, 0(x2) # store 0x55800557 in memory
flh f24, 0(x2) # load 0x55800557 from memory into f24
froundnx.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0640afd0 # load x3 with value 0x0640afd0
sw x3, 0(x2) # store 0x0640afd0 in memory
flh f25, 0(x2) # load 0x0640afd0 from memory into f25
froundnx.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdaac9bf9 # load x3 with value 0xdaac9bf9
sw x3, 0(x2) # store 0xdaac9bf9 in memory
flh f26, 0(x2) # load 0xdaac9bf9 from memory into f26
froundnx.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5cd7c79 # load x3 with value 0xe5cd7c79
sw x3, 0(x2) # store 0xe5cd7c79 in memory
flh f27, 0(x2) # load 0xe5cd7c79 from memory into f27
froundnx.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc4b91b5a # load x3 with value 0xc4b91b5a
sw x3, 0(x2) # store 0xc4b91b5a in memory
flh f28, 0(x2) # load 0xc4b91b5a from memory into f28
froundnx.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7d9a7c6 # load x3 with value 0xd7d9a7c6
sw x3, 0(x2) # store 0xd7d9a7c6 in memory
flh f29, 0(x2) # load 0xd7d9a7c6 from memory into f29
froundnx.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbab0cdc4 # load x3 with value 0xbab0cdc4
sw x3, 0(x2) # store 0xbab0cdc4 in memory
flh f30, 0(x2) # load 0xbab0cdc4 from memory into f30
froundnx.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x730394ff # load x3 with value 0x730394ff
sw x3, 0(x2) # store 0x730394ff in memory
flh f31, 0(x2) # load 0x730394ff from memory into f31
froundnx.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc7ede622 # load x3 with value 0xc7ede622
sw x3, 0(x2) # store 0xc7ede622 in memory
flh f2, 0(x2) # load 0xc7ede622 from memory into f2
froundnx.h f28, f2, dyn # perform operation
froundnx.h f28, f2, rdn # perform operation
froundnx.h f28, f2, rmm # perform operation
froundnx.h f28, f2, rne # perform operation
froundnx.h f28, f2, rtz # perform operation
froundnx.h f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.h f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.h f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.h f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.h f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.h f28, f2 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf4cd980d # load x3 with value 0xf4cd980d
sw x3, 0(x2) # store 0xf4cd980d in memory
flh f27, 0(x2) # load 0xf4cd980d from memory into f27
froundnx.h f26, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
froundnx.h f12, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f6, 0(x2) # load 0xfffe8000 from memory into f6
froundnx.h f13, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f7, 0(x2) # load 0x7fff3c00 from memory into f7
froundnx.h f24, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f10, 0(x2) # load 0xbeefbc00 from memory into f10
froundnx.h f16, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f5)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f5, 0(x2) # load 0xfeff0400 from memory into f5
froundnx.h f6, f5 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f3, 0(x2) # load 0x0fff8400 from memory into f3
froundnx.h f21, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f31, 0(x2) # load 0xefff7bff from memory into f31
froundnx.h f24, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f10, 0(x2) # load 0xc0defbff from memory into f10
froundnx.h f29, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f10, 0(x2) # load 0x4f1a7c00 from memory into f10
froundnx.h f2, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f31, 0(x2) # load 0x0ffffc00 from memory into f31
froundnx.h f12, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f14, 0(x2) # load 0xffef7e00 from memory into f14
froundnx.h f24, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f9, 0(x2) # load 0xfeef7fff from memory into f9
froundnx.h f14, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f28, 0(x2) # load 0xa1b27c01 from memory into f28
froundnx.h f12, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f14, 0(x2) # load 0x4fd77dff from memory into f14
froundnx.h f11, f14 # perform operation second time to make sure flags don't change

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
