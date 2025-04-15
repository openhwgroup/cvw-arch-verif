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
// Tests from: WALLY-COV-fcvt.s.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x24, x2 # perform first operation
fcvt.s.h f30, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x1, x16 # perform first operation
fcvt.s.h f19, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x16, x28 # perform first operation
fcvt.s.h f29, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f1, f27, f6 # perform first operation
fcvt.s.h f27, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x22, x10 # perform first operation
fcvt.s.h f10, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x27, x20 # perform first operation
fcvt.s.h f23, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f13, f22, f14 # perform first operation
fcvt.s.h f13, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f12, f22, f21 # perform first operation
fcvt.s.h f12, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f29, f25 # perform first operation
fcvt.s.h f15, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f21, f15, f3 # perform first operation
fcvt.s.h f15, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f20, f16 # perform first operation
fcvt.s.h f16, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f16, f12 # perform first operation
fcvt.s.h f19, f13 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec7ff8b964d28024 # load x3 with value 0xec7ff8b964d28024
sw x3, 0(x2) # store 0xec7ff8b964d28024 in memory
flh f0, 0(x2) # load 0xec7ff8b964d28024 from memory into f0
fcvt.s.h f13, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd71b8f59306b3d8 # load x3 with value 0xcd71b8f59306b3d8
sw x3, 0(x2) # store 0xcd71b8f59306b3d8 in memory
flh f1, 0(x2) # load 0xcd71b8f59306b3d8 from memory into f1
fcvt.s.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fe2169eb5094552 # load x3 with value 0x7fe2169eb5094552
sw x3, 0(x2) # store 0x7fe2169eb5094552 in memory
flh f2, 0(x2) # load 0x7fe2169eb5094552 from memory into f2
fcvt.s.h f10, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e80f435e1a7a97 # load x3 with value 0x7e80f435e1a7a97
sw x3, 0(x2) # store 0x7e80f435e1a7a97 in memory
flh f3, 0(x2) # load 0x7e80f435e1a7a97 from memory into f3
fcvt.s.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x28498b0147065779 # load x3 with value 0x28498b0147065779
sw x3, 0(x2) # store 0x28498b0147065779 in memory
flh f4, 0(x2) # load 0x28498b0147065779 from memory into f4
fcvt.s.h f24, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78e9201c4ce850f2 # load x3 with value 0x78e9201c4ce850f2
sw x3, 0(x2) # store 0x78e9201c4ce850f2 in memory
flh f5, 0(x2) # load 0x78e9201c4ce850f2 from memory into f5
fcvt.s.h f28, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb1e020d6573cbbd # load x3 with value 0xeb1e020d6573cbbd
sw x3, 0(x2) # store 0xeb1e020d6573cbbd in memory
flh f6, 0(x2) # load 0xeb1e020d6573cbbd from memory into f6
fcvt.s.h f16, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1ea19f27cebfd44 # load x3 with value 0xc1ea19f27cebfd44
sw x3, 0(x2) # store 0xc1ea19f27cebfd44 in memory
flh f7, 0(x2) # load 0xc1ea19f27cebfd44 from memory into f7
fcvt.s.h f29, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x91a2d4ab6c7f0631 # load x3 with value 0x91a2d4ab6c7f0631
sw x3, 0(x2) # store 0x91a2d4ab6c7f0631 in memory
flh f8, 0(x2) # load 0x91a2d4ab6c7f0631 from memory into f8
fcvt.s.h f19, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0892789746c0ac6 # load x3 with value 0xc0892789746c0ac6
sw x3, 0(x2) # store 0xc0892789746c0ac6 in memory
flh f9, 0(x2) # load 0xc0892789746c0ac6 from memory into f9
fcvt.s.h f19, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad32352943b16b86 # load x3 with value 0xad32352943b16b86
sw x3, 0(x2) # store 0xad32352943b16b86 in memory
flh f10, 0(x2) # load 0xad32352943b16b86 from memory into f10
fcvt.s.h f6, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x946ba2252cdfb22f # load x3 with value 0x946ba2252cdfb22f
sw x3, 0(x2) # store 0x946ba2252cdfb22f in memory
flh f11, 0(x2) # load 0x946ba2252cdfb22f from memory into f11
fcvt.s.h f26, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb274a61fa66a19a # load x3 with value 0xbb274a61fa66a19a
sw x3, 0(x2) # store 0xbb274a61fa66a19a in memory
flh f12, 0(x2) # load 0xbb274a61fa66a19a from memory into f12
fcvt.s.h f20, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c254fd0e2f71c35 # load x3 with value 0x5c254fd0e2f71c35
sw x3, 0(x2) # store 0x5c254fd0e2f71c35 in memory
flh f13, 0(x2) # load 0x5c254fd0e2f71c35 from memory into f13
fcvt.s.h f16, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3693e3bd5cc332b # load x3 with value 0xe3693e3bd5cc332b
sw x3, 0(x2) # store 0xe3693e3bd5cc332b in memory
flh f14, 0(x2) # load 0xe3693e3bd5cc332b from memory into f14
fcvt.s.h f11, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4a1b9f677c1e8085 # load x3 with value 0x4a1b9f677c1e8085
sw x3, 0(x2) # store 0x4a1b9f677c1e8085 in memory
flh f15, 0(x2) # load 0x4a1b9f677c1e8085 from memory into f15
fcvt.s.h f28, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda89483c7a7455fc # load x3 with value 0xda89483c7a7455fc
sw x3, 0(x2) # store 0xda89483c7a7455fc in memory
flh f16, 0(x2) # load 0xda89483c7a7455fc from memory into f16
fcvt.s.h f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12d69026661cc234 # load x3 with value 0x12d69026661cc234
sw x3, 0(x2) # store 0x12d69026661cc234 in memory
flh f17, 0(x2) # load 0x12d69026661cc234 from memory into f17
fcvt.s.h f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x328dbbaf9fd235d2 # load x3 with value 0x328dbbaf9fd235d2
sw x3, 0(x2) # store 0x328dbbaf9fd235d2 in memory
flh f18, 0(x2) # load 0x328dbbaf9fd235d2 from memory into f18
fcvt.s.h f23, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6826e07345c09a05 # load x3 with value 0x6826e07345c09a05
sw x3, 0(x2) # store 0x6826e07345c09a05 in memory
flh f19, 0(x2) # load 0x6826e07345c09a05 from memory into f19
fcvt.s.h f3, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed3b6d28535cdf94 # load x3 with value 0xed3b6d28535cdf94
sw x3, 0(x2) # store 0xed3b6d28535cdf94 in memory
flh f20, 0(x2) # load 0xed3b6d28535cdf94 from memory into f20
fcvt.s.h f27, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9aa6e26b1efa1f0 # load x3 with value 0xd9aa6e26b1efa1f0
sw x3, 0(x2) # store 0xd9aa6e26b1efa1f0 in memory
flh f21, 0(x2) # load 0xd9aa6e26b1efa1f0 from memory into f21
fcvt.s.h f25, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf2acdc16ea3544f6 # load x3 with value 0xf2acdc16ea3544f6
sw x3, 0(x2) # store 0xf2acdc16ea3544f6 in memory
flh f22, 0(x2) # load 0xf2acdc16ea3544f6 from memory into f22
fcvt.s.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcc0be4191dfe9c99 # load x3 with value 0xcc0be4191dfe9c99
sw x3, 0(x2) # store 0xcc0be4191dfe9c99 in memory
flh f23, 0(x2) # load 0xcc0be4191dfe9c99 from memory into f23
fcvt.s.h f6, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbaf7e05d26698a0e # load x3 with value 0xbaf7e05d26698a0e
sw x3, 0(x2) # store 0xbaf7e05d26698a0e in memory
flh f24, 0(x2) # load 0xbaf7e05d26698a0e from memory into f24
fcvt.s.h f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9b49a853bca84e47 # load x3 with value 0x9b49a853bca84e47
sw x3, 0(x2) # store 0x9b49a853bca84e47 in memory
flh f25, 0(x2) # load 0x9b49a853bca84e47 from memory into f25
fcvt.s.h f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5352e22ed056d369 # load x3 with value 0x5352e22ed056d369
sw x3, 0(x2) # store 0x5352e22ed056d369 in memory
flh f26, 0(x2) # load 0x5352e22ed056d369 from memory into f26
fcvt.s.h f29, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3c7fbe604b8adb8 # load x3 with value 0xc3c7fbe604b8adb8
sw x3, 0(x2) # store 0xc3c7fbe604b8adb8 in memory
flh f27, 0(x2) # load 0xc3c7fbe604b8adb8 from memory into f27
fcvt.s.h f11, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4c4f089b681e2ef # load x3 with value 0xa4c4f089b681e2ef
sw x3, 0(x2) # store 0xa4c4f089b681e2ef in memory
flh f28, 0(x2) # load 0xa4c4f089b681e2ef from memory into f28
fcvt.s.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7773bcdf56506dca # load x3 with value 0x7773bcdf56506dca
sw x3, 0(x2) # store 0x7773bcdf56506dca in memory
flh f29, 0(x2) # load 0x7773bcdf56506dca from memory into f29
fcvt.s.h f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfe02cd36424b72a1 # load x3 with value 0xfe02cd36424b72a1
sw x3, 0(x2) # store 0xfe02cd36424b72a1 in memory
flh f30, 0(x2) # load 0xfe02cd36424b72a1 from memory into f30
fcvt.s.h f14, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x68fd97c671d9ad72 # load x3 with value 0x68fd97c671d9ad72
sw x3, 0(x2) # store 0x68fd97c671d9ad72 in memory
flh f31, 0(x2) # load 0x68fd97c671d9ad72 from memory into f31
fcvt.s.h f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbf284d1efcb51a # load x3 with value 0xfbf284d1efcb51a
sw x3, 0(x2) # store 0xfbf284d1efcb51a in memory
flh f15, 0(x2) # load 0xfbf284d1efcb51a from memory into f15
fcvt.s.h f0, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61463a8ae94a7812 # load x3 with value 0x61463a8ae94a7812
sw x3, 0(x2) # store 0x61463a8ae94a7812 in memory
flh f1, 0(x2) # load 0x61463a8ae94a7812 from memory into f1
fcvt.s.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x570cb37d7aabced0 # load x3 with value 0x570cb37d7aabced0
sw x3, 0(x2) # store 0x570cb37d7aabced0 in memory
flh f21, 0(x2) # load 0x570cb37d7aabced0 from memory into f21
fcvt.s.h f2, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe283c450eef7168f # load x3 with value 0xe283c450eef7168f
sw x3, 0(x2) # store 0xe283c450eef7168f in memory
flh f25, 0(x2) # load 0xe283c450eef7168f from memory into f25
fcvt.s.h f3, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f205ed17675bff2 # load x3 with value 0x9f205ed17675bff2
sw x3, 0(x2) # store 0x9f205ed17675bff2 in memory
flh f23, 0(x2) # load 0x9f205ed17675bff2 from memory into f23
fcvt.s.h f4, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd020b9759a4c6460 # load x3 with value 0xd020b9759a4c6460
sw x3, 0(x2) # store 0xd020b9759a4c6460 in memory
flh f17, 0(x2) # load 0xd020b9759a4c6460 from memory into f17
fcvt.s.h f5, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c2473d915d21f2e # load x3 with value 0x9c2473d915d21f2e
sw x3, 0(x2) # store 0x9c2473d915d21f2e in memory
flh f17, 0(x2) # load 0x9c2473d915d21f2e from memory into f17
fcvt.s.h f6, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5cb3ac8deacc3f81 # load x3 with value 0x5cb3ac8deacc3f81
sw x3, 0(x2) # store 0x5cb3ac8deacc3f81 in memory
flh f26, 0(x2) # load 0x5cb3ac8deacc3f81 from memory into f26
fcvt.s.h f7, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ff603c34a90d944 # load x3 with value 0x8ff603c34a90d944
sw x3, 0(x2) # store 0x8ff603c34a90d944 in memory
flh f16, 0(x2) # load 0x8ff603c34a90d944 from memory into f16
fcvt.s.h f8, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf089239836ba1cc1 # load x3 with value 0xf089239836ba1cc1
sw x3, 0(x2) # store 0xf089239836ba1cc1 in memory
flh f23, 0(x2) # load 0xf089239836ba1cc1 from memory into f23
fcvt.s.h f9, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6390e25f4d102b1b # load x3 with value 0x6390e25f4d102b1b
sw x3, 0(x2) # store 0x6390e25f4d102b1b in memory
flh f23, 0(x2) # load 0x6390e25f4d102b1b from memory into f23
fcvt.s.h f10, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc689d827532b8ef6 # load x3 with value 0xc689d827532b8ef6
sw x3, 0(x2) # store 0xc689d827532b8ef6 in memory
flh f10, 0(x2) # load 0xc689d827532b8ef6 from memory into f10
fcvt.s.h f11, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb07ade44af90ec05 # load x3 with value 0xb07ade44af90ec05
sw x3, 0(x2) # store 0xb07ade44af90ec05 in memory
flh f18, 0(x2) # load 0xb07ade44af90ec05 from memory into f18
fcvt.s.h f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2b2dc450c406cc36 # load x3 with value 0x2b2dc450c406cc36
sw x3, 0(x2) # store 0x2b2dc450c406cc36 in memory
flh f11, 0(x2) # load 0x2b2dc450c406cc36 from memory into f11
fcvt.s.h f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe46a116d8fac4f20 # load x3 with value 0xe46a116d8fac4f20
sw x3, 0(x2) # store 0xe46a116d8fac4f20 in memory
flh f22, 0(x2) # load 0xe46a116d8fac4f20 from memory into f22
fcvt.s.h f14, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe20d2828c8d25115 # load x3 with value 0xe20d2828c8d25115
sw x3, 0(x2) # store 0xe20d2828c8d25115 in memory
flh f31, 0(x2) # load 0xe20d2828c8d25115 from memory into f31
fcvt.s.h f15, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacf93f3b26d9803a # load x3 with value 0xacf93f3b26d9803a
sw x3, 0(x2) # store 0xacf93f3b26d9803a in memory
flh f18, 0(x2) # load 0xacf93f3b26d9803a from memory into f18
fcvt.s.h f16, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde9624b6e49e87fb # load x3 with value 0xde9624b6e49e87fb
sw x3, 0(x2) # store 0xde9624b6e49e87fb in memory
flh f25, 0(x2) # load 0xde9624b6e49e87fb from memory into f25
fcvt.s.h f17, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x548b1e89dda4c4b3 # load x3 with value 0x548b1e89dda4c4b3
sw x3, 0(x2) # store 0x548b1e89dda4c4b3 in memory
flh f11, 0(x2) # load 0x548b1e89dda4c4b3 from memory into f11
fcvt.s.h f18, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4ca8be91726b31 # load x3 with value 0xa4ca8be91726b31
sw x3, 0(x2) # store 0xa4ca8be91726b31 in memory
flh f11, 0(x2) # load 0xa4ca8be91726b31 from memory into f11
fcvt.s.h f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e0b332d535cd8d9 # load x3 with value 0x2e0b332d535cd8d9
sw x3, 0(x2) # store 0x2e0b332d535cd8d9 in memory
flh f3, 0(x2) # load 0x2e0b332d535cd8d9 from memory into f3
fcvt.s.h f20, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xebc86c0b1d4ca291 # load x3 with value 0xebc86c0b1d4ca291
sw x3, 0(x2) # store 0xebc86c0b1d4ca291 in memory
flh f26, 0(x2) # load 0xebc86c0b1d4ca291 from memory into f26
fcvt.s.h f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3cbccf6d5ca3f7c # load x3 with value 0xd3cbccf6d5ca3f7c
sw x3, 0(x2) # store 0xd3cbccf6d5ca3f7c in memory
flh f29, 0(x2) # load 0xd3cbccf6d5ca3f7c from memory into f29
fcvt.s.h f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1d3d5caddf166b96 # load x3 with value 0x1d3d5caddf166b96
sw x3, 0(x2) # store 0x1d3d5caddf166b96 in memory
flh f31, 0(x2) # load 0x1d3d5caddf166b96 from memory into f31
fcvt.s.h f23, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd141d01d8aa4db54 # load x3 with value 0xd141d01d8aa4db54
sw x3, 0(x2) # store 0xd141d01d8aa4db54 in memory
flh f8, 0(x2) # load 0xd141d01d8aa4db54 from memory into f8
fcvt.s.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd1a2ec38504f3440 # load x3 with value 0xd1a2ec38504f3440
sw x3, 0(x2) # store 0xd1a2ec38504f3440 in memory
flh f6, 0(x2) # load 0xd1a2ec38504f3440 from memory into f6
fcvt.s.h f25, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5a6c210825cc71d # load x3 with value 0xf5a6c210825cc71d
sw x3, 0(x2) # store 0xf5a6c210825cc71d in memory
flh f3, 0(x2) # load 0xf5a6c210825cc71d from memory into f3
fcvt.s.h f26, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79923b8ace3fbb76 # load x3 with value 0x79923b8ace3fbb76
sw x3, 0(x2) # store 0x79923b8ace3fbb76 in memory
flh f31, 0(x2) # load 0x79923b8ace3fbb76 from memory into f31
fcvt.s.h f27, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x493df4794404997c # load x3 with value 0x493df4794404997c
sw x3, 0(x2) # store 0x493df4794404997c in memory
flh f29, 0(x2) # load 0x493df4794404997c from memory into f29
fcvt.s.h f28, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa62119d5ae76c589 # load x3 with value 0xa62119d5ae76c589
sw x3, 0(x2) # store 0xa62119d5ae76c589 in memory
flh f6, 0(x2) # load 0xa62119d5ae76c589 from memory into f6
fcvt.s.h f29, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c8da3b4467b1bfc # load x3 with value 0x9c8da3b4467b1bfc
sw x3, 0(x2) # store 0x9c8da3b4467b1bfc in memory
flh f6, 0(x2) # load 0x9c8da3b4467b1bfc from memory into f6
fcvt.s.h f30, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7262f1aab71ba94e # load x3 with value 0x7262f1aab71ba94e
sw x3, 0(x2) # store 0x7262f1aab71ba94e in memory
flh f20, 0(x2) # load 0x7262f1aab71ba94e from memory into f20
fcvt.s.h f31, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fcvt.s.h f20, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fcvt.s.h f9, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fcvt.s.h f28, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fcvt.s.h f22, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fcvt.s.h f12, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fcvt.s.h f5, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fcvt.s.h f9, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fcvt.s.h f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fcvt.s.h f2, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fcvt.s.h f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fcvt.s.h f11, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fcvt.s.h f16, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fcvt.s.h f21, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fcvt.s.h f9, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fcvt.s.h f29, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fcvt.s.h f19, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fcvt.s.h f30, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fcvt.s.h f22, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fcvt.s.h f26, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fcvt.s.h f24, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fcvt.s.h f19, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fcvt.s.h f28, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fcvt.s.h f29, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fcvt.s.h f20, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fcvt.s.h f20, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fcvt.s.h f7, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fcvt.s.h f3, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fcvt.s.h f31, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc315046e7f80321 # load x3 with value 0xdc315046e7f80321
sw x3, 0(x2) # store 0xdc315046e7f80321 in memory
flh f0, 0(x2) # load 0xdc315046e7f80321 from memory into f0
fcvt.s.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x312da62326bf418d # load x3 with value 0x312da62326bf418d
sw x3, 0(x2) # store 0x312da62326bf418d in memory
flh f1, 0(x2) # load 0x312da62326bf418d from memory into f1
fcvt.s.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa670a625b70742e1 # load x3 with value 0xa670a625b70742e1
sw x3, 0(x2) # store 0xa670a625b70742e1 in memory
flh f2, 0(x2) # load 0xa670a625b70742e1 from memory into f2
fcvt.s.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x945f5cfa46129e05 # load x3 with value 0x945f5cfa46129e05
sw x3, 0(x2) # store 0x945f5cfa46129e05 in memory
flh f3, 0(x2) # load 0x945f5cfa46129e05 from memory into f3
fcvt.s.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3188df7fd2b757ca # load x3 with value 0x3188df7fd2b757ca
sw x3, 0(x2) # store 0x3188df7fd2b757ca in memory
flh f4, 0(x2) # load 0x3188df7fd2b757ca from memory into f4
fcvt.s.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b9f934e4f24b89e # load x3 with value 0x1b9f934e4f24b89e
sw x3, 0(x2) # store 0x1b9f934e4f24b89e in memory
flh f5, 0(x2) # load 0x1b9f934e4f24b89e from memory into f5
fcvt.s.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5617d83eca877d52 # load x3 with value 0x5617d83eca877d52
sw x3, 0(x2) # store 0x5617d83eca877d52 in memory
flh f6, 0(x2) # load 0x5617d83eca877d52 from memory into f6
fcvt.s.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee68dee98dd2b4b8 # load x3 with value 0xee68dee98dd2b4b8
sw x3, 0(x2) # store 0xee68dee98dd2b4b8 in memory
flh f7, 0(x2) # load 0xee68dee98dd2b4b8 from memory into f7
fcvt.s.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2500f8cfb84d34fb # load x3 with value 0x2500f8cfb84d34fb
sw x3, 0(x2) # store 0x2500f8cfb84d34fb in memory
flh f8, 0(x2) # load 0x2500f8cfb84d34fb from memory into f8
fcvt.s.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbea2270b1d54c972 # load x3 with value 0xbea2270b1d54c972
sw x3, 0(x2) # store 0xbea2270b1d54c972 in memory
flh f9, 0(x2) # load 0xbea2270b1d54c972 from memory into f9
fcvt.s.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3431ab4108120218 # load x3 with value 0x3431ab4108120218
sw x3, 0(x2) # store 0x3431ab4108120218 in memory
flh f10, 0(x2) # load 0x3431ab4108120218 from memory into f10
fcvt.s.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17ff88e922946648 # load x3 with value 0x17ff88e922946648
sw x3, 0(x2) # store 0x17ff88e922946648 in memory
flh f11, 0(x2) # load 0x17ff88e922946648 from memory into f11
fcvt.s.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xecbdb384609093c6 # load x3 with value 0xecbdb384609093c6
sw x3, 0(x2) # store 0xecbdb384609093c6 in memory
flh f12, 0(x2) # load 0xecbdb384609093c6 from memory into f12
fcvt.s.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2cf0dbb5887f68c1 # load x3 with value 0x2cf0dbb5887f68c1
sw x3, 0(x2) # store 0x2cf0dbb5887f68c1 in memory
flh f13, 0(x2) # load 0x2cf0dbb5887f68c1 from memory into f13
fcvt.s.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xede83743f1c61f53 # load x3 with value 0xede83743f1c61f53
sw x3, 0(x2) # store 0xede83743f1c61f53 in memory
flh f14, 0(x2) # load 0xede83743f1c61f53 from memory into f14
fcvt.s.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a196aea7bc45a2 # load x3 with value 0x3a196aea7bc45a2
sw x3, 0(x2) # store 0x3a196aea7bc45a2 in memory
flh f15, 0(x2) # load 0x3a196aea7bc45a2 from memory into f15
fcvt.s.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c483613750ff0fe # load x3 with value 0x4c483613750ff0fe
sw x3, 0(x2) # store 0x4c483613750ff0fe in memory
flh f16, 0(x2) # load 0x4c483613750ff0fe from memory into f16
fcvt.s.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x99c3dfd070bb726d # load x3 with value 0x99c3dfd070bb726d
sw x3, 0(x2) # store 0x99c3dfd070bb726d in memory
flh f17, 0(x2) # load 0x99c3dfd070bb726d from memory into f17
fcvt.s.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf2d25b40edf87f1 # load x3 with value 0xf2d25b40edf87f1
sw x3, 0(x2) # store 0xf2d25b40edf87f1 in memory
flh f18, 0(x2) # load 0xf2d25b40edf87f1 from memory into f18
fcvt.s.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x548f00b36abe9acc # load x3 with value 0x548f00b36abe9acc
sw x3, 0(x2) # store 0x548f00b36abe9acc in memory
flh f19, 0(x2) # load 0x548f00b36abe9acc from memory into f19
fcvt.s.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6b9fc2aa19feb437 # load x3 with value 0x6b9fc2aa19feb437
sw x3, 0(x2) # store 0x6b9fc2aa19feb437 in memory
flh f20, 0(x2) # load 0x6b9fc2aa19feb437 from memory into f20
fcvt.s.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacc5b3908417d1b4 # load x3 with value 0xacc5b3908417d1b4
sw x3, 0(x2) # store 0xacc5b3908417d1b4 in memory
flh f21, 0(x2) # load 0xacc5b3908417d1b4 from memory into f21
fcvt.s.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22b1f7495c86838 # load x3 with value 0x22b1f7495c86838
sw x3, 0(x2) # store 0x22b1f7495c86838 in memory
flh f22, 0(x2) # load 0x22b1f7495c86838 from memory into f22
fcvt.s.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc05b023541f907c # load x3 with value 0xfc05b023541f907c
sw x3, 0(x2) # store 0xfc05b023541f907c in memory
flh f23, 0(x2) # load 0xfc05b023541f907c from memory into f23
fcvt.s.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa22b597014162a7f # load x3 with value 0xa22b597014162a7f
sw x3, 0(x2) # store 0xa22b597014162a7f in memory
flh f24, 0(x2) # load 0xa22b597014162a7f from memory into f24
fcvt.s.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1910d536d0765d49 # load x3 with value 0x1910d536d0765d49
sw x3, 0(x2) # store 0x1910d536d0765d49 in memory
flh f25, 0(x2) # load 0x1910d536d0765d49 from memory into f25
fcvt.s.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad06e2adba76b1b2 # load x3 with value 0xad06e2adba76b1b2
sw x3, 0(x2) # store 0xad06e2adba76b1b2 in memory
flh f26, 0(x2) # load 0xad06e2adba76b1b2 from memory into f26
fcvt.s.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1418554fe8f56f10 # load x3 with value 0x1418554fe8f56f10
sw x3, 0(x2) # store 0x1418554fe8f56f10 in memory
flh f27, 0(x2) # load 0x1418554fe8f56f10 from memory into f27
fcvt.s.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae49c08d8ed84189 # load x3 with value 0xae49c08d8ed84189
sw x3, 0(x2) # store 0xae49c08d8ed84189 in memory
flh f28, 0(x2) # load 0xae49c08d8ed84189 from memory into f28
fcvt.s.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f093eb9f717b43a # load x3 with value 0x8f093eb9f717b43a
sw x3, 0(x2) # store 0x8f093eb9f717b43a in memory
flh f29, 0(x2) # load 0x8f093eb9f717b43a from memory into f29
fcvt.s.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc80efcc8f5cce703 # load x3 with value 0xc80efcc8f5cce703
sw x3, 0(x2) # store 0xc80efcc8f5cce703 in memory
flh f30, 0(x2) # load 0xc80efcc8f5cce703 from memory into f30
fcvt.s.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a874128b7d88b8c # load x3 with value 0x7a874128b7d88b8c
sw x3, 0(x2) # store 0x7a874128b7d88b8c in memory
flh f31, 0(x2) # load 0x7a874128b7d88b8c from memory into f31
fcvt.s.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fcvt.s.h f9, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f14, 0(x2) # load 0xfffe8000 from memory into f14
fcvt.s.h f15, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f25)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f25, 0(x2) # load 0x7fff3c00 from memory into f25
fcvt.s.h f26, f25 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f2, 0(x2) # load 0xbeefbc00 from memory into f2
fcvt.s.h f15, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f17, 0(x2) # load 0xfeff0400 from memory into f17
fcvt.s.h f6, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f8, 0(x2) # load 0x0fff8400 from memory into f8
fcvt.s.h f30, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f28, 0(x2) # load 0xefff7bff from memory into f28
fcvt.s.h f5, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f2, 0(x2) # load 0xc0defbff from memory into f2
fcvt.s.h f29, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f14, 0(x2) # load 0x4f1a7c00 from memory into f14
fcvt.s.h f22, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f24, 0(x2) # load 0x0ffffc00 from memory into f24
fcvt.s.h f12, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f1, 0(x2) # load 0xffef7e00 from memory into f1
fcvt.s.h f22, f1 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f29, 0(x2) # load 0xfeef7fff from memory into f29
fcvt.s.h f14, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f15, 0(x2) # load 0xa1b27c01 from memory into f15
fcvt.s.h f24, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f29, 0(x2) # load 0x4fd77dff from memory into f29
fcvt.s.h f28, f29 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fmv.x.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0x996e2c4b044fed93 # load x3 with value 0x996e2c4b044fed93
sw x3, 0(x2) # store 0x996e2c4b044fed93 in memory
flh f21, 0(x2) # load 0x996e2c4b044fed93 from memory into f21
fmv.x.h x0, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x6a54d029ba1413ae # load x3 with value 0x6a54d029ba1413ae
sw x3, 0(x2) # store 0x6a54d029ba1413ae in memory
flh f15, 0(x2) # load 0x6a54d029ba1413ae from memory into f15
fmv.x.h x1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x5ccb021ae509757e # load x3 with value 0x5ccb021ae509757e
sw x3, 0(x2) # store 0x5ccb021ae509757e in memory
flh f5, 0(x2) # load 0x5ccb021ae509757e from memory into f5
fmv.x.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x2772155c59f0cf75 # load x3 with value 0x2772155c59f0cf75
sw x3, 0(x2) # store 0x2772155c59f0cf75 in memory
flh f30, 0(x2) # load 0x2772155c59f0cf75 from memory into f30
fmv.x.h x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8660210387b6aa7f # load x3 with value 0x8660210387b6aa7f
sw x3, 0(x2) # store 0x8660210387b6aa7f in memory
flh f31, 0(x2) # load 0x8660210387b6aa7f from memory into f31
fmv.x.h x4, f31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x19405f9193facc1e # load x3 with value 0x19405f9193facc1e
sw x3, 0(x2) # store 0x19405f9193facc1e in memory
flh f10, 0(x2) # load 0x19405f9193facc1e from memory into f10
fmv.x.h x5, f10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb95d2962786158db # load x3 with value 0xb95d2962786158db
sw x3, 0(x2) # store 0xb95d2962786158db in memory
flh f2, 0(x2) # load 0xb95d2962786158db from memory into f2
fmv.x.h x6, f2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd3f0da72ccb6ed80 # load x3 with value 0xd3f0da72ccb6ed80
sw x3, 0(x2) # store 0xd3f0da72ccb6ed80 in memory
flh f6, 0(x2) # load 0xd3f0da72ccb6ed80 from memory into f6
fmv.x.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x8deff80a64670121 # load x3 with value 0x8deff80a64670121
sw x3, 0(x2) # store 0x8deff80a64670121 in memory
flh f7, 0(x2) # load 0x8deff80a64670121 from memory into f7
fmv.x.h x8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xac008694005e92d1 # load x3 with value 0xac008694005e92d1
sw x3, 0(x2) # store 0xac008694005e92d1 in memory
flh f8, 0(x2) # load 0xac008694005e92d1 from memory into f8
fmv.x.h x9, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x4e18cb2c8c54378d # load x3 with value 0x4e18cb2c8c54378d
sw x3, 0(x2) # store 0x4e18cb2c8c54378d in memory
flh f7, 0(x2) # load 0x4e18cb2c8c54378d from memory into f7
fmv.x.h x10, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x59c0f507bf905baa # load x3 with value 0x59c0f507bf905baa
sw x3, 0(x2) # store 0x59c0f507bf905baa in memory
flh f22, 0(x2) # load 0x59c0f507bf905baa from memory into f22
fmv.x.h x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xd6fc85671ad0911b # load x3 with value 0xd6fc85671ad0911b
sw x3, 0(x2) # store 0xd6fc85671ad0911b in memory
flh f14, 0(x2) # load 0xd6fc85671ad0911b from memory into f14
fmv.x.h x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x907e4c8c3b9e5302 # load x3 with value 0x907e4c8c3b9e5302
sw x3, 0(x2) # store 0x907e4c8c3b9e5302 in memory
flh f28, 0(x2) # load 0x907e4c8c3b9e5302 from memory into f28
fmv.x.h x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x5dd2f5b88696aa50 # load x3 with value 0x5dd2f5b88696aa50
sw x3, 0(x2) # store 0x5dd2f5b88696aa50 in memory
flh f28, 0(x2) # load 0x5dd2f5b88696aa50 from memory into f28
fmv.x.h x14, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x3dc044b02d1a9af2 # load x3 with value 0x3dc044b02d1a9af2
sw x3, 0(x2) # store 0x3dc044b02d1a9af2 in memory
flh f12, 0(x2) # load 0x3dc044b02d1a9af2 from memory into f12
fmv.x.h x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x40e618e805d1c386 # load x3 with value 0x40e618e805d1c386
sw x3, 0(x2) # store 0x40e618e805d1c386 in memory
flh f28, 0(x2) # load 0x40e618e805d1c386 from memory into f28
fmv.x.h x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xaaaedf800eab4ae4 # load x3 with value 0xaaaedf800eab4ae4
sw x3, 0(x2) # store 0xaaaedf800eab4ae4 in memory
flh f16, 0(x2) # load 0xaaaedf800eab4ae4 from memory into f16
fmv.x.h x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xc5c1fd52454856aa # load x3 with value 0xc5c1fd52454856aa
sw x3, 0(x2) # store 0xc5c1fd52454856aa in memory
flh f20, 0(x2) # load 0xc5c1fd52454856aa from memory into f20
fmv.x.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x78cfc6baebe8caad # load x3 with value 0x78cfc6baebe8caad
sw x3, 0(x2) # store 0x78cfc6baebe8caad in memory
flh f29, 0(x2) # load 0x78cfc6baebe8caad from memory into f29
fmv.x.h x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x6cd6fb32a16a9d06 # load x3 with value 0x6cd6fb32a16a9d06
sw x3, 0(x2) # store 0x6cd6fb32a16a9d06 in memory
flh f21, 0(x2) # load 0x6cd6fb32a16a9d06 from memory into f21
fmv.x.h x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x571b4151040e30da # load x3 with value 0x571b4151040e30da
sw x3, 0(x2) # store 0x571b4151040e30da in memory
flh f3, 0(x2) # load 0x571b4151040e30da from memory into f3
fmv.x.h x21, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xdef57edaf3def245 # load x3 with value 0xdef57edaf3def245
sw x3, 0(x2) # store 0xdef57edaf3def245 in memory
flh f21, 0(x2) # load 0xdef57edaf3def245 from memory into f21
fmv.x.h x22, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x40d30676b79dfa8d # load x3 with value 0x40d30676b79dfa8d
sw x3, 0(x2) # store 0x40d30676b79dfa8d in memory
flh f25, 0(x2) # load 0x40d30676b79dfa8d from memory into f25
fmv.x.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xbf4a49399b0c7397 # load x3 with value 0xbf4a49399b0c7397
sw x3, 0(x2) # store 0xbf4a49399b0c7397 in memory
flh f27, 0(x2) # load 0xbf4a49399b0c7397 from memory into f27
fmv.x.h x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x9cf6bcff0c1d440a # load x3 with value 0x9cf6bcff0c1d440a
sw x3, 0(x2) # store 0x9cf6bcff0c1d440a in memory
flh f6, 0(x2) # load 0x9cf6bcff0c1d440a from memory into f6
fmv.x.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x8402605e06267cb8 # load x3 with value 0x8402605e06267cb8
sw x3, 0(x2) # store 0x8402605e06267cb8 in memory
flh f6, 0(x2) # load 0x8402605e06267cb8 from memory into f6
fmv.x.h x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xbcd3eb4f9b07d3a # load x3 with value 0xbcd3eb4f9b07d3a
sw x3, 0(x2) # store 0xbcd3eb4f9b07d3a in memory
flh f2, 0(x2) # load 0xbcd3eb4f9b07d3a from memory into f2
fmv.x.h x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xa7126bade30883a5 # load x3 with value 0xa7126bade30883a5
sw x3, 0(x2) # store 0xa7126bade30883a5 in memory
flh f15, 0(x2) # load 0xa7126bade30883a5 from memory into f15
fmv.x.h x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xa894f527555a694d # load x3 with value 0xa894f527555a694d
sw x3, 0(x2) # store 0xa894f527555a694d in memory
flh f29, 0(x2) # load 0xa894f527555a694d from memory into f29
fmv.x.h x29, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x7d443a2d512e4bb0 # load x3 with value 0x7d443a2d512e4bb0
sw x3, 0(x2) # store 0x7d443a2d512e4bb0 in memory
flh f2, 0(x2) # load 0x7d443a2d512e4bb0 from memory into f2
fmv.x.h x30, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x96c39a63e83c4e5e # load x3 with value 0x96c39a63e83c4e5e
sw x3, 0(x2) # store 0x96c39a63e83c4e5e in memory
flh f28, 0(x2) # load 0x96c39a63e83c4e5e from memory into f28
fmv.x.h x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x22, x26 # perform first operation
fmv.x.h x8, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x9 # perform first operation
fmv.x.h x26, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x6, x13 # perform first operation
fmv.x.h x22, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f30, f5, f7 # perform first operation
fmv.x.h x5, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x13, x11 # perform first operation
fmv.x.h x12, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x26, x6 # perform first operation
fmv.x.h x26, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x28, x1 # perform first operation
fmv.x.h x19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x5, x15 # perform first operation
fmv.x.h x18, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x15, x9 # perform first operation
fmv.x.h x6, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x15, x10 # perform first operation
fmv.x.h x20, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x8, x22 # perform first operation
fmv.x.h x19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x9, x3 # perform first operation
fmv.x.h x12, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x6, x2 # perform first operation
fmv.x.h x6, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x21, x6 # perform first operation
fmv.x.h x6, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x3, x29 # perform first operation
fmv.x.h x21, f30 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x7040cb32b920544b # load x3 with value 0x7040cb32b920544b
sw x3, 0(x2) # store 0x7040cb32b920544b in memory
flh f0, 0(x2) # load 0x7040cb32b920544b from memory into f0
fmv.x.h x1, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x57cc79c4b97ac19c # load x3 with value 0x57cc79c4b97ac19c
sw x3, 0(x2) # store 0x57cc79c4b97ac19c in memory
flh f1, 0(x2) # load 0x57cc79c4b97ac19c from memory into f1
fmv.x.h x9, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xe998067c39c611c6 # load x3 with value 0xe998067c39c611c6
sw x3, 0(x2) # store 0xe998067c39c611c6 in memory
flh f2, 0(x2) # load 0xe998067c39c611c6 from memory into f2
fmv.x.h x18, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xace8dd0eb2da1550 # load x3 with value 0xace8dd0eb2da1550
sw x3, 0(x2) # store 0xace8dd0eb2da1550 in memory
flh f3, 0(x2) # load 0xace8dd0eb2da1550 from memory into f3
fmv.x.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2decfc311514092e # load x3 with value 0x2decfc311514092e
sw x3, 0(x2) # store 0x2decfc311514092e in memory
flh f4, 0(x2) # load 0x2decfc311514092e from memory into f4
fmv.x.h x14, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x137b168611d6374f # load x3 with value 0x137b168611d6374f
sw x3, 0(x2) # store 0x137b168611d6374f in memory
flh f5, 0(x2) # load 0x137b168611d6374f from memory into f5
fmv.x.h x10, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f4a24382a5289f # load x3 with value 0x5f4a24382a5289f
sw x3, 0(x2) # store 0x5f4a24382a5289f in memory
flh f6, 0(x2) # load 0x5f4a24382a5289f from memory into f6
fmv.x.h x31, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6bd9903dee4ef049 # load x3 with value 0x6bd9903dee4ef049
sw x3, 0(x2) # store 0x6bd9903dee4ef049 in memory
flh f7, 0(x2) # load 0x6bd9903dee4ef049 from memory into f7
fmv.x.h x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xc205e963a11f4efa # load x3 with value 0xc205e963a11f4efa
sw x3, 0(x2) # store 0xc205e963a11f4efa in memory
flh f8, 0(x2) # load 0xc205e963a11f4efa from memory into f8
fmv.x.h x20, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x5d0d56fa6211ea93 # load x3 with value 0x5d0d56fa6211ea93
sw x3, 0(x2) # store 0x5d0d56fa6211ea93 in memory
flh f9, 0(x2) # load 0x5d0d56fa6211ea93 from memory into f9
fmv.x.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x33e314d3830b807d # load x3 with value 0x33e314d3830b807d
sw x3, 0(x2) # store 0x33e314d3830b807d in memory
flh f10, 0(x2) # load 0x33e314d3830b807d from memory into f10
fmv.x.h x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x98e36004fa7fbc57 # load x3 with value 0x98e36004fa7fbc57
sw x3, 0(x2) # store 0x98e36004fa7fbc57 in memory
flh f11, 0(x2) # load 0x98e36004fa7fbc57 from memory into f11
fmv.x.h x31, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x3f4a8b86d69b8a5f # load x3 with value 0x3f4a8b86d69b8a5f
sw x3, 0(x2) # store 0x3f4a8b86d69b8a5f in memory
flh f12, 0(x2) # load 0x3f4a8b86d69b8a5f from memory into f12
fmv.x.h x3, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x9b6b9f3c947546e7 # load x3 with value 0x9b6b9f3c947546e7
sw x3, 0(x2) # store 0x9b6b9f3c947546e7 in memory
flh f13, 0(x2) # load 0x9b6b9f3c947546e7 from memory into f13
fmv.x.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x312dca653e02f7a0 # load x3 with value 0x312dca653e02f7a0
sw x3, 0(x2) # store 0x312dca653e02f7a0 in memory
flh f14, 0(x2) # load 0x312dca653e02f7a0 from memory into f14
fmv.x.h x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x1af57794b2be72c5 # load x3 with value 0x1af57794b2be72c5
sw x3, 0(x2) # store 0x1af57794b2be72c5 in memory
flh f15, 0(x2) # load 0x1af57794b2be72c5 from memory into f15
fmv.x.h x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x218b83bb61b8a298 # load x3 with value 0x218b83bb61b8a298
sw x3, 0(x2) # store 0x218b83bb61b8a298 in memory
flh f16, 0(x2) # load 0x218b83bb61b8a298 from memory into f16
fmv.x.h x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x63ec17f9aec1422b # load x3 with value 0x63ec17f9aec1422b
sw x3, 0(x2) # store 0x63ec17f9aec1422b in memory
flh f17, 0(x2) # load 0x63ec17f9aec1422b from memory into f17
fmv.x.h x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xf80c356316a689d8 # load x3 with value 0xf80c356316a689d8
sw x3, 0(x2) # store 0xf80c356316a689d8 in memory
flh f18, 0(x2) # load 0xf80c356316a689d8 from memory into f18
fmv.x.h x17, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3e5783c51e9c902e # load x3 with value 0x3e5783c51e9c902e
sw x3, 0(x2) # store 0x3e5783c51e9c902e in memory
flh f19, 0(x2) # load 0x3e5783c51e9c902e from memory into f19
fmv.x.h x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x8246fad4c9c9d775 # load x3 with value 0x8246fad4c9c9d775
sw x3, 0(x2) # store 0x8246fad4c9c9d775 in memory
flh f20, 0(x2) # load 0x8246fad4c9c9d775 from memory into f20
fmv.x.h x3, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x8242b363bfcf8a0c # load x3 with value 0x8242b363bfcf8a0c
sw x3, 0(x2) # store 0x8242b363bfcf8a0c in memory
flh f21, 0(x2) # load 0x8242b363bfcf8a0c from memory into f21
fmv.x.h x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xae40291f4619c9fe # load x3 with value 0xae40291f4619c9fe
sw x3, 0(x2) # store 0xae40291f4619c9fe in memory
flh f22, 0(x2) # load 0xae40291f4619c9fe from memory into f22
fmv.x.h x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x157a993631f6173 # load x3 with value 0x157a993631f6173
sw x3, 0(x2) # store 0x157a993631f6173 in memory
flh f23, 0(x2) # load 0x157a993631f6173 from memory into f23
fmv.x.h x6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x859a25022de78890 # load x3 with value 0x859a25022de78890
sw x3, 0(x2) # store 0x859a25022de78890 in memory
flh f24, 0(x2) # load 0x859a25022de78890 from memory into f24
fmv.x.h x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x7e06a92ecea60e7a # load x3 with value 0x7e06a92ecea60e7a
sw x3, 0(x2) # store 0x7e06a92ecea60e7a in memory
flh f25, 0(x2) # load 0x7e06a92ecea60e7a from memory into f25
fmv.x.h x15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xe789b3a69b8ab662 # load x3 with value 0xe789b3a69b8ab662
sw x3, 0(x2) # store 0xe789b3a69b8ab662 in memory
flh f26, 0(x2) # load 0xe789b3a69b8ab662 from memory into f26
fmv.x.h x6, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x37d823287089c391 # load x3 with value 0x37d823287089c391
sw x3, 0(x2) # store 0x37d823287089c391 in memory
flh f27, 0(x2) # load 0x37d823287089c391 from memory into f27
fmv.x.h x27, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x80b81f402ec99ccf # load x3 with value 0x80b81f402ec99ccf
sw x3, 0(x2) # store 0x80b81f402ec99ccf in memory
flh f28, 0(x2) # load 0x80b81f402ec99ccf from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x728379d4940d2dbb # load x3 with value 0x728379d4940d2dbb
sw x3, 0(x2) # store 0x728379d4940d2dbb in memory
flh f29, 0(x2) # load 0x728379d4940d2dbb from memory into f29
fmv.x.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x1b52c0130dba185b # load x3 with value 0x1b52c0130dba185b
sw x3, 0(x2) # store 0x1b52c0130dba185b in memory
flh f30, 0(x2) # load 0x1b52c0130dba185b from memory into f30
fmv.x.h x30, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x54f82a0ee9ec1a52 # load x3 with value 0x54f82a0ee9ec1a52
sw x3, 0(x2) # store 0x54f82a0ee9ec1a52 in memory
flh f31, 0(x2) # load 0x54f82a0ee9ec1a52 from memory into f31
fmv.x.h x30, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmv.x.h x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmv.x.h x30, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmv.x.h x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmv.x.h x5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmv.x.h x9, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmv.x.h x1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmv.x.h x11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmv.x.h x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmv.x.h x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmv.x.h x30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmv.x.h x30, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmv.x.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmv.x.h x11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmv.x.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmv.x.h x12, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmv.x.h x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fmv.x.h x25, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmv.x.h x21, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmv.x.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmv.x.h x14, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmv.x.h x24, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fmv.x.h x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmv.x.h x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmv.x.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fmv.x.h x23, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmv.x.h x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmv.x.h x8, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmv.x.h x27, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f13, 0(x2) # load 0xfffe8000 from memory into f13
fmv.x.h x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f31, 0(x2) # load 0x7fff3c00 from memory into f31
fmv.x.h x29, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f8, 0(x2) # load 0xbeefbc00 from memory into f8
fmv.x.h x28, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
fmv.x.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f31, 0(x2) # load 0x0fff8400 from memory into f31
fmv.x.h x3, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f1, 0(x2) # load 0xefff7bff from memory into f1
fmv.x.h x23, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f27, 0(x2) # load 0xc0defbff from memory into f27
fmv.x.h x17, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f3, 0(x2) # load 0x4f1a7c00 from memory into f3
fmv.x.h x6, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f21, 0(x2) # load 0x0ffffc00 from memory into f21
fmv.x.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 808)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f8, 0(x2) # load 0xffef7e00 from memory into f8
fmv.x.h x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f9, 0(x2) # load 0xfeef7fff from memory into f9
fmv.x.h x25, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f28, 0(x2) # load 0xa1b27c01 from memory into f28
fmv.x.h x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f26, 0(x2) # load 0x4fd77dff from memory into f26
fmv.x.h x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

