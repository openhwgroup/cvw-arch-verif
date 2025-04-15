///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.s.d.S
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
add x21, x29, x1 # perform first operation
fcvt.s.d f23, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x12, x18 # perform first operation
fcvt.s.d f2, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x2, x27 # perform first operation
fcvt.s.d f5, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f11, f6 # perform first operation
fcvt.s.d f1, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x7, x25 # perform first operation
fcvt.s.d f7, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x16, x19 # perform first operation
fcvt.s.d f19, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f11, f20, f25 # perform first operation
fcvt.s.d f11, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f29, f2 # perform first operation
fcvt.s.d f14, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f10, f9 # perform first operation
fcvt.s.d f5, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f9, f16, f21 # perform first operation
fcvt.s.d f16, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f12, f21 # perform first operation
fcvt.s.d f21, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f18, f16 # perform first operation
fcvt.s.d f29, f5 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84b23f91863d7ef5 # load x3 with value 0x84b23f91863d7ef5
sd x3, 0(x2) # store 0x84b23f91863d7ef5 in memory
fld f0, 0(x2) # load 0x84b23f91863d7ef5 from memory into f0
fcvt.s.d f7, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3b4e6762cc80453 # load x3 with value 0xb3b4e6762cc80453
sd x3, 0(x2) # store 0xb3b4e6762cc80453 in memory
fld f1, 0(x2) # load 0xb3b4e6762cc80453 from memory into f1
fcvt.s.d f18, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x874fd97eabe4f5f5 # load x3 with value 0x874fd97eabe4f5f5
sd x3, 0(x2) # store 0x874fd97eabe4f5f5 in memory
fld f2, 0(x2) # load 0x874fd97eabe4f5f5 from memory into f2
fcvt.s.d f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xccd6360fa0f562fa # load x3 with value 0xccd6360fa0f562fa
sd x3, 0(x2) # store 0xccd6360fa0f562fa in memory
fld f3, 0(x2) # load 0xccd6360fa0f562fa from memory into f3
fcvt.s.d f14, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x739edb6e60375343 # load x3 with value 0x739edb6e60375343
sd x3, 0(x2) # store 0x739edb6e60375343 in memory
fld f4, 0(x2) # load 0x739edb6e60375343 from memory into f4
fcvt.s.d f23, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x636a983cd906a04d # load x3 with value 0x636a983cd906a04d
sd x3, 0(x2) # store 0x636a983cd906a04d in memory
fld f5, 0(x2) # load 0x636a983cd906a04d from memory into f5
fcvt.s.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5b93375498a007c # load x3 with value 0xd5b93375498a007c
sd x3, 0(x2) # store 0xd5b93375498a007c in memory
fld f6, 0(x2) # load 0xd5b93375498a007c from memory into f6
fcvt.s.d f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x919573ce0d2321f4 # load x3 with value 0x919573ce0d2321f4
sd x3, 0(x2) # store 0x919573ce0d2321f4 in memory
fld f7, 0(x2) # load 0x919573ce0d2321f4 from memory into f7
fcvt.s.d f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfad8894f5efcfb53 # load x3 with value 0xfad8894f5efcfb53
sd x3, 0(x2) # store 0xfad8894f5efcfb53 in memory
fld f8, 0(x2) # load 0xfad8894f5efcfb53 from memory into f8
fcvt.s.d f22, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa4468fe783d19326 # load x3 with value 0xa4468fe783d19326
sd x3, 0(x2) # store 0xa4468fe783d19326 in memory
fld f9, 0(x2) # load 0xa4468fe783d19326 from memory into f9
fcvt.s.d f23, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f38b25d53ea7608 # load x3 with value 0x0f38b25d53ea7608
sd x3, 0(x2) # store 0x0f38b25d53ea7608 in memory
fld f10, 0(x2) # load 0x0f38b25d53ea7608 from memory into f10
fcvt.s.d f7, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x01a00963d2fbf42b # load x3 with value 0x01a00963d2fbf42b
sd x3, 0(x2) # store 0x01a00963d2fbf42b in memory
fld f11, 0(x2) # load 0x01a00963d2fbf42b from memory into f11
fcvt.s.d f21, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9fe96e9f00688b5 # load x3 with value 0xd9fe96e9f00688b5
sd x3, 0(x2) # store 0xd9fe96e9f00688b5 in memory
fld f12, 0(x2) # load 0xd9fe96e9f00688b5 from memory into f12
fcvt.s.d f6, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2638c9221bea04e4 # load x3 with value 0x2638c9221bea04e4
sd x3, 0(x2) # store 0x2638c9221bea04e4 in memory
fld f13, 0(x2) # load 0x2638c9221bea04e4 from memory into f13
fcvt.s.d f3, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9cae9a123b82a6ee # load x3 with value 0x9cae9a123b82a6ee
sd x3, 0(x2) # store 0x9cae9a123b82a6ee in memory
fld f14, 0(x2) # load 0x9cae9a123b82a6ee from memory into f14
fcvt.s.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0145128be237350 # load x3 with value 0xb0145128be237350
sd x3, 0(x2) # store 0xb0145128be237350 in memory
fld f15, 0(x2) # load 0xb0145128be237350 from memory into f15
fcvt.s.d f13, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfb9c60fbeb51fc6 # load x3 with value 0xbfb9c60fbeb51fc6
sd x3, 0(x2) # store 0xbfb9c60fbeb51fc6 in memory
fld f16, 0(x2) # load 0xbfb9c60fbeb51fc6 from memory into f16
fcvt.s.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa9fbc48d3fda9fd4 # load x3 with value 0xa9fbc48d3fda9fd4
sd x3, 0(x2) # store 0xa9fbc48d3fda9fd4 in memory
fld f17, 0(x2) # load 0xa9fbc48d3fda9fd4 from memory into f17
fcvt.s.d f28, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12094e4844412cdf # load x3 with value 0x12094e4844412cdf
sd x3, 0(x2) # store 0x12094e4844412cdf in memory
fld f18, 0(x2) # load 0x12094e4844412cdf from memory into f18
fcvt.s.d f23, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5c61e3484516109 # load x3 with value 0xe5c61e3484516109
sd x3, 0(x2) # store 0xe5c61e3484516109 in memory
fld f19, 0(x2) # load 0xe5c61e3484516109 from memory into f19
fcvt.s.d f13, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3031b4f9a1c37a61 # load x3 with value 0x3031b4f9a1c37a61
sd x3, 0(x2) # store 0x3031b4f9a1c37a61 in memory
fld f20, 0(x2) # load 0x3031b4f9a1c37a61 from memory into f20
fcvt.s.d f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x50b326597759c842 # load x3 with value 0x50b326597759c842
sd x3, 0(x2) # store 0x50b326597759c842 in memory
fld f21, 0(x2) # load 0x50b326597759c842 from memory into f21
fcvt.s.d f17, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x200d461e211e9aeb # load x3 with value 0x200d461e211e9aeb
sd x3, 0(x2) # store 0x200d461e211e9aeb in memory
fld f22, 0(x2) # load 0x200d461e211e9aeb from memory into f22
fcvt.s.d f27, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x946003ba562ab81a # load x3 with value 0x946003ba562ab81a
sd x3, 0(x2) # store 0x946003ba562ab81a in memory
fld f23, 0(x2) # load 0x946003ba562ab81a from memory into f23
fcvt.s.d f17, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe967e85e19182b20 # load x3 with value 0xe967e85e19182b20
sd x3, 0(x2) # store 0xe967e85e19182b20 in memory
fld f24, 0(x2) # load 0xe967e85e19182b20 from memory into f24
fcvt.s.d f21, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65ffdca6e8346c71 # load x3 with value 0x65ffdca6e8346c71
sd x3, 0(x2) # store 0x65ffdca6e8346c71 in memory
fld f25, 0(x2) # load 0x65ffdca6e8346c71 from memory into f25
fcvt.s.d f18, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcf74378cfd0a13ab # load x3 with value 0xcf74378cfd0a13ab
sd x3, 0(x2) # store 0xcf74378cfd0a13ab in memory
fld f26, 0(x2) # load 0xcf74378cfd0a13ab from memory into f26
fcvt.s.d f12, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58693bd2bb3e40b8 # load x3 with value 0x58693bd2bb3e40b8
sd x3, 0(x2) # store 0x58693bd2bb3e40b8 in memory
fld f27, 0(x2) # load 0x58693bd2bb3e40b8 from memory into f27
fcvt.s.d f1, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb4cbab1d8b76414 # load x3 with value 0xbb4cbab1d8b76414
sd x3, 0(x2) # store 0xbb4cbab1d8b76414 in memory
fld f28, 0(x2) # load 0xbb4cbab1d8b76414 from memory into f28
fcvt.s.d f22, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5b2e2fa48808065 # load x3 with value 0xa5b2e2fa48808065
sd x3, 0(x2) # store 0xa5b2e2fa48808065 in memory
fld f29, 0(x2) # load 0xa5b2e2fa48808065 from memory into f29
fcvt.s.d f5, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa93b1551342721b7 # load x3 with value 0xa93b1551342721b7
sd x3, 0(x2) # store 0xa93b1551342721b7 in memory
fld f30, 0(x2) # load 0xa93b1551342721b7 from memory into f30
fcvt.s.d f11, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80e56b88147422c1 # load x3 with value 0x80e56b88147422c1
sd x3, 0(x2) # store 0x80e56b88147422c1 in memory
fld f31, 0(x2) # load 0x80e56b88147422c1 from memory into f31
fcvt.s.d f3, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf010fa4e40a3f07e # load x3 with value 0xf010fa4e40a3f07e
sd x3, 0(x2) # store 0xf010fa4e40a3f07e in memory
fld f28, 0(x2) # load 0xf010fa4e40a3f07e from memory into f28
fcvt.s.d f0, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71a36261e88bcaed # load x3 with value 0x71a36261e88bcaed
sd x3, 0(x2) # store 0x71a36261e88bcaed in memory
fld f28, 0(x2) # load 0x71a36261e88bcaed from memory into f28
fcvt.s.d f1, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3e1ca5700ea2268 # load x3 with value 0xd3e1ca5700ea2268
sd x3, 0(x2) # store 0xd3e1ca5700ea2268 in memory
fld f15, 0(x2) # load 0xd3e1ca5700ea2268 from memory into f15
fcvt.s.d f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6341c1dde415e03f # load x3 with value 0x6341c1dde415e03f
sd x3, 0(x2) # store 0x6341c1dde415e03f in memory
fld f11, 0(x2) # load 0x6341c1dde415e03f from memory into f11
fcvt.s.d f3, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04d61d134bae3c08 # load x3 with value 0x04d61d134bae3c08
sd x3, 0(x2) # store 0x04d61d134bae3c08 in memory
fld f16, 0(x2) # load 0x04d61d134bae3c08 from memory into f16
fcvt.s.d f4, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x59760933fbf87433 # load x3 with value 0x59760933fbf87433
sd x3, 0(x2) # store 0x59760933fbf87433 in memory
fld f2, 0(x2) # load 0x59760933fbf87433 from memory into f2
fcvt.s.d f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf04d559cc1a76a69 # load x3 with value 0xf04d559cc1a76a69
sd x3, 0(x2) # store 0xf04d559cc1a76a69 in memory
fld f15, 0(x2) # load 0xf04d559cc1a76a69 from memory into f15
fcvt.s.d f6, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a05cc5b396836e9 # load x3 with value 0x3a05cc5b396836e9
sd x3, 0(x2) # store 0x3a05cc5b396836e9 in memory
fld f15, 0(x2) # load 0x3a05cc5b396836e9 from memory into f15
fcvt.s.d f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4bdb70dd030dcd8e # load x3 with value 0x4bdb70dd030dcd8e
sd x3, 0(x2) # store 0x4bdb70dd030dcd8e in memory
fld f7, 0(x2) # load 0x4bdb70dd030dcd8e from memory into f7
fcvt.s.d f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ae5621595e1be52 # load x3 with value 0x1ae5621595e1be52
sd x3, 0(x2) # store 0x1ae5621595e1be52 in memory
fld f12, 0(x2) # load 0x1ae5621595e1be52 from memory into f12
fcvt.s.d f9, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d64154a14905927 # load x3 with value 0x5d64154a14905927
sd x3, 0(x2) # store 0x5d64154a14905927 in memory
fld f16, 0(x2) # load 0x5d64154a14905927 from memory into f16
fcvt.s.d f10, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3ce0f503dfa88e6 # load x3 with value 0xb3ce0f503dfa88e6
sd x3, 0(x2) # store 0xb3ce0f503dfa88e6 in memory
fld f12, 0(x2) # load 0xb3ce0f503dfa88e6 from memory into f12
fcvt.s.d f11, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5892f53c99a3630b # load x3 with value 0x5892f53c99a3630b
sd x3, 0(x2) # store 0x5892f53c99a3630b in memory
fld f30, 0(x2) # load 0x5892f53c99a3630b from memory into f30
fcvt.s.d f12, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a06089cf30c4d1f # load x3 with value 0x3a06089cf30c4d1f
sd x3, 0(x2) # store 0x3a06089cf30c4d1f in memory
fld f10, 0(x2) # load 0x3a06089cf30c4d1f from memory into f10
fcvt.s.d f13, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45ce6951a46e636b # load x3 with value 0x45ce6951a46e636b
sd x3, 0(x2) # store 0x45ce6951a46e636b in memory
fld f28, 0(x2) # load 0x45ce6951a46e636b from memory into f28
fcvt.s.d f14, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf346ccffa5f28220 # load x3 with value 0xf346ccffa5f28220
sd x3, 0(x2) # store 0xf346ccffa5f28220 in memory
fld f5, 0(x2) # load 0xf346ccffa5f28220 from memory into f5
fcvt.s.d f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad27c8ee3514f0ae # load x3 with value 0xad27c8ee3514f0ae
sd x3, 0(x2) # store 0xad27c8ee3514f0ae in memory
fld f17, 0(x2) # load 0xad27c8ee3514f0ae from memory into f17
fcvt.s.d f16, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa32df315af65f30b # load x3 with value 0xa32df315af65f30b
sd x3, 0(x2) # store 0xa32df315af65f30b in memory
fld f28, 0(x2) # load 0xa32df315af65f30b from memory into f28
fcvt.s.d f17, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x428f82e6a505f2c4 # load x3 with value 0x428f82e6a505f2c4
sd x3, 0(x2) # store 0x428f82e6a505f2c4 in memory
fld f20, 0(x2) # load 0x428f82e6a505f2c4 from memory into f20
fcvt.s.d f18, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9297fcabe1d17b0 # load x3 with value 0xb9297fcabe1d17b0
sd x3, 0(x2) # store 0xb9297fcabe1d17b0 in memory
fld f22, 0(x2) # load 0xb9297fcabe1d17b0 from memory into f22
fcvt.s.d f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05f2d68bad2f3e5a # load x3 with value 0x05f2d68bad2f3e5a
sd x3, 0(x2) # store 0x05f2d68bad2f3e5a in memory
fld f9, 0(x2) # load 0x05f2d68bad2f3e5a from memory into f9
fcvt.s.d f20, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85a2ddba2d36e12f # load x3 with value 0x85a2ddba2d36e12f
sd x3, 0(x2) # store 0x85a2ddba2d36e12f in memory
fld f10, 0(x2) # load 0x85a2ddba2d36e12f from memory into f10
fcvt.s.d f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84cf8888f785aa7b # load x3 with value 0x84cf8888f785aa7b
sd x3, 0(x2) # store 0x84cf8888f785aa7b in memory
fld f6, 0(x2) # load 0x84cf8888f785aa7b from memory into f6
fcvt.s.d f22, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb1754fd178b7eb00 # load x3 with value 0xb1754fd178b7eb00
sd x3, 0(x2) # store 0xb1754fd178b7eb00 in memory
fld f8, 0(x2) # load 0xb1754fd178b7eb00 from memory into f8
fcvt.s.d f23, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x453c7a985061fbab # load x3 with value 0x453c7a985061fbab
sd x3, 0(x2) # store 0x453c7a985061fbab in memory
fld f8, 0(x2) # load 0x453c7a985061fbab from memory into f8
fcvt.s.d f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94baae3f8fe4db3a # load x3 with value 0x94baae3f8fe4db3a
sd x3, 0(x2) # store 0x94baae3f8fe4db3a in memory
fld f21, 0(x2) # load 0x94baae3f8fe4db3a from memory into f21
fcvt.s.d f25, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46e62432701cb965 # load x3 with value 0x46e62432701cb965
sd x3, 0(x2) # store 0x46e62432701cb965 in memory
fld f16, 0(x2) # load 0x46e62432701cb965 from memory into f16
fcvt.s.d f26, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73eb1414d34d97a3 # load x3 with value 0x73eb1414d34d97a3
sd x3, 0(x2) # store 0x73eb1414d34d97a3 in memory
fld f23, 0(x2) # load 0x73eb1414d34d97a3 from memory into f23
fcvt.s.d f27, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x519512e7dbf74f56 # load x3 with value 0x519512e7dbf74f56
sd x3, 0(x2) # store 0x519512e7dbf74f56 in memory
fld f22, 0(x2) # load 0x519512e7dbf74f56 from memory into f22
fcvt.s.d f28, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd284e8d3bee2c87e # load x3 with value 0xd284e8d3bee2c87e
sd x3, 0(x2) # store 0xd284e8d3bee2c87e in memory
fld f5, 0(x2) # load 0xd284e8d3bee2c87e from memory into f5
fcvt.s.d f29, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x16319e7960320aac # load x3 with value 0x16319e7960320aac
sd x3, 0(x2) # store 0x16319e7960320aac in memory
fld f18, 0(x2) # load 0x16319e7960320aac from memory into f18
fcvt.s.d f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46b9420386346822 # load x3 with value 0x46b9420386346822
sd x3, 0(x2) # store 0x46b9420386346822 in memory
fld f12, 0(x2) # load 0x46b9420386346822 from memory into f12
fcvt.s.d f31, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fcvt.s.d f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fcvt.s.d f19, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fcvt.s.d f25, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fcvt.s.d f20, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fcvt.s.d f6, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fcvt.s.d f20, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fcvt.s.d f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fcvt.s.d f3, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fcvt.s.d f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fcvt.s.d f21, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fcvt.s.d f28, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fcvt.s.d f1, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fcvt.s.d f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fcvt.s.d f21, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fcvt.s.d f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fcvt.s.d f27, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fcvt.s.d f19, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fcvt.s.d f5, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fcvt.s.d f9, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
fcvt.s.d f14, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
fcvt.s.d f10, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fcvt.s.d f7, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
fcvt.s.d f26, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
fcvt.s.d f21, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fcvt.s.d f26, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
fcvt.s.d f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fcvt.s.d f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fcvt.s.d f5, f3 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fcvt.s.d f18, f20, dyn # perform operation
fcvt.s.d f18, f20, rdn # perform operation
fcvt.s.d f18, f20, rmm # perform operation
fcvt.s.d f18, f20, rne # perform operation
fcvt.s.d f18, f20, rtz # perform operation
fcvt.s.d f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f18, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fcvt.s.d f25, f16, dyn # perform operation
fcvt.s.d f25, f16, rdn # perform operation
fcvt.s.d f25, f16, rmm # perform operation
fcvt.s.d f25, f16, rne # perform operation
fcvt.s.d f25, f16, rtz # perform operation
fcvt.s.d f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f25, f16 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fcvt.s.d f27, f3, dyn # perform operation
fcvt.s.d f27, f3, rdn # perform operation
fcvt.s.d f27, f3, rmm # perform operation
fcvt.s.d f27, f3, rne # perform operation
fcvt.s.d f27, f3, rtz # perform operation
fcvt.s.d f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f27, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fcvt.s.d f28, f17, dyn # perform operation
fcvt.s.d f28, f17, rdn # perform operation
fcvt.s.d f28, f17, rmm # perform operation
fcvt.s.d f28, f17, rne # perform operation
fcvt.s.d f28, f17, rtz # perform operation
fcvt.s.d f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f28, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fcvt.s.d f3, f22, dyn # perform operation
fcvt.s.d f3, f22, rdn # perform operation
fcvt.s.d f3, f22, rmm # perform operation
fcvt.s.d f3, f22, rne # perform operation
fcvt.s.d f3, f22, rtz # perform operation
fcvt.s.d f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f3, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fcvt.s.d f7, f2, dyn # perform operation
fcvt.s.d f7, f2, rdn # perform operation
fcvt.s.d f7, f2, rmm # perform operation
fcvt.s.d f7, f2, rne # perform operation
fcvt.s.d f7, f2, rtz # perform operation
fcvt.s.d f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f7, f2 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fcvt.s.d f3, f12, dyn # perform operation
fcvt.s.d f3, f12, rdn # perform operation
fcvt.s.d f3, f12, rmm # perform operation
fcvt.s.d f3, f12, rne # perform operation
fcvt.s.d f3, f12, rtz # perform operation
fcvt.s.d f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f3, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fcvt.s.d f5, f28, dyn # perform operation
fcvt.s.d f5, f28, rdn # perform operation
fcvt.s.d f5, f28, rmm # perform operation
fcvt.s.d f5, f28, rne # perform operation
fcvt.s.d f5, f28, rtz # perform operation
fcvt.s.d f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f5, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fcvt.s.d f22, f30, dyn # perform operation
fcvt.s.d f22, f30, rdn # perform operation
fcvt.s.d f22, f30, rmm # perform operation
fcvt.s.d f22, f30, rne # perform operation
fcvt.s.d f22, f30, rtz # perform operation
fcvt.s.d f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f22, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fcvt.s.d f11, f23, dyn # perform operation
fcvt.s.d f11, f23, rdn # perform operation
fcvt.s.d f11, f23, rmm # perform operation
fcvt.s.d f11, f23, rne # perform operation
fcvt.s.d f11, f23, rtz # perform operation
fcvt.s.d f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f11, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fcvt.s.d f29, f22, dyn # perform operation
fcvt.s.d f29, f22, rdn # perform operation
fcvt.s.d f29, f22, rmm # perform operation
fcvt.s.d f29, f22, rne # perform operation
fcvt.s.d f29, f22, rtz # perform operation
fcvt.s.d f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f29, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fcvt.s.d f30, f9, dyn # perform operation
fcvt.s.d f30, f9, rdn # perform operation
fcvt.s.d f30, f9, rmm # perform operation
fcvt.s.d f30, f9, rne # perform operation
fcvt.s.d f30, f9, rtz # perform operation
fcvt.s.d f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f30, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fcvt.s.d f2, f13, dyn # perform operation
fcvt.s.d f2, f13, rdn # perform operation
fcvt.s.d f2, f13, rmm # perform operation
fcvt.s.d f2, f13, rne # perform operation
fcvt.s.d f2, f13, rtz # perform operation
fcvt.s.d f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f2, f13 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fcvt.s.d f26, f11, dyn # perform operation
fcvt.s.d f26, f11, rdn # perform operation
fcvt.s.d f26, f11, rmm # perform operation
fcvt.s.d f26, f11, rne # perform operation
fcvt.s.d f26, f11, rtz # perform operation
fcvt.s.d f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f26, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fcvt.s.d f6, f22, dyn # perform operation
fcvt.s.d f6, f22, rdn # perform operation
fcvt.s.d f6, f22, rmm # perform operation
fcvt.s.d f6, f22, rne # perform operation
fcvt.s.d f6, f22, rtz # perform operation
fcvt.s.d f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f6, f22 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fcvt.s.d f15, f23, dyn # perform operation
fcvt.s.d f15, f23, rdn # perform operation
fcvt.s.d f15, f23, rmm # perform operation
fcvt.s.d f15, f23, rne # perform operation
fcvt.s.d f15, f23, rtz # perform operation
fcvt.s.d f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f15, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fcvt.s.d f11, f31, dyn # perform operation
fcvt.s.d f11, f31, rdn # perform operation
fcvt.s.d f11, f31, rmm # perform operation
fcvt.s.d f11, f31, rne # perform operation
fcvt.s.d f11, f31, rtz # perform operation
fcvt.s.d f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f11, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fcvt.s.d f16, f13, dyn # perform operation
fcvt.s.d f16, f13, rdn # perform operation
fcvt.s.d f16, f13, rmm # perform operation
fcvt.s.d f16, f13, rne # perform operation
fcvt.s.d f16, f13, rtz # perform operation
fcvt.s.d f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f16, f13 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fcvt.s.d f15, f17, dyn # perform operation
fcvt.s.d f15, f17, rdn # perform operation
fcvt.s.d f15, f17, rmm # perform operation
fcvt.s.d f15, f17, rne # perform operation
fcvt.s.d f15, f17, rtz # perform operation
fcvt.s.d f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f15, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fcvt.s.d f16, f17, dyn # perform operation
fcvt.s.d f16, f17, rdn # perform operation
fcvt.s.d f16, f17, rmm # perform operation
fcvt.s.d f16, f17, rne # perform operation
fcvt.s.d f16, f17, rtz # perform operation
fcvt.s.d f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f16, f17 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fcvt.s.d f8, f13, dyn # perform operation
fcvt.s.d f8, f13, rdn # perform operation
fcvt.s.d f8, f13, rmm # perform operation
fcvt.s.d f8, f13, rne # perform operation
fcvt.s.d f8, f13, rtz # perform operation
fcvt.s.d f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f8, f13 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fcvt.s.d f30, f20, dyn # perform operation
fcvt.s.d f30, f20, rdn # perform operation
fcvt.s.d f30, f20, rmm # perform operation
fcvt.s.d f30, f20, rne # perform operation
fcvt.s.d f30, f20, rtz # perform operation
fcvt.s.d f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f30, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f21, 0(x2) # load 0xfff8000000000000 from memory into f21
fcvt.s.d f6, f21, dyn # perform operation
fcvt.s.d f6, f21, rdn # perform operation
fcvt.s.d f6, f21, rmm # perform operation
fcvt.s.d f6, f21, rne # perform operation
fcvt.s.d f6, f21, rtz # perform operation
fcvt.s.d f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f6, f21 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fcvt.s.d f6, f28, dyn # perform operation
fcvt.s.d f6, f28, rdn # perform operation
fcvt.s.d f6, f28, rmm # perform operation
fcvt.s.d f6, f28, rne # perform operation
fcvt.s.d f6, f28, rtz # perform operation
fcvt.s.d f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f6, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fcvt.s.d f1, f12, dyn # perform operation
fcvt.s.d f1, f12, rdn # perform operation
fcvt.s.d f1, f12, rmm # perform operation
fcvt.s.d f1, f12, rne # perform operation
fcvt.s.d f1, f12, rtz # perform operation
fcvt.s.d f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f1, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f16, 0(x2) # load 0xfff0000000000001 from memory into f16
fcvt.s.d f13, f16, dyn # perform operation
fcvt.s.d f13, f16, rdn # perform operation
fcvt.s.d f13, f16, rmm # perform operation
fcvt.s.d f13, f16, rne # perform operation
fcvt.s.d f13, f16, rtz # perform operation
fcvt.s.d f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f13, f16 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fcvt.s.d f19, f25, dyn # perform operation
fcvt.s.d f19, f25, rdn # perform operation
fcvt.s.d f19, f25, rmm # perform operation
fcvt.s.d f19, f25, rne # perform operation
fcvt.s.d f19, f25, rtz # perform operation
fcvt.s.d f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f19, f25 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fcvt.s.d f18, f6, dyn # perform operation
fcvt.s.d f18, f6, rdn # perform operation
fcvt.s.d f18, f6, rmm # perform operation
fcvt.s.d f18, f6, rne # perform operation
fcvt.s.d f18, f6, rtz # perform operation
fcvt.s.d f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f18, f6 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab5d62305b04bdb9 # load x3 with value 0xab5d62305b04bdb9
sd x3, 0(x2) # store 0xab5d62305b04bdb9 in memory
fld f0, 0(x2) # load 0xab5d62305b04bdb9 from memory into f0
fcvt.s.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77cbd59fa3020d80 # load x3 with value 0x77cbd59fa3020d80
sd x3, 0(x2) # store 0x77cbd59fa3020d80 in memory
fld f1, 0(x2) # load 0x77cbd59fa3020d80 from memory into f1
fcvt.s.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe48ae247607ac2c5 # load x3 with value 0xe48ae247607ac2c5
sd x3, 0(x2) # store 0xe48ae247607ac2c5 in memory
fld f2, 0(x2) # load 0xe48ae247607ac2c5 from memory into f2
fcvt.s.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf35adae8146abd0a # load x3 with value 0xf35adae8146abd0a
sd x3, 0(x2) # store 0xf35adae8146abd0a in memory
fld f3, 0(x2) # load 0xf35adae8146abd0a from memory into f3
fcvt.s.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x75097f9ad5c328ac # load x3 with value 0x75097f9ad5c328ac
sd x3, 0(x2) # store 0x75097f9ad5c328ac in memory
fld f4, 0(x2) # load 0x75097f9ad5c328ac from memory into f4
fcvt.s.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7a75dd75f649f6c # load x3 with value 0xf7a75dd75f649f6c
sd x3, 0(x2) # store 0xf7a75dd75f649f6c in memory
fld f5, 0(x2) # load 0xf7a75dd75f649f6c from memory into f5
fcvt.s.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83c2dfe4ed13b6c2 # load x3 with value 0x83c2dfe4ed13b6c2
sd x3, 0(x2) # store 0x83c2dfe4ed13b6c2 in memory
fld f6, 0(x2) # load 0x83c2dfe4ed13b6c2 from memory into f6
fcvt.s.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x974ba3379f4ec3bd # load x3 with value 0x974ba3379f4ec3bd
sd x3, 0(x2) # store 0x974ba3379f4ec3bd in memory
fld f7, 0(x2) # load 0x974ba3379f4ec3bd from memory into f7
fcvt.s.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ba7ff86fdc4cccd # load x3 with value 0x8ba7ff86fdc4cccd
sd x3, 0(x2) # store 0x8ba7ff86fdc4cccd in memory
fld f8, 0(x2) # load 0x8ba7ff86fdc4cccd from memory into f8
fcvt.s.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1072b686c6953745 # load x3 with value 0x1072b686c6953745
sd x3, 0(x2) # store 0x1072b686c6953745 in memory
fld f9, 0(x2) # load 0x1072b686c6953745 from memory into f9
fcvt.s.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc978ff00edd77899 # load x3 with value 0xc978ff00edd77899
sd x3, 0(x2) # store 0xc978ff00edd77899 in memory
fld f10, 0(x2) # load 0xc978ff00edd77899 from memory into f10
fcvt.s.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x088e2c633d60806a # load x3 with value 0x088e2c633d60806a
sd x3, 0(x2) # store 0x088e2c633d60806a in memory
fld f11, 0(x2) # load 0x088e2c633d60806a from memory into f11
fcvt.s.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0813170e8bee3d84 # load x3 with value 0x0813170e8bee3d84
sd x3, 0(x2) # store 0x0813170e8bee3d84 in memory
fld f12, 0(x2) # load 0x0813170e8bee3d84 from memory into f12
fcvt.s.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x304054e6e2ab5a59 # load x3 with value 0x304054e6e2ab5a59
sd x3, 0(x2) # store 0x304054e6e2ab5a59 in memory
fld f13, 0(x2) # load 0x304054e6e2ab5a59 from memory into f13
fcvt.s.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42dec7b8710b0d32 # load x3 with value 0x42dec7b8710b0d32
sd x3, 0(x2) # store 0x42dec7b8710b0d32 in memory
fld f14, 0(x2) # load 0x42dec7b8710b0d32 from memory into f14
fcvt.s.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6dfe8a30948680a # load x3 with value 0xf6dfe8a30948680a
sd x3, 0(x2) # store 0xf6dfe8a30948680a in memory
fld f15, 0(x2) # load 0xf6dfe8a30948680a from memory into f15
fcvt.s.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa7ac9e32d90fc10b # load x3 with value 0xa7ac9e32d90fc10b
sd x3, 0(x2) # store 0xa7ac9e32d90fc10b in memory
fld f16, 0(x2) # load 0xa7ac9e32d90fc10b from memory into f16
fcvt.s.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94075a80a0eb3646 # load x3 with value 0x94075a80a0eb3646
sd x3, 0(x2) # store 0x94075a80a0eb3646 in memory
fld f17, 0(x2) # load 0x94075a80a0eb3646 from memory into f17
fcvt.s.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ddff2ebd363033f # load x3 with value 0x8ddff2ebd363033f
sd x3, 0(x2) # store 0x8ddff2ebd363033f in memory
fld f18, 0(x2) # load 0x8ddff2ebd363033f from memory into f18
fcvt.s.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x962a1b3538ab6a6f # load x3 with value 0x962a1b3538ab6a6f
sd x3, 0(x2) # store 0x962a1b3538ab6a6f in memory
fld f19, 0(x2) # load 0x962a1b3538ab6a6f from memory into f19
fcvt.s.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3421f82905dfd93 # load x3 with value 0xd3421f82905dfd93
sd x3, 0(x2) # store 0xd3421f82905dfd93 in memory
fld f20, 0(x2) # load 0xd3421f82905dfd93 from memory into f20
fcvt.s.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7e902c3da37f985 # load x3 with value 0xb7e902c3da37f985
sd x3, 0(x2) # store 0xb7e902c3da37f985 in memory
fld f21, 0(x2) # load 0xb7e902c3da37f985 from memory into f21
fcvt.s.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72f408543863b386 # load x3 with value 0x72f408543863b386
sd x3, 0(x2) # store 0x72f408543863b386 in memory
fld f22, 0(x2) # load 0x72f408543863b386 from memory into f22
fcvt.s.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xafc004c9b66ad00e # load x3 with value 0xafc004c9b66ad00e
sd x3, 0(x2) # store 0xafc004c9b66ad00e in memory
fld f23, 0(x2) # load 0xafc004c9b66ad00e from memory into f23
fcvt.s.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e82fe6718570d18 # load x3 with value 0x8e82fe6718570d18
sd x3, 0(x2) # store 0x8e82fe6718570d18 in memory
fld f24, 0(x2) # load 0x8e82fe6718570d18 from memory into f24
fcvt.s.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x02ae03f8339d0554 # load x3 with value 0x02ae03f8339d0554
sd x3, 0(x2) # store 0x02ae03f8339d0554 in memory
fld f25, 0(x2) # load 0x02ae03f8339d0554 from memory into f25
fcvt.s.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x217e8b5a2ab6e285 # load x3 with value 0x217e8b5a2ab6e285
sd x3, 0(x2) # store 0x217e8b5a2ab6e285 in memory
fld f26, 0(x2) # load 0x217e8b5a2ab6e285 from memory into f26
fcvt.s.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xab404cb4098dd64b # load x3 with value 0xab404cb4098dd64b
sd x3, 0(x2) # store 0xab404cb4098dd64b in memory
fld f27, 0(x2) # load 0xab404cb4098dd64b from memory into f27
fcvt.s.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23e216a75b868577 # load x3 with value 0x23e216a75b868577
sd x3, 0(x2) # store 0x23e216a75b868577 in memory
fld f28, 0(x2) # load 0x23e216a75b868577 from memory into f28
fcvt.s.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf9092ea9748cb311 # load x3 with value 0xf9092ea9748cb311
sd x3, 0(x2) # store 0xf9092ea9748cb311 in memory
fld f29, 0(x2) # load 0xf9092ea9748cb311 from memory into f29
fcvt.s.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3c98065e7bae0cf6 # load x3 with value 0x3c98065e7bae0cf6
sd x3, 0(x2) # store 0x3c98065e7bae0cf6 in memory
fld f30, 0(x2) # load 0x3c98065e7bae0cf6 from memory into f30
fcvt.s.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfacb2b301e4d9075 # load x3 with value 0xfacb2b301e4d9075
sd x3, 0(x2) # store 0xfacb2b301e4d9075 in memory
fld f31, 0(x2) # load 0xfacb2b301e4d9075 from memory into f31
fcvt.s.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa7f1e82a84264f09 # load x3 with value 0xa7f1e82a84264f09
sd x3, 0(x2) # store 0xa7f1e82a84264f09 in memory
fld f1, 0(x2) # load 0xa7f1e82a84264f09 from memory into f1
fcvt.s.d f22, f1, dyn # perform operation
fcvt.s.d f22, f1, rdn # perform operation
fcvt.s.d f22, f1, rmm # perform operation
fcvt.s.d f22, f1, rne # perform operation
fcvt.s.d f22, f1, rtz # perform operation
fcvt.s.d f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.d f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.d f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.d f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.d f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.d f22, f1 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x24f3b55b26b40a43 # load x3 with value 0x24f3b55b26b40a43
sd x3, 0(x2) # store 0x24f3b55b26b40a43 in memory
fld f11, 0(x2) # load 0x24f3b55b26b40a43 from memory into f11
fcvt.s.d f14, f11 # perform operation second time to make sure flags don't change

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
