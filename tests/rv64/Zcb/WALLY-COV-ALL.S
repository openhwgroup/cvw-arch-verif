//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.lbu.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3e352a1e0ec1636e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0810cab68edab641 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x8) # store value to put something in memory
c.lbu x8, 1(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xdf7175abc5c59ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b637176e2cb4293 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x9) # store value to put something in memory
c.lbu x9, 1(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4dbeca05ac3b6b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2f6585bc56c604e2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe75b1d087989d8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe1035acaf2a7980e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x11) # store value to put something in memory
c.lbu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd081c3f2bc6f178d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x70961fdd1d3747e9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x12) # store value to put something in memory
c.lbu x12, 1(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x83c2e6e8ddee5300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x646874bb6ddb5cfa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x13) # store value to put something in memory
c.lbu x13, 1(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc73fa4c12090827d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x08067e1d6237fa92 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x14) # store value to put something in memory
c.lbu x14, 1(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff81a6478c9a67b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6065a2d0b877dbee # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x15) # store value to put something in memory
c.lbu x15, 1(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x84ba8a1df29d53ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9fe7c8670fc75cd1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x11) # store value to put something in memory
c.lbu x8, 0(x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x03a2f86477ba2ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4366ee868597f74a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x11) # store value to put something in memory
c.lbu x9, 1(x11) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7b83d31a605d0b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfe0906b20af9be02 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x10, 1(x9) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xfc86b592645aa89f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa055e0720851e62a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x11, 0(x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5fbdb888e2ff9009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8d2338d4307ccb22 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x12) # store value to put something in memory
c.lbu x12, 1(x12) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe7a7b947582f1cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64c85f16799a11bc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x9) # store value to put something in memory
c.lbu x13, 1(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3a0cf366cc93aea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7c797d76297893d4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x9) # store value to put something in memory
c.lbu x14, 0(x9) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x91ec9f6b50b51a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x40237329c36a5ce7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x14) # store value to put something in memory
c.lbu x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xef3dfcfac6cb6fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xca75582812302799 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x14) # store value to put something in memory
c.lbu x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x7643382454281b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x9) # store value to put something in memory
c.lbu x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x9dfa0d0966884fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x15) # store value to put something in memory
c.lbu x9, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xc9b2ffb1af4f768c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x03d6bcd99f5c1f8e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # store value to put something in memory
c.lbu x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x854d8339e24582ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x13) # store value to put something in memory
c.lbu x12, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0xc52fc17138749ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x14) # store value to put something in memory
c.lbu x8, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x5f4d5a346a0e8a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x731fe39e31883ddc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x8) # store value to put something in memory
c.lbu x13, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xf66bbc3c3dc96d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x8) # store value to put something in memory
c.lbu x11, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0xfff46013e693d485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x12) # store value to put something in memory
c.lbu x12, 1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x15, 0x9c23cb06947c0720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6a01be41458421fa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x15, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x31, 0x38106457526a2a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000080 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x11) # store value to put something in memory
c.lbu x15, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x31, 0xa29daeba0f27f344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000080 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x11) # store value to put something in memory
c.lbu x15, 1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x1, 0x3a19a7e45881eeb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf1d450e5bf123c88 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x12, 0x99e91cf3102a34d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000081 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x11) # store value to put something in memory
c.lbu x12, 1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x27, 0x72f8936d06e13c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000081 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x14) # store value to put something in memory
c.lbu x11, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x2, 0xb8e60f0416f5d18e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xec7e16673f7cd2e7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # store value to put something in memory
c.lbu x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x3, 0xdbb966573d179232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000007f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x15) # store value to put something in memory
c.lbu x11, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x6, 0x0f360125710524df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000007f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x14, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x16, 0xf5326cf812bc4b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x537af676241f57a0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x8, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x7, 0x5f7eeef73aa5b16f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000007e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x9) # store value to put something in memory
c.lbu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x12, 0x9dbf280edc99b451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000007e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x14) # store value to put something in memory
c.lbu x12, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x9, 0x7dc40c1512f36b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe21c54e1cf362e27 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x31, 0x94d451424ff7a145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000000000ff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x14) # store value to put something in memory
c.lbu x15, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x8, 0x1ce135cc91d20b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000000000ff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x13) # store value to put something in memory
c.lbu x8, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0x86e27c7f3ec9c282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xade6fbfed964e56a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x8) # store value to put something in memory
c.lbu x15, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x21, 0x8784511ccf2cc5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000000000fe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x8) # store value to put something in memory
c.lbu x13, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x12, 0xd9a860acc6d45828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000fe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x12, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x3, 0x4071f4a5321b3809 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9fe2c1718dc25995 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x15) # store value to put something in memory
c.lbu x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x15, 0x09761124751fa602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000055 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x11) # store value to put something in memory
c.lbu x15, 1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x21, 0xad0239158c9b0c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000055 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x9) # store value to put something in memory
c.lbu x13, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x6, 0xb070182117a8bf1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6dabaa44759d45c3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x11) # store value to put something in memory
c.lbu x14, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x4, 0x05b2c076f7484d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000000000aa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x12, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x10, 0x7cb34704392f04c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000000000aa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x15) # store value to put something in memory
c.lbu x10, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x15, 0x30241d1a32918dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbbf74fb04ac36b76 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x25, 0x58fee058dda19727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000005b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x14) # store value to put something in memory
c.lbu x9, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x13, 0xfd6a6f80a5944690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000005b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x12) # store value to put something in memory
c.lbu x13, 1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x1, 0x4a902d422db2d555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6daa1120e8b3db06 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x1, 0xe47489049f8627d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000db # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x15) # store value to put something in memory
c.lbu x9, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x14, 0x38ce5c3403960d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000db # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # store value to put something in memory
c.lbu x14, 1(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x61266316ab7c371a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf4fc60a3f90ccc32 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x8) # store value to put something in memory
c.lbu x10, 1(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0x64c9eb4a1dfae906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8a4c656de9256a14 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x12, 0(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x7826ea3e38dcb977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1a862d2d6d11f0f3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0xcd565b18e9f995ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7482ead578899c94 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x11) # store value to put something in memory
c.lbu x9, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xb7c351cf5ef4aad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5c9fa135a1dc1204 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x12) # store value to put something in memory
c.lbu x15, 1(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x6, 0xa1e2ace5f3fb3cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe81209edefa52b19 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x13) # store value to put something in memory
c.lbu x14, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0xf52959e1fbaa3c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd604f059755c2fd2 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x14) # store value to put something in memory
c.lbu x15, 1(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x8c7665fb3cf49e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5617ca2e62576a33 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x15) # store value to put something in memory
c.lbu x10, 1(x15) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sh.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x73d73871dbeec6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5cb1985e87703415 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x18, 0x76645f7789620849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x35cc36c7454c207b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x5cdcdca9f102950c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x88f789db1df3aa54 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xfc1e00a2897824fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd220f9642e5141d6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x160f5cd4e8da8ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd84ee5d6aa60f53a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x427556d4d71c71d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf64c0b261d43c008 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x0ba8e57672a1aa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd91fcdefd90c8cc2 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x5356a26412718d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a78379242e2db9e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x872fa5638d3fcb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x67e6d56e4d726862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0xf1b9bc8b8bfa347e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0xa4904562b2ab2d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x19cb9fd6769d49d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x66fbd3777e97186d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x4, 0x7bbd5632ac60e724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x376323472889387e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0x10b042cccad0e21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x8, 0x55853bc55357abb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x545168e8ebced37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0xea01204bdac675d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0xfd9960c94ad7c3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x4, 0x1df822fa304661c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x18, 0xdc4ead61a1e2c22e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x1, 0x85d250e44b8da2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0xdb77cc350162f0df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf469d0510863d85b # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x046e50da55fb3e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ca3a68d7ddd1944 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x28, 0x49ed494ff0bf7998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd711b3210706aa45 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x5686b53fc5e93ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6d2e613b246b7410 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0xb58a11421eb9f866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0be8f2ba01d242d5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0xe973207862bcb050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6913842533475348 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0xe0b486f66c36be59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe8783299a7c1b498 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0x20c4e9a61e9acfff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcb1ffb2969fce1b9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.not.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x422179eabf538cc1)
li x19, 0x6c01deca590b88fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa960358d109dfaae # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_sign (Test source rs1 value = -0x12902ece9e70d7ac)
li x22, 0xf5fbfa3356f4d56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf0e8787a1d61ba9 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd885622e1a719a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc0108e63b0e02461 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x87882a62194bb3c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1c8b86d8af4defb5 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x715b3663e8238499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0ff4f65a9b76f6e7 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xfd8807ce4d74fa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x199efcfb9241b118 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x39074e2fca296fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2708d6f1e923a79c # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb2ec839f844f7278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2068607b6e69c4d3 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbd7fb980c2dd293b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4d2387bc50d18d34 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8477fecfd67f0aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x221d019a6c9bf86b # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0xfd45c22e15c3f1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0543adcaeadf0329 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x023fe216a0035ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xb578c406ba7c1105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0xda6c2334633d210b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x11ed2e7ea050f4be # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xe87f3df2b632eb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x70988dfeec941d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x7e64f2066a30f473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7493bcacbd9dc329 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x68ebcc0071743af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x69482d7c5b8af0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0xf674bfa0640e2b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x88de63e433cbdc67 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x8, 0xd68e80c2c1968e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x1, 0x576e2b3da585d322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x26, 0x6b96d3ecab02b128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x51cd928c700027cd # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x6, 0x667a87111714364a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x28, 0x2c9e8f17a25d441e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0xf6fde86a4675c458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb78d2cfeda6dd16e # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x3, 0x4a7d7ed118044fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xfbbb6d398249f2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x5, 0x27c6607067af8453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f6b460532a9c039 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x8, 0xc96b80c25210f1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x8, 0xc3bc833c0f1719eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x0a10a64196c9dd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x93201186b4e1ee2f # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x18, 0x2948c511bb753e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x7, 0xd4c66ebf54c6185f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x24, 0x64e30395bc852ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbe63b8cfe6ae2be9 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x7, 0xb7e7433a04d5f92d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x12, 0x72c41a2ffd8b87b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x15, 0x13492b35ef846672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x48eca1dc1720e826 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x17, 0x2dabf543b6011049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x21, 0x02376959eb497a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0631b681c8253463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a248c88d0d16508 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x28, 0x509c15773f9f76c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x91c663628607f7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0xffa8b1ab71d1fd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x68b45421f8ecc809 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0xb7f8722ea3de05a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x29, 0x2deb116328e7bf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0xedcb6dfd7688ecd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa3d87d915f25c747 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x052a19fcf92f710a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x17981ca593b6701f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0x7772a338f171458b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x070c38302d627803 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0xe37647b0afb755f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x246ceac271fef4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0xc293eeeb7b1b18b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2649954fbe35b38a # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0xbdfdb600a7893e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x30, 0x476f0c9c33abf3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x31, 0xba51bf67ce0cf5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xabef7972f1839de2 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x11, 0x188722f8f16c571e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0xf92969c578c9ca74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x495f28d2347f5e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x44d62d5a6a509156 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xd5d5337f70f4ef32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x561a78027db77c0d # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x4040900d289579b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6799acecc2b4368 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x0ae712e08aec2ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x894ba66767bf98a5 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x4b5db4c67eedd78b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3bfe9d0d0e9c12ee # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x249c12664e191b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc6ad8f35767b36f5 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x385edf66b3d85f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd1a370fd5574e2cc # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xb2df22fd88272553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x590e368efc330e2c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x6fe5e7fc8471ffcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x111826fecbb19a6e # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0xc6e45fed01ee291c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x37547b432eafba05 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x9d958be7785d1de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x751a2332b3c2b386 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x36a5137b1a757f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2608fbbfcafde85b # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0xec85b15447469956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x47bd6c28aa355a9c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x55f6f3cbd22657a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9147943372da686b # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x98b5084b34dc53b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda449b92fddb2953 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xdb05c6e8ae09c8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x528d37e70a032c5e # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0x95c8f3bcba14befd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x18ab0700dbbe61c8 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0x7404345e1b4d021b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x71a0e844dd5b4d23 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x08821bf02d722cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9cc6ee3b3e6cde56 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0xc4d2048b57c00ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ddcb19eaa30b360 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0x1d054c09d6db5df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x150835f90a24dd6f # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x3e942bd96722b1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x690362f4f1ba44d4 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0xca2ee8f0eca83d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x53dd7529eefd0c8e # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x8024a8fbaa6737f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1a1f84a508bf36bf # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sb.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x940f2edb93a3617c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf9b8e7bbe280ddb4 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0x4b9a93523189f200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe1d425a16d1b93c0 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x7c976a3c704913cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ea9235b1fbc0345 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0xe3a9cb77db056e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x028fe3800c42cc0f # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0xffcc7a40b30f250a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb3b36f41707523ba # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x12, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0x284c183405a5ddb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x91644e7bfe425969 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x23, 0x5f268ca73a467fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x67a5b673ff19558f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x14, 2(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x9ca928a5b8d0b909 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2351bad9df781b6a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x4, 0x12548735f7537f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0x837d7385dd4adbf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0xebf8280e79fe4ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x28, 0xa39d1bc9d960cc78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x6a1a71e2f66c938e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x314ca34e446fd12d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x14, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xbef15abacf2730ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x9f07864d9abd15ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x8, 2(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0x57136f2a349de5c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x14, 0xcb26d31890d365a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x6ef0afac5182c662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x18, 0xc98e59d8b8ce3163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xcacca5f7d3b09d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sb x12, 2(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xcfe3e8e49c82a11e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sb x10, 2(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x2d3f595f8ce683af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sb x15, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x3d61eccf758ce2da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0xab8505d679a17011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55671826f3b01f63 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x22, 0x59668b9c8d205fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbca707d104e2dbd0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -3 # sub immediate from rs1 to counter offset
c.sb x14, 3(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x3e7e05f105c00225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcc008272f2fc323c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x82f87c450e9d8fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x782e3ad9a3cac9f6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x15, 3(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0xd68e341def70e18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1dc19a875700278c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0xff49110a85da9099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcb78df87a99faf9e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xce4d340ccce0af55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe9ec447f7ff63f31 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xba35c9a73cf26910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaede459ec6ef1ecd # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x15) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lhu.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb774f602d2f3503b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6ebb3a8458a07f2d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb3e192b05f7e5b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa0f71a4292bdc576 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lhu x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7e23618b6bfcbfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2cfc44e535861fae # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x85d5886f4fdd6ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc99b9550e7bcae9b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd2dd2b822617e416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x444029e166076254 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdaf7f23933f5f57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf7f5dd8acdf4e4aa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc84d40e9853f4cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1cf673790858bd53 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x14, 2(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4045e3b22348aba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x28f7bbbc785b55cf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lhu x15, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc9204df9fc52836c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfb701779d4522fb9 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x13) # store value to put something in memory
c.lhu x8, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x984fb759f8397114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe2e130187ecf7ebe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x14) # store value to put something in memory
c.lhu x9, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf26b0ade73d8c0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeb17a8e5e9933270 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbae640685df6837b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdd5980f5a4827dd1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lhu x11, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd7186f15120e3293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x72e009fbc4ebf49c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x12, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xafbc10566391ae4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x86cd7dfebe7c0569 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x406c35e6193b9831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x525d3eff96aa617b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x14, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf38edffb733d3a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9e6bb83fe5e195e6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x15, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x0901ef02cca770c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4aabfaede578ad27 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x14, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x198c32c2ed16d707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0xb8b4b4c3f43b94e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lhu x9, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x57d322c9edd42ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf14a407b33934b26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0xee3d097bedb303dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lhu x14, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xa9226e85acc30984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x85afaf3219aa3782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x24ac0e32eacbfeec # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x05a580571bc007c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x20cf0032bb5e70c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x10, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x21, 0xa51d49fa8fc73cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0e66dc9f62063b8 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x17, 0xeeb8b0b0b77e4421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0x0e1aacf3623f7879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x15, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x6, 0x5e2b1d92c32d22a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6814e3cf80591ada # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x14, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x10, 0x9f1cfba15ae446c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000008001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lhu x10, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x27, 0x36c514fe3bf66df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000008001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x27, 0x866054b30e9be247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x070d4cab8cc3097a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # store value to put something in memory
c.lhu x11, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0xc07f945db6b88614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x13) # store value to put something in memory
c.lhu x8, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x27, 0x8c63d10b4f277b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x11, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x7d2fdedf7fd135fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x208b1046e309de9d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x13, 0x85e622fb6f171dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x16, 0x534ab44e0da6d6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lhu x8, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x12, 0xbd4214f43fc1291a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1531c45ab0da8a5c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x12, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x19, 0x34be7312d8eb72db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x27, 0x1ae1aa55aef87ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x5, 0xf5fa1812540807cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0eba20024c6ca796 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x13, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x2, 0x43542fb4fd614bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000fffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # store value to put something in memory
c.lhu x10, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x24, 0xb8aa1d72b3cd7f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000fffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lhu x8, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x3, 0x72ac6c0b17225885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x31affeff825d88af # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x3, 0x31a1cc0365b73b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000005555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lhu x11, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x7, 0xf8dbfc66eb1e9c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lhu x15, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0x1109ce02c1d0d2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf5108cb42096abce # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0x7105678b3a791c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000aaaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x10, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x9, 0x92a7dedb0b5e4cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000aaaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x8) # store value to put something in memory
c.lhu x9, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x29, 0xf5f4a89ef8205037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc74495cf5216d977 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x30, 0x15f5d78278612bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lhu x14, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x30, 0xe89827789e6d7d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lhu x14, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x27, 0xdc6a2bffaeecec1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5025bc93186a733c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x11, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0xf65eedc5ba61801f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x8, 0xdc92924fda339bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lhu x8, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0x186774414643fb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x12c77e97384c302f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # store value to put something in memory
c.lhu x8, 0(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0x170522161e5951b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd1966a7efd367c50 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lhu x10, 0(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0xc2af6c5e0e95eceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1789cb3c8b7115dc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x10) # store value to put something in memory
c.lhu x14, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0xc0ea26ba9d9fdd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4107fcd8f04eb16a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # store value to put something in memory
c.lhu x13, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x23d3e558598c92df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x070da4cd5a9d0471 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0xa04a032ac1c613c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26dc264581e42728 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x13) # store value to put something in memory
c.lhu x9, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x2f86511f97da6abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b7707f440418791 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lhu x9, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0xb789a13c24618748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x54c28e9ba62607f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lhu x8, 0(x15) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.zext.b.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x275d5094dd7fe2d6)
li x1, 0x4fc657653758ea3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x275d5094dd7fe2d6 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x548b1ecec07e468d)
li x6, 0x317a4202e92f99e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xab74e1313f81b973 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1bdb706674298eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x51a6698ca53a9459 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x203781d448b23230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe3dd1c14a4170761 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbd86be6375f9ec99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc2ecda44d309e5c0 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x50ae386977e69257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2a917eae13b8fdcb # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe761abfa91137e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x54ea17a040cfcd88 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb0e92afdd10247cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeb3282a9a8ee9c08 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcc3a3b379256fd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd72d8f4533fc7c6b # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf4c6719b6533c7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2b182065c06c3941 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0x86f4f1d8fb34d595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x43b9cb743c1eb0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x9ab1c7af29f51408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x60b4a6dc7c0713f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xedca3a828e700a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0xffc4b145b256b907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x9f53e92e804fec6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x09beeceb36526554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x8670c01ab35515e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x4, 0x1898f3f10e56363c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x20, 0x5ae5385c889e402e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x8, 0x929a193604a0b083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x28, 0x584ca23af747e5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x20, 0xe74e72ef376c7bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x30, 0x65e4c9f44bdd11f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x30, 0xcc9f0b0b354b6082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x15, 0x3aec6c70189a49a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x19, 0x1542b64701ce11eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x22, 0x3a0b5c3f2ea558f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x10, 0x8c7d45446269288d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x7, 0x23ff70380a760fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x8, 0x714350aca24de65f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x28, 0x0f0775510ef885ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x17, 0xcc899cf62fb78a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0xac128b3e4fc19332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x15, 0x1a45df06d1ab4227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x13, 0x1d5b0bb64f46537d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x21, 0x534e516813189fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x29, 0x6f870a6d63aa470a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x3, 0x45894ff33ecd12c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x2, 0x327bedd3fb8fe1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x21, 0xc22ab855621aa73a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x23, 0x24932d82993aaef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x12, 0x8323497344c5a576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x2, 0x885ea6aaa57e61d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x16, 0x4e2c9479be2e1cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x7, 0xa1f2f2d5dbb08ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x14, 0x0600fc26bebbfaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x6, 0x82cdb7854a7336d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0xdf8dd1a2326b449b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd519121112628fd3 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0xb35992aa05d76585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x12e3c48d75f74eb5 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0xa590292ee9365fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x62bfd8d58332b42a # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0xb966a6e43542b8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x074e9391566e5fe9 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x208d10cf4971b6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x92751886c49726d1 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x51de91b3f3829946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x29d546a65f789b73 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xa37c8b8d026a3a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb01901a5d57e1695 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x59004e71254d4531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x154c612c6a41e40b # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0xdf2141a7125ef67b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0xd7ce8c3b699e78bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0xdc6cfd3135e602b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0xa3bad465064f9dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0xde553345fd01b6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x4, 0xd0fab3ecd109cf09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x1a7d92d575a52a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0x8f653776f6fd5dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0x90e137766a0e1a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x40b408b99fe856d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xb3c5bd8da09f1129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x24, 0x4b3bf9d6707fcb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xe6313b21072c359f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x219eacb0d4556e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x87f90768843d9893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0xf6980e5c4401fae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lh.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3423a900bb9b0395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6d283c992be83246 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lh x8, 0(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7d4e5fc59da89418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb0f1f37061ad3946 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8ee560a1e91d0e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd8c83deec642198e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lh x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7a5e236a499b63a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdbabd4fe4f07cf29 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lh x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4b80a1f3529a0541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2335641f5a4b93eb # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x63397362727a7cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x08cf5f6327bba8a4 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x257813f29b23fe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfcff41746973472e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb3aebd6492198b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x22d1359760698681 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4ccc65b78b8bd745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x65174b3200ca1ea4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x79da76cbfcea72f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfc345bb45e5fac57 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc5ac3affb8755fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x423ec4de55e789e0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x10, 0(x12) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96e3383ccd97ba44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xad7a533e11e5ebce # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7e78df11c6e8598c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeb5aec513ff50c6f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lh x12, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f4b7830bb3ba3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbcc1dbee454616cb # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x13, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xae7c4ee5df13cfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb7851c7f9235a4c7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9c9795d108a89077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xed569c3a0fc25901 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xe6f372e98feb8b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa28ca58b09f0aa7b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x89493e1ddcf13866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xe6fe13dceccd86c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lh x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x050639b93a237c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc645b8b03a6668b3 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x82a2ed0df77cbd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x9, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xd44c7017a79316a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lh x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x4baa10fdb84a8139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8aa72284c24eeb6a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xea947a5d6a74c7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x8, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x93a910375a1abff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x22, 0x16f2b7261b76a45d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda306d054b6d2e95 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x14, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0xaf216375765c0c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000008000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x16, 0x1ba60302d728c10b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x8, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x26, 0xa85ba37bdc729629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6adc078b493e361a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x30, 0x2e8c69ccc064fa24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000008001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lh x14, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x2, 0x8d55059a5f1f1868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lh x10, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x4, 0x3b1c6c9c833baedc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfd23cc8fc6c75d29 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x3, 0x296d32826a12fd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007fff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lh x11, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0x9fc95a6ed51d2ade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x8, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x22, 0x4c7a3439d88b5fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf058660ec1dee828 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x14, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x19, 0x037034cb2ba3ae33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lh x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x12, 0xfab5217271b3a094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000007ffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x28, 0x8c92029c73f99dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf3901ebe1bef033c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0xa5f5ca880eb159ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lh x8, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x20, 0x352a3cd791de8e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0x9fd7396933ad47d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x17c05fee4ab35be4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x9, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x4, 0x8c712a427ecf5233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x10) # store value to put something in memory
c.lh x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0x273f4fe0a8a58706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000fffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lh x9, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x82bb6b57b5a484fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x95629a246676f70f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0x555dc59533e18cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x10, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x15, 0xc5d7cbedfb30f6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x15, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x29, 0xa34b4e246c9e8faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x540e74be7c4ce8c2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x11, 0x581dad9507774c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000aaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0xa4d642d8d601ad86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000aaaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x25, 0xb73c301fb419df99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2f07f8b17160db28 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x25, 0x1a0e18915ae64f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x12, 0x0f88bed9f59f710f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000005bbc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x17, 0x23573f731e223557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x930ec8d3938ee87c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x28, 0xd717447c0e3c4b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000dbbc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x15) # store value to put something in memory
c.lh x12, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x462df81245508f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xd4dd35732aed9fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8c1cb84470f5c7e0 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lh x11, 2(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0xfdfc3146bec3395c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x78e5d465088a3a09 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x14, 2(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x30f7bdc525b3cc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xecbd0a7aa64bafea # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lh x10, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xff40715ee49880dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x05f2b599006d9a19 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lh x13, 2(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x41c0c23e7ed5656d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x351689991a280af9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x13, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xec327dd41bfa069e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe028a9a055169b0f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lh x9, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x5d5c3a58be6919af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdf1a54cfdb7a67e5 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x13, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0xf22710be29b6fad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x30e31df54e9a8803 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x15) # store value to put something in memory
c.lh x15, 0(x15) # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
