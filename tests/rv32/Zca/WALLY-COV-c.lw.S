///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.lw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.489397
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x92578240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbec874e5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -44 # sub immediate from rs1 to counter offset
c.sw x9, 44(x8) # store value to put something in memory
c.lw x8, 44(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xedb0e20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c4b03bb # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x9) # store value to put something in memory
c.lw x9, 16(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x72d3ee22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3628f82b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x10) # store value to put something in memory
c.lw x10, 76(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7192f3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x90a547c1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x13, 20(x11) # store value to put something in memory
c.lw x11, 20(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x68f3a1ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6f90f58e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x12) # store value to put something in memory
c.lw x12, 20(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x8adf1520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xed213c6c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x12, 76(x13) # store value to put something in memory
c.lw x13, 76(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x993d0993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x71103a27 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x14) # store value to put something in memory
c.lw x14, 92(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4b3b1bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8e0c0b50 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x8, 92(x15) # store value to put something in memory
c.lw x15, 92(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2a3fadee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb3a5c626 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x11) # store value to put something in memory
c.lw x8, 80(x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2075c8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6edbca41 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x13) # store value to put something in memory
c.lw x9, 80(x13) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8228ea70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e286ff7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sw x11, 80(x15) # store value to put something in memory
c.lw x10, 80(x15) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x240b45cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x26cea9ad # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x12) # store value to put something in memory
c.lw x11, 24(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xbd6383f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9f2ac5e2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x10, 44(x9) # store value to put something in memory
c.lw x12, 44(x9) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xeeeec7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x880aed14 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x15, 28(x11) # store value to put something in memory
c.lw x13, 28(x11) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd3c2e2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x29c43a4b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sw x12, 112(x11) # store value to put something in memory
c.lw x14, 112(x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf8d45e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x99841efc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x12) # store value to put something in memory
c.lw x15, 68(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xe6a6ecfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1f7cc97 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xd4add508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x12) # store value to put something in memory
c.lw x8, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x80776fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x13) # store value to put something in memory
c.lw x14, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x781a246b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc2fb5e5e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sw x15, 0(x8) # store value to put something in memory
c.lw x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x0e8eb7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x15) # store value to put something in memory
c.lw x15, 4(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x876c9527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # store value to put something in memory
c.lw x11, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0xacf2b08f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x04907861 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x15, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0xbf194ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x9) # store value to put something in memory
c.lw x12, 8(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x102d8ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x9) # store value to put something in memory
c.lw x13, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x31, 0x50f0bdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1438c13 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x22, 0xb5d4e108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x14) # store value to put something in memory
c.lw x14, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0x93d165cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x14) # store value to put something in memory
c.lw x15, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0xb5ee74d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc90405cf # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x14, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0x2f0dba79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -4 # sub immediate from rs1 to counter offset
c.sw x8, 4(x14) # store value to put something in memory
c.lw x11, 4(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x86b2078c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x12) # store value to put something in memory
c.lw x11, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x1f1068e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x92654ec9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0xd7dde850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x25c779a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x12) # store value to put something in memory
c.lw x13, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x20, 0x2107b818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x53420073 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x12, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xadaa806e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x15) # store value to put something in memory
c.lw x14, 120(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0xfe4fb80a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x15) # store value to put something in memory
c.lw x10, 124(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x810e1e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfaab2880 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x4d413e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xbf03a97b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x13) # store value to put something in memory
c.lw x12, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xcfdbc935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda19e86e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0xfaca3934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x10) # store value to put something in memory
c.lw x13, 120(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xe65d044c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x11) # store value to put something in memory
c.lw x14, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x18b9ef1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3b4c9dd # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0x57ed91fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc8877 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x15) # store value to put something in memory
c.lw x12, 92(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0xc3868ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x10) # store value to put something in memory
c.lw x11, 124(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0x7666aaba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b834988 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x8) # store value to put something in memory
c.lw x15, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x24, 0x54b9e246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x15) # store value to put something in memory
c.lw x8, 40(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xae6b34d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x11) # store value to put something in memory
c.lw x11, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x16, 0x1dede005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeaff57a6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xdc4b0c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -84 # sub immediate from rs1 to counter offset
c.sw x9, 84(x15) # store value to put something in memory
c.lw x14, 84(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x16, 0x31954a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x11) # store value to put something in memory
c.lw x8, 124(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0x91986305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a04306d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x8) # store value to put something in memory
c.lw x11, 40(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x03c419cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x344bef36 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x15, 8(x9) # store value to put something in memory
c.lw x13, 8(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0xbb55ac1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0eacbae6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x10) # store value to put something in memory
c.lw x10, 104(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0x0047e659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbb6bea15 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x11) # store value to put something in memory
c.lw x15, 120(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x35fe6ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xefca7151 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x12) # store value to put something in memory
c.lw x11, 28(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x9c2b5e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x39092423 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sw x15, 72(x13) # store value to put something in memory
c.lw x15, 72(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xba40fc8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x54f02ee7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x13, 64(x14) # store value to put something in memory
c.lw x13, 64(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x3fbbddb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe1278536 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -116 # sub immediate from rs1 to counter offset
c.sw x10, 116(x15) # store value to put something in memory
c.lw x9, 116(x15) # perform operation

# Testcase cp_imm_mul
li x26, 0xa418ef30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc52477d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x10) # store value to put something in memory
c.lw x10, 0(x10) # perform operation

# Testcase cp_imm_mul
li x9, 0xc342d9fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc07eb539 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x9) # store value to put something in memory
c.lw x9, 4(x9) # perform operation

# Testcase cp_imm_mul
li x31, 0xe903d717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6f67e501 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sw x12, 8(x13) # store value to put something in memory
c.lw x15, 8(x13) # perform operation

# Testcase cp_imm_mul
li x19, 0xd379ee5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3e24e60a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -12 # sub immediate from rs1 to counter offset
c.sw x11, 12(x10) # store value to put something in memory
c.lw x11, 12(x10) # perform operation

# Testcase cp_imm_mul
li x6, 0xdd139640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf4916ad4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x14) # store value to put something in memory
c.lw x14, 16(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0xaec59a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc66300a2 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
c.sw x12, 20(x15) # store value to put something in memory
c.lw x15, 20(x15) # perform operation

# Testcase cp_imm_mul
li x25, 0x05149f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2f3125e9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x11) # store value to put something in memory
c.lw x9, 24(x11) # perform operation

# Testcase cp_imm_mul
li x4, 0x0de8f4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7053d21d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x9) # store value to put something in memory
c.lw x12, 28(x9) # perform operation

