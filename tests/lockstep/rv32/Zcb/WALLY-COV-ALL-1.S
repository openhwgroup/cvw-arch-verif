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
li x15, 0x12547bf5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x8) # store value to put something in memory
c.lbu x8, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x14, 0x9f92d018 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x9) # store value to put something in memory
c.lbu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x5ef452b9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x12, 0x38630f6e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x11) # store value to put something in memory
c.lbu x11, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x15, 0xa5da1d58 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0x398a80cc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x13) # store value to put something in memory
c.lbu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x11, 0x48a66477 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x14) # store value to put something in memory
c.lbu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0x4a2b71a7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x15) # store value to put something in memory
c.lbu x15, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x0779d2c6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x8) # store value to put something in memory
c.lbu x9, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x0c83e650 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x15, 1(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x8dba8e57 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xad458438 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x11) # store value to put something in memory
c.lbu x10, 1(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xa7b99cce # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x8, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x012886dd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x13) # store value to put something in memory
c.lbu x8, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x05600863 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x14) # store value to put something in memory
c.lbu x13, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x51661091 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x15) # store value to put something in memory
c.lbu x11, 1(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x6133a2e0 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x10) # store value to put something in memory
c.lbu x8, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x439c5e70 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x8) # store value to put something in memory
c.lbu x9, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x96bddb2e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x9) # store value to put something in memory
c.lbu x10, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0x8367022a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x11, 1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xc9c2a9b0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x13) # store value to put something in memory
c.lbu x12, 1(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x31bb9d5a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x9) # store value to put something in memory
c.lbu x13, 1(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x0650a179 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x14) # store value to put something in memory
c.lbu x14, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x8bb9b6ec # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x8) # store value to put something in memory
c.lbu x15, 1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

#.EQU SIGSIZE,96


// ******************
// Tests from: WALLY-COV-c.sh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x00000002 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x80000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x80000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x55555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa308378d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x0113e9f7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x2f437560 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x809a384a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x68f4aae0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x450a8884 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x24aba06e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x38922dfc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x9353f91a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x5a86b81c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xd3fa7e91 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xcfe1f0a8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xed959582 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xbf8f5742 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x062afa55 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6afe26ee # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.not.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x00000000 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x00000001 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x00000002 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0x80000000 # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0xffffffff # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xac7a5fb5 # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x5330c2c4 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x95956c12 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x5a6c71e2 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0x5f408ffd # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x5012c447 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x6c9258b4 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xb9c2446f # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2ba10244 # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe6824aff # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x84c627a6 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x673f0f61 # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa3f401ff # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe472cc8c # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd089c251 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x21d3b6c5 # initialize rd to specific value
c.not x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-c.sb.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x00000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x00000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x12, 3(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x00000002 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x80000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x14, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x11, 0x80000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sb x11, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0xffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x15, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x55555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sb x15, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x014222b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x60849cf5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xf8a70fbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0xb2e4a6b3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xb4ad99b3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x20c7ec17 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xe32aff92 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xe829c8a9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x0754c06e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x4d952a02 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x9c70cef1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xb4ea8d26 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xd9277d00 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe0865e01 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfb703d5c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf811a94a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x15, 3(x10) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.lhu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x14, 0x2fdc387d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x8b0e2cf0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0x41b52b05 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x10) # store value to put something in memory
c.lhu x10, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x9, 0xa665f47e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x10, 0x0dec6231 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x8, 0xff04412c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x9, 0x4d29b80c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x9, 0x3de1e31e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x15, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x005632ce # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x14, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x72c40f2d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x8, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0xe80e475d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x5c93e528 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x1eb2a108 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x496d0cd3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x13) # store value to put something in memory
c.lhu x9, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xb2c910d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x10, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x185d647f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x11, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2812b251 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lhu x8, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb1560b5e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x9, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x287abb7d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lhu x10, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x3ca42262 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x11, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xf6b2dddc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lhu x12, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xf1cd6924 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lhu x13, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x6575201d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lhu x14, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xf01fa724 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lhu x15, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

#.EQU SIGSIZE,96


// ******************
// Tests from: WALLY-COV-c.zext.b.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x00000000 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0x80000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x80000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xef93da45 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x1ebeebf4 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x09a88528 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xa1fb0930 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x9ce807af # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xd894ee76 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x6c90ef69 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xf3cb01e0 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8bf59817 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xefa3770e # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf10c4891 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe42b860e # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x954f7e58 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf7000938 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6f8781b9 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc4e9ec54 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-c.lh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x14, 0x207855a2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0xdbecfea4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x11, 0xdc77c201 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # store value to put something in memory
c.lh x10, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x14, 0xb2e3d128 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x11) # store value to put something in memory
c.lh x11, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x22077f2c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x10, 0xa694754a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x13, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0xbde1dcf4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x13, 0x67f76b78 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x4f255ec1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x8) # store value to put something in memory
c.lh x13, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x4df7598c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # store value to put something in memory
c.lh x11, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x84718d08 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x78b01593 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # store value to put something in memory
c.lh x12, 0(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xbbfedcf1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x12) # store value to put something in memory
c.lh x11, 2(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x1a05c462 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # store value to put something in memory
c.lh x14, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x286a51b4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lh x13, 2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xd8ea1e1f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lh x11, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x2262eac2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x8, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x327b6812 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lh x9, 2(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xbae68e8c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lh x10, 2(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xa4b23699 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x11, 2(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x26db699d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # store value to put something in memory
c.lh x12, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x5e1fe211 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x15) # store value to put something in memory
c.lh x13, 0(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0xfd87a4c1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x14, 0(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x77903a9f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # store value to put something in memory
c.lh x15, 2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

#.EQU SIGSIZE,96
.EQU SIGSIZE,512 #combined


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
