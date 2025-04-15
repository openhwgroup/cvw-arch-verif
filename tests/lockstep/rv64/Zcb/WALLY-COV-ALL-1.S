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
// Tests from: WALLY-COV-c.lbu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0x360794e508d84f8a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x8) # store value to put something in memory
c.lbu x8, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x12, 0x9c56eeb3f2bc92a1 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x9, 1(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0x92aeaf16327d9c2d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x9, 0x480208a0d3f7197f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x11) # store value to put something in memory
c.lbu x11, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x13, 0x48a66477a937a520 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x12) # store value to put something in memory
c.lbu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x12, 0x6950a97a7ed1484f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x13) # store value to put something in memory
c.lbu x13, 1(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x11, 0xbd3a11eca8bf7eaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x14) # store value to put something in memory
c.lbu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x6a9398925143034a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x15) # store value to put something in memory
c.lbu x15, 1(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x6488d59747acf7d3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x8) # store value to put something in memory
c.lbu x9, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0xa1ad107e8880cacf # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x9) # store value to put something in memory
c.lbu x12, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x13c19367e95dca40 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x9b50466da8dd9cdb # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x11) # store value to put something in memory
c.lbu x10, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0xb8601efad4a8dfd0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x10, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x0fc65199a3e64d09 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x13) # store value to put something in memory
c.lbu x10, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xf239e0e8fdd84e39 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x14) # store value to put something in memory
c.lbu x11, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x32fea718cd2c18ba # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x15) # store value to put something in memory
c.lbu x11, 1(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x37182ac4a75a5351 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x10) # store value to put something in memory
c.lbu x8, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x0e11000f55f66246 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x9, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xec3552fa6f104293 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x11) # store value to put something in memory
c.lbu x10, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc14e93270aa11ee0 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x15) # store value to put something in memory
c.lbu x11, 1(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x559454fdbd8f7281 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x8) # store value to put something in memory
c.lbu x12, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x680ea012dabafb1d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x8) # store value to put something in memory
c.lbu x13, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xcfb712a1e5e6b0cb # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x14) # store value to put something in memory
c.lbu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x77669e4d0a2bcb0b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x15, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

#.EQU SIGSIZE,192


// ******************
// Tests from: WALLY-COV-c.sh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x0000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x0000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0000000000000002 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x13, 0x0000000100000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x8563fba1826eeb82 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x99611f02356fb1aa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xe4aa0db1a4e63b26 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x9c9c11b8e77801eb # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x68f4aae01093f4fa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x2eabb6d57eaaa779 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x38922dfc52a39139 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x678f54a68f2b25ed # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x9151f9def1fb0357 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xb014fca45c59152e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x08c037d012dbbbcb # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x33f58c17a1c4beaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xbf8f5742177f846c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x062afa552d1cd718 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x722e83601e6dd1c2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x5a738f494a6d6a5b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.not.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x0000000000000000 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xebd458d7aab47ec3 # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xe24fc3ad0bb5214c # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x71b10496dacf1416 # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x42217088600848e9 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x198d247c908ab2d8 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x1aebf2a121bb818f # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xeeb2d59bbad159f3 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x2f112498fab4a595 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x61fdeaeb2ba10244 # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb7c72cfe908ba0e8 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf848bd6b0c25d907 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x466a6e639fe88b98 # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x82a5344e408d199d # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x21d3b6c5ed1fca4e # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2c617d4598669ac7 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x54a785ccc9633397 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.sb.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x0000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x12, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x9, 3(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x15, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x0e6a30cd96a164a2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x05195265f8a70fbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xa5c6662e2bb81473 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x59e2de478bee7af0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0xf638270b72900292 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x9, 3(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x5e41ff9735612de1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x805e84a375525f19 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xec96f3a92037b11a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd096432a3ab3fe9b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x80bbc7fe71f44f05 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xdc67766ee1dd87d6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x3c6b67fbad7fbf7e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xa2b2dbc0c892a5f8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x79949b5a5191e922 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x573aae5d1903f35a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x615fe176decac3c7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x10) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.lhu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x14, 0xb795b6dbf1ca7467 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x45d2c2c38b0e2cf0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0x9e779000f8ef5bef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x15, 0x203a89b17c0ae656 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x8, 0x9099b64f1e13ebaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0x683f62365a7dad07 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0x541c6e1725fd6488 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x14, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x2cd8b9cb6e935ec8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lhu x15, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xab83213853425b50 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x7bb5c566c888a7ef # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x8, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x6ca4f8817ecc153b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x10) # store value to put something in memory
c.lhu x8, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x94a4588ce7d7a495 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lhu x8, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x14430e49b2c910d8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # store value to put something in memory
c.lhu x9, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x36703e42aee56f4f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x14, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x319a64389acbdf2a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x10, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xcb7d9da959786433 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lhu x13, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2812b2518083d12b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x8, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x3fa2cdd633c78835 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x9, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x27cbbd8f289fdaa2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x10, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x3f6636e6a0b8a83e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x0552966622fe5379 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lhu x12, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x70d68b5b884f5cd3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x11) # store value to put something in memory
c.lhu x13, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xf62e6ab60060fbaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9497ed81fab9fad8 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x10) # store value to put something in memory
c.lhu x15, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

#.EQU SIGSIZE,192


// ******************
// Tests from: WALLY-COV-c.zext.b.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x0000000000000000 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x530f0f7e44c52b57 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x9ef609c11fb8ca10 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xaacbfc573d7f21ea # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x0951d746b6908bf6 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x02b5670ac81d86e8 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xc994c5d09475cbf4 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x8b402614ad344579 # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xd176360008a266a1 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x147691206ae38b5a # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x215ec36ed8d360dd # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7d6f6ff40d0e3b20 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x954f7e58bcf0f4e8 # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb7f377498a478b83 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6921c5f276a9c5c2 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfc48fbf98642d36b # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7a256a3803ce5d32 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.lh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x14, 0xf267ec15080d4abb # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x8, 0x1eadc7dcdbecfea4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0xdc77c201af3925ed # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lh x10, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x8, 0xc1e82ffbac3a04fa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0x8fba72ad11a87f7b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0xc59310531a57523f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0x67f76b78f3c7f111 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0x5dc97807d198d1ea # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xbf61f71514434a76 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x8) # store value to put something in memory
c.lh x13, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xebacb09d3e060f82 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x7530e0648b70b97f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lh x13, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x2a5c80a351a44cd9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x11) # store value to put something in memory
c.lh x15, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xc0dc019fe98be94b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lh x8, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x1808374ed8ea1e1f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x11, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x206003c3133772f2 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lh x9, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x811883f6f19e1454 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # store value to put something in memory
c.lh x14, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xdb5d666534b9b76a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x8, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xe6fc8e4ff81f088c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x77b177f5bae68e8c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lh x10, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xa4b23699cb812d88 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x66428286d256e03d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x12, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x26155c18e7cc559f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x9d684208dd3f41ad # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lh x14, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x1a61aa9e89fc804c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x15, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

#.EQU SIGSIZE,192
.EQU SIGSIZE,1088 #combined


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