#.EQU SIGSIZE,848


// ******************
// Tests from: WALLY-COV-fmv.h.x.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x0)
fsflagsi 0b00000 # clear all fflags
li x0, 0x7291e37fe7277035 # load immediate value into integer register
fmv.h.x f1, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x7eb8b118dd0f557e # load immediate value into integer register
fmv.h.x f23, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xc7e4584f8c681ae5 # load immediate value into integer register
fmv.h.x f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x0e168588e6ce3627 # load immediate value into integer register
fmv.h.x f23, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xf3bc8bd21c2deb85 # load immediate value into integer register
fmv.h.x f12, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x5d8d85ca4ae568c2 # load immediate value into integer register
fmv.h.x f27, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xabb0bdbbff886990 # load immediate value into integer register
fmv.h.x f18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xc64bca657a82cc85 # load immediate value into integer register
fmv.h.x f1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x72858fb390fab891 # load immediate value into integer register
fmv.h.x f9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0xbc6cb1e36cbb6c98 # load immediate value into integer register
fmv.h.x f1, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x1f37ca47f1c07931 # load immediate value into integer register
fmv.h.x f17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0xde06b07f375894cc # load immediate value into integer register
fmv.h.x f24, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x8a43a25b1fd34489 # load immediate value into integer register
fmv.h.x f2, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x51eb7907d8c898d2 # load immediate value into integer register
fmv.h.x f22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x03f0505259844b4a # load immediate value into integer register
fmv.h.x f24, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0xd463a59621384cca # load immediate value into integer register
fmv.h.x f16, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xadaf4bf42cd702e7 # load immediate value into integer register
fmv.h.x f24, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xeb8be7fa97f599bf # load immediate value into integer register
fmv.h.x f14, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xfd5229de28639341 # load immediate value into integer register
fmv.h.x f17, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x11e182616fe02bab # load immediate value into integer register
fmv.h.x f5, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xf56737b34ab9c5c2 # load immediate value into integer register
fmv.h.x f17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0xc28564b188ce4eb2 # load immediate value into integer register
fmv.h.x f15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x16d179cdf9704134 # load immediate value into integer register
fmv.h.x f31, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0xbbc1bbc4b2c77e24 # load immediate value into integer register
fmv.h.x f12, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0x63be22d2a1b87379 # load immediate value into integer register
fmv.h.x f28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x4d5aee358f1a80b9 # load immediate value into integer register
fmv.h.x f28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0x7e0ef81544200a35 # load immediate value into integer register
fmv.h.x f1, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xcb32c2de72feab28 # load immediate value into integer register
fmv.h.x f16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0x59b0afc2e5ef035f # load immediate value into integer register
fmv.h.x f5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0xa4d36462aa66503c # load immediate value into integer register
fmv.h.x f16, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x33fdff6f94ee336c # load immediate value into integer register
fmv.h.x f7, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x341ccbc01a859798 # load immediate value into integer register
fmv.h.x f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x23, 0x0000000000000000 # load immediate value into integer register
fmv.h.x f11, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x7, 0x0000000000000001 # load immediate value into integer register
fmv.h.x f23, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x19, 0x0000000000000002 # load immediate value into integer register
fmv.h.x f24, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8000000000000000 # load immediate value into integer register
fmv.h.x f16, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x18, 0x8000000000000001 # load immediate value into integer register
fmv.h.x f25, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x23, 0x7fffffffffffffff # load immediate value into integer register
fmv.h.x f22, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x6, 0x7ffffffffffffffe # load immediate value into integer register
fmv.h.x f28, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0xffffffffffffffff # load immediate value into integer register
fmv.h.x f20, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x23, 0xfffffffffffffffe # load immediate value into integer register
fmv.h.x f6, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x3, 0x5bbc887763ae86f2 # load immediate value into integer register
fmv.h.x f22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x17, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.h.x f1, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x3, 0x5555555555555555 # load immediate value into integer register
fmv.h.x f21, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x2, 0x00000000ffffffff # load immediate value into integer register
fmv.h.x f5, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x22, 0x00000000fffffffe # load immediate value into integer register
fmv.h.x f25, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x25, 0x0000000100000000 # load immediate value into integer register
fmv.h.x f19, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x13, 0x0000000100000001 # load immediate value into integer register
fmv.h.x f3, x13 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x24, x16 # perform first operation
fmv.h.x f13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x19, x1 # perform first operation
fmv.h.x f9, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x7, x28 # perform first operation
fmv.h.x f3, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f25, f10 # perform first operation
fmv.h.x f3, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f2, f10 # perform first operation
fmv.h.x f19, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f25, f13 # perform first operation
fmv.h.x f31, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f5, f8 # perform first operation
fmv.h.x f5, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f10, f28 # perform first operation
fmv.h.x f28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f19, f11 # perform first operation
fmv.h.x f3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x27, x21 # perform first operation
fmv.h.x f23, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x18, x9 # perform first operation
fmv.h.x f10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x31, x5 # perform first operation
fmv.h.x f8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x18, x6 # perform first operation
fmv.h.x f25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x22, x20 # perform first operation
fmv.h.x f29, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x22, x2 # perform first operation
fmv.h.x f22, x9 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x18, 0x42e05ce7a66ee81e # load immediate value into integer register
fmv.h.x f0, x18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x18, 0x6b9c18483f96f65d # load immediate value into integer register
fmv.h.x f1, x18 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x19, 0x6f0f8ce657a3380e # load immediate value into integer register
fmv.h.x f2, x19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x24, 0x74d6050bb7f2d208 # load immediate value into integer register
fmv.h.x f3, x24 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x00211f0b93e3abd9 # load immediate value into integer register
fmv.h.x f4, x7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x21, 0xef8aec56b2346d11 # load immediate value into integer register
fmv.h.x f5, x21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x16, 0x644a07a3822e6d0d # load immediate value into integer register
fmv.h.x f6, x16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x25, 0x44d8a99a12d89397 # load immediate value into integer register
fmv.h.x f7, x25 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x18, 0x701f2cb91624d3a5 # load immediate value into integer register
fmv.h.x f8, x18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x12, 0x1040bff84b5e4eec # load immediate value into integer register
fmv.h.x f9, x12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x23, 0xd57a554beaa192eb # load immediate value into integer register
fmv.h.x f10, x23 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x18, 0xbf5857de0d298c7d # load immediate value into integer register
fmv.h.x f11, x18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x19, 0x654c84bd6144a64c # load immediate value into integer register
fmv.h.x f12, x19 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x30, 0xb36d4f4c073753ac # load immediate value into integer register
fmv.h.x f13, x30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x17, 0x1c19fbf0b9d14963 # load immediate value into integer register
fmv.h.x f14, x17 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x88d575df0a203de7 # load immediate value into integer register
fmv.h.x f15, x15 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5233ffe4843e92f3 # load immediate value into integer register
fmv.h.x f16, x10 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x27, 0xa55c22181f8b51aa # load immediate value into integer register
fmv.h.x f17, x27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb2a0d490a6621560 # load immediate value into integer register
fmv.h.x f18, x27 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x29, 0xefa5bddb89926151 # load immediate value into integer register
fmv.h.x f19, x29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x13, 0x57454446d6cc91f4 # load immediate value into integer register
fmv.h.x f20, x13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0274aabce1d21290 # load immediate value into integer register
fmv.h.x f21, x22 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x12, 0xbd18a0736466c6b0 # load immediate value into integer register
fmv.h.x f22, x12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x26, 0x513afed98f9842b2 # load immediate value into integer register
fmv.h.x f23, x26 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x14, 0x5ec668bc87787603 # load immediate value into integer register
fmv.h.x f24, x14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x17, 0x47568ae51938934d # load immediate value into integer register
fmv.h.x f25, x17 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x28, 0xdf6b3bbaae436aa7 # load immediate value into integer register
fmv.h.x f26, x28 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x8, 0xcabf718849aa9601 # load immediate value into integer register
fmv.h.x f27, x8 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x22, 0x21bd4b5f9337cbb0 # load immediate value into integer register
fmv.h.x f28, x22 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x25, 0x2e302480511c8f35 # load immediate value into integer register
fmv.h.x f29, x25 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x1, 0xe32115db4e883d89 # load immediate value into integer register
fmv.h.x f30, x1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x3, 0x9468ec73c76fc9ae # load immediate value into integer register
fmv.h.x f31, x3 # perform operation

# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
li x11, 0x89872fd75a8ac38f # load immediate value into integer register
fmv.h.x f1, x11 # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fcvt.h.s.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x20, x3 # perform first operation
fcvt.h.s f9, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x3, x31 # perform first operation
fcvt.h.s f23, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x2, x8 # perform first operation
fcvt.h.s f25, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f20, f7 # perform first operation
fcvt.h.s f7, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x23, x22 # perform first operation
fcvt.h.s f23, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x22, x12 # perform first operation
fcvt.h.s f13, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f26, f24 # perform first operation
fcvt.h.s f22, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f6, f14 # perform first operation
fcvt.h.s f20, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f1, f20 # perform first operation
fcvt.h.s f18, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f16, f30 # perform first operation
fcvt.h.s f16, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f30, f11 # perform first operation
fcvt.h.s f11, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f23, f18 # perform first operation
fcvt.h.s f1, f30 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x463a18a541aeb2f5 # load x3 with value 0x463a18a541aeb2f5
sw x3, 0(x2) # store 0x463a18a541aeb2f5 in memory
flw f0, 0(x2) # load 0x463a18a541aeb2f5 from memory into f0
fcvt.h.s f26, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42850b4b1f4a01a7 # load x3 with value 0x42850b4b1f4a01a7
sw x3, 0(x2) # store 0x42850b4b1f4a01a7 in memory
flw f1, 0(x2) # load 0x42850b4b1f4a01a7 from memory into f1
fcvt.h.s f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32b665fdf677edb5 # load x3 with value 0x32b665fdf677edb5
sw x3, 0(x2) # store 0x32b665fdf677edb5 in memory
flw f2, 0(x2) # load 0x32b665fdf677edb5 from memory into f2
fcvt.h.s f30, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46240beb89aa8a93 # load x3 with value 0x46240beb89aa8a93
sw x3, 0(x2) # store 0x46240beb89aa8a93 in memory
flw f3, 0(x2) # load 0x46240beb89aa8a93 from memory into f3
fcvt.h.s f18, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd67c7dd9a91e44fa # load x3 with value 0xd67c7dd9a91e44fa
sw x3, 0(x2) # store 0xd67c7dd9a91e44fa in memory
flw f4, 0(x2) # load 0xd67c7dd9a91e44fa from memory into f4
fcvt.h.s f17, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1996bc4bc2cba9e # load x3 with value 0xc1996bc4bc2cba9e
sw x3, 0(x2) # store 0xc1996bc4bc2cba9e in memory
flw f5, 0(x2) # load 0xc1996bc4bc2cba9e from memory into f5
fcvt.h.s f25, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3072a57088a01951 # load x3 with value 0x3072a57088a01951
sw x3, 0(x2) # store 0x3072a57088a01951 in memory
flw f6, 0(x2) # load 0x3072a57088a01951 from memory into f6
fcvt.h.s f28, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc6e3665928a3ac47 # load x3 with value 0xc6e3665928a3ac47
sw x3, 0(x2) # store 0xc6e3665928a3ac47 in memory
flw f7, 0(x2) # load 0xc6e3665928a3ac47 from memory into f7
fcvt.h.s f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x564f9b7cfbdcf15a # load x3 with value 0x564f9b7cfbdcf15a
sw x3, 0(x2) # store 0x564f9b7cfbdcf15a in memory
flw f8, 0(x2) # load 0x564f9b7cfbdcf15a from memory into f8
fcvt.h.s f2, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe9b0469654d1ed07 # load x3 with value 0xe9b0469654d1ed07
sw x3, 0(x2) # store 0xe9b0469654d1ed07 in memory
flw f9, 0(x2) # load 0xe9b0469654d1ed07 from memory into f9
fcvt.h.s f29, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3e73cfd3ae9ab5b8 # load x3 with value 0x3e73cfd3ae9ab5b8
sw x3, 0(x2) # store 0x3e73cfd3ae9ab5b8 in memory
flw f10, 0(x2) # load 0x3e73cfd3ae9ab5b8 from memory into f10
fcvt.h.s f28, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc487865a25448fa7 # load x3 with value 0xc487865a25448fa7
sw x3, 0(x2) # store 0xc487865a25448fa7 in memory
flw f11, 0(x2) # load 0xc487865a25448fa7 from memory into f11
fcvt.h.s f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4e705c42ab52263 # load x3 with value 0xe4e705c42ab52263
sw x3, 0(x2) # store 0xe4e705c42ab52263 in memory
flw f12, 0(x2) # load 0xe4e705c42ab52263 from memory into f12
fcvt.h.s f16, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7948a4a2d4394383 # load x3 with value 0x7948a4a2d4394383
sw x3, 0(x2) # store 0x7948a4a2d4394383 in memory
flw f13, 0(x2) # load 0x7948a4a2d4394383 from memory into f13
fcvt.h.s f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe990f49cf64b022e # load x3 with value 0xe990f49cf64b022e
sw x3, 0(x2) # store 0xe990f49cf64b022e in memory
flw f14, 0(x2) # load 0xe990f49cf64b022e from memory into f14
fcvt.h.s f2, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb47241eddd5f06c6 # load x3 with value 0xb47241eddd5f06c6
sw x3, 0(x2) # store 0xb47241eddd5f06c6 in memory
flw f15, 0(x2) # load 0xb47241eddd5f06c6 from memory into f15
fcvt.h.s f13, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2e0f10da553b172 # load x3 with value 0xa2e0f10da553b172
sw x3, 0(x2) # store 0xa2e0f10da553b172 in memory
flw f16, 0(x2) # load 0xa2e0f10da553b172 from memory into f16
fcvt.h.s f6, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe80c4a5791e24635 # load x3 with value 0xe80c4a5791e24635
sw x3, 0(x2) # store 0xe80c4a5791e24635 in memory
flw f17, 0(x2) # load 0xe80c4a5791e24635 from memory into f17
fcvt.h.s f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb1abf0a66ebbf0c # load x3 with value 0xeb1abf0a66ebbf0c
sw x3, 0(x2) # store 0xeb1abf0a66ebbf0c in memory
flw f18, 0(x2) # load 0xeb1abf0a66ebbf0c from memory into f18
fcvt.h.s f17, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x986c479b614fce0d # load x3 with value 0x986c479b614fce0d
sw x3, 0(x2) # store 0x986c479b614fce0d in memory
flw f19, 0(x2) # load 0x986c479b614fce0d from memory into f19
fcvt.h.s f8, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29e423b58927bb3 # load x3 with value 0x29e423b58927bb3
sw x3, 0(x2) # store 0x29e423b58927bb3 in memory
flw f20, 0(x2) # load 0x29e423b58927bb3 from memory into f20
fcvt.h.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed1afb8b7f033aee # load x3 with value 0xed1afb8b7f033aee
sw x3, 0(x2) # store 0xed1afb8b7f033aee in memory
flw f21, 0(x2) # load 0xed1afb8b7f033aee from memory into f21
fcvt.h.s f19, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8061e183277f8316 # load x3 with value 0x8061e183277f8316
sw x3, 0(x2) # store 0x8061e183277f8316 in memory
flw f22, 0(x2) # load 0x8061e183277f8316 from memory into f22
fcvt.h.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb2574cdd52ea78a6 # load x3 with value 0xb2574cdd52ea78a6
sw x3, 0(x2) # store 0xb2574cdd52ea78a6 in memory
flw f23, 0(x2) # load 0xb2574cdd52ea78a6 from memory into f23
fcvt.h.s f28, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4beda638dec5a893 # load x3 with value 0x4beda638dec5a893
sw x3, 0(x2) # store 0x4beda638dec5a893 in memory
flw f24, 0(x2) # load 0x4beda638dec5a893 from memory into f24
fcvt.h.s f8, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe0b9999af8876ee # load x3 with value 0xe0b9999af8876ee
sw x3, 0(x2) # store 0xe0b9999af8876ee in memory
flw f25, 0(x2) # load 0xe0b9999af8876ee from memory into f25
fcvt.h.s f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5ef19f589be706 # load x3 with value 0xd5ef19f589be706
sw x3, 0(x2) # store 0xd5ef19f589be706 in memory
flw f26, 0(x2) # load 0xd5ef19f589be706 from memory into f26
fcvt.h.s f13, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63bd436c0330227b # load x3 with value 0x63bd436c0330227b
sw x3, 0(x2) # store 0x63bd436c0330227b in memory
flw f27, 0(x2) # load 0x63bd436c0330227b from memory into f27
fcvt.h.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5751d91ae66ba77 # load x3 with value 0x5751d91ae66ba77
sw x3, 0(x2) # store 0x5751d91ae66ba77 in memory
flw f28, 0(x2) # load 0x5751d91ae66ba77 from memory into f28
fcvt.h.s f11, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd26fa2e67f51e1d7 # load x3 with value 0xd26fa2e67f51e1d7
sw x3, 0(x2) # store 0xd26fa2e67f51e1d7 in memory
flw f29, 0(x2) # load 0xd26fa2e67f51e1d7 from memory into f29
fcvt.h.s f19, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d071c3032614483 # load x3 with value 0x5d071c3032614483
sw x3, 0(x2) # store 0x5d071c3032614483 in memory
flw f30, 0(x2) # load 0x5d071c3032614483 from memory into f30
fcvt.h.s f9, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x66d0086728fd6606 # load x3 with value 0x66d0086728fd6606
sw x3, 0(x2) # store 0x66d0086728fd6606 in memory
flw f31, 0(x2) # load 0x66d0086728fd6606 from memory into f31
fcvt.h.s f6, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2771c2e26357abee # load x3 with value 0x2771c2e26357abee
sw x3, 0(x2) # store 0x2771c2e26357abee in memory
flw f23, 0(x2) # load 0x2771c2e26357abee from memory into f23
fcvt.h.s f0, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2a5ade61d99f595 # load x3 with value 0xc2a5ade61d99f595
sw x3, 0(x2) # store 0xc2a5ade61d99f595 in memory
flw f19, 0(x2) # load 0xc2a5ade61d99f595 from memory into f19
fcvt.h.s f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf1675ed2082db616 # load x3 with value 0xf1675ed2082db616
sw x3, 0(x2) # store 0xf1675ed2082db616 in memory
flw f24, 0(x2) # load 0xf1675ed2082db616 from memory into f24
fcvt.h.s f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc49874a497ffce9d # load x3 with value 0xc49874a497ffce9d
sw x3, 0(x2) # store 0xc49874a497ffce9d in memory
flw f9, 0(x2) # load 0xc49874a497ffce9d from memory into f9
fcvt.h.s f3, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7be5d454ed8c5db # load x3 with value 0x7be5d454ed8c5db
sw x3, 0(x2) # store 0x7be5d454ed8c5db in memory
flw f21, 0(x2) # load 0x7be5d454ed8c5db from memory into f21
fcvt.h.s f4, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c169de7421b9c9d # load x3 with value 0x9c169de7421b9c9d
sw x3, 0(x2) # store 0x9c169de7421b9c9d in memory
flw f19, 0(x2) # load 0x9c169de7421b9c9d from memory into f19
fcvt.h.s f5, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a7d827adcbfcddf # load x3 with value 0x7a7d827adcbfcddf
sw x3, 0(x2) # store 0x7a7d827adcbfcddf in memory
flw f25, 0(x2) # load 0x7a7d827adcbfcddf from memory into f25
fcvt.h.s f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe645dfc1c402f704 # load x3 with value 0xe645dfc1c402f704
sw x3, 0(x2) # store 0xe645dfc1c402f704 in memory
flw f31, 0(x2) # load 0xe645dfc1c402f704 from memory into f31
fcvt.h.s f7, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x296f400d4e1aa2e6 # load x3 with value 0x296f400d4e1aa2e6
sw x3, 0(x2) # store 0x296f400d4e1aa2e6 in memory
flw f15, 0(x2) # load 0x296f400d4e1aa2e6 from memory into f15
fcvt.h.s f8, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdae301f83bafa834 # load x3 with value 0xdae301f83bafa834
sw x3, 0(x2) # store 0xdae301f83bafa834 in memory
flw f22, 0(x2) # load 0xdae301f83bafa834 from memory into f22
fcvt.h.s f9, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84e1605caeaa0cbf # load x3 with value 0x84e1605caeaa0cbf
sw x3, 0(x2) # store 0x84e1605caeaa0cbf in memory
flw f18, 0(x2) # load 0x84e1605caeaa0cbf from memory into f18
fcvt.h.s f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8c694284ae25b93 # load x3 with value 0xf8c694284ae25b93
sw x3, 0(x2) # store 0xf8c694284ae25b93 in memory
flw f26, 0(x2) # load 0xf8c694284ae25b93 from memory into f26
fcvt.h.s f11, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1dd1c45a0ed373aa # load x3 with value 0x1dd1c45a0ed373aa
sw x3, 0(x2) # store 0x1dd1c45a0ed373aa in memory
flw f18, 0(x2) # load 0x1dd1c45a0ed373aa from memory into f18
fcvt.h.s f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x219735ac1ad0b1a0 # load x3 with value 0x219735ac1ad0b1a0
sw x3, 0(x2) # store 0x219735ac1ad0b1a0 in memory
flw f21, 0(x2) # load 0x219735ac1ad0b1a0 from memory into f21
fcvt.h.s f13, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5fc281bb8592b88 # load x3 with value 0xb5fc281bb8592b88
sw x3, 0(x2) # store 0xb5fc281bb8592b88 in memory
flw f12, 0(x2) # load 0xb5fc281bb8592b88 from memory into f12
fcvt.h.s f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x395562b6af406e04 # load x3 with value 0x395562b6af406e04
sw x3, 0(x2) # store 0x395562b6af406e04 in memory
flw f22, 0(x2) # load 0x395562b6af406e04 from memory into f22
fcvt.h.s f15, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x650de151fd9a434e # load x3 with value 0x650de151fd9a434e
sw x3, 0(x2) # store 0x650de151fd9a434e in memory
flw f11, 0(x2) # load 0x650de151fd9a434e from memory into f11
fcvt.h.s f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85982d3da7407fda # load x3 with value 0x85982d3da7407fda
sw x3, 0(x2) # store 0x85982d3da7407fda in memory
flw f6, 0(x2) # load 0x85982d3da7407fda from memory into f6
fcvt.h.s f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9579c39732230d2e # load x3 with value 0x9579c39732230d2e
sw x3, 0(x2) # store 0x9579c39732230d2e in memory
flw f5, 0(x2) # load 0x9579c39732230d2e from memory into f5
fcvt.h.s f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbdc374b08324733 # load x3 with value 0xbdc374b08324733
sw x3, 0(x2) # store 0xbdc374b08324733 in memory
flw f28, 0(x2) # load 0xbdc374b08324733 from memory into f28
fcvt.h.s f19, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x250b2b27252a5c19 # load x3 with value 0x250b2b27252a5c19
sw x3, 0(x2) # store 0x250b2b27252a5c19 in memory
flw f30, 0(x2) # load 0x250b2b27252a5c19 from memory into f30
fcvt.h.s f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x43f9405aff9330df # load x3 with value 0x43f9405aff9330df
sw x3, 0(x2) # store 0x43f9405aff9330df in memory
flw f11, 0(x2) # load 0x43f9405aff9330df from memory into f11
fcvt.h.s f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf656b6d5bbbd1a1 # load x3 with value 0xaf656b6d5bbbd1a1
sw x3, 0(x2) # store 0xaf656b6d5bbbd1a1 in memory
flw f26, 0(x2) # load 0xaf656b6d5bbbd1a1 from memory into f26
fcvt.h.s f22, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc0f66496424e720 # load x3 with value 0xfc0f66496424e720
sw x3, 0(x2) # store 0xfc0f66496424e720 in memory
flw f20, 0(x2) # load 0xfc0f66496424e720 from memory into f20
fcvt.h.s f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa37edcdb6eb15eea # load x3 with value 0xa37edcdb6eb15eea
sw x3, 0(x2) # store 0xa37edcdb6eb15eea in memory
flw f27, 0(x2) # load 0xa37edcdb6eb15eea from memory into f27
fcvt.h.s f24, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x411c1a6375fb4697 # load x3 with value 0x411c1a6375fb4697
sw x3, 0(x2) # store 0x411c1a6375fb4697 in memory
flw f1, 0(x2) # load 0x411c1a6375fb4697 from memory into f1
fcvt.h.s f25, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ffce70af22a14e0 # load x3 with value 0x8ffce70af22a14e0
sw x3, 0(x2) # store 0x8ffce70af22a14e0 in memory
flw f15, 0(x2) # load 0x8ffce70af22a14e0 from memory into f15
fcvt.h.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe790ddc8cb9cc422 # load x3 with value 0xe790ddc8cb9cc422
sw x3, 0(x2) # store 0xe790ddc8cb9cc422 in memory
flw f14, 0(x2) # load 0xe790ddc8cb9cc422 from memory into f14
fcvt.h.s f27, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf40f4ef3ecf87674 # load x3 with value 0xf40f4ef3ecf87674
sw x3, 0(x2) # store 0xf40f4ef3ecf87674 in memory
flw f20, 0(x2) # load 0xf40f4ef3ecf87674 from memory into f20
fcvt.h.s f28, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc83443fff70b995 # load x3 with value 0xdc83443fff70b995
sw x3, 0(x2) # store 0xdc83443fff70b995 in memory
flw f23, 0(x2) # load 0xdc83443fff70b995 from memory into f23
fcvt.h.s f29, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67236b321002e9a9 # load x3 with value 0x67236b321002e9a9
sw x3, 0(x2) # store 0x67236b321002e9a9 in memory
flw f27, 0(x2) # load 0x67236b321002e9a9 from memory into f27
fcvt.h.s f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14fd4db92a66b91e # load x3 with value 0x14fd4db92a66b91e
sw x3, 0(x2) # store 0x14fd4db92a66b91e in memory
flw f10, 0(x2) # load 0x14fd4db92a66b91e from memory into f10
fcvt.h.s f31, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fcvt.h.s f22, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fcvt.h.s f21, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fcvt.h.s f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fcvt.h.s f29, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fcvt.h.s f8, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fcvt.h.s f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fcvt.h.s f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fcvt.h.s f17, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fcvt.h.s f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fcvt.h.s f5, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fcvt.h.s f11, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fcvt.h.s f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fcvt.h.s f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fcvt.h.s f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fcvt.h.s f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fcvt.h.s f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fcvt.h.s f6, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fcvt.h.s f11, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fcvt.h.s f23, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fcvt.h.s f6, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fcvt.h.s f31, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fcvt.h.s f6, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fcvt.h.s f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fcvt.h.s f24, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fcvt.h.s f28, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fcvt.h.s f20, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fcvt.h.s f26, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fcvt.h.s f27, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3ce2a807927ff4d # load x3 with value 0xd3ce2a807927ff4d
sw x3, 0(x2) # store 0xd3ce2a807927ff4d in memory
flw f0, 0(x2) # load 0xd3ce2a807927ff4d from memory into f0
fcvt.h.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9372ec87b41a4a61 # load x3 with value 0x9372ec87b41a4a61
sw x3, 0(x2) # store 0x9372ec87b41a4a61 in memory
flw f1, 0(x2) # load 0x9372ec87b41a4a61 from memory into f1
fcvt.h.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc9b424be0d54f2b2 # load x3 with value 0xc9b424be0d54f2b2
sw x3, 0(x2) # store 0xc9b424be0d54f2b2 in memory
flw f2, 0(x2) # load 0xc9b424be0d54f2b2 from memory into f2
fcvt.h.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeb8adf0c08dd565 # load x3 with value 0xdeb8adf0c08dd565
sw x3, 0(x2) # store 0xdeb8adf0c08dd565 in memory
flw f3, 0(x2) # load 0xdeb8adf0c08dd565 from memory into f3
fcvt.h.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f6903479aaec039 # load x3 with value 0x9f6903479aaec039
sw x3, 0(x2) # store 0x9f6903479aaec039 in memory
flw f4, 0(x2) # load 0x9f6903479aaec039 from memory into f4
fcvt.h.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88dbf970b760082f # load x3 with value 0x88dbf970b760082f
sw x3, 0(x2) # store 0x88dbf970b760082f in memory
flw f5, 0(x2) # load 0x88dbf970b760082f from memory into f5
fcvt.h.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b40de217e68fc4b # load x3 with value 0x7b40de217e68fc4b
sw x3, 0(x2) # store 0x7b40de217e68fc4b in memory
flw f6, 0(x2) # load 0x7b40de217e68fc4b from memory into f6
fcvt.h.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4cb27235785c1b2 # load x3 with value 0xa4cb27235785c1b2
sw x3, 0(x2) # store 0xa4cb27235785c1b2 in memory
flw f7, 0(x2) # load 0xa4cb27235785c1b2 from memory into f7
fcvt.h.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd31e85dc079620c # load x3 with value 0xbd31e85dc079620c
sw x3, 0(x2) # store 0xbd31e85dc079620c in memory
flw f8, 0(x2) # load 0xbd31e85dc079620c from memory into f8
fcvt.h.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bc514cc0dbce1db # load x3 with value 0x7bc514cc0dbce1db
sw x3, 0(x2) # store 0x7bc514cc0dbce1db in memory
flw f9, 0(x2) # load 0x7bc514cc0dbce1db from memory into f9
fcvt.h.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e39604aa7e4d26f # load x3 with value 0x4e39604aa7e4d26f
sw x3, 0(x2) # store 0x4e39604aa7e4d26f in memory
flw f10, 0(x2) # load 0x4e39604aa7e4d26f from memory into f10
fcvt.h.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3905663e3e6b547 # load x3 with value 0xe3905663e3e6b547
sw x3, 0(x2) # store 0xe3905663e3e6b547 in memory
flw f11, 0(x2) # load 0xe3905663e3e6b547 from memory into f11
fcvt.h.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29d67f33600f4ae4 # load x3 with value 0x29d67f33600f4ae4
sw x3, 0(x2) # store 0x29d67f33600f4ae4 in memory
flw f12, 0(x2) # load 0x29d67f33600f4ae4 from memory into f12
fcvt.h.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xadbb4f3e1121e7ba # load x3 with value 0xadbb4f3e1121e7ba
sw x3, 0(x2) # store 0xadbb4f3e1121e7ba in memory
flw f13, 0(x2) # load 0xadbb4f3e1121e7ba from memory into f13
fcvt.h.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23b521890a1c15f9 # load x3 with value 0x23b521890a1c15f9
sw x3, 0(x2) # store 0x23b521890a1c15f9 in memory
flw f14, 0(x2) # load 0x23b521890a1c15f9 from memory into f14
fcvt.h.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfdb5a21b2b0d08de # load x3 with value 0xfdb5a21b2b0d08de
sw x3, 0(x2) # store 0xfdb5a21b2b0d08de in memory
flw f15, 0(x2) # load 0xfdb5a21b2b0d08de from memory into f15
fcvt.h.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0992111823b6dd1 # load x3 with value 0xd0992111823b6dd1
sw x3, 0(x2) # store 0xd0992111823b6dd1 in memory
flw f16, 0(x2) # load 0xd0992111823b6dd1 from memory into f16
fcvt.h.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe15f6fa26b911da5 # load x3 with value 0xe15f6fa26b911da5
sw x3, 0(x2) # store 0xe15f6fa26b911da5 in memory
flw f17, 0(x2) # load 0xe15f6fa26b911da5 from memory into f17
fcvt.h.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5bc0dd1fee41b33 # load x3 with value 0xd5bc0dd1fee41b33
sw x3, 0(x2) # store 0xd5bc0dd1fee41b33 in memory
flw f18, 0(x2) # load 0xd5bc0dd1fee41b33 from memory into f18
fcvt.h.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c52a4131815159c # load x3 with value 0x1c52a4131815159c
sw x3, 0(x2) # store 0x1c52a4131815159c in memory
flw f19, 0(x2) # load 0x1c52a4131815159c from memory into f19
fcvt.h.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13e466c1cf3a0ac2 # load x3 with value 0x13e466c1cf3a0ac2
sw x3, 0(x2) # store 0x13e466c1cf3a0ac2 in memory
flw f20, 0(x2) # load 0x13e466c1cf3a0ac2 from memory into f20
fcvt.h.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75148b53e463618e # load x3 with value 0x75148b53e463618e
sw x3, 0(x2) # store 0x75148b53e463618e in memory
flw f21, 0(x2) # load 0x75148b53e463618e from memory into f21
fcvt.h.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe73cd1816f833486 # load x3 with value 0xe73cd1816f833486
sw x3, 0(x2) # store 0xe73cd1816f833486 in memory
flw f22, 0(x2) # load 0xe73cd1816f833486 from memory into f22
fcvt.h.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e4edec4b531cbe # load x3 with value 0x6e4edec4b531cbe
sw x3, 0(x2) # store 0x6e4edec4b531cbe in memory
flw f23, 0(x2) # load 0x6e4edec4b531cbe from memory into f23
fcvt.h.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23e74be202fd9c69 # load x3 with value 0x23e74be202fd9c69
sw x3, 0(x2) # store 0x23e74be202fd9c69 in memory
flw f24, 0(x2) # load 0x23e74be202fd9c69 from memory into f24
fcvt.h.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2fc2ceff3aa7d118 # load x3 with value 0x2fc2ceff3aa7d118
sw x3, 0(x2) # store 0x2fc2ceff3aa7d118 in memory
flw f25, 0(x2) # load 0x2fc2ceff3aa7d118 from memory into f25
fcvt.h.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20a322f8fc85b52a # load x3 with value 0x20a322f8fc85b52a
sw x3, 0(x2) # store 0x20a322f8fc85b52a in memory
flw f26, 0(x2) # load 0x20a322f8fc85b52a from memory into f26
fcvt.h.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5d665a616dd8136 # load x3 with value 0xe5d665a616dd8136
sw x3, 0(x2) # store 0xe5d665a616dd8136 in memory
flw f27, 0(x2) # load 0xe5d665a616dd8136 from memory into f27
fcvt.h.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e15b2abd20aed6f # load x3 with value 0x9e15b2abd20aed6f
sw x3, 0(x2) # store 0x9e15b2abd20aed6f in memory
flw f28, 0(x2) # load 0x9e15b2abd20aed6f from memory into f28
fcvt.h.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x130b214fab24e8c # load x3 with value 0x130b214fab24e8c
sw x3, 0(x2) # store 0x130b214fab24e8c in memory
flw f29, 0(x2) # load 0x130b214fab24e8c from memory into f29
fcvt.h.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9dc167c5c5bc1b4d # load x3 with value 0x9dc167c5c5bc1b4d
sw x3, 0(x2) # store 0x9dc167c5c5bc1b4d in memory
flw f30, 0(x2) # load 0x9dc167c5c5bc1b4d from memory into f30
fcvt.h.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26d9dc447949cb5 # load x3 with value 0x26d9dc447949cb5
sw x3, 0(x2) # store 0x26d9dc447949cb5 in memory
flw f31, 0(x2) # load 0x26d9dc447949cb5 from memory into f31
fcvt.h.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f283235d893a1c3 # load x3 with value 0x7f283235d893a1c3
sw x3, 0(x2) # store 0x7f283235d893a1c3 in memory
flw f1, 0(x2) # load 0x7f283235d893a1c3 from memory into f1
fcvt.h.s f29, f1, dyn # perform operation
fcvt.h.s f29, f1, rdn # perform operation
fcvt.h.s f29, f1, rmm # perform operation
fcvt.h.s f29, f1, rne # perform operation
fcvt.h.s f29, f1, rtz # perform operation
fcvt.h.s f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f29, f1 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b3d6ea1317e0ca2 # load x3 with value 0x3b3d6ea1317e0ca2
sw x3, 0(x2) # store 0x3b3d6ea1317e0ca2 in memory
flw f15, 0(x2) # load 0x3b3d6ea1317e0ca2 from memory into f15
fcvt.h.s f1, f15 # perform operation second time to make sure flags don't change

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-fsh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x2, scratch
li x3, 0x1c42f68f04322139 # load x3 with value 0x1c42f68f04322139
sw x3, 0(x2) # store 0x1c42f68f04322139 in memory
flh f3, 0(x2) # load 0x1c42f68f04322139 from memory into f3
la x1, scratch # base address
addi x1, x1, 869 # sub immediate from rs1 to counter offset
fsh f3, -869(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0x5d3d05b7dcf6d233 # load x3 with value 0x5d3d05b7dcf6d233
sw x3, 0(x2) # store 0x5d3d05b7dcf6d233 in memory
flh f11, 0(x2) # load 0x5d3d05b7dcf6d233 from memory into f11
la x2, scratch # base address
addi x2, x2, 1622 # sub immediate from rs1 to counter offset
fsh f11, -1622(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x5eab9e0d1e3432cd # load x3 with value 0x5eab9e0d1e3432cd
sw x3, 0(x2) # store 0x5eab9e0d1e3432cd in memory
flh f11, 0(x2) # load 0x5eab9e0d1e3432cd from memory into f11
la x3, scratch # base address
addi x3, x3, 499 # sub immediate from rs1 to counter offset
fsh f11, -499(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa43d2ef5ddb5b692 # load x3 with value 0xa43d2ef5ddb5b692
sw x3, 0(x2) # store 0xa43d2ef5ddb5b692 in memory
flh f7, 0(x2) # load 0xa43d2ef5ddb5b692 from memory into f7
la x4, scratch # base address
addi x4, x4, -472 # sub immediate from rs1 to counter offset
fsh f7, 472(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf503cece12156b68 # load x3 with value 0xf503cece12156b68
sw x3, 0(x2) # store 0xf503cece12156b68 in memory
flh f27, 0(x2) # load 0xf503cece12156b68 from memory into f27
la x5, scratch # base address
addi x5, x5, 1726 # sub immediate from rs1 to counter offset
fsh f27, -1726(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x86ef46f4d16bb3c4 # load x3 with value 0x86ef46f4d16bb3c4
sw x3, 0(x2) # store 0x86ef46f4d16bb3c4 in memory
flh f12, 0(x2) # load 0x86ef46f4d16bb3c4 from memory into f12
la x6, scratch # base address
addi x6, x6, -704 # sub immediate from rs1 to counter offset
fsh f12, 704(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x56b9f6fc945a612f # load x3 with value 0x56b9f6fc945a612f
sw x3, 0(x2) # store 0x56b9f6fc945a612f in memory
flh f18, 0(x2) # load 0x56b9f6fc945a612f from memory into f18
la x7, scratch # base address
addi x7, x7, -331 # sub immediate from rs1 to counter offset
fsh f18, 331(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x865cf9d1d88c8b17 # load x3 with value 0x865cf9d1d88c8b17
sw x3, 0(x2) # store 0x865cf9d1d88c8b17 in memory
flh f29, 0(x2) # load 0x865cf9d1d88c8b17 from memory into f29
la x8, scratch # base address
addi x8, x8, 620 # sub immediate from rs1 to counter offset
fsh f29, -620(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0x324162deedcbdddc # load x3 with value 0x324162deedcbdddc
sw x3, 0(x2) # store 0x324162deedcbdddc in memory
flh f25, 0(x2) # load 0x324162deedcbdddc from memory into f25
la x9, scratch # base address
addi x9, x9, 249 # sub immediate from rs1 to counter offset
fsh f25, -249(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0xdf2b5ea5642ec83a # load x3 with value 0xdf2b5ea5642ec83a
sw x3, 0(x2) # store 0xdf2b5ea5642ec83a in memory
flh f22, 0(x2) # load 0xdf2b5ea5642ec83a from memory into f22
la x10, scratch # base address
addi x10, x10, 1094 # sub immediate from rs1 to counter offset
fsh f22, -1094(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0x9a95b307aa79353c # load x3 with value 0x9a95b307aa79353c
sw x3, 0(x2) # store 0x9a95b307aa79353c in memory
flh f27, 0(x2) # load 0x9a95b307aa79353c from memory into f27
la x11, scratch # base address
addi x11, x11, 973 # sub immediate from rs1 to counter offset
fsh f27, -973(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0x29eb00bc50d34196 # load x3 with value 0x29eb00bc50d34196
sw x3, 0(x2) # store 0x29eb00bc50d34196 in memory
flh f30, 0(x2) # load 0x29eb00bc50d34196 from memory into f30
la x12, scratch # base address
addi x12, x12, -1435 # sub immediate from rs1 to counter offset
fsh f30, 1435(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0x919d1422fa30ed3 # load x3 with value 0x919d1422fa30ed3
sw x3, 0(x2) # store 0x919d1422fa30ed3 in memory
flh f9, 0(x2) # load 0x919d1422fa30ed3 from memory into f9
la x13, scratch # base address
addi x13, x13, -107 # sub immediate from rs1 to counter offset
fsh f9, 107(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0xa4665036eb815052 # load x3 with value 0xa4665036eb815052
sw x3, 0(x2) # store 0xa4665036eb815052 in memory
flh f28, 0(x2) # load 0xa4665036eb815052 from memory into f28
la x14, scratch # base address
addi x14, x14, 1163 # sub immediate from rs1 to counter offset
fsh f28, -1163(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x7e2355a357e9adc3 # load x3 with value 0x7e2355a357e9adc3
sw x3, 0(x2) # store 0x7e2355a357e9adc3 in memory
flh f20, 0(x2) # load 0x7e2355a357e9adc3 from memory into f20
la x15, scratch # base address
addi x15, x15, 505 # sub immediate from rs1 to counter offset
fsh f20, -505(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0xfd85c0996ecc4a29 # load x3 with value 0xfd85c0996ecc4a29
sw x3, 0(x2) # store 0xfd85c0996ecc4a29 in memory
flh f24, 0(x2) # load 0xfd85c0996ecc4a29 from memory into f24
la x16, scratch # base address
addi x16, x16, 559 # sub immediate from rs1 to counter offset
fsh f24, -559(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x69bfa832582885e1 # load x3 with value 0x69bfa832582885e1
sw x3, 0(x2) # store 0x69bfa832582885e1 in memory
flh f3, 0(x2) # load 0x69bfa832582885e1 from memory into f3
la x17, scratch # base address
addi x17, x17, -199 # sub immediate from rs1 to counter offset
fsh f3, 199(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0xf13f67e1a985bd41 # load x3 with value 0xf13f67e1a985bd41
sw x3, 0(x2) # store 0xf13f67e1a985bd41 in memory
flh f3, 0(x2) # load 0xf13f67e1a985bd41 from memory into f3
la x18, scratch # base address
addi x18, x18, 313 # sub immediate from rs1 to counter offset
fsh f3, -313(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x6f3c4e4a5e8da8b9 # load x3 with value 0x6f3c4e4a5e8da8b9
sw x3, 0(x2) # store 0x6f3c4e4a5e8da8b9 in memory
flh f9, 0(x2) # load 0x6f3c4e4a5e8da8b9 from memory into f9
la x19, scratch # base address
addi x19, x19, -905 # sub immediate from rs1 to counter offset
fsh f9, 905(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0x9c5586a20806abc9 # load x3 with value 0x9c5586a20806abc9
sw x3, 0(x2) # store 0x9c5586a20806abc9 in memory
flh f26, 0(x2) # load 0x9c5586a20806abc9 from memory into f26
la x20, scratch # base address
addi x20, x20, 1176 # sub immediate from rs1 to counter offset
fsh f26, -1176(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0x5dd0ef4b6ccf68d7 # load x3 with value 0x5dd0ef4b6ccf68d7
sw x3, 0(x2) # store 0x5dd0ef4b6ccf68d7 in memory
flh f14, 0(x2) # load 0x5dd0ef4b6ccf68d7 from memory into f14
la x21, scratch # base address
addi x21, x21, 1785 # sub immediate from rs1 to counter offset
fsh f14, -1785(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x504a92a721e7695 # load x3 with value 0x504a92a721e7695
sw x3, 0(x2) # store 0x504a92a721e7695 in memory
flh f23, 0(x2) # load 0x504a92a721e7695 from memory into f23
la x22, scratch # base address
addi x22, x22, 134 # sub immediate from rs1 to counter offset
fsh f23, -134(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0xdb4bc461c9e2e988 # load x3 with value 0xdb4bc461c9e2e988
sw x3, 0(x2) # store 0xdb4bc461c9e2e988 in memory
flh f30, 0(x2) # load 0xdb4bc461c9e2e988 from memory into f30
la x23, scratch # base address
addi x23, x23, 898 # sub immediate from rs1 to counter offset
fsh f30, -898(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0xdcd89225cc8549b1 # load x3 with value 0xdcd89225cc8549b1
sw x3, 0(x2) # store 0xdcd89225cc8549b1 in memory
flh f26, 0(x2) # load 0xdcd89225cc8549b1 from memory into f26
la x24, scratch # base address
addi x24, x24, 1200 # sub immediate from rs1 to counter offset
fsh f26, -1200(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0x5a531d9c774fd302 # load x3 with value 0x5a531d9c774fd302
sw x3, 0(x2) # store 0x5a531d9c774fd302 in memory
flh f19, 0(x2) # load 0x5a531d9c774fd302 from memory into f19
la x25, scratch # base address
addi x25, x25, -866 # sub immediate from rs1 to counter offset
fsh f19, 866(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x421f8a1adc50e971 # load x3 with value 0x421f8a1adc50e971
sw x3, 0(x2) # store 0x421f8a1adc50e971 in memory
flh f13, 0(x2) # load 0x421f8a1adc50e971 from memory into f13
la x26, scratch # base address
addi x26, x26, -1366 # sub immediate from rs1 to counter offset
fsh f13, 1366(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0x1481e8a81112c72c # load x3 with value 0x1481e8a81112c72c
sw x3, 0(x2) # store 0x1481e8a81112c72c in memory
flh f7, 0(x2) # load 0x1481e8a81112c72c from memory into f7
la x27, scratch # base address
addi x27, x27, -1473 # sub immediate from rs1 to counter offset
fsh f7, 1473(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0x8ea60df3f8d36145 # load x3 with value 0x8ea60df3f8d36145
sw x3, 0(x2) # store 0x8ea60df3f8d36145 in memory
flh f22, 0(x2) # load 0x8ea60df3f8d36145 from memory into f22
la x28, scratch # base address
addi x28, x28, -1131 # sub immediate from rs1 to counter offset
fsh f22, 1131(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x8484341e417e3190 # load x3 with value 0x8484341e417e3190
sw x3, 0(x2) # store 0x8484341e417e3190 in memory
flh f5, 0(x2) # load 0x8484341e417e3190 from memory into f5
la x29, scratch # base address
addi x29, x29, 618 # sub immediate from rs1 to counter offset
fsh f5, -618(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0x8f72c95b287a5fa5 # load x3 with value 0x8f72c95b287a5fa5
sw x3, 0(x2) # store 0x8f72c95b287a5fa5 in memory
flh f15, 0(x2) # load 0x8f72c95b287a5fa5 from memory into f15
la x30, scratch # base address
addi x30, x30, -1833 # sub immediate from rs1 to counter offset
fsh f15, 1833(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0x56aa46e663c7eed8 # load x3 with value 0x56aa46e663c7eed8
sw x3, 0(x2) # store 0x56aa46e663c7eed8 in memory
flh f1, 0(x2) # load 0x56aa46e663c7eed8 from memory into f1
la x31, scratch # base address
addi x31, x31, 1759 # sub immediate from rs1 to counter offset
fsh f1, -1759(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x60aa229f12016846 # load x3 with value 0x60aa229f12016846
sw x3, 0(x2) # store 0x60aa229f12016846 in memory
flh f3, 0(x2) # load 0x60aa229f12016846 from memory into f3
la x10, scratch # base address
addi x10, x10, 0 # sub immediate from rs1 to counter offset
fsh f3, 0(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7592f87f388b64e2 # load x3 with value 0x7592f87f388b64e2
sw x3, 0(x2) # store 0x7592f87f388b64e2 in memory
flh f19, 0(x2) # load 0x7592f87f388b64e2 from memory into f19
la x16, scratch # base address
addi x16, x16, -1 # sub immediate from rs1 to counter offset
fsh f19, 1(x16) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc464c3f41f29a0a7 # load x3 with value 0xc464c3f41f29a0a7
sw x3, 0(x2) # store 0xc464c3f41f29a0a7 in memory
flh f21, 0(x2) # load 0xc464c3f41f29a0a7 from memory into f21
la x24, scratch # base address
addi x24, x24, -2 # sub immediate from rs1 to counter offset
fsh f21, 2(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x24d9cae7a1bfe230 # load x3 with value 0x24d9cae7a1bfe230
sw x3, 0(x2) # store 0x24d9cae7a1bfe230 in memory
flh f24, 0(x2) # load 0x24d9cae7a1bfe230 from memory into f24
la x21, scratch # base address
addi x21, x21, -3 # sub immediate from rs1 to counter offset
fsh f24, 3(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5677f94b0b4d8a48 # load x3 with value 0x5677f94b0b4d8a48
sw x3, 0(x2) # store 0x5677f94b0b4d8a48 in memory
flh f12, 0(x2) # load 0x5677f94b0b4d8a48 from memory into f12
la x3, scratch # base address
addi x3, x3, -4 # sub immediate from rs1 to counter offset
fsh f12, 4(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xbb9539f751123767 # load x3 with value 0xbb9539f751123767
sw x3, 0(x2) # store 0xbb9539f751123767 in memory
flh f2, 0(x2) # load 0xbb9539f751123767 from memory into f2
la x1, scratch # base address
addi x1, x1, -8 # sub immediate from rs1 to counter offset
fsh f2, 8(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2d6b54ce011ed34e # load x3 with value 0x2d6b54ce011ed34e
sw x3, 0(x2) # store 0x2d6b54ce011ed34e in memory
flh f29, 0(x2) # load 0x2d6b54ce011ed34e from memory into f29
la x12, scratch # base address
addi x12, x12, -16 # sub immediate from rs1 to counter offset
fsh f29, 16(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xb3618b04554005fa # load x3 with value 0xb3618b04554005fa
sw x3, 0(x2) # store 0xb3618b04554005fa in memory
flh f18, 0(x2) # load 0xb3618b04554005fa from memory into f18
la x5, scratch # base address
addi x5, x5, -32 # sub immediate from rs1 to counter offset
fsh f18, 32(x5) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xef89ba33e2e20c9e # load x3 with value 0xef89ba33e2e20c9e
sw x3, 0(x2) # store 0xef89ba33e2e20c9e in memory
flh f25, 0(x2) # load 0xef89ba33e2e20c9e from memory into f25
la x28, scratch # base address
addi x28, x28, -64 # sub immediate from rs1 to counter offset
fsh f25, 64(x28) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe17fbcac17a7902b # load x3 with value 0xe17fbcac17a7902b
sw x3, 0(x2) # store 0xe17fbcac17a7902b in memory
flh f21, 0(x2) # load 0xe17fbcac17a7902b from memory into f21
la x26, scratch # base address
addi x26, x26, -128 # sub immediate from rs1 to counter offset
fsh f21, 128(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x1b5793c337771f5c # load x3 with value 0x1b5793c337771f5c
sw x3, 0(x2) # store 0x1b5793c337771f5c in memory
flh f23, 0(x2) # load 0x1b5793c337771f5c from memory into f23
la x24, scratch # base address
addi x24, x24, -256 # sub immediate from rs1 to counter offset
fsh f23, 256(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xb2f2f8e991687f94 # load x3 with value 0xb2f2f8e991687f94
sw x3, 0(x2) # store 0xb2f2f8e991687f94 in memory
flh f19, 0(x2) # load 0xb2f2f8e991687f94 from memory into f19
la x12, scratch # base address
addi x12, x12, -512 # sub immediate from rs1 to counter offset
fsh f19, 512(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2f3e0be2a957b865 # load x3 with value 0x2f3e0be2a957b865
sw x3, 0(x2) # store 0x2f3e0be2a957b865 in memory
flh f8, 0(x2) # load 0x2f3e0be2a957b865 from memory into f8
la x26, scratch # base address
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
fsh f8, 1023(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xeeb93217df273df7 # load x3 with value 0xeeb93217df273df7
sw x3, 0(x2) # store 0xeeb93217df273df7 in memory
flh f16, 0(x2) # load 0xeeb93217df273df7 from memory into f16
la x1, scratch # base address
addi x1, x1, -1024 # sub immediate from rs1 to counter offset
fsh f16, 1024(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x582d08b9f228f27b # load x3 with value 0x582d08b9f228f27b
sw x3, 0(x2) # store 0x582d08b9f228f27b in memory
flh f20, 0(x2) # load 0x582d08b9f228f27b from memory into f20
la x23, scratch # base address
addi x23, x23, -1795 # sub immediate from rs1 to counter offset
fsh f20, 1795(x23) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc5a23ce03ce6fac9 # load x3 with value 0xc5a23ce03ce6fac9
sw x3, 0(x2) # store 0xc5a23ce03ce6fac9 in memory
flh f14, 0(x2) # load 0xc5a23ce03ce6fac9 from memory into f14
la x2, scratch # base address
addi x2, x2, -2047 # sub immediate from rs1 to counter offset
fsh f14, 2047(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3c177ae68e50fee5 # load x3 with value 0x3c177ae68e50fee5
sw x3, 0(x2) # store 0x3c177ae68e50fee5 in memory
flh f8, 0(x2) # load 0x3c177ae68e50fee5 from memory into f8
la x29, scratch # base address
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsh f8, -2048(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc752188d50f465e9 # load x3 with value 0xc752188d50f465e9
sw x3, 0(x2) # store 0xc752188d50f465e9 in memory
flh f23, 0(x2) # load 0xc752188d50f465e9 from memory into f23
la x6, scratch # base address
addi x6, x6, 2047 # sub immediate from rs1 to counter offset
fsh f23, -2047(x6) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x96d241409dda0b34 # load x3 with value 0x96d241409dda0b34
sw x3, 0(x2) # store 0x96d241409dda0b34 in memory
flh f20, 0(x2) # load 0x96d241409dda0b34 from memory into f20
la x3, scratch # base address
addi x3, x3, 2 # sub immediate from rs1 to counter offset
fsh f20, -2(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x33522d9dc9026c29 # load x3 with value 0x33522d9dc9026c29
sw x3, 0(x2) # store 0x33522d9dc9026c29 in memory
flh f7, 0(x2) # load 0x33522d9dc9026c29 from memory into f7
la x23, scratch # base address
addi x23, x23, 1 # sub immediate from rs1 to counter offset
fsh f7, -1(x23) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -648
add x27, x30, x28 # perform first operation
fsh f11, 648(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, -708
add x30, x6, x28 # perform first operation
fsh f9, 708(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -210
add x15, x3, x1 # perform first operation
fsh f11, 210(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, 1097
add x9, x9, x0 # perform first operation
fsh f3, -1097(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
addi x15, x15, 1308
fmul.s f5, f5, f0 # perform first operation
fsh f5, -1308(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x24, scratch
addi x24, x24, -2020
add x10, x10, x0 # perform first operation
fsh f11, 2020(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 1122
add x10, x12, x27 # perform first operation
fsh f24, -1122(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 411
add x25, x21, x7 # perform first operation
fsh f11, -411(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 777
add x8, x26, x24 # perform first operation
fsh f1, -777(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x6, scratch
addi x6, x6, -564
add x28, x28, x0 # perform first operation
fsh f1, 564(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
addi x19, x19, 1161
fmul.s f2, f2, f0 # perform first operation
fsh f2, -1161(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
addi x12, x12, 1849
add x13, x13, x0 # perform first operation
fsh f29, -1849(x12) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xa3828a469e71bc3d # load x3 with value 0xa3828a469e71bc3d
sw x3, 0(x2) # store 0xa3828a469e71bc3d in memory
flh f0, 0(x2) # load 0xa3828a469e71bc3d from memory into f0
la x15, scratch # base address
addi x15, x15, 871 # sub immediate from rs1 to counter offset
fsh f0, -871(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x9f4bc36b283c8cd6 # load x3 with value 0x9f4bc36b283c8cd6
sw x3, 0(x2) # store 0x9f4bc36b283c8cd6 in memory
flh f1, 0(x2) # load 0x9f4bc36b283c8cd6 from memory into f1
la x8, scratch # base address
addi x8, x8, 96 # sub immediate from rs1 to counter offset
fsh f1, -96(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9be290dcae16bd5 # load x3 with value 0x9be290dcae16bd5
sw x3, 0(x2) # store 0x9be290dcae16bd5 in memory
flh f2, 0(x2) # load 0x9be290dcae16bd5 from memory into f2
la x12, scratch # base address
addi x12, x12, -1202 # sub immediate from rs1 to counter offset
fsh f2, 1202(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xe702a683cb4e259d # load x3 with value 0xe702a683cb4e259d
sw x3, 0(x2) # store 0xe702a683cb4e259d in memory
flh f3, 0(x2) # load 0xe702a683cb4e259d from memory into f3
la x27, scratch # base address
addi x27, x27, 528 # sub immediate from rs1 to counter offset
fsh f3, -528(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc29cb825ff537c6c # load x3 with value 0xc29cb825ff537c6c
sw x3, 0(x2) # store 0xc29cb825ff537c6c in memory
flh f4, 0(x2) # load 0xc29cb825ff537c6c from memory into f4
la x2, scratch # base address
addi x2, x2, -1056 # sub immediate from rs1 to counter offset
fsh f4, 1056(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbf9a2f8a42cb6403 # load x3 with value 0xbf9a2f8a42cb6403
sw x3, 0(x2) # store 0xbf9a2f8a42cb6403 in memory
flh f5, 0(x2) # load 0xbf9a2f8a42cb6403 from memory into f5
la x8, scratch # base address
addi x8, x8, 1077 # sub immediate from rs1 to counter offset
fsh f5, -1077(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4a2db254e462aca1 # load x3 with value 0x4a2db254e462aca1
sw x3, 0(x2) # store 0x4a2db254e462aca1 in memory
flh f6, 0(x2) # load 0x4a2db254e462aca1 from memory into f6
la x28, scratch # base address
addi x28, x28, -2 # sub immediate from rs1 to counter offset
fsh f6, 2(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x64e2c21a90e15a47 # load x3 with value 0x64e2c21a90e15a47
sw x3, 0(x2) # store 0x64e2c21a90e15a47 in memory
flh f7, 0(x2) # load 0x64e2c21a90e15a47 from memory into f7
la x20, scratch # base address
addi x20, x20, 1698 # sub immediate from rs1 to counter offset
fsh f7, -1698(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x5a44419689186485 # load x3 with value 0x5a44419689186485
sw x3, 0(x2) # store 0x5a44419689186485 in memory
flh f8, 0(x2) # load 0x5a44419689186485 from memory into f8
la x5, scratch # base address
addi x5, x5, -1516 # sub immediate from rs1 to counter offset
fsh f8, 1516(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x34b720fb19e1b097 # load x3 with value 0x34b720fb19e1b097
sw x3, 0(x2) # store 0x34b720fb19e1b097 in memory
flh f9, 0(x2) # load 0x34b720fb19e1b097 from memory into f9
la x16, scratch # base address
addi x16, x16, 1747 # sub immediate from rs1 to counter offset
fsh f9, -1747(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xf99f878462d540d9 # load x3 with value 0xf99f878462d540d9
sw x3, 0(x2) # store 0xf99f878462d540d9 in memory
flh f10, 0(x2) # load 0xf99f878462d540d9 from memory into f10
la x22, scratch # base address
addi x22, x22, 488 # sub immediate from rs1 to counter offset
fsh f10, -488(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x4b170bde6b39ae4e # load x3 with value 0x4b170bde6b39ae4e
sw x3, 0(x2) # store 0x4b170bde6b39ae4e in memory
flh f11, 0(x2) # load 0x4b170bde6b39ae4e from memory into f11
la x25, scratch # base address
addi x25, x25, 766 # sub immediate from rs1 to counter offset
fsh f11, -766(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x529eb703a958cf47 # load x3 with value 0x529eb703a958cf47
sw x3, 0(x2) # store 0x529eb703a958cf47 in memory
flh f12, 0(x2) # load 0x529eb703a958cf47 from memory into f12
la x14, scratch # base address
addi x14, x14, 312 # sub immediate from rs1 to counter offset
fsh f12, -312(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x48886058d2dc3232 # load x3 with value 0x48886058d2dc3232
sw x3, 0(x2) # store 0x48886058d2dc3232 in memory
flh f13, 0(x2) # load 0x48886058d2dc3232 from memory into f13
la x25, scratch # base address
addi x25, x25, 559 # sub immediate from rs1 to counter offset
fsh f13, -559(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xff24a314d2ca8f02 # load x3 with value 0xff24a314d2ca8f02
sw x3, 0(x2) # store 0xff24a314d2ca8f02 in memory
flh f14, 0(x2) # load 0xff24a314d2ca8f02 from memory into f14
la x17, scratch # base address
addi x17, x17, 1136 # sub immediate from rs1 to counter offset
fsh f14, -1136(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xca9522b81518b1cb # load x3 with value 0xca9522b81518b1cb
sw x3, 0(x2) # store 0xca9522b81518b1cb in memory
flh f15, 0(x2) # load 0xca9522b81518b1cb from memory into f15
la x7, scratch # base address
addi x7, x7, -1770 # sub immediate from rs1 to counter offset
fsh f15, 1770(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xb0023f0a9c50ba91 # load x3 with value 0xb0023f0a9c50ba91
sw x3, 0(x2) # store 0xb0023f0a9c50ba91 in memory
flh f16, 0(x2) # load 0xb0023f0a9c50ba91 from memory into f16
la x3, scratch # base address
addi x3, x3, 556 # sub immediate from rs1 to counter offset
fsh f16, -556(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xefe3e74b3b1eaaed # load x3 with value 0xefe3e74b3b1eaaed
sw x3, 0(x2) # store 0xefe3e74b3b1eaaed in memory
flh f17, 0(x2) # load 0xefe3e74b3b1eaaed from memory into f17
la x12, scratch # base address
addi x12, x12, -139 # sub immediate from rs1 to counter offset
fsh f17, 139(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xb9102eb4f748899e # load x3 with value 0xb9102eb4f748899e
sw x3, 0(x2) # store 0xb9102eb4f748899e in memory
flh f18, 0(x2) # load 0xb9102eb4f748899e from memory into f18
la x17, scratch # base address
addi x17, x17, -1151 # sub immediate from rs1 to counter offset
fsh f18, 1151(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x7d09408666a18952 # load x3 with value 0x7d09408666a18952
sw x3, 0(x2) # store 0x7d09408666a18952 in memory
flh f19, 0(x2) # load 0x7d09408666a18952 from memory into f19
la x1, scratch # base address
addi x1, x1, 1061 # sub immediate from rs1 to counter offset
fsh f19, -1061(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x21c06a349fb30374 # load x3 with value 0x21c06a349fb30374
sw x3, 0(x2) # store 0x21c06a349fb30374 in memory
flh f20, 0(x2) # load 0x21c06a349fb30374 from memory into f20
la x29, scratch # base address
addi x29, x29, -707 # sub immediate from rs1 to counter offset
fsh f20, 707(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xd06ea22497976954 # load x3 with value 0xd06ea22497976954
sw x3, 0(x2) # store 0xd06ea22497976954 in memory
flh f21, 0(x2) # load 0xd06ea22497976954 from memory into f21
la x31, scratch # base address
addi x31, x31, 1940 # sub immediate from rs1 to counter offset
fsh f21, -1940(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x10c950994d73e457 # load x3 with value 0x10c950994d73e457
sw x3, 0(x2) # store 0x10c950994d73e457 in memory
flh f22, 0(x2) # load 0x10c950994d73e457 from memory into f22
la x27, scratch # base address
addi x27, x27, 129 # sub immediate from rs1 to counter offset
fsh f22, -129(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xf87a8a7fe02bce3f # load x3 with value 0xf87a8a7fe02bce3f
sw x3, 0(x2) # store 0xf87a8a7fe02bce3f in memory
flh f23, 0(x2) # load 0xf87a8a7fe02bce3f from memory into f23
la x22, scratch # base address
addi x22, x22, 451 # sub immediate from rs1 to counter offset
fsh f23, -451(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x67af9e5b9d3155da # load x3 with value 0x67af9e5b9d3155da
sw x3, 0(x2) # store 0x67af9e5b9d3155da in memory
flh f24, 0(x2) # load 0x67af9e5b9d3155da from memory into f24
la x23, scratch # base address
addi x23, x23, -194 # sub immediate from rs1 to counter offset
fsh f24, 194(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xb79eecd8ed0e51a5 # load x3 with value 0xb79eecd8ed0e51a5
sw x3, 0(x2) # store 0xb79eecd8ed0e51a5 in memory
flh f25, 0(x2) # load 0xb79eecd8ed0e51a5 from memory into f25
la x29, scratch # base address
addi x29, x29, 1304 # sub immediate from rs1 to counter offset
fsh f25, -1304(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0xdcf991b85c310b6c # load x3 with value 0xdcf991b85c310b6c
sw x3, 0(x2) # store 0xdcf991b85c310b6c in memory
flh f26, 0(x2) # load 0xdcf991b85c310b6c from memory into f26
la x20, scratch # base address
addi x20, x20, 1771 # sub immediate from rs1 to counter offset
fsh f26, -1771(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xd864194a8366a421 # load x3 with value 0xd864194a8366a421
sw x3, 0(x2) # store 0xd864194a8366a421 in memory
flh f27, 0(x2) # load 0xd864194a8366a421 from memory into f27
la x5, scratch # base address
addi x5, x5, -1990 # sub immediate from rs1 to counter offset
fsh f27, 1990(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x639bd832b03d769c # load x3 with value 0x639bd832b03d769c
sw x3, 0(x2) # store 0x639bd832b03d769c in memory
flh f28, 0(x2) # load 0x639bd832b03d769c from memory into f28
la x22, scratch # base address
addi x22, x22, 1443 # sub immediate from rs1 to counter offset
fsh f28, -1443(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x832afb0e668b59b7 # load x3 with value 0x832afb0e668b59b7
sw x3, 0(x2) # store 0x832afb0e668b59b7 in memory
flh f29, 0(x2) # load 0x832afb0e668b59b7 from memory into f29
la x15, scratch # base address
addi x15, x15, -497 # sub immediate from rs1 to counter offset
fsh f29, 497(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xb8a1340d6a2b805b # load x3 with value 0xb8a1340d6a2b805b
sw x3, 0(x2) # store 0xb8a1340d6a2b805b in memory
flh f30, 0(x2) # load 0xb8a1340d6a2b805b from memory into f30
la x9, scratch # base address
addi x9, x9, -1481 # sub immediate from rs1 to counter offset
fsh f30, 1481(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x3c85b0362d7f3f24 # load x3 with value 0x3c85b0362d7f3f24
sw x3, 0(x2) # store 0x3c85b0362d7f3f24 in memory
flh f31, 0(x2) # load 0x3c85b0362d7f3f24 from memory into f31
la x14, scratch # base address
addi x14, x14, 1588 # sub immediate from rs1 to counter offset
fsh f31, -1588(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x16, scratch # base address
addi x16, x16, 1761 # sub immediate from rs1 to counter offset
fsh f3, -1761(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x29, scratch # base address
addi x29, x29, -401 # sub immediate from rs1 to counter offset
fsh f18, 401(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x19, scratch # base address
addi x19, x19, -1280 # sub immediate from rs1 to counter offset
fsh f2, 1280(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x19, scratch # base address
addi x19, x19, -1946 # sub immediate from rs1 to counter offset
fsh f6, 1946(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x27, scratch # base address
addi x27, x27, 720 # sub immediate from rs1 to counter offset
fsh f11, -720(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x3, scratch # base address
addi x3, x3, -30 # sub immediate from rs1 to counter offset
fsh f11, 30(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x1, scratch # base address
addi x1, x1, -969 # sub immediate from rs1 to counter offset
fsh f25, 969(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch # base address
addi x2, x2, -329 # sub immediate from rs1 to counter offset
fsh f13, 329(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
la x20, scratch # base address
addi x20, x20, 483 # sub immediate from rs1 to counter offset
fsh f15, -483(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x11, scratch # base address
addi x11, x11, -692 # sub immediate from rs1 to counter offset
fsh f26, 692(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x27, scratch # base address
addi x27, x27, 1709 # sub immediate from rs1 to counter offset
fsh f23, -1709(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x6, scratch # base address
addi x6, x6, 489 # sub immediate from rs1 to counter offset
fsh f10, -489(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x14, scratch # base address
addi x14, x14, 1056 # sub immediate from rs1 to counter offset
fsh f5, -1056(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x1, scratch # base address
addi x1, x1, -1573 # sub immediate from rs1 to counter offset
fsh f27, 1573(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x11, scratch # base address
addi x11, x11, 1546 # sub immediate from rs1 to counter offset
fsh f25, -1546(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x19, scratch # base address
addi x19, x19, -1033 # sub immediate from rs1 to counter offset
fsh f14, 1033(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x19, scratch # base address
addi x19, x19, -378 # sub immediate from rs1 to counter offset
fsh f11, 378(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x20, scratch # base address
addi x20, x20, -491 # sub immediate from rs1 to counter offset
fsh f23, 491(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x29, scratch # base address
addi x29, x29, 1377 # sub immediate from rs1 to counter offset
fsh f12, -1377(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x5, scratch # base address
addi x5, x5, -1394 # sub immediate from rs1 to counter offset
fsh f31, 1394(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x18, scratch # base address
addi x18, x18, 407 # sub immediate from rs1 to counter offset
fsh f13, -407(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x28, scratch # base address
addi x28, x28, -1083 # sub immediate from rs1 to counter offset
fsh f31, 1083(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x6, scratch # base address
addi x6, x6, 732 # sub immediate from rs1 to counter offset
fsh f23, -732(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x7, scratch # base address
addi x7, x7, 718 # sub immediate from rs1 to counter offset
fsh f26, -718(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x28, scratch # base address
addi x28, x28, 1305 # sub immediate from rs1 to counter offset
fsh f3, -1305(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x6, scratch # base address
addi x6, x6, 1449 # sub immediate from rs1 to counter offset
fsh f11, -1449(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x30, scratch # base address
addi x30, x30, -630 # sub immediate from rs1 to counter offset
fsh f10, 630(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
la x27, scratch # base address
addi x27, x27, -294 # sub immediate from rs1 to counter offset
fsh f14, 294(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x8, scratch # base address
addi x8, x8, -888 # sub immediate from rs1 to counter offset
fsh f9, 888(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f27, 0(x2) # load 0xfffe8000 from memory into f27
la x9, scratch # base address
addi x9, x9, -1566 # sub immediate from rs1 to counter offset
fsh f27, 1566(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f12, 0(x2) # load 0x7fff3c00 from memory into f12
la x15, scratch # base address
addi x15, x15, -1073 # sub immediate from rs1 to counter offset
fsh f12, 1073(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f26, 0(x2) # load 0xbeefbc00 from memory into f26
la x23, scratch # base address
addi x23, x23, 178 # sub immediate from rs1 to counter offset
fsh f26, -178(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f17, 0(x2) # load 0xfeff0400 from memory into f17
la x16, scratch # base address
addi x16, x16, -2005 # sub immediate from rs1 to counter offset
fsh f17, 2005(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f26, 0(x2) # load 0x0fff8400 from memory into f26
la x13, scratch # base address
addi x13, x13, 106 # sub immediate from rs1 to counter offset
fsh f26, -106(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f5, 0(x2) # load 0xefff7bff from memory into f5
la x30, scratch # base address
addi x30, x30, -1093 # sub immediate from rs1 to counter offset
fsh f5, 1093(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f24, 0(x2) # load 0xc0defbff from memory into f24
la x20, scratch # base address
addi x20, x20, 1685 # sub immediate from rs1 to counter offset
fsh f24, -1685(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f13, 0(x2) # load 0x4f1a7c00 from memory into f13
la x7, scratch # base address
addi x7, x7, -2012 # sub immediate from rs1 to counter offset
fsh f13, 2012(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f27, 0(x2) # load 0x0ffffc00 from memory into f27
la x10, scratch # base address
addi x10, x10, 1362 # sub immediate from rs1 to counter offset
fsh f27, -1362(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f3, 0(x2) # load 0xffef7e00 from memory into f3
la x20, scratch # base address
addi x20, x20, -1979 # sub immediate from rs1 to counter offset
fsh f3, 1979(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f26, 0(x2) # load 0xfeef7fff from memory into f26
la x16, scratch # base address
addi x16, x16, -1087 # sub immediate from rs1 to counter offset
fsh f26, 1087(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f5, 0(x2) # load 0xa1b27c01 from memory into f5
la x7, scratch # base address
addi x7, x7, -594 # sub immediate from rs1 to counter offset
fsh f5, 594(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f30, 0(x2) # load 0x4fd77dff from memory into f30
la x18, scratch # base address
addi x18, x18, 361 # sub immediate from rs1 to counter offset
fsh f30, -361(x18) # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-flh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x1, scratch # base address 
addi x1, x1, 1461 # sub immediate from rs1 to counter offset
li x2, 0x8e70ae39488adce6 # load x3 with value 0x8e70ae39488adce6
sw x2, -1461(x1) # store 0x8e70ae39488adce6 in memory
flh f16, -1461(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -1453 # sub immediate from rs1 to counter offset
li x27, 0xbdebc1f9baf456dc # load x3 with value 0xbdebc1f9baf456dc
sw x27, 1453(x2) # store 0xbdebc1f9baf456dc in memory
flh f30, 1453(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 971 # sub immediate from rs1 to counter offset
li x18, 0xaf1ebd6cb4b34071 # load x3 with value 0xaf1ebd6cb4b34071
sw x18, -971(x3) # store 0xaf1ebd6cb4b34071 in memory
flh f9, -971(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -485 # sub immediate from rs1 to counter offset
li x10, 0x80d3be8ba3947032 # load x3 with value 0x80d3be8ba3947032
sw x10, 485(x4) # store 0x80d3be8ba3947032 in memory
flh f15, 485(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 1770 # sub immediate from rs1 to counter offset
li x22, 0x789221cf6332f968 # load x3 with value 0x789221cf6332f968
sw x22, -1770(x5) # store 0x789221cf6332f968 in memory
flh f8, -1770(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -1815 # sub immediate from rs1 to counter offset
li x13, 0x8e101cbb348673ec # load x3 with value 0x8e101cbb348673ec
sw x13, 1815(x6) # store 0x8e101cbb348673ec in memory
flh f9, 1815(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -686 # sub immediate from rs1 to counter offset
li x30, 0x828d7d1c2d0f3928 # load x3 with value 0x828d7d1c2d0f3928
sw x30, 686(x7) # store 0x828d7d1c2d0f3928 in memory
flh f15, 686(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -1241 # sub immediate from rs1 to counter offset
li x27, 0x5af58185b04d43e3 # load x3 with value 0x5af58185b04d43e3
sw x27, 1241(x8) # store 0x5af58185b04d43e3 in memory
flh f25, 1241(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 1752 # sub immediate from rs1 to counter offset
li x11, 0xacd003e9e46b7738 # load x3 with value 0xacd003e9e46b7738
sw x11, -1752(x9) # store 0xacd003e9e46b7738 in memory
flh f31, -1752(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 307 # sub immediate from rs1 to counter offset
li x2, 0x95586e2048854ef9 # load x3 with value 0x95586e2048854ef9
sw x2, -307(x10) # store 0x95586e2048854ef9 in memory
flh f21, -307(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, -185 # sub immediate from rs1 to counter offset
li x5, 0xe5f7416e69d891b7 # load x3 with value 0xe5f7416e69d891b7
sw x5, 185(x11) # store 0xe5f7416e69d891b7 in memory
flh f15, 185(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1754 # sub immediate from rs1 to counter offset
li x3, 0x9261b5d428ed78b5 # load x3 with value 0x9261b5d428ed78b5
sw x3, -1754(x12) # store 0x9261b5d428ed78b5 in memory
flh f25, -1754(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -1689 # sub immediate from rs1 to counter offset
li x17, 0xa04300afe6c4c209 # load x3 with value 0xa04300afe6c4c209
sw x17, 1689(x13) # store 0xa04300afe6c4c209 in memory
flh f3, 1689(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, 940 # sub immediate from rs1 to counter offset
li x24, 0x9b320ab93a0c557 # load x3 with value 0x9b320ab93a0c557
sw x24, -940(x14) # store 0x9b320ab93a0c557 in memory
flh f16, -940(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -2037 # sub immediate from rs1 to counter offset
li x5, 0xc34cc3610068cfdf # load x3 with value 0xc34cc3610068cfdf
sw x5, 2037(x15) # store 0xc34cc3610068cfdf in memory
flh f16, 2037(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, 236 # sub immediate from rs1 to counter offset
li x7, 0xea140a3c6c964b60 # load x3 with value 0xea140a3c6c964b60
sw x7, -236(x16) # store 0xea140a3c6c964b60 in memory
flh f30, -236(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, -601 # sub immediate from rs1 to counter offset
li x7, 0x1333757489cdf43f # load x3 with value 0x1333757489cdf43f
sw x7, 601(x17) # store 0x1333757489cdf43f in memory
flh f11, 601(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, 469 # sub immediate from rs1 to counter offset
li x1, 0x6e0efe5fec7e6088 # load x3 with value 0x6e0efe5fec7e6088
sw x1, -469(x18) # store 0x6e0efe5fec7e6088 in memory
flh f7, -469(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -1154 # sub immediate from rs1 to counter offset
li x10, 0x145a9301d7869494 # load x3 with value 0x145a9301d7869494
sw x10, 1154(x19) # store 0x145a9301d7869494 in memory
flh f9, 1154(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, 1689 # sub immediate from rs1 to counter offset
li x27, 0xe0f12388fae35d72 # load x3 with value 0xe0f12388fae35d72
sw x27, -1689(x20) # store 0xe0f12388fae35d72 in memory
flh f15, -1689(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1325 # sub immediate from rs1 to counter offset
li x26, 0x1aec32c6cec67145 # load x3 with value 0x1aec32c6cec67145
sw x26, 1325(x21) # store 0x1aec32c6cec67145 in memory
flh f17, 1325(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, 1145 # sub immediate from rs1 to counter offset
li x24, 0x6794d76f7e655f33 # load x3 with value 0x6794d76f7e655f33
sw x24, -1145(x22) # store 0x6794d76f7e655f33 in memory
flh f29, -1145(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 147 # sub immediate from rs1 to counter offset
li x10, 0xcb2f59df8ae5a59 # load x3 with value 0xcb2f59df8ae5a59
sw x10, -147(x23) # store 0xcb2f59df8ae5a59 in memory
flh f22, -147(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 128 # sub immediate from rs1 to counter offset
li x17, 0x795463bcf92d7f8c # load x3 with value 0x795463bcf92d7f8c
sw x17, -128(x24) # store 0x795463bcf92d7f8c in memory
flh f28, -128(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, 168 # sub immediate from rs1 to counter offset
li x22, 0x9c82ed1368cf7d9f # load x3 with value 0x9c82ed1368cf7d9f
sw x22, -168(x25) # store 0x9c82ed1368cf7d9f in memory
flh f16, -168(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, 377 # sub immediate from rs1 to counter offset
li x8, 0xa7195448fb8e0b8f # load x3 with value 0xa7195448fb8e0b8f
sw x8, -377(x26) # store 0xa7195448fb8e0b8f in memory
flh f2, -377(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, -1514 # sub immediate from rs1 to counter offset
li x16, 0x1f148f6673f3c26d # load x3 with value 0x1f148f6673f3c26d
sw x16, 1514(x27) # store 0x1f148f6673f3c26d in memory
flh f25, 1514(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, -1571 # sub immediate from rs1 to counter offset
li x29, 0x83b02f725c3533ad # load x3 with value 0x83b02f725c3533ad
sw x29, 1571(x28) # store 0x83b02f725c3533ad in memory
flh f10, 1571(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, 1720 # sub immediate from rs1 to counter offset
li x27, 0xc7e969e7e6b694fd # load x3 with value 0xc7e969e7e6b694fd
sw x27, -1720(x29) # store 0xc7e969e7e6b694fd in memory
flh f9, -1720(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, 1178 # sub immediate from rs1 to counter offset
li x25, 0x1fcbb4a6e30c8d55 # load x3 with value 0x1fcbb4a6e30c8d55
sw x25, -1178(x30) # store 0x1fcbb4a6e30c8d55 in memory
flh f19, -1178(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, 1818 # sub immediate from rs1 to counter offset
li x10, 0xa71f4e379f09209f # load x3 with value 0xa71f4e379f09209f
sw x10, -1818(x31) # store 0xa71f4e379f09209f in memory
flh f27, -1818(x31) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
li x10, 0x9ee63866273aadac # load x3 with value 0x9ee63866273aadac
sw x10, 0(x9) # store 0x9ee63866273aadac in memory
flh f24, 0(x9) # perform operation

# Testcase cp_imm_corners
la x5, scratch # base address 
addi x5, x5, -1 # sub immediate from rs1 to counter offset
li x1, 0x9c6a93324600ea2c # load x3 with value 0x9c6a93324600ea2c
sw x1, 1(x5) # store 0x9c6a93324600ea2c in memory
flh f31, 1(x5) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -2 # sub immediate from rs1 to counter offset
li x29, 0xf9a03d7e259040ff # load x3 with value 0xf9a03d7e259040ff
sw x29, 2(x18) # store 0xf9a03d7e259040ff in memory
flh f25, 2(x18) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -3 # sub immediate from rs1 to counter offset
li x15, 0x527e136bd3f8e4ff # load x3 with value 0x527e136bd3f8e4ff
sw x15, 3(x3) # store 0x527e136bd3f8e4ff in memory
flh f29, 3(x3) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -4 # sub immediate from rs1 to counter offset
li x1, 0x456532c41e354a4b # load x3 with value 0x456532c41e354a4b
sw x1, 4(x18) # store 0x456532c41e354a4b in memory
flh f17, 4(x18) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -8 # sub immediate from rs1 to counter offset
li x13, 0x9e29fc5319eed6a0 # load x3 with value 0x9e29fc5319eed6a0
sw x13, 8(x6) # store 0x9e29fc5319eed6a0 in memory
flh f27, 8(x6) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, -16 # sub immediate from rs1 to counter offset
li x15, 0xef1c976e8f665790 # load x3 with value 0xef1c976e8f665790
sw x15, 16(x7) # store 0xef1c976e8f665790 in memory
flh f6, 16(x7) # perform operation

# Testcase cp_imm_corners
la x19, scratch # base address 
addi x19, x19, -32 # sub immediate from rs1 to counter offset
li x30, 0xe1b2f17d2e5709af # load x3 with value 0xe1b2f17d2e5709af
sw x30, 32(x19) # store 0xe1b2f17d2e5709af in memory
flh f14, 32(x19) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -64 # sub immediate from rs1 to counter offset
li x5, 0xfaaa639268774d65 # load x3 with value 0xfaaa639268774d65
sw x5, 64(x3) # store 0xfaaa639268774d65 in memory
flh f13, 64(x3) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, -128 # sub immediate from rs1 to counter offset
li x23, 0xdb313207b48e31b9 # load x3 with value 0xdb313207b48e31b9
sw x23, 128(x28) # store 0xdb313207b48e31b9 in memory
flh f29, 128(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -256 # sub immediate from rs1 to counter offset
li x25, 0x2ce53189e805bee9 # load x3 with value 0x2ce53189e805bee9
sw x25, 256(x3) # store 0x2ce53189e805bee9 in memory
flh f20, 256(x3) # perform operation

# Testcase cp_imm_corners
la x11, scratch # base address 
addi x11, x11, -512 # sub immediate from rs1 to counter offset
li x9, 0x242ccb033219aadc # load x3 with value 0x242ccb033219aadc
sw x9, 512(x11) # store 0x242ccb033219aadc in memory
flh f7, 512(x11) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -1023 # sub immediate from rs1 to counter offset
li x2, 0x324c083c761545d2 # load x3 with value 0x324c083c761545d2
sw x2, 1023(x3) # store 0x324c083c761545d2 in memory
flh f21, 1023(x3) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, -1024 # sub immediate from rs1 to counter offset
li x16, 0x8c347ffb4e5abf77 # load x3 with value 0x8c347ffb4e5abf77
sw x16, 1024(x31) # store 0x8c347ffb4e5abf77 in memory
flh f10, 1024(x31) # perform operation

# Testcase cp_imm_corners
la x5, scratch # base address 
addi x5, x5, -1795 # sub immediate from rs1 to counter offset
li x15, 0x7d25844adaae753e # load x3 with value 0x7d25844adaae753e
sw x15, 1795(x5) # store 0x7d25844adaae753e in memory
flh f7, 1795(x5) # perform operation

# Testcase cp_imm_corners
la x16, scratch # base address 
addi x16, x16, -2047 # sub immediate from rs1 to counter offset
li x1, 0x5592c050815f0cbe # load x3 with value 0x5592c050815f0cbe
sw x1, 2047(x16) # store 0x5592c050815f0cbe in memory
flh f5, 2047(x16) # perform operation

# Testcase cp_imm_corners
la x29, scratch # base address 
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x2, 0xac3c87d4ca25f3e2 # load x3 with value 0xac3c87d4ca25f3e2
sw x2, -2048(x29) # store 0xac3c87d4ca25f3e2 in memory
flh f31, -2048(x29) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 2047 # sub immediate from rs1 to counter offset
li x7, 0x4e76f051dd76b58e # load x3 with value 0x4e76f051dd76b58e
sw x7, -2047(x9) # store 0x4e76f051dd76b58e in memory
flh f20, -2047(x9) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 2 # sub immediate from rs1 to counter offset
li x31, 0x37f3b77c2c8e1366 # load x3 with value 0x37f3b77c2c8e1366
sw x31, -2(x3) # store 0x37f3b77c2c8e1366 in memory
flh f31, -2(x3) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
li x6, 0x4fc1f2bc8808eebf # load x3 with value 0x4fc1f2bc8808eebf
sw x6, -1(x3) # store 0x4fc1f2bc8808eebf in memory
flh f2, -1(x3) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, -1613
add x21, x11, x7 # perform first operation
flh f3, 1613(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, 159
add x26, x30, x8 # perform first operation
flh f10, -159(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 249
add x9, x19, x10 # perform first operation
flh f23, -249(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
addi x17, x17, -787
fmul.s f28, f5, f24 # perform first operation
flh f28, 787(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x19, scratch
addi x19, x19, 441
fmul.s f24, f8, f10 # perform first operation
flh f24, -441(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
addi x30, x30, 964
fmul.s f12, f27, f5 # perform first operation
flh f12, -964(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x12, scratch
addi x12, x12, -477
fmul.s f21, f15, f31 # perform first operation
flh f15, 477(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
addi x19, x19, -1766
fmul.s f31, f25, f18 # perform first operation
flh f18, 1766(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x15, scratch
addi x15, x15, 1672
fmul.s f6, f14, f8 # perform first operation
flh f10, -1672(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
addi x5, x5, -1187
add x7, x13, x18 # perform first operation
flh f12, 1187(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
addi x7, x7, 1371
add x19, x8, x29 # perform first operation
flh f28, -1371(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
addi x27, x27, 898
add x29, x18, x13 # perform first operation
flh f7, -898(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
addi x27, x27, -707
add x27, x27, x0 # perform first operation
flh f25, 707(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
addi x14, x14, -55
add x14, x14, x0 # perform first operation
flh f6, 55(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, 382
add x29, x29, x0 # perform first operation
flh f13, -382(x29) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x20, scratch # base address 
addi x20, x20, -1963 # sub immediate from rs1 to counter offset
li x25, 0xa895219ae47957b2 # load x3 with value 0xa895219ae47957b2
sw x25, 1963(x20) # store 0xa895219ae47957b2 in memory
flh f0, 1963(x20) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x9, scratch # base address 
addi x9, x9, 1658 # sub immediate from rs1 to counter offset
li x3, 0x12d74e77a02cfdca # load x3 with value 0x12d74e77a02cfdca
sw x3, -1658(x9) # store 0x12d74e77a02cfdca in memory
flh f1, -1658(x9) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x20, scratch # base address 
addi x20, x20, 222 # sub immediate from rs1 to counter offset
li x15, 0xd82ebd442ca61bba # load x3 with value 0xd82ebd442ca61bba
sw x15, -222(x20) # store 0xd82ebd442ca61bba in memory
flh f2, -222(x20) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x29, scratch # base address 
addi x29, x29, -1885 # sub immediate from rs1 to counter offset
li x30, 0x4b10071468d18289 # load x3 with value 0x4b10071468d18289
sw x30, 1885(x29) # store 0x4b10071468d18289 in memory
flh f3, 1885(x29) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x30, scratch # base address 
addi x30, x30, -1458 # sub immediate from rs1 to counter offset
li x15, 0x485172b7cfa9a1e5 # load x3 with value 0x485172b7cfa9a1e5
sw x15, 1458(x30) # store 0x485172b7cfa9a1e5 in memory
flh f4, 1458(x30) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x14, scratch # base address 
addi x14, x14, 409 # sub immediate from rs1 to counter offset
li x21, 0x6b037ebf244ac311 # load x3 with value 0x6b037ebf244ac311
sw x21, -409(x14) # store 0x6b037ebf244ac311 in memory
flh f5, -409(x14) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x23, scratch # base address 
addi x23, x23, 1983 # sub immediate from rs1 to counter offset
li x5, 0xa5ad72e0b9d193e0 # load x3 with value 0xa5ad72e0b9d193e0
sw x5, -1983(x23) # store 0xa5ad72e0b9d193e0 in memory
flh f6, -1983(x23) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x19, scratch # base address 
addi x19, x19, 1545 # sub immediate from rs1 to counter offset
li x30, 0x3c4d96197dfe03bb # load x3 with value 0x3c4d96197dfe03bb
sw x30, -1545(x19) # store 0x3c4d96197dfe03bb in memory
flh f7, -1545(x19) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x24, scratch # base address 
addi x24, x24, -426 # sub immediate from rs1 to counter offset
li x1, 0xe585c2e3facb7e19 # load x3 with value 0xe585c2e3facb7e19
sw x1, 426(x24) # store 0xe585c2e3facb7e19 in memory
flh f8, 426(x24) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x26, scratch # base address 
addi x26, x26, -438 # sub immediate from rs1 to counter offset
li x18, 0x4147038bc381c88a # load x3 with value 0x4147038bc381c88a
sw x18, 438(x26) # store 0x4147038bc381c88a in memory
flh f9, 438(x26) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x25, scratch # base address 
addi x25, x25, 1075 # sub immediate from rs1 to counter offset
li x6, 0x889b33dbcfb8a452 # load x3 with value 0x889b33dbcfb8a452
sw x6, -1075(x25) # store 0x889b33dbcfb8a452 in memory
flh f10, -1075(x25) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x24, scratch # base address 
addi x24, x24, 252 # sub immediate from rs1 to counter offset
li x8, 0x78d03c98a4edc105 # load x3 with value 0x78d03c98a4edc105
sw x8, -252(x24) # store 0x78d03c98a4edc105 in memory
flh f11, -252(x24) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x30, scratch # base address 
addi x30, x30, 1685 # sub immediate from rs1 to counter offset
li x25, 0x207bc2c6c4fc3ceb # load x3 with value 0x207bc2c6c4fc3ceb
sw x25, -1685(x30) # store 0x207bc2c6c4fc3ceb in memory
flh f12, -1685(x30) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x20, scratch # base address 
addi x20, x20, -1785 # sub immediate from rs1 to counter offset
li x23, 0x24ff87750e4bf9e1 # load x3 with value 0x24ff87750e4bf9e1
sw x23, 1785(x20) # store 0x24ff87750e4bf9e1 in memory
flh f13, 1785(x20) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x19, scratch # base address 
addi x19, x19, -1799 # sub immediate from rs1 to counter offset
li x10, 0xe1231b2c55244391 # load x3 with value 0xe1231b2c55244391
sw x10, 1799(x19) # store 0xe1231b2c55244391 in memory
flh f14, 1799(x19) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x15, scratch # base address 
addi x15, x15, 1490 # sub immediate from rs1 to counter offset
li x9, 0x40acdfbaae57a330 # load x3 with value 0x40acdfbaae57a330
sw x9, -1490(x15) # store 0x40acdfbaae57a330 in memory
flh f15, -1490(x15) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x15, scratch # base address 
addi x15, x15, 1193 # sub immediate from rs1 to counter offset
li x20, 0x43800d0016546102 # load x3 with value 0x43800d0016546102
sw x20, -1193(x15) # store 0x43800d0016546102 in memory
flh f16, -1193(x15) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x6, scratch # base address 
addi x6, x6, 540 # sub immediate from rs1 to counter offset
li x12, 0xcd99a92e3c0c77f1 # load x3 with value 0xcd99a92e3c0c77f1
sw x12, -540(x6) # store 0xcd99a92e3c0c77f1 in memory
flh f17, -540(x6) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x11, scratch # base address 
addi x11, x11, -1703 # sub immediate from rs1 to counter offset
li x14, 0x7b0a77877462f82 # load x3 with value 0x7b0a77877462f82
sw x14, 1703(x11) # store 0x7b0a77877462f82 in memory
flh f18, 1703(x11) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x24, scratch # base address 
addi x24, x24, 1888 # sub immediate from rs1 to counter offset
li x31, 0x48a37792f4497af5 # load x3 with value 0x48a37792f4497af5
sw x31, -1888(x24) # store 0x48a37792f4497af5 in memory
flh f19, -1888(x24) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x5, scratch # base address 
addi x5, x5, 99 # sub immediate from rs1 to counter offset
li x10, 0x580e84a0552ab7c0 # load x3 with value 0x580e84a0552ab7c0
sw x10, -99(x5) # store 0x580e84a0552ab7c0 in memory
flh f20, -99(x5) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x16, scratch # base address 
addi x16, x16, -1198 # sub immediate from rs1 to counter offset
li x27, 0xc57fe6812cdbe90 # load x3 with value 0xc57fe6812cdbe90
sw x27, 1198(x16) # store 0xc57fe6812cdbe90 in memory
flh f21, 1198(x16) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x18, scratch # base address 
addi x18, x18, -237 # sub immediate from rs1 to counter offset
li x3, 0xb5db01a68e68cb83 # load x3 with value 0xb5db01a68e68cb83
sw x3, 237(x18) # store 0xb5db01a68e68cb83 in memory
flh f22, 237(x18) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x15, scratch # base address 
addi x15, x15, 900 # sub immediate from rs1 to counter offset
li x6, 0x4041b6af8aafde4 # load x3 with value 0x4041b6af8aafde4
sw x6, -900(x15) # store 0x4041b6af8aafde4 in memory
flh f23, -900(x15) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x31, scratch # base address 
addi x31, x31, -53 # sub immediate from rs1 to counter offset
li x8, 0xbbf2fb740a88cdd6 # load x3 with value 0xbbf2fb740a88cdd6
sw x8, 53(x31) # store 0xbbf2fb740a88cdd6 in memory
flh f24, 53(x31) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x16, scratch # base address 
addi x16, x16, -128 # sub immediate from rs1 to counter offset
li x9, 0xc224a7962bef7fb7 # load x3 with value 0xc224a7962bef7fb7
sw x9, 128(x16) # store 0xc224a7962bef7fb7 in memory
flh f25, 128(x16) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x27, scratch # base address 
addi x27, x27, -937 # sub immediate from rs1 to counter offset
li x10, 0xbf76b3f376d99e58 # load x3 with value 0xbf76b3f376d99e58
sw x10, 937(x27) # store 0xbf76b3f376d99e58 in memory
flh f26, 937(x27) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x25, scratch # base address 
addi x25, x25, 242 # sub immediate from rs1 to counter offset
li x27, 0x58ef409fe32fd5c9 # load x3 with value 0x58ef409fe32fd5c9
sw x27, -242(x25) # store 0x58ef409fe32fd5c9 in memory
flh f27, -242(x25) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x12, scratch # base address 
addi x12, x12, 955 # sub immediate from rs1 to counter offset
li x14, 0x8a65dcf8e3058dfc # load x3 with value 0x8a65dcf8e3058dfc
sw x14, -955(x12) # store 0x8a65dcf8e3058dfc in memory
flh f28, -955(x12) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x27, scratch # base address 
addi x27, x27, -2030 # sub immediate from rs1 to counter offset
li x22, 0x35814fbb29780f5d # load x3 with value 0x35814fbb29780f5d
sw x22, 2030(x27) # store 0x35814fbb29780f5d in memory
flh f29, 2030(x27) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x1, scratch # base address 
addi x1, x1, -931 # sub immediate from rs1 to counter offset
li x20, 0x879680d0b90cb1ff # load x3 with value 0x879680d0b90cb1ff
sw x20, 931(x1) # store 0x879680d0b90cb1ff in memory
flh f30, 931(x1) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x20, scratch # base address 
addi x20, x20, 284 # sub immediate from rs1 to counter offset
li x7, 0x3ca9949d84e24fb5 # load x3 with value 0x3ca9949d84e24fb5
sw x7, -284(x20) # store 0x3ca9949d84e24fb5 in memory
flh f31, -284(x20) # perform operation

# Testcase Random test for cp_NaNBox 
la x31, scratch # base address 
addi x31, x31, -1600 # sub immediate from rs1 to counter offset
li x17, 0x449ebabbe9f816ea # load x3 with value 0x449ebabbe9f816ea
sw x17, 1600(x31) # store 0x449ebabbe9f816ea in memory
flh f23, 1600(x31) # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,848 #combined


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
