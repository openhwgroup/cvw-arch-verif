///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.s.h.S
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