# Testcase cp_imm_mul
li x27, 0x5871d578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcd319a18 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x15, 32(x14) # store value to put something in memory
c.lw x11, 32(x14) # perform operation

# Testcase cp_imm_mul
li x4, 0x2ac2a336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x982c9450 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -36 # sub immediate from rs1 to counter offset
c.sw x13, 36(x14) # store value to put something in memory
c.lw x12, 36(x14) # perform operation

# Testcase cp_imm_mul
li x28, 0x4170055b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf87b2279 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x13) # store value to put something in memory
c.lw x12, 40(x13) # perform operation

# Testcase cp_imm_mul
li x1, 0xd88b7a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc772511f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -44 # sub immediate from rs1 to counter offset
c.sw x9, 44(x10) # store value to put something in memory
c.lw x9, 44(x10) # perform operation

# Testcase cp_imm_mul
li x17, 0xc7f236e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9475595d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x15) # store value to put something in memory
c.lw x9, 48(x15) # perform operation

# Testcase cp_imm_mul
li x9, 0xc72074dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x036874ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x10) # store value to put something in memory
c.lw x9, 52(x10) # perform operation

# Testcase cp_imm_mul
li x25, 0x673eef33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4a3d2861 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x14, 56(x10) # store value to put something in memory
c.lw x9, 56(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xd88092d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x03c74d1e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x11, 60(x9) # store value to put something in memory
c.lw x15, 60(x9) # perform operation

# Testcase cp_imm_mul
li x16, 0xa04e47c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x810e2f6d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x9, 64(x15) # store value to put something in memory
c.lw x8, 64(x15) # perform operation

# Testcase cp_imm_mul
li x1, 0xc59600c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x28a780e5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x10, 68(x13) # store value to put something in memory
c.lw x9, 68(x13) # perform operation

# Testcase cp_imm_mul
li x19, 0x135551a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe5dfb9a3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x10) # store value to put something in memory
c.lw x11, 72(x10) # perform operation

# Testcase cp_imm_mul
li x22, 0x76570bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3d69bc54 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x11) # store value to put something in memory
c.lw x14, 76(x11) # perform operation

# Testcase cp_imm_mul
li x25, 0x6a5bdd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x297fc4f8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x15, 80(x11) # store value to put something in memory
c.lw x9, 80(x11) # perform operation

# Testcase cp_imm_mul
li x3, 0xe594b7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x28b8f3e5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x9) # store value to put something in memory
c.lw x11, 84(x9) # perform operation

# Testcase cp_imm_mul
li x6, 0x6a395c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbb460dd0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x13) # store value to put something in memory
c.lw x14, 88(x13) # perform operation

# Testcase cp_imm_mul
li x27, 0x5f6d9a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27d6b364 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -92 # sub immediate from rs1 to counter offset
c.sw x13, 92(x8) # store value to put something in memory
c.lw x11, 92(x8) # perform operation

# Testcase cp_imm_mul
li x19, 0x28611560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x31bd19c9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x10) # store value to put something in memory
c.lw x11, 96(x10) # perform operation

# Testcase cp_imm_mul
li x6, 0x40773e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2edad86d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -100 # sub immediate from rs1 to counter offset
c.sw x10, 100(x14) # store value to put something in memory
c.lw x14, 100(x14) # perform operation

# Testcase cp_imm_mul
li x15, 0xf3da91fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5a3d044 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x14) # store value to put something in memory
c.lw x15, 104(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0x22f5432e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe288f6ad # initialize rs2
la x14, scratch # base address 
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x14) # store value to put something in memory
c.lw x10, 108(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0xd6f64ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x112094ef # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x13, 112(x14) # store value to put something in memory
c.lw x15, 112(x14) # perform operation

# Testcase cp_imm_mul
li x13, 0x6a8600da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc792a105 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x9) # store value to put something in memory
c.lw x13, 116(x9) # perform operation

# Testcase cp_imm_mul
li x22, 0xc0514100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcacfd461 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x9) # store value to put something in memory
c.lw x14, 120(x9) # perform operation

# Testcase cp_imm_mul
li x4, 0x5c9838e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd9718e9e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x13) # store value to put something in memory
c.lw x12, 124(x13) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
