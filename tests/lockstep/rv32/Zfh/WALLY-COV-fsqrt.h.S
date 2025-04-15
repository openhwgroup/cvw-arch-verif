///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fsqrt.h.S
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
add x19, x21, x6 # perform first operation
fsqrt.h f12, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x15, x11 # perform first operation
fsqrt.h f19, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x14 # perform first operation
fsqrt.h f6, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f10, f9 # perform first operation
fsqrt.h f10, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x16, x31 # perform first operation
fsqrt.h f22, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x23, x20 # perform first operation
fsqrt.h f23, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f18, f26 # perform first operation
fsqrt.h f8, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f20, f23 # perform first operation
fsqrt.h f25, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f9, f8 # perform first operation
fsqrt.h f3, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f21, f30 # perform first operation
fsqrt.h f21, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f15, f28 # perform first operation
fsqrt.h f28, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f16, f26, f25 # perform first operation
fsqrt.h f27, f30 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd942ac7e # load x3 with value 0xd942ac7e
sw x3, 0(x2) # store 0xd942ac7e in memory
flh f0, 0(x2) # load 0xd942ac7e from memory into f0
fsqrt.h f20, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30fe9727 # load x3 with value 0x30fe9727
sw x3, 0(x2) # store 0x30fe9727 in memory
flh f1, 0(x2) # load 0x30fe9727 from memory into f1
fsqrt.h f6, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20a9592c # load x3 with value 0x20a9592c
sw x3, 0(x2) # store 0x20a9592c in memory
flh f2, 0(x2) # load 0x20a9592c from memory into f2
fsqrt.h f24, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e9a466f # load x3 with value 0x7e9a466f
sw x3, 0(x2) # store 0x7e9a466f in memory
flh f3, 0(x2) # load 0x7e9a466f from memory into f3
fsqrt.h f14, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x806328d6 # load x3 with value 0x806328d6
sw x3, 0(x2) # store 0x806328d6 in memory
flh f4, 0(x2) # load 0x806328d6 from memory into f4
fsqrt.h f15, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7449a993 # load x3 with value 0x7449a993
sw x3, 0(x2) # store 0x7449a993 in memory
flh f5, 0(x2) # load 0x7449a993 from memory into f5
fsqrt.h f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60f7fd63 # load x3 with value 0x60f7fd63
sw x3, 0(x2) # store 0x60f7fd63 in memory
flh f6, 0(x2) # load 0x60f7fd63 from memory into f6
fsqrt.h f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d6aa179 # load x3 with value 0x4d6aa179
sw x3, 0(x2) # store 0x4d6aa179 in memory
flh f7, 0(x2) # load 0x4d6aa179 from memory into f7
fsqrt.h f24, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x02227cd1 # load x3 with value 0x02227cd1
sw x3, 0(x2) # store 0x02227cd1 in memory
flh f8, 0(x2) # load 0x02227cd1 from memory into f8
fsqrt.h f3, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4c7e3b3c # load x3 with value 0x4c7e3b3c
sw x3, 0(x2) # store 0x4c7e3b3c in memory
flh f9, 0(x2) # load 0x4c7e3b3c from memory into f9
fsqrt.h f14, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30ec5bea # load x3 with value 0x30ec5bea
sw x3, 0(x2) # store 0x30ec5bea in memory
flh f10, 0(x2) # load 0x30ec5bea from memory into f10
fsqrt.h f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ac77c34 # load x3 with value 0x0ac77c34
sw x3, 0(x2) # store 0x0ac77c34 in memory
flh f11, 0(x2) # load 0x0ac77c34 from memory into f11
fsqrt.h f26, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e5f8754 # load x3 with value 0x4e5f8754
sw x3, 0(x2) # store 0x4e5f8754 in memory
flh f12, 0(x2) # load 0x4e5f8754 from memory into f12
fsqrt.h f16, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe299f406 # load x3 with value 0xe299f406
sw x3, 0(x2) # store 0xe299f406 in memory
flh f13, 0(x2) # load 0xe299f406 from memory into f13
fsqrt.h f9, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1591b26 # load x3 with value 0xc1591b26
sw x3, 0(x2) # store 0xc1591b26 in memory
flh f14, 0(x2) # load 0xc1591b26 from memory into f14
fsqrt.h f28, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4fcd7e9 # load x3 with value 0xb4fcd7e9
sw x3, 0(x2) # store 0xb4fcd7e9 in memory
flh f15, 0(x2) # load 0xb4fcd7e9 from memory into f15
fsqrt.h f20, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x628a4ecb # load x3 with value 0x628a4ecb
sw x3, 0(x2) # store 0x628a4ecb in memory
flh f16, 0(x2) # load 0x628a4ecb from memory into f16
fsqrt.h f17, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19a79681 # load x3 with value 0x19a79681
sw x3, 0(x2) # store 0x19a79681 in memory
flh f17, 0(x2) # load 0x19a79681 from memory into f17
fsqrt.h f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff88e146 # load x3 with value 0xff88e146
sw x3, 0(x2) # store 0xff88e146 in memory
flh f18, 0(x2) # load 0xff88e146 from memory into f18
fsqrt.h f19, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61becc99 # load x3 with value 0x61becc99
sw x3, 0(x2) # store 0x61becc99 in memory
flh f19, 0(x2) # load 0x61becc99 from memory into f19
fsqrt.h f10, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71bc330b # load x3 with value 0x71bc330b
sw x3, 0(x2) # store 0x71bc330b in memory
flh f20, 0(x2) # load 0x71bc330b from memory into f20
fsqrt.h f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1014b5d9 # load x3 with value 0x1014b5d9
sw x3, 0(x2) # store 0x1014b5d9 in memory
flh f21, 0(x2) # load 0x1014b5d9 from memory into f21
fsqrt.h f26, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd39d8259 # load x3 with value 0xd39d8259
sw x3, 0(x2) # store 0xd39d8259 in memory
flh f22, 0(x2) # load 0xd39d8259 from memory into f22
fsqrt.h f2, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb4511e7a # load x3 with value 0xb4511e7a
sw x3, 0(x2) # store 0xb4511e7a in memory
flh f23, 0(x2) # load 0xb4511e7a from memory into f23
fsqrt.h f30, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x43e9a970 # load x3 with value 0x43e9a970
sw x3, 0(x2) # store 0x43e9a970 in memory
flh f24, 0(x2) # load 0x43e9a970 from memory into f24
fsqrt.h f29, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12614ab8 # load x3 with value 0x12614ab8
sw x3, 0(x2) # store 0x12614ab8 in memory
flh f25, 0(x2) # load 0x12614ab8 from memory into f25
fsqrt.h f24, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae10717a # load x3 with value 0xae10717a
sw x3, 0(x2) # store 0xae10717a in memory
flh f26, 0(x2) # load 0xae10717a from memory into f26
fsqrt.h f11, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b6f634d # load x3 with value 0x7b6f634d
sw x3, 0(x2) # store 0x7b6f634d in memory
flh f27, 0(x2) # load 0x7b6f634d from memory into f27
fsqrt.h f7, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35022507 # load x3 with value 0x35022507
sw x3, 0(x2) # store 0x35022507 in memory
flh f28, 0(x2) # load 0x35022507 from memory into f28
fsqrt.h f29, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x343f8ee5 # load x3 with value 0x343f8ee5
sw x3, 0(x2) # store 0x343f8ee5 in memory
flh f29, 0(x2) # load 0x343f8ee5 from memory into f29
fsqrt.h f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfec5d7db # load x3 with value 0xfec5d7db
sw x3, 0(x2) # store 0xfec5d7db in memory
flh f30, 0(x2) # load 0xfec5d7db from memory into f30
fsqrt.h f3, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45a896a7 # load x3 with value 0x45a896a7
sw x3, 0(x2) # store 0x45a896a7 in memory
flh f31, 0(x2) # load 0x45a896a7 from memory into f31
fsqrt.h f9, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8780ef4d # load x3 with value 0x8780ef4d
sw x3, 0(x2) # store 0x8780ef4d in memory
flh f19, 0(x2) # load 0x8780ef4d from memory into f19
fsqrt.h f0, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9ceb35cd # load x3 with value 0x9ceb35cd
sw x3, 0(x2) # store 0x9ceb35cd in memory
flh f9, 0(x2) # load 0x9ceb35cd from memory into f9
fsqrt.h f1, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x622afb17 # load x3 with value 0x622afb17
sw x3, 0(x2) # store 0x622afb17 in memory
flh f15, 0(x2) # load 0x622afb17 from memory into f15
fsqrt.h f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x537d19ef # load x3 with value 0x537d19ef
sw x3, 0(x2) # store 0x537d19ef in memory
flh f22, 0(x2) # load 0x537d19ef from memory into f22
fsqrt.h f3, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb9281d76 # load x3 with value 0xb9281d76
sw x3, 0(x2) # store 0xb9281d76 in memory
flh f17, 0(x2) # load 0xb9281d76 from memory into f17
fsqrt.h f4, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x233ea563 # load x3 with value 0x233ea563
sw x3, 0(x2) # store 0x233ea563 in memory
flh f28, 0(x2) # load 0x233ea563 from memory into f28
fsqrt.h f5, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde7afa78 # load x3 with value 0xde7afa78
sw x3, 0(x2) # store 0xde7afa78 in memory
flh f2, 0(x2) # load 0xde7afa78 from memory into f2
fsqrt.h f6, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42cf9039 # load x3 with value 0x42cf9039
sw x3, 0(x2) # store 0x42cf9039 in memory
flh f29, 0(x2) # load 0x42cf9039 from memory into f29
fsqrt.h f7, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4b63d3fb # load x3 with value 0x4b63d3fb
sw x3, 0(x2) # store 0x4b63d3fb in memory
flh f13, 0(x2) # load 0x4b63d3fb from memory into f13
fsqrt.h f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcdf4a595 # load x3 with value 0xcdf4a595
sw x3, 0(x2) # store 0xcdf4a595 in memory
flh f22, 0(x2) # load 0xcdf4a595 from memory into f22
fsqrt.h f9, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4aba3be4 # load x3 with value 0x4aba3be4
sw x3, 0(x2) # store 0x4aba3be4 in memory
flh f30, 0(x2) # load 0x4aba3be4 from memory into f30
fsqrt.h f10, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5803d08 # load x3 with value 0xc5803d08
sw x3, 0(x2) # store 0xc5803d08 in memory
flh f17, 0(x2) # load 0xc5803d08 from memory into f17
fsqrt.h f11, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54f84590 # load x3 with value 0x54f84590
sw x3, 0(x2) # store 0x54f84590 in memory
flh f30, 0(x2) # load 0x54f84590 from memory into f30
fsqrt.h f12, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x858fd7cb # load x3 with value 0x858fd7cb
sw x3, 0(x2) # store 0x858fd7cb in memory
flh f31, 0(x2) # load 0x858fd7cb from memory into f31
fsqrt.h f13, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0820f68 # load x3 with value 0xa0820f68
sw x3, 0(x2) # store 0xa0820f68 in memory
flh f5, 0(x2) # load 0xa0820f68 from memory into f5
fsqrt.h f14, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x414aed13 # load x3 with value 0x414aed13
sw x3, 0(x2) # store 0x414aed13 in memory
flh f12, 0(x2) # load 0x414aed13 from memory into f12
fsqrt.h f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78157400 # load x3 with value 0x78157400
sw x3, 0(x2) # store 0x78157400 in memory
flh f30, 0(x2) # load 0x78157400 from memory into f30
fsqrt.h f16, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x15f81375 # load x3 with value 0x15f81375
sw x3, 0(x2) # store 0x15f81375 in memory
flh f16, 0(x2) # load 0x15f81375 from memory into f16
fsqrt.h f17, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78792410 # load x3 with value 0x78792410
sw x3, 0(x2) # store 0x78792410 in memory
flh f22, 0(x2) # load 0x78792410 from memory into f22
fsqrt.h f18, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4630c570 # load x3 with value 0x4630c570
sw x3, 0(x2) # store 0x4630c570 in memory
flh f24, 0(x2) # load 0x4630c570 from memory into f24
fsqrt.h f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73e94549 # load x3 with value 0x73e94549
sw x3, 0(x2) # store 0x73e94549 in memory
flh f1, 0(x2) # load 0x73e94549 from memory into f1
fsqrt.h f20, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc3020b7b # load x3 with value 0xc3020b7b
sw x3, 0(x2) # store 0xc3020b7b in memory
flh f9, 0(x2) # load 0xc3020b7b from memory into f9
fsqrt.h f21, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0383945b # load x3 with value 0x0383945b
sw x3, 0(x2) # store 0x0383945b in memory
flh f14, 0(x2) # load 0x0383945b from memory into f14
fsqrt.h f22, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22ae8e2b # load x3 with value 0x22ae8e2b
sw x3, 0(x2) # store 0x22ae8e2b in memory
flh f20, 0(x2) # load 0x22ae8e2b from memory into f20
fsqrt.h f23, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdd833cd4 # load x3 with value 0xdd833cd4
sw x3, 0(x2) # store 0xdd833cd4 in memory
flh f11, 0(x2) # load 0xdd833cd4 from memory into f11
fsqrt.h f24, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x442c7c19 # load x3 with value 0x442c7c19
sw x3, 0(x2) # store 0x442c7c19 in memory
flh f26, 0(x2) # load 0x442c7c19 from memory into f26
fsqrt.h f25, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2231b769 # load x3 with value 0x2231b769
sw x3, 0(x2) # store 0x2231b769 in memory
flh f21, 0(x2) # load 0x2231b769 from memory into f21
fsqrt.h f26, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1db2d9e8 # load x3 with value 0x1db2d9e8
sw x3, 0(x2) # store 0x1db2d9e8 in memory
flh f27, 0(x2) # load 0x1db2d9e8 from memory into f27
fsqrt.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x99e993da # load x3 with value 0x99e993da
sw x3, 0(x2) # store 0x99e993da in memory
flh f16, 0(x2) # load 0x99e993da from memory into f16
fsqrt.h f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85a94316 # load x3 with value 0x85a94316
sw x3, 0(x2) # store 0x85a94316 in memory
flh f16, 0(x2) # load 0x85a94316 from memory into f16
fsqrt.h f29, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd22bde7 # load x3 with value 0xfd22bde7
sw x3, 0(x2) # store 0xfd22bde7 in memory
flh f10, 0(x2) # load 0xfd22bde7 from memory into f10
fsqrt.h f30, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4398e3b # load x3 with value 0xd4398e3b
sw x3, 0(x2) # store 0xd4398e3b in memory
flh f13, 0(x2) # load 0xd4398e3b from memory into f13
fsqrt.h f31, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsqrt.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsqrt.h f21, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fsqrt.h f7, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fsqrt.h f15, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fsqrt.h f2, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fsqrt.h f20, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fsqrt.h f14, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fsqrt.h f24, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fsqrt.h f21, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsqrt.h f13, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fsqrt.h f27, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fsqrt.h f17, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fsqrt.h f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fsqrt.h f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsqrt.h f20, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fsqrt.h f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsqrt.h f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fsqrt.h f29, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fsqrt.h f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fsqrt.h f15, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fsqrt.h f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsqrt.h f5, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fsqrt.h f18, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsqrt.h f20, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fsqrt.h f22, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fsqrt.h f12, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fsqrt.h f14, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fsqrt.h f11, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2d61c97 # load x3 with value 0xc2d61c97
sw x3, 0(x2) # store 0xc2d61c97 in memory
flh f0, 0(x2) # load 0xc2d61c97 from memory into f0
fsqrt.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x516cc24d # load x3 with value 0x516cc24d
sw x3, 0(x2) # store 0x516cc24d in memory
flh f1, 0(x2) # load 0x516cc24d from memory into f1
fsqrt.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5fd2e54 # load x3 with value 0xa5fd2e54
sw x3, 0(x2) # store 0xa5fd2e54 in memory
flh f2, 0(x2) # load 0xa5fd2e54 from memory into f2
fsqrt.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d29ca3c # load x3 with value 0x2d29ca3c
sw x3, 0(x2) # store 0x2d29ca3c in memory
flh f3, 0(x2) # load 0x2d29ca3c from memory into f3
fsqrt.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f4151f5 # load x3 with value 0x7f4151f5
sw x3, 0(x2) # store 0x7f4151f5 in memory
flh f4, 0(x2) # load 0x7f4151f5 from memory into f4
fsqrt.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6299555 # load x3 with value 0xf6299555
sw x3, 0(x2) # store 0xf6299555 in memory
flh f5, 0(x2) # load 0xf6299555 from memory into f5
fsqrt.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf1c50f6 # load x3 with value 0xbf1c50f6
sw x3, 0(x2) # store 0xbf1c50f6 in memory
flh f6, 0(x2) # load 0xbf1c50f6 from memory into f6
fsqrt.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42b1fde5 # load x3 with value 0x42b1fde5
sw x3, 0(x2) # store 0x42b1fde5 in memory
flh f7, 0(x2) # load 0x42b1fde5 from memory into f7
fsqrt.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x706358b3 # load x3 with value 0x706358b3
sw x3, 0(x2) # store 0x706358b3 in memory
flh f8, 0(x2) # load 0x706358b3 from memory into f8
fsqrt.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaad5f4ca # load x3 with value 0xaad5f4ca
sw x3, 0(x2) # store 0xaad5f4ca in memory
flh f9, 0(x2) # load 0xaad5f4ca from memory into f9
fsqrt.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83c1c1ca # load x3 with value 0x83c1c1ca
sw x3, 0(x2) # store 0x83c1c1ca in memory
flh f10, 0(x2) # load 0x83c1c1ca from memory into f10
fsqrt.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c468c28 # load x3 with value 0x7c468c28
sw x3, 0(x2) # store 0x7c468c28 in memory
flh f11, 0(x2) # load 0x7c468c28 from memory into f11
fsqrt.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x205ecb91 # load x3 with value 0x205ecb91
sw x3, 0(x2) # store 0x205ecb91 in memory
flh f12, 0(x2) # load 0x205ecb91 from memory into f12
fsqrt.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x803c1306 # load x3 with value 0x803c1306
sw x3, 0(x2) # store 0x803c1306 in memory
flh f13, 0(x2) # load 0x803c1306 from memory into f13
fsqrt.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d9538f2 # load x3 with value 0x0d9538f2
sw x3, 0(x2) # store 0x0d9538f2 in memory
flh f14, 0(x2) # load 0x0d9538f2 from memory into f14
fsqrt.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47669afc # load x3 with value 0x47669afc
sw x3, 0(x2) # store 0x47669afc in memory
flh f15, 0(x2) # load 0x47669afc from memory into f15
fsqrt.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69695e1b # load x3 with value 0x69695e1b
sw x3, 0(x2) # store 0x69695e1b in memory
flh f16, 0(x2) # load 0x69695e1b from memory into f16
fsqrt.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x16ebb076 # load x3 with value 0x16ebb076
sw x3, 0(x2) # store 0x16ebb076 in memory
flh f17, 0(x2) # load 0x16ebb076 from memory into f17
fsqrt.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8441370b # load x3 with value 0x8441370b
sw x3, 0(x2) # store 0x8441370b in memory
flh f18, 0(x2) # load 0x8441370b from memory into f18
fsqrt.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a044f37 # load x3 with value 0x5a044f37
sw x3, 0(x2) # store 0x5a044f37 in memory
flh f19, 0(x2) # load 0x5a044f37 from memory into f19
fsqrt.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc5f47b96 # load x3 with value 0xc5f47b96
sw x3, 0(x2) # store 0xc5f47b96 in memory
flh f20, 0(x2) # load 0xc5f47b96 from memory into f20
fsqrt.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xba9e1c54 # load x3 with value 0xba9e1c54
sw x3, 0(x2) # store 0xba9e1c54 in memory
flh f21, 0(x2) # load 0xba9e1c54 from memory into f21
fsqrt.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd94b8656 # load x3 with value 0xd94b8656
sw x3, 0(x2) # store 0xd94b8656 in memory
flh f22, 0(x2) # load 0xd94b8656 from memory into f22
fsqrt.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7b7c18c # load x3 with value 0xf7b7c18c
sw x3, 0(x2) # store 0xf7b7c18c in memory
flh f23, 0(x2) # load 0xf7b7c18c from memory into f23
fsqrt.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x585bae65 # load x3 with value 0x585bae65
sw x3, 0(x2) # store 0x585bae65 in memory
flh f24, 0(x2) # load 0x585bae65 from memory into f24
fsqrt.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa661f620 # load x3 with value 0xa661f620
sw x3, 0(x2) # store 0xa661f620 in memory
flh f25, 0(x2) # load 0xa661f620 from memory into f25
fsqrt.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67631026 # load x3 with value 0x67631026
sw x3, 0(x2) # store 0x67631026 in memory
flh f26, 0(x2) # load 0x67631026 from memory into f26
fsqrt.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x882839fe # load x3 with value 0x882839fe
sw x3, 0(x2) # store 0x882839fe in memory
flh f27, 0(x2) # load 0x882839fe from memory into f27
fsqrt.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a3edf6b # load x3 with value 0x7a3edf6b
sw x3, 0(x2) # store 0x7a3edf6b in memory
flh f28, 0(x2) # load 0x7a3edf6b from memory into f28
fsqrt.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fe5b028 # load x3 with value 0x1fe5b028
sw x3, 0(x2) # store 0x1fe5b028 in memory
flh f29, 0(x2) # load 0x1fe5b028 from memory into f29
fsqrt.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0632c457 # load x3 with value 0x0632c457
sw x3, 0(x2) # store 0x0632c457 in memory
flh f30, 0(x2) # load 0x0632c457 from memory into f30
fsqrt.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd23fd3d0 # load x3 with value 0xd23fd3d0
sw x3, 0(x2) # store 0xd23fd3d0 in memory
flh f31, 0(x2) # load 0xd23fd3d0 from memory into f31
fsqrt.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78d3b8c3 # load x3 with value 0x78d3b8c3
sw x3, 0(x2) # store 0x78d3b8c3 in memory
flh f3, 0(x2) # load 0x78d3b8c3 from memory into f3
fsqrt.h f15, f3, dyn # perform operation
fsqrt.h f15, f3, rdn # perform operation
fsqrt.h f15, f3, rmm # perform operation
fsqrt.h f15, f3, rne # perform operation
fsqrt.h f15, f3, rtz # perform operation
fsqrt.h f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.h f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.h f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.h f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.h f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.h f15, f3 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e36bcb1 # load x3 with value 0x9e36bcb1
sw x3, 0(x2) # store 0x9e36bcb1 in memory
flh f16, 0(x2) # load 0x9e36bcb1 from memory into f16
fsqrt.h f3, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fsqrt.h f23, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f14, 0(x2) # load 0xfffe8000 from memory into f14
fsqrt.h f1, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f14, 0(x2) # load 0x7fff3c00 from memory into f14
fsqrt.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f15, 0(x2) # load 0xbeefbc00 from memory into f15
fsqrt.h f28, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f8, 0(x2) # load 0xfeff0400 from memory into f8
fsqrt.h f12, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f10, 0(x2) # load 0x0fff8400 from memory into f10
fsqrt.h f27, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f20, 0(x2) # load 0xefff7bff from memory into f20
fsqrt.h f9, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f30, 0(x2) # load 0xc0defbff from memory into f30
fsqrt.h f23, f30 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f19, 0(x2) # load 0x4f1a7c00 from memory into f19
fsqrt.h f16, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f12, 0(x2) # load 0x0ffffc00 from memory into f12
fsqrt.h f17, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f31)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f31, 0(x2) # load 0xffef7e00 from memory into f31
fsqrt.h f12, f31 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f18, 0(x2) # load 0xfeef7fff from memory into f18
fsqrt.h f6, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f7, 0(x2) # load 0xa1b27c01 from memory into f7
fsqrt.h f12, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f24, 0(x2) # load 0x4fd77dff from memory into f24
fsqrt.h f29, f24 # perform operation second time to make sure flags don't change

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
