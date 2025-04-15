///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fsqrt.s.S
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
add x6, x21, x26 # perform first operation
fsqrt.s f23, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x6, x13 # perform first operation
fsqrt.s f3, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x24, x3 # perform first operation
fsqrt.s f22, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f14, f19, f31 # perform first operation
fsqrt.s f19, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x28, x7 # perform first operation
fsqrt.s f18, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x1, x16 # perform first operation
fsqrt.s f22, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f15, f25, f16 # perform first operation
fsqrt.s f15, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f22, f16 # perform first operation
fsqrt.s f20, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f13, f14 # perform first operation
fsqrt.s f7, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f22, f19 # perform first operation
fsqrt.s f22, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f18, f28 # perform first operation
fsqrt.s f28, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f8, f23, f16 # perform first operation
fsqrt.s f14, f7 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ff7d0c8 # load x3 with value 0x0ff7d0c8
sw x3, 0(x2) # store 0x0ff7d0c8 in memory
flw f0, 0(x2) # load 0x0ff7d0c8 from memory into f0
fsqrt.s f21, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd708e7e3 # load x3 with value 0xd708e7e3
sw x3, 0(x2) # store 0xd708e7e3 in memory
flw f1, 0(x2) # load 0xd708e7e3 from memory into f1
fsqrt.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d4c1afb # load x3 with value 0x7d4c1afb
sw x3, 0(x2) # store 0x7d4c1afb in memory
flw f2, 0(x2) # load 0x7d4c1afb from memory into f2
fsqrt.s f11, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa21d28a # load x3 with value 0xaa21d28a
sw x3, 0(x2) # store 0xaa21d28a in memory
flw f3, 0(x2) # load 0xaa21d28a from memory into f3
fsqrt.s f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x511d6915 # load x3 with value 0x511d6915
sw x3, 0(x2) # store 0x511d6915 in memory
flw f4, 0(x2) # load 0x511d6915 from memory into f4
fsqrt.s f8, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb3821a4 # load x3 with value 0xdb3821a4
sw x3, 0(x2) # store 0xdb3821a4 in memory
flw f5, 0(x2) # load 0xdb3821a4 from memory into f5
fsqrt.s f21, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5b4d6303 # load x3 with value 0x5b4d6303
sw x3, 0(x2) # store 0x5b4d6303 in memory
flw f6, 0(x2) # load 0x5b4d6303 from memory into f6
fsqrt.s f4, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x57ccc1d2 # load x3 with value 0x57ccc1d2
sw x3, 0(x2) # store 0x57ccc1d2 in memory
flw f7, 0(x2) # load 0x57ccc1d2 from memory into f7
fsqrt.s f15, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x18a1d14f # load x3 with value 0x18a1d14f
sw x3, 0(x2) # store 0x18a1d14f in memory
flw f8, 0(x2) # load 0x18a1d14f from memory into f8
fsqrt.s f14, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x668ff049 # load x3 with value 0x668ff049
sw x3, 0(x2) # store 0x668ff049 in memory
flw f9, 0(x2) # load 0x668ff049 from memory into f9
fsqrt.s f26, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe96085f9 # load x3 with value 0xe96085f9
sw x3, 0(x2) # store 0xe96085f9 in memory
flw f10, 0(x2) # load 0xe96085f9 from memory into f10
fsqrt.s f22, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x117877c3 # load x3 with value 0x117877c3
sw x3, 0(x2) # store 0x117877c3 in memory
flw f11, 0(x2) # load 0x117877c3 from memory into f11
fsqrt.s f2, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67d0287b # load x3 with value 0x67d0287b
sw x3, 0(x2) # store 0x67d0287b in memory
flw f12, 0(x2) # load 0x67d0287b from memory into f12
fsqrt.s f10, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x15930b6d # load x3 with value 0x15930b6d
sw x3, 0(x2) # store 0x15930b6d in memory
flw f13, 0(x2) # load 0x15930b6d from memory into f13
fsqrt.s f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26ca020a # load x3 with value 0x26ca020a
sw x3, 0(x2) # store 0x26ca020a in memory
flw f14, 0(x2) # load 0x26ca020a from memory into f14
fsqrt.s f6, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32181c15 # load x3 with value 0x32181c15
sw x3, 0(x2) # store 0x32181c15 in memory
flw f15, 0(x2) # load 0x32181c15 from memory into f15
fsqrt.s f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5340672f # load x3 with value 0x5340672f
sw x3, 0(x2) # store 0x5340672f in memory
flw f16, 0(x2) # load 0x5340672f from memory into f16
fsqrt.s f5, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x744a05bc # load x3 with value 0x744a05bc
sw x3, 0(x2) # store 0x744a05bc in memory
flw f17, 0(x2) # load 0x744a05bc from memory into f17
fsqrt.s f9, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58222e5a # load x3 with value 0x58222e5a
sw x3, 0(x2) # store 0x58222e5a in memory
flw f18, 0(x2) # load 0x58222e5a from memory into f18
fsqrt.s f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d11667b # load x3 with value 0x4d11667b
sw x3, 0(x2) # store 0x4d11667b in memory
flw f19, 0(x2) # load 0x4d11667b from memory into f19
fsqrt.s f21, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xba68ba1e # load x3 with value 0xba68ba1e
sw x3, 0(x2) # store 0xba68ba1e in memory
flw f20, 0(x2) # load 0xba68ba1e from memory into f20
fsqrt.s f24, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bbe539f # load x3 with value 0x7bbe539f
sw x3, 0(x2) # store 0x7bbe539f in memory
flw f21, 0(x2) # load 0x7bbe539f from memory into f21
fsqrt.s f5, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x315b7e2d # load x3 with value 0x315b7e2d
sw x3, 0(x2) # store 0x315b7e2d in memory
flw f22, 0(x2) # load 0x315b7e2d from memory into f22
fsqrt.s f30, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2aeda0c7 # load x3 with value 0x2aeda0c7
sw x3, 0(x2) # store 0x2aeda0c7 in memory
flw f23, 0(x2) # load 0x2aeda0c7 from memory into f23
fsqrt.s f6, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1ce5d93 # load x3 with value 0xe1ce5d93
sw x3, 0(x2) # store 0xe1ce5d93 in memory
flw f24, 0(x2) # load 0xe1ce5d93 from memory into f24
fsqrt.s f30, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1a81ef7 # load x3 with value 0xa1a81ef7
sw x3, 0(x2) # store 0xa1a81ef7 in memory
flw f25, 0(x2) # load 0xa1a81ef7 from memory into f25
fsqrt.s f22, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38230aac # load x3 with value 0x38230aac
sw x3, 0(x2) # store 0x38230aac in memory
flw f26, 0(x2) # load 0x38230aac from memory into f26
fsqrt.s f3, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a6c9e31 # load x3 with value 0x7a6c9e31
sw x3, 0(x2) # store 0x7a6c9e31 in memory
flw f27, 0(x2) # load 0x7a6c9e31 from memory into f27
fsqrt.s f22, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5ca0a4bc # load x3 with value 0x5ca0a4bc
sw x3, 0(x2) # store 0x5ca0a4bc in memory
flw f28, 0(x2) # load 0x5ca0a4bc from memory into f28
fsqrt.s f7, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0887b81e # load x3 with value 0x0887b81e
sw x3, 0(x2) # store 0x0887b81e in memory
flw f29, 0(x2) # load 0x0887b81e from memory into f29
fsqrt.s f1, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a5be090 # load x3 with value 0x3a5be090
sw x3, 0(x2) # store 0x3a5be090 in memory
flw f30, 0(x2) # load 0x3a5be090 from memory into f30
fsqrt.s f23, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4851d7da # load x3 with value 0x4851d7da
sw x3, 0(x2) # store 0x4851d7da in memory
flw f31, 0(x2) # load 0x4851d7da from memory into f31
fsqrt.s f20, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f465013 # load x3 with value 0x9f465013
sw x3, 0(x2) # store 0x9f465013 in memory
flw f14, 0(x2) # load 0x9f465013 from memory into f14
fsqrt.s f0, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeedc08e # load x3 with value 0xbeedc08e
sw x3, 0(x2) # store 0xbeedc08e in memory
flw f18, 0(x2) # load 0xbeedc08e from memory into f18
fsqrt.s f1, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf72a85ab # load x3 with value 0xf72a85ab
sw x3, 0(x2) # store 0xf72a85ab in memory
flw f21, 0(x2) # load 0xf72a85ab from memory into f21
fsqrt.s f2, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xda6c31f0 # load x3 with value 0xda6c31f0
sw x3, 0(x2) # store 0xda6c31f0 in memory
flw f3, 0(x2) # load 0xda6c31f0 from memory into f3
fsqrt.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9a5a9945 # load x3 with value 0x9a5a9945
sw x3, 0(x2) # store 0x9a5a9945 in memory
flw f22, 0(x2) # load 0x9a5a9945 from memory into f22
fsqrt.s f4, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63eeb510 # load x3 with value 0x63eeb510
sw x3, 0(x2) # store 0x63eeb510 in memory
flw f18, 0(x2) # load 0x63eeb510 from memory into f18
fsqrt.s f5, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2205ff8 # load x3 with value 0xa2205ff8
sw x3, 0(x2) # store 0xa2205ff8 in memory
flw f21, 0(x2) # load 0xa2205ff8 from memory into f21
fsqrt.s f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef95c90e # load x3 with value 0xef95c90e
sw x3, 0(x2) # store 0xef95c90e in memory
flw f17, 0(x2) # load 0xef95c90e from memory into f17
fsqrt.s f7, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x701deeb8 # load x3 with value 0x701deeb8
sw x3, 0(x2) # store 0x701deeb8 in memory
flw f18, 0(x2) # load 0x701deeb8 from memory into f18
fsqrt.s f8, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e349ad9 # load x3 with value 0x8e349ad9
sw x3, 0(x2) # store 0x8e349ad9 in memory
flw f18, 0(x2) # load 0x8e349ad9 from memory into f18
fsqrt.s f9, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcd22fca # load x3 with value 0xbcd22fca
sw x3, 0(x2) # store 0xbcd22fca in memory
flw f10, 0(x2) # load 0xbcd22fca from memory into f10
fsqrt.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd378830b # load x3 with value 0xd378830b
sw x3, 0(x2) # store 0xd378830b in memory
flw f13, 0(x2) # load 0xd378830b from memory into f13
fsqrt.s f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcfe72b36 # load x3 with value 0xcfe72b36
sw x3, 0(x2) # store 0xcfe72b36 in memory
flw f21, 0(x2) # load 0xcfe72b36 from memory into f21
fsqrt.s f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42c8062a # load x3 with value 0x42c8062a
sw x3, 0(x2) # store 0x42c8062a in memory
flw f1, 0(x2) # load 0x42c8062a from memory into f1
fsqrt.s f13, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x53e2a66f # load x3 with value 0x53e2a66f
sw x3, 0(x2) # store 0x53e2a66f in memory
flw f12, 0(x2) # load 0x53e2a66f from memory into f12
fsqrt.s f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdf93d87c # load x3 with value 0xdf93d87c
sw x3, 0(x2) # store 0xdf93d87c in memory
flw f5, 0(x2) # load 0xdf93d87c from memory into f5
fsqrt.s f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3d8f9ed0 # load x3 with value 0x3d8f9ed0
sw x3, 0(x2) # store 0x3d8f9ed0 in memory
flw f27, 0(x2) # load 0x3d8f9ed0 from memory into f27
fsqrt.s f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x833f9ffd # load x3 with value 0x833f9ffd
sw x3, 0(x2) # store 0x833f9ffd in memory
flw f21, 0(x2) # load 0x833f9ffd from memory into f21
fsqrt.s f17, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb250537f # load x3 with value 0xb250537f
sw x3, 0(x2) # store 0xb250537f in memory
flw f8, 0(x2) # load 0xb250537f from memory into f8
fsqrt.s f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe02f30e3 # load x3 with value 0xe02f30e3
sw x3, 0(x2) # store 0xe02f30e3 in memory
flw f28, 0(x2) # load 0xe02f30e3 from memory into f28
fsqrt.s f19, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcda3cb0d # load x3 with value 0xcda3cb0d
sw x3, 0(x2) # store 0xcda3cb0d in memory
flw f9, 0(x2) # load 0xcda3cb0d from memory into f9
fsqrt.s f20, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0cebebb # load x3 with value 0xb0cebebb
sw x3, 0(x2) # store 0xb0cebebb in memory
flw f26, 0(x2) # load 0xb0cebebb from memory into f26
fsqrt.s f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8abec7fd # load x3 with value 0x8abec7fd
sw x3, 0(x2) # store 0x8abec7fd in memory
flw f13, 0(x2) # load 0x8abec7fd from memory into f13
fsqrt.s f22, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9d5dc4e # load x3 with value 0xd9d5dc4e
sw x3, 0(x2) # store 0xd9d5dc4e in memory
flw f21, 0(x2) # load 0xd9d5dc4e from memory into f21
fsqrt.s f23, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd2408816 # load x3 with value 0xd2408816
sw x3, 0(x2) # store 0xd2408816 in memory
flw f3, 0(x2) # load 0xd2408816 from memory into f3
fsqrt.s f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x06c62169 # load x3 with value 0x06c62169
sw x3, 0(x2) # store 0x06c62169 in memory
flw f20, 0(x2) # load 0x06c62169 from memory into f20
fsqrt.s f25, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb3fa2c3 # load x3 with value 0xdb3fa2c3
sw x3, 0(x2) # store 0xdb3fa2c3 in memory
flw f30, 0(x2) # load 0xdb3fa2c3 from memory into f30
fsqrt.s f26, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92d4533c # load x3 with value 0x92d4533c
sw x3, 0(x2) # store 0x92d4533c in memory
flw f12, 0(x2) # load 0x92d4533c from memory into f12
fsqrt.s f27, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc9a2ae9f # load x3 with value 0xc9a2ae9f
sw x3, 0(x2) # store 0xc9a2ae9f in memory
flw f16, 0(x2) # load 0xc9a2ae9f from memory into f16
fsqrt.s f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47702dcf # load x3 with value 0x47702dcf
sw x3, 0(x2) # store 0x47702dcf in memory
flw f16, 0(x2) # load 0x47702dcf from memory into f16
fsqrt.s f29, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x703b7b16 # load x3 with value 0x703b7b16
sw x3, 0(x2) # store 0x703b7b16 in memory
flw f12, 0(x2) # load 0x703b7b16 from memory into f12
fsqrt.s f30, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x486dae6a # load x3 with value 0x486dae6a
sw x3, 0(x2) # store 0x486dae6a in memory
flw f20, 0(x2) # load 0x486dae6a from memory into f20
fsqrt.s f31, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fsqrt.s f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fsqrt.s f18, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fsqrt.s f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fsqrt.s f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fsqrt.s f29, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsqrt.s f27, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fsqrt.s f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsqrt.s f10, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fsqrt.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsqrt.s f6, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsqrt.s f8, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fsqrt.s f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsqrt.s f7, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fsqrt.s f25, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsqrt.s f30, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fsqrt.s f18, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fsqrt.s f3, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fsqrt.s f27, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsqrt.s f3, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fsqrt.s f31, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fsqrt.s f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fsqrt.s f12, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fsqrt.s f5, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsqrt.s f27, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fsqrt.s f19, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fsqrt.s f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fsqrt.s f7, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsqrt.s f3, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x812719fb # load x3 with value 0x812719fb
sw x3, 0(x2) # store 0x812719fb in memory
flw f0, 0(x2) # load 0x812719fb from memory into f0
fsqrt.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04ccf6d9 # load x3 with value 0x04ccf6d9
sw x3, 0(x2) # store 0x04ccf6d9 in memory
flw f1, 0(x2) # load 0x04ccf6d9 from memory into f1
fsqrt.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7bc27c1 # load x3 with value 0xd7bc27c1
sw x3, 0(x2) # store 0xd7bc27c1 in memory
flw f2, 0(x2) # load 0xd7bc27c1 from memory into f2
fsqrt.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0e15df60 # load x3 with value 0x0e15df60
sw x3, 0(x2) # store 0x0e15df60 in memory
flw f3, 0(x2) # load 0x0e15df60 from memory into f3
fsqrt.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8529c3a0 # load x3 with value 0x8529c3a0
sw x3, 0(x2) # store 0x8529c3a0 in memory
flw f4, 0(x2) # load 0x8529c3a0 from memory into f4
fsqrt.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c302bbe # load x3 with value 0x4c302bbe
sw x3, 0(x2) # store 0x4c302bbe in memory
flw f5, 0(x2) # load 0x4c302bbe from memory into f5
fsqrt.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ba21150 # load x3 with value 0x6ba21150
sw x3, 0(x2) # store 0x6ba21150 in memory
flw f6, 0(x2) # load 0x6ba21150 from memory into f6
fsqrt.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13bd70b7 # load x3 with value 0x13bd70b7
sw x3, 0(x2) # store 0x13bd70b7 in memory
flw f7, 0(x2) # load 0x13bd70b7 from memory into f7
fsqrt.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52cde05a # load x3 with value 0x52cde05a
sw x3, 0(x2) # store 0x52cde05a in memory
flw f8, 0(x2) # load 0x52cde05a from memory into f8
fsqrt.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65f96350 # load x3 with value 0x65f96350
sw x3, 0(x2) # store 0x65f96350 in memory
flw f9, 0(x2) # load 0x65f96350 from memory into f9
fsqrt.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc4da159e # load x3 with value 0xc4da159e
sw x3, 0(x2) # store 0xc4da159e in memory
flw f10, 0(x2) # load 0xc4da159e from memory into f10
fsqrt.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x31771cf9 # load x3 with value 0x31771cf9
sw x3, 0(x2) # store 0x31771cf9 in memory
flw f11, 0(x2) # load 0x31771cf9 from memory into f11
fsqrt.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2db69b53 # load x3 with value 0x2db69b53
sw x3, 0(x2) # store 0x2db69b53 in memory
flw f12, 0(x2) # load 0x2db69b53 from memory into f12
fsqrt.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8606c52e # load x3 with value 0x8606c52e
sw x3, 0(x2) # store 0x8606c52e in memory
flw f13, 0(x2) # load 0x8606c52e from memory into f13
fsqrt.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd11a2ec9 # load x3 with value 0xd11a2ec9
sw x3, 0(x2) # store 0xd11a2ec9 in memory
flw f14, 0(x2) # load 0xd11a2ec9 from memory into f14
fsqrt.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x744f6adb # load x3 with value 0x744f6adb
sw x3, 0(x2) # store 0x744f6adb in memory
flw f15, 0(x2) # load 0x744f6adb from memory into f15
fsqrt.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84d897a8 # load x3 with value 0x84d897a8
sw x3, 0(x2) # store 0x84d897a8 in memory
flw f16, 0(x2) # load 0x84d897a8 from memory into f16
fsqrt.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb1e1f90a # load x3 with value 0xb1e1f90a
sw x3, 0(x2) # store 0xb1e1f90a in memory
flw f17, 0(x2) # load 0xb1e1f90a from memory into f17
fsqrt.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c41156c # load x3 with value 0x8c41156c
sw x3, 0(x2) # store 0x8c41156c in memory
flw f18, 0(x2) # load 0x8c41156c from memory into f18
fsqrt.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1713414 # load x3 with value 0xc1713414
sw x3, 0(x2) # store 0xc1713414 in memory
flw f19, 0(x2) # load 0xc1713414 from memory into f19
fsqrt.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d15d8b5 # load x3 with value 0x2d15d8b5
sw x3, 0(x2) # store 0x2d15d8b5 in memory
flw f20, 0(x2) # load 0x2d15d8b5 from memory into f20
fsqrt.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bb207ff # load x3 with value 0x7bb207ff
sw x3, 0(x2) # store 0x7bb207ff in memory
flw f21, 0(x2) # load 0x7bb207ff from memory into f21
fsqrt.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd6eeaf44 # load x3 with value 0xd6eeaf44
sw x3, 0(x2) # store 0xd6eeaf44 in memory
flw f22, 0(x2) # load 0xd6eeaf44 from memory into f22
fsqrt.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x497a2ad7 # load x3 with value 0x497a2ad7
sw x3, 0(x2) # store 0x497a2ad7 in memory
flw f23, 0(x2) # load 0x497a2ad7 from memory into f23
fsqrt.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e8f89cf # load x3 with value 0x4e8f89cf
sw x3, 0(x2) # store 0x4e8f89cf in memory
flw f24, 0(x2) # load 0x4e8f89cf from memory into f24
fsqrt.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1e8b5893 # load x3 with value 0x1e8b5893
sw x3, 0(x2) # store 0x1e8b5893 in memory
flw f25, 0(x2) # load 0x1e8b5893 from memory into f25
fsqrt.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x62343c1e # load x3 with value 0x62343c1e
sw x3, 0(x2) # store 0x62343c1e in memory
flw f26, 0(x2) # load 0x62343c1e from memory into f26
fsqrt.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabdbd2f8 # load x3 with value 0xabdbd2f8
sw x3, 0(x2) # store 0xabdbd2f8 in memory
flw f27, 0(x2) # load 0xabdbd2f8 from memory into f27
fsqrt.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd6f9d54 # load x3 with value 0xbd6f9d54
sw x3, 0(x2) # store 0xbd6f9d54 in memory
flw f28, 0(x2) # load 0xbd6f9d54 from memory into f28
fsqrt.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07c3941e # load x3 with value 0x07c3941e
sw x3, 0(x2) # store 0x07c3941e in memory
flw f29, 0(x2) # load 0x07c3941e from memory into f29
fsqrt.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa443e855 # load x3 with value 0xa443e855
sw x3, 0(x2) # store 0xa443e855 in memory
flw f30, 0(x2) # load 0xa443e855 from memory into f30
fsqrt.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f320c66 # load x3 with value 0x8f320c66
sw x3, 0(x2) # store 0x8f320c66 in memory
flw f31, 0(x2) # load 0x8f320c66 from memory into f31
fsqrt.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5d9b8adf # load x3 with value 0x5d9b8adf
sw x3, 0(x2) # store 0x5d9b8adf in memory
flw f25, 0(x2) # load 0x5d9b8adf from memory into f25
fsqrt.s f24, f25, dyn # perform operation
fsqrt.s f24, f25, rdn # perform operation
fsqrt.s f24, f25, rmm # perform operation
fsqrt.s f24, f25, rne # perform operation
fsqrt.s f24, f25, rtz # perform operation
fsqrt.s f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.s f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.s f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.s f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.s f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.s f24, f25 # perform operation


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
