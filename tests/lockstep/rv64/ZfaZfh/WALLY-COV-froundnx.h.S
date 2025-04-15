///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfh/WALLY-COV-froundnx.h.S
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
froundnx.h f21, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x6, x20 # perform first operation
froundnx.h f26, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x30, x13 # perform first operation
froundnx.h f15, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f5, f15, f27 # perform first operation
froundnx.h f27, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x9, x19 # perform first operation
froundnx.h f5, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x21, x20 # perform first operation
froundnx.h f17, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f23, f22 # perform first operation
froundnx.h f27, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f15, f29 # perform first operation
froundnx.h f6, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f29, f17 # perform first operation
froundnx.h f2, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f28, f13 # perform first operation
froundnx.h f28, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f31, f8 # perform first operation
froundnx.h f8, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f11, f3 # perform first operation
froundnx.h f8, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9b89e4a4c1d7dc9 # load x3 with value 0xd9b89e4a4c1d7dc9
sw x3, 0(x2) # store 0xd9b89e4a4c1d7dc9 in memory
flh f0, 0(x2) # load 0xd9b89e4a4c1d7dc9 from memory into f0
froundnx.h f13, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd64f57fb154cb64 # load x3 with value 0xfd64f57fb154cb64
sw x3, 0(x2) # store 0xfd64f57fb154cb64 in memory
flh f1, 0(x2) # load 0xfd64f57fb154cb64 from memory into f1
froundnx.h f6, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6cf71827c9f922cb # load x3 with value 0x6cf71827c9f922cb
sw x3, 0(x2) # store 0x6cf71827c9f922cb in memory
flh f2, 0(x2) # load 0x6cf71827c9f922cb from memory into f2
froundnx.h f19, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe75aff73bb23063 # load x3 with value 0xbe75aff73bb23063
sw x3, 0(x2) # store 0xbe75aff73bb23063 in memory
flh f3, 0(x2) # load 0xbe75aff73bb23063 from memory into f3
froundnx.h f26, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47e7fb38ae90c923 # load x3 with value 0x47e7fb38ae90c923
sw x3, 0(x2) # store 0x47e7fb38ae90c923 in memory
flh f4, 0(x2) # load 0x47e7fb38ae90c923 from memory into f4
froundnx.h f6, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8babd18f44ded5ce # load x3 with value 0x8babd18f44ded5ce
sw x3, 0(x2) # store 0x8babd18f44ded5ce in memory
flh f5, 0(x2) # load 0x8babd18f44ded5ce from memory into f5
froundnx.h f7, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd1aced05ba31b239 # load x3 with value 0xd1aced05ba31b239
sw x3, 0(x2) # store 0xd1aced05ba31b239 in memory
flh f6, 0(x2) # load 0xd1aced05ba31b239 from memory into f6
froundnx.h f13, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6f26ca023d04c6df # load x3 with value 0x6f26ca023d04c6df
sw x3, 0(x2) # store 0x6f26ca023d04c6df in memory
flh f7, 0(x2) # load 0x6f26ca023d04c6df from memory into f7
froundnx.h f23, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27bd51c3628a8f10 # load x3 with value 0x27bd51c3628a8f10
sw x3, 0(x2) # store 0x27bd51c3628a8f10 in memory
flh f8, 0(x2) # load 0x27bd51c3628a8f10 from memory into f8
froundnx.h f1, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd0c5862919ce6155 # load x3 with value 0xd0c5862919ce6155
sw x3, 0(x2) # store 0xd0c5862919ce6155 in memory
flh f9, 0(x2) # load 0xd0c5862919ce6155 from memory into f9
froundnx.h f8, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e398fbb69b55644 # load x3 with value 0x8e398fbb69b55644
sw x3, 0(x2) # store 0x8e398fbb69b55644 in memory
flh f10, 0(x2) # load 0x8e398fbb69b55644 from memory into f10
froundnx.h f21, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1de3154852b87dfb # load x3 with value 0x1de3154852b87dfb
sw x3, 0(x2) # store 0x1de3154852b87dfb in memory
flh f11, 0(x2) # load 0x1de3154852b87dfb from memory into f11
froundnx.h f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec1ac54b4b821089 # load x3 with value 0xec1ac54b4b821089
sw x3, 0(x2) # store 0xec1ac54b4b821089 in memory
flh f12, 0(x2) # load 0xec1ac54b4b821089 from memory into f12
froundnx.h f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6bb90940b6f39498 # load x3 with value 0x6bb90940b6f39498
sw x3, 0(x2) # store 0x6bb90940b6f39498 in memory
flh f13, 0(x2) # load 0x6bb90940b6f39498 from memory into f13
froundnx.h f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89259cef721b3dda # load x3 with value 0x89259cef721b3dda
sw x3, 0(x2) # store 0x89259cef721b3dda in memory
flh f14, 0(x2) # load 0x89259cef721b3dda from memory into f14
froundnx.h f3, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa3377ece9b09a296 # load x3 with value 0xa3377ece9b09a296
sw x3, 0(x2) # store 0xa3377ece9b09a296 in memory
flh f15, 0(x2) # load 0xa3377ece9b09a296 from memory into f15
froundnx.h f12, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3c8052653772845d # load x3 with value 0x3c8052653772845d
sw x3, 0(x2) # store 0x3c8052653772845d in memory
flh f16, 0(x2) # load 0x3c8052653772845d from memory into f16
froundnx.h f23, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x481082b1c7898346 # load x3 with value 0x481082b1c7898346
sw x3, 0(x2) # store 0x481082b1c7898346 in memory
flh f17, 0(x2) # load 0x481082b1c7898346 from memory into f17
froundnx.h f30, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1325a9288a6f9c09 # load x3 with value 0x1325a9288a6f9c09
sw x3, 0(x2) # store 0x1325a9288a6f9c09 in memory
flh f18, 0(x2) # load 0x1325a9288a6f9c09 from memory into f18
froundnx.h f27, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1993a4a30039955d # load x3 with value 0x1993a4a30039955d
sw x3, 0(x2) # store 0x1993a4a30039955d in memory
flh f19, 0(x2) # load 0x1993a4a30039955d from memory into f19
froundnx.h f9, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3820b94b91227f3d # load x3 with value 0x3820b94b91227f3d
sw x3, 0(x2) # store 0x3820b94b91227f3d in memory
flh f20, 0(x2) # load 0x3820b94b91227f3d from memory into f20
froundnx.h f10, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2fcc63fe92db561d # load x3 with value 0x2fcc63fe92db561d
sw x3, 0(x2) # store 0x2fcc63fe92db561d in memory
flh f21, 0(x2) # load 0x2fcc63fe92db561d from memory into f21
froundnx.h f16, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x747b882dfb3d3673 # load x3 with value 0x747b882dfb3d3673
sw x3, 0(x2) # store 0x747b882dfb3d3673 in memory
flh f22, 0(x2) # load 0x747b882dfb3d3673 from memory into f22
froundnx.h f6, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xedfc0522ae46b430 # load x3 with value 0xedfc0522ae46b430
sw x3, 0(x2) # store 0xedfc0522ae46b430 in memory
flh f23, 0(x2) # load 0xedfc0522ae46b430 from memory into f23
froundnx.h f6, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x854016f67d036db1 # load x3 with value 0x854016f67d036db1
sw x3, 0(x2) # store 0x854016f67d036db1 in memory
flh f24, 0(x2) # load 0x854016f67d036db1 from memory into f24
froundnx.h f16, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d4454bbbbc47997 # load x3 with value 0x2d4454bbbbc47997
sw x3, 0(x2) # store 0x2d4454bbbbc47997 in memory
flh f25, 0(x2) # load 0x2d4454bbbbc47997 from memory into f25
froundnx.h f16, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f78e3450683fdfc # load x3 with value 0x8f78e3450683fdfc
sw x3, 0(x2) # store 0x8f78e3450683fdfc in memory
flh f26, 0(x2) # load 0x8f78e3450683fdfc from memory into f26
froundnx.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32913e1aa2d339da # load x3 with value 0x32913e1aa2d339da
sw x3, 0(x2) # store 0x32913e1aa2d339da in memory
flh f27, 0(x2) # load 0x32913e1aa2d339da from memory into f27
froundnx.h f6, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4827056b45d001a7 # load x3 with value 0x4827056b45d001a7
sw x3, 0(x2) # store 0x4827056b45d001a7 in memory
flh f28, 0(x2) # load 0x4827056b45d001a7 from memory into f28
froundnx.h f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd14b4b0d3e230681 # load x3 with value 0xd14b4b0d3e230681
sw x3, 0(x2) # store 0xd14b4b0d3e230681 in memory
flh f29, 0(x2) # load 0xd14b4b0d3e230681 from memory into f29
froundnx.h f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6e5add3d009efdff # load x3 with value 0x6e5add3d009efdff
sw x3, 0(x2) # store 0x6e5add3d009efdff in memory
flh f30, 0(x2) # load 0x6e5add3d009efdff from memory into f30
froundnx.h f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x49974200ee83788f # load x3 with value 0x49974200ee83788f
sw x3, 0(x2) # store 0x49974200ee83788f in memory
flh f31, 0(x2) # load 0x49974200ee83788f from memory into f31
froundnx.h f11, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d9eec7d94157b7c # load x3 with value 0x7d9eec7d94157b7c
sw x3, 0(x2) # store 0x7d9eec7d94157b7c in memory
flh f15, 0(x2) # load 0x7d9eec7d94157b7c from memory into f15
froundnx.h f0, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x379dad0ca4d02c02 # load x3 with value 0x379dad0ca4d02c02
sw x3, 0(x2) # store 0x379dad0ca4d02c02 in memory
flh f29, 0(x2) # load 0x379dad0ca4d02c02 from memory into f29
froundnx.h f1, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9b064da839c8f622 # load x3 with value 0x9b064da839c8f622
sw x3, 0(x2) # store 0x9b064da839c8f622 in memory
flh f15, 0(x2) # load 0x9b064da839c8f622 from memory into f15
froundnx.h f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5d17db8b87c8954 # load x3 with value 0xe5d17db8b87c8954
sw x3, 0(x2) # store 0xe5d17db8b87c8954 in memory
flh f26, 0(x2) # load 0xe5d17db8b87c8954 from memory into f26
froundnx.h f3, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b96bc6a748dca0 # load x3 with value 0xa1b96bc6a748dca0
sw x3, 0(x2) # store 0xa1b96bc6a748dca0 in memory
flh f7, 0(x2) # load 0xa1b96bc6a748dca0 from memory into f7
froundnx.h f4, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1f0094f7bdebb7a # load x3 with value 0xa1f0094f7bdebb7a
sw x3, 0(x2) # store 0xa1f0094f7bdebb7a in memory
flh f9, 0(x2) # load 0xa1f0094f7bdebb7a from memory into f9
froundnx.h f5, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12881717743a7ac9 # load x3 with value 0x12881717743a7ac9
sw x3, 0(x2) # store 0x12881717743a7ac9 in memory
flh f15, 0(x2) # load 0x12881717743a7ac9 from memory into f15
froundnx.h f6, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xedc587cd448fe2d # load x3 with value 0xedc587cd448fe2d
sw x3, 0(x2) # store 0xedc587cd448fe2d in memory
flh f26, 0(x2) # load 0xedc587cd448fe2d from memory into f26
froundnx.h f7, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1502387457cbb9b # load x3 with value 0xe1502387457cbb9b
sw x3, 0(x2) # store 0xe1502387457cbb9b in memory
flh f7, 0(x2) # load 0xe1502387457cbb9b from memory into f7
froundnx.h f8, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa72cdc100e1a3a84 # load x3 with value 0xa72cdc100e1a3a84
sw x3, 0(x2) # store 0xa72cdc100e1a3a84 in memory
flh f25, 0(x2) # load 0xa72cdc100e1a3a84 from memory into f25
froundnx.h f9, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x502a7abbbe77a1a2 # load x3 with value 0x502a7abbbe77a1a2
sw x3, 0(x2) # store 0x502a7abbbe77a1a2 in memory
flh f21, 0(x2) # load 0x502a7abbbe77a1a2 from memory into f21
froundnx.h f10, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcf876f87052072c2 # load x3 with value 0xcf876f87052072c2
sw x3, 0(x2) # store 0xcf876f87052072c2 in memory
flh f19, 0(x2) # load 0xcf876f87052072c2 from memory into f19
froundnx.h f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5df38a6a63040598 # load x3 with value 0x5df38a6a63040598
sw x3, 0(x2) # store 0x5df38a6a63040598 in memory
flh f6, 0(x2) # load 0x5df38a6a63040598 from memory into f6
froundnx.h f12, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf065ac75d20549d7 # load x3 with value 0xf065ac75d20549d7
sw x3, 0(x2) # store 0xf065ac75d20549d7 in memory
flh f12, 0(x2) # load 0xf065ac75d20549d7 from memory into f12
froundnx.h f13, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1236d45eee4a9f82 # load x3 with value 0x1236d45eee4a9f82
sw x3, 0(x2) # store 0x1236d45eee4a9f82 in memory
flh f26, 0(x2) # load 0x1236d45eee4a9f82 from memory into f26
froundnx.h f14, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x340a58d2306edfe4 # load x3 with value 0x340a58d2306edfe4
sw x3, 0(x2) # store 0x340a58d2306edfe4 in memory
flh f12, 0(x2) # load 0x340a58d2306edfe4 from memory into f12
froundnx.h f15, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbdb4d37f6c79e814 # load x3 with value 0xbdb4d37f6c79e814
sw x3, 0(x2) # store 0xbdb4d37f6c79e814 in memory
flh f15, 0(x2) # load 0xbdb4d37f6c79e814 from memory into f15
froundnx.h f16, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23ef8d9e01531a57 # load x3 with value 0x23ef8d9e01531a57
sw x3, 0(x2) # store 0x23ef8d9e01531a57 in memory
flh f22, 0(x2) # load 0x23ef8d9e01531a57 from memory into f22
froundnx.h f17, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1d88cf9f801bf21e # load x3 with value 0x1d88cf9f801bf21e
sw x3, 0(x2) # store 0x1d88cf9f801bf21e in memory
flh f10, 0(x2) # load 0x1d88cf9f801bf21e from memory into f10
froundnx.h f18, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64a69dd09b3748ef # load x3 with value 0x64a69dd09b3748ef
sw x3, 0(x2) # store 0x64a69dd09b3748ef in memory
flh f27, 0(x2) # load 0x64a69dd09b3748ef from memory into f27
froundnx.h f19, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3dda62bd231270f8 # load x3 with value 0x3dda62bd231270f8
sw x3, 0(x2) # store 0x3dda62bd231270f8 in memory
flh f24, 0(x2) # load 0x3dda62bd231270f8 from memory into f24
froundnx.h f20, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17c36edf3e97f964 # load x3 with value 0x17c36edf3e97f964
sw x3, 0(x2) # store 0x17c36edf3e97f964 in memory
flh f24, 0(x2) # load 0x17c36edf3e97f964 from memory into f24
froundnx.h f21, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3874f49b51d3117b # load x3 with value 0x3874f49b51d3117b
sw x3, 0(x2) # store 0x3874f49b51d3117b in memory
flh f30, 0(x2) # load 0x3874f49b51d3117b from memory into f30
froundnx.h f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf9b65de71addc3e # load x3 with value 0xbf9b65de71addc3e
sw x3, 0(x2) # store 0xbf9b65de71addc3e in memory
flh f24, 0(x2) # load 0xbf9b65de71addc3e from memory into f24
froundnx.h f23, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x89d88ae8e2146ab4 # load x3 with value 0x89d88ae8e2146ab4
sw x3, 0(x2) # store 0x89d88ae8e2146ab4 in memory
flh f9, 0(x2) # load 0x89d88ae8e2146ab4 from memory into f9
froundnx.h f24, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x400c5b9e8010e0a8 # load x3 with value 0x400c5b9e8010e0a8
sw x3, 0(x2) # store 0x400c5b9e8010e0a8 in memory
flh f3, 0(x2) # load 0x400c5b9e8010e0a8 from memory into f3
froundnx.h f25, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa304169be85d272d # load x3 with value 0xa304169be85d272d
sw x3, 0(x2) # store 0xa304169be85d272d in memory
flh f2, 0(x2) # load 0xa304169be85d272d from memory into f2
froundnx.h f26, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52944165630b48c3 # load x3 with value 0x52944165630b48c3
sw x3, 0(x2) # store 0x52944165630b48c3 in memory
flh f5, 0(x2) # load 0x52944165630b48c3 from memory into f5
froundnx.h f27, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x692f1ad83257c962 # load x3 with value 0x692f1ad83257c962
sw x3, 0(x2) # store 0x692f1ad83257c962 in memory
flh f30, 0(x2) # load 0x692f1ad83257c962 from memory into f30
froundnx.h f28, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe2e08aa9f54d4d23 # load x3 with value 0xe2e08aa9f54d4d23
sw x3, 0(x2) # store 0xe2e08aa9f54d4d23 in memory
flh f29, 0(x2) # load 0xe2e08aa9f54d4d23 from memory into f29
froundnx.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0ff5d58ac08db5d # load x3 with value 0xb0ff5d58ac08db5d
sw x3, 0(x2) # store 0xb0ff5d58ac08db5d in memory
flh f18, 0(x2) # load 0xb0ff5d58ac08db5d from memory into f18
froundnx.h f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x26d8ecadc122e3e6 # load x3 with value 0x26d8ecadc122e3e6
sw x3, 0(x2) # store 0x26d8ecadc122e3e6 in memory
flh f18, 0(x2) # load 0x26d8ecadc122e3e6 from memory into f18
froundnx.h f31, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
froundnx.h f15, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
froundnx.h f1, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
froundnx.h f3, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
froundnx.h f27, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
froundnx.h f16, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
froundnx.h f19, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
froundnx.h f14, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
froundnx.h f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
froundnx.h f17, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
froundnx.h f5, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
froundnx.h f7, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
froundnx.h f31, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
froundnx.h f22, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
froundnx.h f30, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
froundnx.h f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
froundnx.h f22, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
froundnx.h f19, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
froundnx.h f14, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
froundnx.h f26, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
froundnx.h f8, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
froundnx.h f24, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
froundnx.h f6, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
froundnx.h f10, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
froundnx.h f12, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
froundnx.h f9, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
froundnx.h f24, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
froundnx.h f31, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
froundnx.h f27, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bece7d84cca9d81 # load x3 with value 0x7bece7d84cca9d81
sw x3, 0(x2) # store 0x7bece7d84cca9d81 in memory
flh f0, 0(x2) # load 0x7bece7d84cca9d81 from memory into f0
froundnx.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9ed565ffcefeca74 # load x3 with value 0x9ed565ffcefeca74
sw x3, 0(x2) # store 0x9ed565ffcefeca74 in memory
flh f1, 0(x2) # load 0x9ed565ffcefeca74 from memory into f1
froundnx.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe5e75327ba2ade1 # load x3 with value 0xbe5e75327ba2ade1
sw x3, 0(x2) # store 0xbe5e75327ba2ade1 in memory
flh f2, 0(x2) # load 0xbe5e75327ba2ade1 from memory into f2
froundnx.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8aa69bc1dc124545 # load x3 with value 0x8aa69bc1dc124545
sw x3, 0(x2) # store 0x8aa69bc1dc124545 in memory
flh f3, 0(x2) # load 0x8aa69bc1dc124545 from memory into f3
froundnx.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23024044a503c864 # load x3 with value 0x23024044a503c864
sw x3, 0(x2) # store 0x23024044a503c864 in memory
flh f4, 0(x2) # load 0x23024044a503c864 from memory into f4
froundnx.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3008acad6769186f # load x3 with value 0x3008acad6769186f
sw x3, 0(x2) # store 0x3008acad6769186f in memory
flh f5, 0(x2) # load 0x3008acad6769186f from memory into f5
froundnx.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2041f8fdf076da8b # load x3 with value 0x2041f8fdf076da8b
sw x3, 0(x2) # store 0x2041f8fdf076da8b in memory
flh f6, 0(x2) # load 0x2041f8fdf076da8b from memory into f6
froundnx.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c3f8460b248b0db # load x3 with value 0x6c3f8460b248b0db
sw x3, 0(x2) # store 0x6c3f8460b248b0db in memory
flh f7, 0(x2) # load 0x6c3f8460b248b0db from memory into f7
froundnx.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe9d33b197f31ee50 # load x3 with value 0xe9d33b197f31ee50
sw x3, 0(x2) # store 0xe9d33b197f31ee50 in memory
flh f8, 0(x2) # load 0xe9d33b197f31ee50 from memory into f8
froundnx.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5853a5bcf70f2c81 # load x3 with value 0x5853a5bcf70f2c81
sw x3, 0(x2) # store 0x5853a5bcf70f2c81 in memory
flh f9, 0(x2) # load 0x5853a5bcf70f2c81 from memory into f9
froundnx.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80594979328b401c # load x3 with value 0x80594979328b401c
sw x3, 0(x2) # store 0x80594979328b401c in memory
flh f10, 0(x2) # load 0x80594979328b401c from memory into f10
froundnx.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a803b08a3388358 # load x3 with value 0x5a803b08a3388358
sw x3, 0(x2) # store 0x5a803b08a3388358 in memory
flh f11, 0(x2) # load 0x5a803b08a3388358 from memory into f11
froundnx.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d7942f860d4c6e9 # load x3 with value 0x9d7942f860d4c6e9
sw x3, 0(x2) # store 0x9d7942f860d4c6e9 in memory
flh f12, 0(x2) # load 0x9d7942f860d4c6e9 from memory into f12
froundnx.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x862a4882fa292660 # load x3 with value 0x862a4882fa292660
sw x3, 0(x2) # store 0x862a4882fa292660 in memory
flh f13, 0(x2) # load 0x862a4882fa292660 from memory into f13
froundnx.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a442a68c17583a7 # load x3 with value 0x1a442a68c17583a7
sw x3, 0(x2) # store 0x1a442a68c17583a7 in memory
flh f14, 0(x2) # load 0x1a442a68c17583a7 from memory into f14
froundnx.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1f04bc11c63f3208 # load x3 with value 0x1f04bc11c63f3208
sw x3, 0(x2) # store 0x1f04bc11c63f3208 in memory
flh f15, 0(x2) # load 0x1f04bc11c63f3208 from memory into f15
froundnx.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3661ad0b99b4ea6d # load x3 with value 0x3661ad0b99b4ea6d
sw x3, 0(x2) # store 0x3661ad0b99b4ea6d in memory
flh f16, 0(x2) # load 0x3661ad0b99b4ea6d from memory into f16
froundnx.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7bcdf345b879bf87 # load x3 with value 0x7bcdf345b879bf87
sw x3, 0(x2) # store 0x7bcdf345b879bf87 in memory
flh f17, 0(x2) # load 0x7bcdf345b879bf87 from memory into f17
froundnx.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ef5b070f59ac77b # load x3 with value 0x8ef5b070f59ac77b
sw x3, 0(x2) # store 0x8ef5b070f59ac77b in memory
flh f18, 0(x2) # load 0x8ef5b070f59ac77b from memory into f18
froundnx.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb741217035dbb8f # load x3 with value 0xbb741217035dbb8f
sw x3, 0(x2) # store 0xbb741217035dbb8f in memory
flh f19, 0(x2) # load 0xbb741217035dbb8f from memory into f19
froundnx.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6778cacc12c39300 # load x3 with value 0x6778cacc12c39300
sw x3, 0(x2) # store 0x6778cacc12c39300 in memory
flh f20, 0(x2) # load 0x6778cacc12c39300 from memory into f20
froundnx.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xad26851a2a97b2c4 # load x3 with value 0xad26851a2a97b2c4
sw x3, 0(x2) # store 0xad26851a2a97b2c4 in memory
flh f21, 0(x2) # load 0xad26851a2a97b2c4 from memory into f21
froundnx.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83b07cd62562503 # load x3 with value 0xa83b07cd62562503
sw x3, 0(x2) # store 0xa83b07cd62562503 in memory
flh f22, 0(x2) # load 0xa83b07cd62562503 from memory into f22
froundnx.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2eaededbe1f85854 # load x3 with value 0x2eaededbe1f85854
sw x3, 0(x2) # store 0x2eaededbe1f85854 in memory
flh f23, 0(x2) # load 0x2eaededbe1f85854 from memory into f23
froundnx.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xebe18b6ce5980edf # load x3 with value 0xebe18b6ce5980edf
sw x3, 0(x2) # store 0xebe18b6ce5980edf in memory
flh f24, 0(x2) # load 0xebe18b6ce5980edf from memory into f24
froundnx.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b6efed20f0b8e00 # load x3 with value 0x3b6efed20f0b8e00
sw x3, 0(x2) # store 0x3b6efed20f0b8e00 in memory
flh f25, 0(x2) # load 0x3b6efed20f0b8e00 from memory into f25
froundnx.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3b49f5138c6fb77c # load x3 with value 0x3b49f5138c6fb77c
sw x3, 0(x2) # store 0x3b49f5138c6fb77c in memory
flh f26, 0(x2) # load 0x3b49f5138c6fb77c from memory into f26
froundnx.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x34d8cd91b3387d78 # load x3 with value 0x34d8cd91b3387d78
sw x3, 0(x2) # store 0x34d8cd91b3387d78 in memory
flh f27, 0(x2) # load 0x34d8cd91b3387d78 from memory into f27
froundnx.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47bba4fc423e7e93 # load x3 with value 0x47bba4fc423e7e93
sw x3, 0(x2) # store 0x47bba4fc423e7e93 in memory
flh f28, 0(x2) # load 0x47bba4fc423e7e93 from memory into f28
froundnx.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa3690d527efc5942 # load x3 with value 0xa3690d527efc5942
sw x3, 0(x2) # store 0xa3690d527efc5942 in memory
flh f29, 0(x2) # load 0xa3690d527efc5942 from memory into f29
froundnx.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd8403333a6143813 # load x3 with value 0xd8403333a6143813
sw x3, 0(x2) # store 0xd8403333a6143813 in memory
flh f30, 0(x2) # load 0xd8403333a6143813 from memory into f30
froundnx.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c6912de2b7ba172 # load x3 with value 0x7c6912de2b7ba172
sw x3, 0(x2) # store 0x7c6912de2b7ba172 in memory
flh f31, 0(x2) # load 0x7c6912de2b7ba172 from memory into f31
froundnx.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73db016004a84f08 # load x3 with value 0x73db016004a84f08
sw x3, 0(x2) # store 0x73db016004a84f08 in memory
flh f2, 0(x2) # load 0x73db016004a84f08 from memory into f2
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
li x3, 0x304de47eabf02532 # load x3 with value 0x304de47eabf02532
sw x3, 0(x2) # store 0x304de47eabf02532 in memory
flh f27, 0(x2) # load 0x304de47eabf02532 from memory into f27
froundnx.h f20, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f14)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
froundnx.h f7, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f10, 0(x2) # load 0xfffe8000 from memory into f10
froundnx.h f8, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f15, 0(x2) # load 0x7fff3c00 from memory into f15
froundnx.h f7, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f9, 0(x2) # load 0xbeefbc00 from memory into f9
froundnx.h f21, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f29, 0(x2) # load 0xfeff0400 from memory into f29
froundnx.h f8, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f11, 0(x2) # load 0x0fff8400 from memory into f11
froundnx.h f12, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f7, 0(x2) # load 0xefff7bff from memory into f7
froundnx.h f15, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f9, 0(x2) # load 0xc0defbff from memory into f9
froundnx.h f17, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f13, 0(x2) # load 0x4f1a7c00 from memory into f13
froundnx.h f2, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f2)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f2, 0(x2) # load 0x0ffffc00 from memory into f2
froundnx.h f8, f2 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f23)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f23, 0(x2) # load 0xffef7e00 from memory into f23
froundnx.h f16, f23 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f7, 0(x2) # load 0xfeef7fff from memory into f7
froundnx.h f15, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
froundnx.h f7, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f3, 0(x2) # load 0x4fd77dff from memory into f3
froundnx.h f22, f3 # perform operation second time to make sure flags don't change

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
