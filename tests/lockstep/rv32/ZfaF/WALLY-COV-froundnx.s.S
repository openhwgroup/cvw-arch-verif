///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaF/WALLY-COV-froundnx.s.S
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
add x8, x30, x22 # perform first operation
froundnx.s f6, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x22, x29 # perform first operation
froundnx.s f2, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x2, x26 # perform first operation
froundnx.s f17, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f27, f13, f20 # perform first operation
froundnx.s f16, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x20, x18 # perform first operation
froundnx.s f21, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x11, x19 # perform first operation
froundnx.s f10, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f8, f29 # perform first operation
froundnx.s f18, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f17, f21, f8 # perform first operation
froundnx.s f17, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f6, f22 # perform first operation
froundnx.s f7, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f11, f2 # perform first operation
froundnx.s f11, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f5, f25 # perform first operation
froundnx.s f25, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f25, f6, f16 # perform first operation
froundnx.s f19, f20 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb11f56fb # load x3 with value 0xb11f56fb
sw x3, 0(x2) # store 0xb11f56fb in memory
flw f0, 0(x2) # load 0xb11f56fb from memory into f0
froundnx.s f13, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a40a797 # load x3 with value 0x5a40a797
sw x3, 0(x2) # store 0x5a40a797 in memory
flw f1, 0(x2) # load 0x5a40a797 from memory into f1
froundnx.s f11, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x558a120c # load x3 with value 0x558a120c
sw x3, 0(x2) # store 0x558a120c in memory
flw f2, 0(x2) # load 0x558a120c from memory into f2
froundnx.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd3b0f84 # load x3 with value 0xfd3b0f84
sw x3, 0(x2) # store 0xfd3b0f84 in memory
flw f3, 0(x2) # load 0xfd3b0f84 from memory into f3
froundnx.s f13, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x44599251 # load x3 with value 0x44599251
sw x3, 0(x2) # store 0x44599251 in memory
flw f4, 0(x2) # load 0x44599251 from memory into f4
froundnx.s f23, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a65bf7b # load x3 with value 0x1a65bf7b
sw x3, 0(x2) # store 0x1a65bf7b in memory
flw f5, 0(x2) # load 0x1a65bf7b from memory into f5
froundnx.s f13, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38e9612f # load x3 with value 0x38e9612f
sw x3, 0(x2) # store 0x38e9612f in memory
flw f6, 0(x2) # load 0x38e9612f from memory into f6
froundnx.s f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x889b797a # load x3 with value 0x889b797a
sw x3, 0(x2) # store 0x889b797a in memory
flw f7, 0(x2) # load 0x889b797a from memory into f7
froundnx.s f19, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b7d2153 # load x3 with value 0x8b7d2153
sw x3, 0(x2) # store 0x8b7d2153 in memory
flw f8, 0(x2) # load 0x8b7d2153 from memory into f8
froundnx.s f1, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf3f5d956 # load x3 with value 0xf3f5d956
sw x3, 0(x2) # store 0xf3f5d956 in memory
flw f9, 0(x2) # load 0xf3f5d956 from memory into f9
froundnx.s f12, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdcfe5494 # load x3 with value 0xdcfe5494
sw x3, 0(x2) # store 0xdcfe5494 in memory
flw f10, 0(x2) # load 0xdcfe5494 from memory into f10
froundnx.s f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcabbd2ac # load x3 with value 0xcabbd2ac
sw x3, 0(x2) # store 0xcabbd2ac in memory
flw f11, 0(x2) # load 0xcabbd2ac from memory into f11
froundnx.s f7, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3bc23a27 # load x3 with value 0x3bc23a27
sw x3, 0(x2) # store 0x3bc23a27 in memory
flw f12, 0(x2) # load 0x3bc23a27 from memory into f12
froundnx.s f31, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a147209 # load x3 with value 0x1a147209
sw x3, 0(x2) # store 0x1a147209 in memory
flw f13, 0(x2) # load 0x1a147209 from memory into f13
froundnx.s f10, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcd9a6ce4 # load x3 with value 0xcd9a6ce4
sw x3, 0(x2) # store 0xcd9a6ce4 in memory
flw f14, 0(x2) # load 0xcd9a6ce4 from memory into f14
froundnx.s f1, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x13db61ca # load x3 with value 0x13db61ca
sw x3, 0(x2) # store 0x13db61ca in memory
flw f15, 0(x2) # load 0x13db61ca from memory into f15
froundnx.s f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde7708f9 # load x3 with value 0xde7708f9
sw x3, 0(x2) # store 0xde7708f9 in memory
flw f16, 0(x2) # load 0xde7708f9 from memory into f16
froundnx.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e2c6c6a # load x3 with value 0x6e2c6c6a
sw x3, 0(x2) # store 0x6e2c6c6a in memory
flw f17, 0(x2) # load 0x6e2c6c6a from memory into f17
froundnx.s f6, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4366c9b2 # load x3 with value 0x4366c9b2
sw x3, 0(x2) # store 0x4366c9b2 in memory
flw f18, 0(x2) # load 0x4366c9b2 from memory into f18
froundnx.s f28, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d7abb0f # load x3 with value 0x2d7abb0f
sw x3, 0(x2) # store 0x2d7abb0f in memory
flw f19, 0(x2) # load 0x2d7abb0f from memory into f19
froundnx.s f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec005f1e # load x3 with value 0xec005f1e
sw x3, 0(x2) # store 0xec005f1e in memory
flw f20, 0(x2) # load 0xec005f1e from memory into f20
froundnx.s f31, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x760d895d # load x3 with value 0x760d895d
sw x3, 0(x2) # store 0x760d895d in memory
flw f21, 0(x2) # load 0x760d895d from memory into f21
froundnx.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe18215c1 # load x3 with value 0xe18215c1
sw x3, 0(x2) # store 0xe18215c1 in memory
flw f22, 0(x2) # load 0xe18215c1 from memory into f22
froundnx.s f7, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x46d3da4e # load x3 with value 0x46d3da4e
sw x3, 0(x2) # store 0x46d3da4e in memory
flw f23, 0(x2) # load 0x46d3da4e from memory into f23
froundnx.s f28, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e672165 # load x3 with value 0x8e672165
sw x3, 0(x2) # store 0x8e672165 in memory
flw f24, 0(x2) # load 0x8e672165 from memory into f24
froundnx.s f9, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6976d642 # load x3 with value 0x6976d642
sw x3, 0(x2) # store 0x6976d642 in memory
flw f25, 0(x2) # load 0x6976d642 from memory into f25
froundnx.s f2, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x345db5ec # load x3 with value 0x345db5ec
sw x3, 0(x2) # store 0x345db5ec in memory
flw f26, 0(x2) # load 0x345db5ec from memory into f26
froundnx.s f19, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8b31cfa # load x3 with value 0xf8b31cfa
sw x3, 0(x2) # store 0xf8b31cfa in memory
flw f27, 0(x2) # load 0xf8b31cfa from memory into f27
froundnx.s f28, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe364918f # load x3 with value 0xe364918f
sw x3, 0(x2) # store 0xe364918f in memory
flw f28, 0(x2) # load 0xe364918f from memory into f28
froundnx.s f18, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x188c4861 # load x3 with value 0x188c4861
sw x3, 0(x2) # store 0x188c4861 in memory
flw f29, 0(x2) # load 0x188c4861 from memory into f29
froundnx.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2bb3507f # load x3 with value 0x2bb3507f
sw x3, 0(x2) # store 0x2bb3507f in memory
flw f30, 0(x2) # load 0x2bb3507f from memory into f30
froundnx.s f6, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ffbefc3 # load x3 with value 0x6ffbefc3
sw x3, 0(x2) # store 0x6ffbefc3 in memory
flw f31, 0(x2) # load 0x6ffbefc3 from memory into f31
froundnx.s f11, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8aff3d9d # load x3 with value 0x8aff3d9d
sw x3, 0(x2) # store 0x8aff3d9d in memory
flw f27, 0(x2) # load 0x8aff3d9d from memory into f27
froundnx.s f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x96699dab # load x3 with value 0x96699dab
sw x3, 0(x2) # store 0x96699dab in memory
flw f22, 0(x2) # load 0x96699dab from memory into f22
froundnx.s f1, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4ebde809 # load x3 with value 0x4ebde809
sw x3, 0(x2) # store 0x4ebde809 in memory
flw f24, 0(x2) # load 0x4ebde809 from memory into f24
froundnx.s f2, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x421464ce # load x3 with value 0x421464ce
sw x3, 0(x2) # store 0x421464ce in memory
flw f20, 0(x2) # load 0x421464ce from memory into f20
froundnx.s f3, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f2a0cfa # load x3 with value 0x8f2a0cfa
sw x3, 0(x2) # store 0x8f2a0cfa in memory
flw f1, 0(x2) # load 0x8f2a0cfa from memory into f1
froundnx.s f4, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb974f762 # load x3 with value 0xb974f762
sw x3, 0(x2) # store 0xb974f762 in memory
flw f24, 0(x2) # load 0xb974f762 from memory into f24
froundnx.s f5, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8dfa51c5 # load x3 with value 0x8dfa51c5
sw x3, 0(x2) # store 0x8dfa51c5 in memory
flw f13, 0(x2) # load 0x8dfa51c5 from memory into f13
froundnx.s f6, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x88ab4ee0 # load x3 with value 0x88ab4ee0
sw x3, 0(x2) # store 0x88ab4ee0 in memory
flw f3, 0(x2) # load 0x88ab4ee0 from memory into f3
froundnx.s f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0aae58d # load x3 with value 0xd0aae58d
sw x3, 0(x2) # store 0xd0aae58d in memory
flw f15, 0(x2) # load 0xd0aae58d from memory into f15
froundnx.s f8, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfca3b131 # load x3 with value 0xfca3b131
sw x3, 0(x2) # store 0xfca3b131 in memory
flw f21, 0(x2) # load 0xfca3b131 from memory into f21
froundnx.s f9, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48ef4b90 # load x3 with value 0x48ef4b90
sw x3, 0(x2) # store 0x48ef4b90 in memory
flw f21, 0(x2) # load 0x48ef4b90 from memory into f21
froundnx.s f10, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9decb9b6 # load x3 with value 0x9decb9b6
sw x3, 0(x2) # store 0x9decb9b6 in memory
flw f9, 0(x2) # load 0x9decb9b6 from memory into f9
froundnx.s f11, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf835316 # load x3 with value 0xaf835316
sw x3, 0(x2) # store 0xaf835316 in memory
flw f31, 0(x2) # load 0xaf835316 from memory into f31
froundnx.s f12, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x35f0c5f2 # load x3 with value 0x35f0c5f2
sw x3, 0(x2) # store 0x35f0c5f2 in memory
flw f7, 0(x2) # load 0x35f0c5f2 from memory into f7
froundnx.s f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48e7cd3c # load x3 with value 0x48e7cd3c
sw x3, 0(x2) # store 0x48e7cd3c in memory
flw f28, 0(x2) # load 0x48e7cd3c from memory into f28
froundnx.s f14, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee5f5648 # load x3 with value 0xee5f5648
sw x3, 0(x2) # store 0xee5f5648 in memory
flw f26, 0(x2) # load 0xee5f5648 from memory into f26
froundnx.s f15, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8b8c0248 # load x3 with value 0x8b8c0248
sw x3, 0(x2) # store 0x8b8c0248 in memory
flw f11, 0(x2) # load 0x8b8c0248 from memory into f11
froundnx.s f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcfd1af24 # load x3 with value 0xcfd1af24
sw x3, 0(x2) # store 0xcfd1af24 in memory
flw f9, 0(x2) # load 0xcfd1af24 from memory into f9
froundnx.s f17, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9012e96 # load x3 with value 0xd9012e96
sw x3, 0(x2) # store 0xd9012e96 in memory
flw f6, 0(x2) # load 0xd9012e96 from memory into f6
froundnx.s f18, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf0ba9f1d # load x3 with value 0xf0ba9f1d
sw x3, 0(x2) # store 0xf0ba9f1d in memory
flw f16, 0(x2) # load 0xf0ba9f1d from memory into f16
froundnx.s f19, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5f1574d3 # load x3 with value 0x5f1574d3
sw x3, 0(x2) # store 0x5f1574d3 in memory
flw f17, 0(x2) # load 0x5f1574d3 from memory into f17
froundnx.s f20, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb515a039 # load x3 with value 0xb515a039
sw x3, 0(x2) # store 0xb515a039 in memory
flw f30, 0(x2) # load 0xb515a039 from memory into f30
froundnx.s f21, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c93941e # load x3 with value 0x7c93941e
sw x3, 0(x2) # store 0x7c93941e in memory
flw f19, 0(x2) # load 0x7c93941e from memory into f19
froundnx.s f22, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb6c92550 # load x3 with value 0xb6c92550
sw x3, 0(x2) # store 0xb6c92550 in memory
flw f23, 0(x2) # load 0xb6c92550 from memory into f23
froundnx.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa15b4fb6 # load x3 with value 0xa15b4fb6
sw x3, 0(x2) # store 0xa15b4fb6 in memory
flw f5, 0(x2) # load 0xa15b4fb6 from memory into f5
froundnx.s f24, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdc9f6be1 # load x3 with value 0xdc9f6be1
sw x3, 0(x2) # store 0xdc9f6be1 in memory
flw f21, 0(x2) # load 0xdc9f6be1 from memory into f21
froundnx.s f25, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x178fffec # load x3 with value 0x178fffec
sw x3, 0(x2) # store 0x178fffec in memory
flw f17, 0(x2) # load 0x178fffec from memory into f17
froundnx.s f26, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x51a52a70 # load x3 with value 0x51a52a70
sw x3, 0(x2) # store 0x51a52a70 in memory
flw f27, 0(x2) # load 0x51a52a70 from memory into f27
froundnx.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbb8ca1b # load x3 with value 0xdbb8ca1b
sw x3, 0(x2) # store 0xdbb8ca1b in memory
flw f2, 0(x2) # load 0xdbb8ca1b from memory into f2
froundnx.s f28, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e23ea47 # load x3 with value 0x8e23ea47
sw x3, 0(x2) # store 0x8e23ea47 in memory
flw f1, 0(x2) # load 0x8e23ea47 from memory into f1
froundnx.s f29, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ab78d4b # load x3 with value 0x7ab78d4b
sw x3, 0(x2) # store 0x7ab78d4b in memory
flw f13, 0(x2) # load 0x7ab78d4b from memory into f13
froundnx.s f30, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x888f3734 # load x3 with value 0x888f3734
sw x3, 0(x2) # store 0x888f3734 in memory
flw f13, 0(x2) # load 0x888f3734 from memory into f13
froundnx.s f31, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
froundnx.s f10, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
froundnx.s f20, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
froundnx.s f13, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
froundnx.s f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
froundnx.s f31, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
froundnx.s f18, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
froundnx.s f29, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
froundnx.s f29, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
froundnx.s f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
froundnx.s f13, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
froundnx.s f17, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
froundnx.s f11, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
froundnx.s f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
froundnx.s f26, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
froundnx.s f31, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
froundnx.s f29, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
froundnx.s f28, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
froundnx.s f28, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
froundnx.s f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
froundnx.s f10, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
froundnx.s f6, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
froundnx.s f21, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
froundnx.s f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
froundnx.s f2, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
froundnx.s f12, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
froundnx.s f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
froundnx.s f9, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
froundnx.s f29, f31 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcdf45ce9 # load x3 with value 0xcdf45ce9
sw x3, 0(x2) # store 0xcdf45ce9 in memory
flw f0, 0(x2) # load 0xcdf45ce9 from memory into f0
froundnx.s f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8478d35e # load x3 with value 0x8478d35e
sw x3, 0(x2) # store 0x8478d35e in memory
flw f1, 0(x2) # load 0x8478d35e from memory into f1
froundnx.s f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf1d88f7a # load x3 with value 0xf1d88f7a
sw x3, 0(x2) # store 0xf1d88f7a in memory
flw f2, 0(x2) # load 0xf1d88f7a from memory into f2
froundnx.s f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3eb262c3 # load x3 with value 0x3eb262c3
sw x3, 0(x2) # store 0x3eb262c3 in memory
flw f3, 0(x2) # load 0x3eb262c3 from memory into f3
froundnx.s f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9b9b23e # load x3 with value 0xd9b9b23e
sw x3, 0(x2) # store 0xd9b9b23e in memory
flw f4, 0(x2) # load 0xd9b9b23e from memory into f4
froundnx.s f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd5fb586 # load x3 with value 0xfd5fb586
sw x3, 0(x2) # store 0xfd5fb586 in memory
flw f5, 0(x2) # load 0xfd5fb586 from memory into f5
froundnx.s f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xace29ce5 # load x3 with value 0xace29ce5
sw x3, 0(x2) # store 0xace29ce5 in memory
flw f6, 0(x2) # load 0xace29ce5 from memory into f6
froundnx.s f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb191aae # load x3 with value 0xeb191aae
sw x3, 0(x2) # store 0xeb191aae in memory
flw f7, 0(x2) # load 0xeb191aae from memory into f7
froundnx.s f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6652461f # load x3 with value 0x6652461f
sw x3, 0(x2) # store 0x6652461f in memory
flw f8, 0(x2) # load 0x6652461f from memory into f8
froundnx.s f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9ba06cb8 # load x3 with value 0x9ba06cb8
sw x3, 0(x2) # store 0x9ba06cb8 in memory
flw f9, 0(x2) # load 0x9ba06cb8 from memory into f9
froundnx.s f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x29395b11 # load x3 with value 0x29395b11
sw x3, 0(x2) # store 0x29395b11 in memory
flw f10, 0(x2) # load 0x29395b11 from memory into f10
froundnx.s f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1dc3fb26 # load x3 with value 0x1dc3fb26
sw x3, 0(x2) # store 0x1dc3fb26 in memory
flw f11, 0(x2) # load 0x1dc3fb26 from memory into f11
froundnx.s f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f10ee35 # load x3 with value 0x3f10ee35
sw x3, 0(x2) # store 0x3f10ee35 in memory
flw f12, 0(x2) # load 0x3f10ee35 from memory into f12
froundnx.s f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x258c50b5 # load x3 with value 0x258c50b5
sw x3, 0(x2) # store 0x258c50b5 in memory
flw f13, 0(x2) # load 0x258c50b5 from memory into f13
froundnx.s f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x336ee295 # load x3 with value 0x336ee295
sw x3, 0(x2) # store 0x336ee295 in memory
flw f14, 0(x2) # load 0x336ee295 from memory into f14
froundnx.s f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40ec80b1 # load x3 with value 0x40ec80b1
sw x3, 0(x2) # store 0x40ec80b1 in memory
flw f15, 0(x2) # load 0x40ec80b1 from memory into f15
froundnx.s f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac042f11 # load x3 with value 0xac042f11
sw x3, 0(x2) # store 0xac042f11 in memory
flw f16, 0(x2) # load 0xac042f11 from memory into f16
froundnx.s f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad3ae2d6 # load x3 with value 0xad3ae2d6
sw x3, 0(x2) # store 0xad3ae2d6 in memory
flw f17, 0(x2) # load 0xad3ae2d6 from memory into f17
froundnx.s f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76479cd3 # load x3 with value 0x76479cd3
sw x3, 0(x2) # store 0x76479cd3 in memory
flw f18, 0(x2) # load 0x76479cd3 from memory into f18
froundnx.s f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85ecc74b # load x3 with value 0x85ecc74b
sw x3, 0(x2) # store 0x85ecc74b in memory
flw f19, 0(x2) # load 0x85ecc74b from memory into f19
froundnx.s f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6cd4ef21 # load x3 with value 0x6cd4ef21
sw x3, 0(x2) # store 0x6cd4ef21 in memory
flw f20, 0(x2) # load 0x6cd4ef21 from memory into f20
froundnx.s f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1de580bc # load x3 with value 0x1de580bc
sw x3, 0(x2) # store 0x1de580bc in memory
flw f21, 0(x2) # load 0x1de580bc from memory into f21
froundnx.s f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x03925045 # load x3 with value 0x03925045
sw x3, 0(x2) # store 0x03925045 in memory
flw f22, 0(x2) # load 0x03925045 from memory into f22
froundnx.s f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe564822c # load x3 with value 0xe564822c
sw x3, 0(x2) # store 0xe564822c in memory
flw f23, 0(x2) # load 0xe564822c from memory into f23
froundnx.s f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3da5781e # load x3 with value 0x3da5781e
sw x3, 0(x2) # store 0x3da5781e in memory
flw f24, 0(x2) # load 0x3da5781e from memory into f24
froundnx.s f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabf53a7b # load x3 with value 0xabf53a7b
sw x3, 0(x2) # store 0xabf53a7b in memory
flw f25, 0(x2) # load 0xabf53a7b from memory into f25
froundnx.s f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb6d5ad5b # load x3 with value 0xb6d5ad5b
sw x3, 0(x2) # store 0xb6d5ad5b in memory
flw f26, 0(x2) # load 0xb6d5ad5b from memory into f26
froundnx.s f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e061faf # load x3 with value 0x5e061faf
sw x3, 0(x2) # store 0x5e061faf in memory
flw f27, 0(x2) # load 0x5e061faf from memory into f27
froundnx.s f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x796a59cf # load x3 with value 0x796a59cf
sw x3, 0(x2) # store 0x796a59cf in memory
flw f28, 0(x2) # load 0x796a59cf from memory into f28
froundnx.s f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb13a6a93 # load x3 with value 0xb13a6a93
sw x3, 0(x2) # store 0xb13a6a93 in memory
flw f29, 0(x2) # load 0xb13a6a93 from memory into f29
froundnx.s f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1aa1a69 # load x3 with value 0xa1aa1a69
sw x3, 0(x2) # store 0xa1aa1a69 in memory
flw f30, 0(x2) # load 0xa1aa1a69 from memory into f30
froundnx.s f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x48c43048 # load x3 with value 0x48c43048
sw x3, 0(x2) # store 0x48c43048 in memory
flw f31, 0(x2) # load 0x48c43048 from memory into f31
froundnx.s f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x28006a7c # load x3 with value 0x28006a7c
sw x3, 0(x2) # store 0x28006a7c in memory
flw f3, 0(x2) # load 0x28006a7c from memory into f3
froundnx.s f23, f3, dyn # perform operation
froundnx.s f23, f3, rdn # perform operation
froundnx.s f23, f3, rmm # perform operation
froundnx.s f23, f3, rne # perform operation
froundnx.s f23, f3, rtz # perform operation
froundnx.s f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.s f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.s f23, f3 # perform operation


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
