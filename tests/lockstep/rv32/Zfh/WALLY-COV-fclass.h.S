///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fclass.h.S
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
li x3, 0x25c0b2f4 # load x3 with value 0x25c0b2f4
sw x3, 0(x2) # store 0x25c0b2f4 in memory
flh f25, 0(x2) # load 0x25c0b2f4 from memory into f25
fclass.h x0, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xfe9c031b # load x3 with value 0xfe9c031b
sw x3, 0(x2) # store 0xfe9c031b in memory
flh f15, 0(x2) # load 0xfe9c031b from memory into f15
fclass.h x1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xfb641efe # load x3 with value 0xfb641efe
sw x3, 0(x2) # store 0xfb641efe in memory
flh f22, 0(x2) # load 0xfb641efe from memory into f22
fclass.h x2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xefa98f20 # load x3 with value 0xefa98f20
sw x3, 0(x2) # store 0xefa98f20 in memory
flh f11, 0(x2) # load 0xefa98f20 from memory into f11
fclass.h x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb3cd56f3 # load x3 with value 0xb3cd56f3
sw x3, 0(x2) # store 0xb3cd56f3 in memory
flh f15, 0(x2) # load 0xb3cd56f3 from memory into f15
fclass.h x4, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x54234057 # load x3 with value 0x54234057
sw x3, 0(x2) # store 0x54234057 in memory
flh f19, 0(x2) # load 0x54234057 from memory into f19
fclass.h x5, f19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x21e8e60f # load x3 with value 0x21e8e60f
sw x3, 0(x2) # store 0x21e8e60f in memory
flh f17, 0(x2) # load 0x21e8e60f from memory into f17
fclass.h x6, f17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0f3a17f0 # load x3 with value 0x0f3a17f0
sw x3, 0(x2) # store 0x0f3a17f0 in memory
flh f14, 0(x2) # load 0x0f3a17f0 from memory into f14
fclass.h x7, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x2fe906c2 # load x3 with value 0x2fe906c2
sw x3, 0(x2) # store 0x2fe906c2 in memory
flh f24, 0(x2) # load 0x2fe906c2 from memory into f24
fclass.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x45c3158d # load x3 with value 0x45c3158d
sw x3, 0(x2) # store 0x45c3158d in memory
flh f29, 0(x2) # load 0x45c3158d from memory into f29
fclass.h x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xdcdeb15b # load x3 with value 0xdcdeb15b
sw x3, 0(x2) # store 0xdcdeb15b in memory
flh f20, 0(x2) # load 0xdcdeb15b from memory into f20
fclass.h x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x52aa321c # load x3 with value 0x52aa321c
sw x3, 0(x2) # store 0x52aa321c in memory
flh f16, 0(x2) # load 0x52aa321c from memory into f16
fclass.h x11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xb22316d4 # load x3 with value 0xb22316d4
sw x3, 0(x2) # store 0xb22316d4 in memory
flh f10, 0(x2) # load 0xb22316d4 from memory into f10
fclass.h x12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x538ce65f # load x3 with value 0x538ce65f
sw x3, 0(x2) # store 0x538ce65f in memory
flh f20, 0(x2) # load 0x538ce65f from memory into f20
fclass.h x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x4d119be9 # load x3 with value 0x4d119be9
sw x3, 0(x2) # store 0x4d119be9 in memory
flh f1, 0(x2) # load 0x4d119be9 from memory into f1
fclass.h x14, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x51904fd5 # load x3 with value 0x51904fd5
sw x3, 0(x2) # store 0x51904fd5 in memory
flh f29, 0(x2) # load 0x51904fd5 from memory into f29
fclass.h x15, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xb26c5454 # load x3 with value 0xb26c5454
sw x3, 0(x2) # store 0xb26c5454 in memory
flh f13, 0(x2) # load 0xb26c5454 from memory into f13
fclass.h x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x12634c34 # load x3 with value 0x12634c34
sw x3, 0(x2) # store 0x12634c34 in memory
flh f11, 0(x2) # load 0x12634c34 from memory into f11
fclass.h x17, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xd4c7ad07 # load x3 with value 0xd4c7ad07
sw x3, 0(x2) # store 0xd4c7ad07 in memory
flh f13, 0(x2) # load 0xd4c7ad07 from memory into f13
fclass.h x18, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x9a5217f1 # load x3 with value 0x9a5217f1
sw x3, 0(x2) # store 0x9a5217f1 in memory
flh f7, 0(x2) # load 0x9a5217f1 from memory into f7
fclass.h x19, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xde01e7e9 # load x3 with value 0xde01e7e9
sw x3, 0(x2) # store 0xde01e7e9 in memory
flh f18, 0(x2) # load 0xde01e7e9 from memory into f18
fclass.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x22469d9f # load x3 with value 0x22469d9f
sw x3, 0(x2) # store 0x22469d9f in memory
flh f11, 0(x2) # load 0x22469d9f from memory into f11
fclass.h x21, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x7a559c70 # load x3 with value 0x7a559c70
sw x3, 0(x2) # store 0x7a559c70 in memory
flh f26, 0(x2) # load 0x7a559c70 from memory into f26
fclass.h x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xbe0e574e # load x3 with value 0xbe0e574e
sw x3, 0(x2) # store 0xbe0e574e in memory
flh f5, 0(x2) # load 0xbe0e574e from memory into f5
fclass.h x23, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x6a6c8be4 # load x3 with value 0x6a6c8be4
sw x3, 0(x2) # store 0x6a6c8be4 in memory
flh f13, 0(x2) # load 0x6a6c8be4 from memory into f13
fclass.h x24, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x697b18db # load x3 with value 0x697b18db
sw x3, 0(x2) # store 0x697b18db in memory
flh f19, 0(x2) # load 0x697b18db from memory into f19
fclass.h x25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x643bd47b # load x3 with value 0x643bd47b
sw x3, 0(x2) # store 0x643bd47b in memory
flh f7, 0(x2) # load 0x643bd47b from memory into f7
fclass.h x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x6e07eba8 # load x3 with value 0x6e07eba8
sw x3, 0(x2) # store 0x6e07eba8 in memory
flh f17, 0(x2) # load 0x6e07eba8 from memory into f17
fclass.h x27, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x8d52335e # load x3 with value 0x8d52335e
sw x3, 0(x2) # store 0x8d52335e in memory
flh f16, 0(x2) # load 0x8d52335e from memory into f16
fclass.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x84e8eaab # load x3 with value 0x84e8eaab
sw x3, 0(x2) # store 0x84e8eaab in memory
flh f23, 0(x2) # load 0x84e8eaab from memory into f23
fclass.h x29, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x0a870f60 # load x3 with value 0x0a870f60
sw x3, 0(x2) # store 0x0a870f60 in memory
flh f9, 0(x2) # load 0x0a870f60 from memory into f9
fclass.h x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xc09ed873 # load x3 with value 0xc09ed873
sw x3, 0(x2) # store 0xc09ed873 in memory
flh f12, 0(x2) # load 0xc09ed873 from memory into f12
fclass.h x31, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x9, x11 # perform first operation
fclass.h x26, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x24, x22 # perform first operation
fclass.h x20, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x20 # perform first operation
fclass.h x1, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f11, f9, f3 # perform first operation
fclass.h x3, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x19, x9 # perform first operation
fclass.h x3, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x27, x14 # perform first operation
fclass.h x11, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x29, x8 # perform first operation
fclass.h x22, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x18, x11 # perform first operation
fclass.h x22, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x1, x6 # perform first operation
fclass.h x15, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x11, x9 # perform first operation
fclass.h x30, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x15, x22 # perform first operation
fclass.h x3, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x20, x3 # perform first operation
fclass.h x23, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x22, x12 # perform first operation
fclass.h x22, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x3, x25 # perform first operation
fclass.h x25, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x18, x30 # perform first operation
fclass.h x23, f17 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x66a33183 # load x3 with value 0x66a33183
sw x3, 0(x2) # store 0x66a33183 in memory
flh f0, 0(x2) # load 0x66a33183 from memory into f0
fclass.h x12, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x0c1d2bcc # load x3 with value 0x0c1d2bcc
sw x3, 0(x2) # store 0x0c1d2bcc in memory
flh f1, 0(x2) # load 0x0c1d2bcc from memory into f1
fclass.h x21, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x35fc018a # load x3 with value 0x35fc018a
sw x3, 0(x2) # store 0x35fc018a in memory
flh f2, 0(x2) # load 0x35fc018a from memory into f2
fclass.h x1, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x6d8bf582 # load x3 with value 0x6d8bf582
sw x3, 0(x2) # store 0x6d8bf582 in memory
flh f3, 0(x2) # load 0x6d8bf582 from memory into f3
fclass.h x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe63f6004 # load x3 with value 0xe63f6004
sw x3, 0(x2) # store 0xe63f6004 in memory
flh f4, 0(x2) # load 0xe63f6004 from memory into f4
fclass.h x18, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5120de91 # load x3 with value 0x5120de91
sw x3, 0(x2) # store 0x5120de91 in memory
flh f5, 0(x2) # load 0x5120de91 from memory into f5
fclass.h x21, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x27f3b93f # load x3 with value 0x27f3b93f
sw x3, 0(x2) # store 0x27f3b93f in memory
flh f6, 0(x2) # load 0x27f3b93f from memory into f6
fclass.h x22, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x53bab0af # load x3 with value 0x53bab0af
sw x3, 0(x2) # store 0x53bab0af in memory
flh f7, 0(x2) # load 0x53bab0af from memory into f7
fclass.h x24, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x1fbf60ec # load x3 with value 0x1fbf60ec
sw x3, 0(x2) # store 0x1fbf60ec in memory
flh f8, 0(x2) # load 0x1fbf60ec from memory into f8
fclass.h x9, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x39d6d4a9 # load x3 with value 0x39d6d4a9
sw x3, 0(x2) # store 0x39d6d4a9 in memory
flh f9, 0(x2) # load 0x39d6d4a9 from memory into f9
fclass.h x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xcd099a96 # load x3 with value 0xcd099a96
sw x3, 0(x2) # store 0xcd099a96 in memory
flh f10, 0(x2) # load 0xcd099a96 from memory into f10
fclass.h x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x64e60b48 # load x3 with value 0x64e60b48
sw x3, 0(x2) # store 0x64e60b48 in memory
flh f11, 0(x2) # load 0x64e60b48 from memory into f11
fclass.h x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x01464b4e # load x3 with value 0x01464b4e
sw x3, 0(x2) # store 0x01464b4e in memory
flh f12, 0(x2) # load 0x01464b4e from memory into f12
fclass.h x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x2c82c782 # load x3 with value 0x2c82c782
sw x3, 0(x2) # store 0x2c82c782 in memory
flh f13, 0(x2) # load 0x2c82c782 from memory into f13
fclass.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x51176a4d # load x3 with value 0x51176a4d
sw x3, 0(x2) # store 0x51176a4d in memory
flh f14, 0(x2) # load 0x51176a4d from memory into f14
fclass.h x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9115d984 # load x3 with value 0x9115d984
sw x3, 0(x2) # store 0x9115d984 in memory
flh f15, 0(x2) # load 0x9115d984 from memory into f15
fclass.h x7, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x4ee0d690 # load x3 with value 0x4ee0d690
sw x3, 0(x2) # store 0x4ee0d690 in memory
flh f16, 0(x2) # load 0x4ee0d690 from memory into f16
fclass.h x5, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xc636abc7 # load x3 with value 0xc636abc7
sw x3, 0(x2) # store 0xc636abc7 in memory
flh f17, 0(x2) # load 0xc636abc7 from memory into f17
fclass.h x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x96a10c8e # load x3 with value 0x96a10c8e
sw x3, 0(x2) # store 0x96a10c8e in memory
flh f18, 0(x2) # load 0x96a10c8e from memory into f18
fclass.h x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xb3ab4a6c # load x3 with value 0xb3ab4a6c
sw x3, 0(x2) # store 0xb3ab4a6c in memory
flh f19, 0(x2) # load 0xb3ab4a6c from memory into f19
fclass.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xa6a4f3db # load x3 with value 0xa6a4f3db
sw x3, 0(x2) # store 0xa6a4f3db in memory
flh f20, 0(x2) # load 0xa6a4f3db from memory into f20
fclass.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x613be397 # load x3 with value 0x613be397
sw x3, 0(x2) # store 0x613be397 in memory
flh f21, 0(x2) # load 0x613be397 from memory into f21
fclass.h x26, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x9b583e38 # load x3 with value 0x9b583e38
sw x3, 0(x2) # store 0x9b583e38 in memory
flh f22, 0(x2) # load 0x9b583e38 from memory into f22
fclass.h x16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xf6a40a79 # load x3 with value 0xf6a40a79
sw x3, 0(x2) # store 0xf6a40a79 in memory
flh f23, 0(x2) # load 0xf6a40a79 from memory into f23
fclass.h x23, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xb819e73f # load x3 with value 0xb819e73f
sw x3, 0(x2) # store 0xb819e73f in memory
flh f24, 0(x2) # load 0xb819e73f from memory into f24
fclass.h x14, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x1dea9c53 # load x3 with value 0x1dea9c53
sw x3, 0(x2) # store 0x1dea9c53 in memory
flh f25, 0(x2) # load 0x1dea9c53 from memory into f25
fclass.h x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x26760dac # load x3 with value 0x26760dac
sw x3, 0(x2) # store 0x26760dac in memory
flh f26, 0(x2) # load 0x26760dac from memory into f26
fclass.h x27, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x5f367921 # load x3 with value 0x5f367921
sw x3, 0(x2) # store 0x5f367921 in memory
flh f27, 0(x2) # load 0x5f367921 from memory into f27
fclass.h x13, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x09363f9e # load x3 with value 0x09363f9e
sw x3, 0(x2) # store 0x09363f9e in memory
flh f28, 0(x2) # load 0x09363f9e from memory into f28
fclass.h x20, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x47f3cffa # load x3 with value 0x47f3cffa
sw x3, 0(x2) # store 0x47f3cffa in memory
flh f29, 0(x2) # load 0x47f3cffa from memory into f29
fclass.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x6f2100b0 # load x3 with value 0x6f2100b0
sw x3, 0(x2) # store 0x6f2100b0 in memory
flh f30, 0(x2) # load 0x6f2100b0 from memory into f30
fclass.h x13, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x673353d9 # load x3 with value 0x673353d9
sw x3, 0(x2) # store 0x673353d9 in memory
flh f31, 0(x2) # load 0x673353d9 from memory into f31
fclass.h x1, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fclass.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fclass.h x22, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fclass.h x13, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fclass.h x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fclass.h x2, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fclass.h x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fclass.h x31, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fclass.h x11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fclass.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fclass.h x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fclass.h x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fclass.h x21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fclass.h x26, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fclass.h x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fclass.h x20, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fclass.h x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fclass.h x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fclass.h x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fclass.h x7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fclass.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fclass.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fclass.h x17, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fclass.h x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fclass.h x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fclass.h x20, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fclass.h x26, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fclass.h x25, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fclass.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 364)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fclass.h x25, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 368)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f8, 0(x2) # load 0xfffe8000 from memory into f8
fclass.h x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 372)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f27, 0(x2) # load 0x7fff3c00 from memory into f27
fclass.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f23, 0(x2) # load 0xbeefbc00 from memory into f23
fclass.h x24, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 380)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f2, 0(x2) # load 0xfeff0400 from memory into f2
fclass.h x29, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f25, 0(x2) # load 0x0fff8400 from memory into f25
fclass.h x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 388)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f23, 0(x2) # load 0xefff7bff from memory into f23
fclass.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f10, 0(x2) # load 0xc0defbff from memory into f10
fclass.h x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f30, 0(x2) # load 0x4f1a7c00 from memory into f30
fclass.h x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f3, 0(x2) # load 0x0ffffc00 from memory into f3
fclass.h x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f29, 0(x2) # load 0xffef7e00 from memory into f29
fclass.h x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f8, 0(x2) # load 0xfeef7fff from memory into f8
fclass.h x1, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 412)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f27, 0(x2) # load 0xa1b27c01 from memory into f27
fclass.h x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f25, 0(x2) # load 0x4fd77dff from memory into f25
fclass.h x7, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 420)

.EQU SIGSIZE,424


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
