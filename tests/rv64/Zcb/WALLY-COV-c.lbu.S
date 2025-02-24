///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.lbu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.342877
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
