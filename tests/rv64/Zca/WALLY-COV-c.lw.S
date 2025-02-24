///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.lw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.986905
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x61750870f3c57b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcdc01900ff37af32 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x8) # store value to put something in memory
c.lw x8, 32(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x31e05b2a1fe14e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdfb23fd0a5afa30a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x9) # store value to put something in memory
c.lw x9, 4(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbb9e5f0221b45c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2515f2e0e8c5f0c4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x10) # store value to put something in memory
c.lw x10, 48(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaec803e89e05ea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x063ae8d9aa7f7385 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -116 # sub immediate from rs1 to counter offset
c.sw x9, 116(x11) # store value to put something in memory
c.lw x11, 116(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x51984b4c6d0827ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3244ad4f9c42f9d6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x12) # store value to put something in memory
c.lw x12, 124(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0da0575e94125588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeb0205f744e44626 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x13) # store value to put something in memory
c.lw x13, 76(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x492b3f896730e13c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc5c2dba3d018f3b9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x8, 48(x14) # store value to put something in memory
c.lw x14, 48(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdca01576b1348f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf61175eb37b23dd3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x14, 64(x15) # store value to put something in memory
c.lw x15, 64(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc06c3abd23f5a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf3b1827e4b882ad6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x10, 48(x14) # store value to put something in memory
c.lw x8, 48(x14) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdc52f4101813c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf8799b84e471c0b1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.sw x10, 88(x12) # store value to put something in memory
c.lw x9, 88(x12) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbba3510b449432b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4ac42efe7baf10c8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x11) # store value to put something in memory
c.lw x10, 44(x11) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6e164e55a3e267d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc26ff6f0e2c488a6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x12) # store value to put something in memory
c.lw x11, 8(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdcfcbb67e8b7ab3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x941f9e73739738ef # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x14) # store value to put something in memory
c.lw x12, 124(x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9277cebe62b23966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xce544a67b6282a75 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # store value to put something in memory
c.lw x13, 4(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x10c3fa0a20e9dc0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe721ce9d81269eb9 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x10, 88(x13) # store value to put something in memory
c.lw x14, 88(x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x847c6a5d5e230882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d5c9a1fdab95791 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -92 # sub immediate from rs1 to counter offset
c.sw x9, 92(x13) # store value to put something in memory
c.lw x15, 92(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x83f9ece22ac43bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc3940d77b50c34f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x13) # store value to put something in memory
c.lw x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x170c517f947d031b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x10) # store value to put something in memory
c.lw x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0xf5182228f2bdcceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x15) # store value to put something in memory
c.lw x13, 124(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xf9a18ebe7e1ebe6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xac45f6e229653c99 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x2541c7cc738eb996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x9) # store value to put something in memory
c.lw x11, 4(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x446ac2e4ee740145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x11) # store value to put something in memory
c.lw x11, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xa506445a2ec6beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd559f64453e7b740 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x13) # store value to put something in memory
c.lw x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xa47f4707193987c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sw x10, 8(x8) # store value to put something in memory
c.lw x11, 8(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x542c464fce27eeff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x8) # store value to put something in memory
c.lw x13, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0x9f4faae1bd89fbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6908f07e5c7de40 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x15) # store value to put something in memory
c.lw x8, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xd83322e01d6e7b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000080000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x15) # store value to put something in memory
c.lw x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x31, 0xa38ac86353e0abc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000080000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x13) # store value to put something in memory
c.lw x15, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x134c176c4fb1ec15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfa0979cb906f6c77 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x13, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0x04276fff9595446d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000080000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x8) # store value to put something in memory
c.lw x12, 4(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0x19f2054b3aa25a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x13) # store value to put something in memory
c.lw x8, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x16, 0x9c0ef3bdc021584c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x88925df75c9d133d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x8, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0x60015a04e70fe58b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000007fffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x13) # store value to put something in memory
c.lw x11, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0xd3045653c40edc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007fffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x8) # store value to put something in memory
c.lw x14, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0xce7706a3672851bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe79e4c18b1b5c8b8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x15) # store value to put something in memory
c.lw x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0x0344b35b2f788945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007ffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x11) # store value to put something in memory
c.lw x10, 120(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0xb0c024fa703a8529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007ffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x9) # store value to put something in memory
c.lw x14, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x979e149c2974aefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x440be3f53e8fee33 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x8, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xa7d9fa3a6455460c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # store value to put something in memory
c.lw x9, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x0367de5fd1387af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x9) # store value to put something in memory
c.lw x11, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x961af3ab7a9b422f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc22b73956545c4dc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0xe6899f65fd1f72e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x9) # store value to put something in memory
c.lw x11, 120(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0xc1115386442af3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x12) # store value to put something in memory
c.lw x9, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x29e6d7d265a013b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6c72b013b2fcd50a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x10) # store value to put something in memory
c.lw x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xfa361eaa56a0f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000aaaaaaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x14) # store value to put something in memory
c.lw x13, 40(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x46dbbff9d357134c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000aaaaaaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x12) # store value to put something in memory
c.lw x11, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0x845ea097a7be676b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x41783d7bdc71d93d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0x0bd663bef8ebd82a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000055555555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x13) # store value to put something in memory
c.lw x9, 84(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x20, 0x6fe580d4335105a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000055555555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x10) # store value to put something in memory
c.lw x12, 124(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x4, 0x27ddf75e70db6847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xef271085558514c9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x12, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x17, 0xd1e8b854d18a4d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000063ae86f7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x14) # store value to put something in memory
c.lw x9, 92(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x16, 0x1e85d4246f3fa4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000063ae86f7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x13) # store value to put something in memory
c.lw x8, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0xa8c1a034e5c1a6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c97094b7908624a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x10) # store value to put something in memory
c.lw x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0x0a41ce975e79b4af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000e3ae86f7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x12) # store value to put something in memory
c.lw x15, 92(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x13, 0xd5a90e9fa31c1fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000e3ae86f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x15) # store value to put something in memory
c.lw x13, 124(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x002635d0b0aa4c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdb54cb4042fa229f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sw x9, 16(x8) # store value to put something in memory
c.lw x11, 16(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xf2637c4aa4a88059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1d156eb3d4c4771e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x9) # store value to put something in memory
c.lw x12, 12(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xdd38b8521f2eea87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5dd3ac449af2ef29 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x10) # store value to put something in memory
c.lw x8, 72(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0xe4f309240ec3f5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0da36dadd501b22 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -72 # sub immediate from rs1 to counter offset
c.sw x12, 72(x11) # store value to put something in memory
c.lw x15, 72(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x97ab97fba829838c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcdfada44814a2a92 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x12) # store value to put something in memory
c.lw x9, 116(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xe9b06f617a4b3fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xac9199326d9958f3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x13) # store value to put something in memory
c.lw x12, 40(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0x6aea0a00ae68c8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xafbbf83ac90f16e6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x10, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x355744e209a79104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd37904a5d6e46ad1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x15) # store value to put something in memory
c.lw x11, 20(x15) # perform operation

# Testcase cp_imm_mul
li x1, 0x9768d64e8d5fe83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf6bf7ce0101ecd7f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x12, 0(x14) # store value to put something in memory
c.lw x9, 0(x14) # perform operation

# Testcase cp_imm_mul
li x28, 0xe9056af7fb2190c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2afcbc53944cc4f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x11) # store value to put something in memory
c.lw x12, 4(x11) # perform operation

# Testcase cp_imm_mul
li x8, 0xfe7ffa6b6c5e31a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0d05417beb602974 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sw x9, 8(x14) # store value to put something in memory
c.lw x8, 8(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0x36e4c61c7e1ff693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0d76131ccc7e8c8a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -12 # sub immediate from rs1 to counter offset
c.sw x13, 12(x9) # store value to put something in memory
c.lw x15, 12(x9) # perform operation

# Testcase cp_imm_mul
li x2, 0x42c5db86e0747d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x320911ceb7a5116a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x8) # store value to put something in memory
c.lw x10, 16(x8) # perform operation

# Testcase cp_imm_mul
li x27, 0x1b8682280353e45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x03412910e3549a7b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x14, 20(x9) # store value to put something in memory
c.lw x11, 20(x9) # perform operation

# Testcase cp_imm_mul
li x22, 0x80f8dc6fd23f76e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7088e74420b965e5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x11) # store value to put something in memory
c.lw x14, 24(x11) # perform operation

# Testcase cp_imm_mul
li x14, 0x947e9551a6ec61dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x68edbfdd647b32ea # initialize rs2
la x14, scratch # base address 
addi x14, x14, -28 # sub immediate from rs1 to counter offset
c.sw x12, 28(x14) # store value to put something in memory
c.lw x14, 28(x14) # perform operation

# Testcase cp_imm_mul
li x13, 0x54e5a51660ea02c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa0d6015c8b4e40bc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -32 # sub immediate from rs1 to counter offset
c.sw x10, 32(x13) # store value to put something in memory
c.lw x13, 32(x13) # perform operation

# Testcase cp_imm_mul
li x18, 0x07fe869875070ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x200eac40fb67f0c8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -36 # sub immediate from rs1 to counter offset
c.sw x11, 36(x15) # store value to put something in memory
c.lw x10, 36(x15) # perform operation

# Testcase cp_imm_mul
li x10, 0x6b4c39b64898a6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xef3ca4f0d2da3f6f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x11) # store value to put something in memory
c.lw x10, 40(x11) # perform operation

# Testcase cp_imm_mul
li x1, 0x21ce2807720a45e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa6fd567c54c2858e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x9) # store value to put something in memory
c.lw x9, 44(x9) # perform operation

# Testcase cp_imm_mul
li x12, 0x0d78f446492af100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6fd4647be3e4e206 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x8) # store value to put something in memory
c.lw x12, 48(x8) # perform operation

# Testcase cp_imm_mul
li x29, 0x4fec5e2c76252e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64e00b065cfdea82 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x11) # store value to put something in memory
c.lw x13, 52(x11) # perform operation

# Testcase cp_imm_mul
li x29, 0x942e364c1770123c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa72a047200a5899c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x10) # store value to put something in memory
c.lw x13, 56(x10) # perform operation

# Testcase cp_imm_mul
li x19, 0x34332496333d5d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf60d6994df022964 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -60 # sub immediate from rs1 to counter offset
c.sw x10, 60(x15) # store value to put something in memory
c.lw x11, 60(x15) # perform operation

# Testcase cp_imm_mul
li x28, 0xda306303cbb32a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3e6bf6d1febce869 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x15) # store value to put something in memory
c.lw x12, 64(x15) # perform operation

# Testcase cp_imm_mul
li x14, 0x263c4707fcc2685f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9f5ead4fb174dabd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x13) # store value to put something in memory
c.lw x14, 68(x13) # perform operation

# Testcase cp_imm_mul
li x22, 0xb93a71abad184ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9dce3b6ac7fe251b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sw x14, 72(x13) # store value to put something in memory
c.lw x14, 72(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x5daf9e00967d6940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfdae53f7e5d4e29b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x11) # store value to put something in memory
c.lw x15, 76(x11) # perform operation

# Testcase cp_imm_mul
li x6, 0x83f0255050e1bbff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaebfcae5d911abe9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sw x14, 80(x8) # store value to put something in memory
c.lw x14, 80(x8) # perform operation

# Testcase cp_imm_mul
li x10, 0x2d138374b0b5564a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x632f52f25700ff60 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -84 # sub immediate from rs1 to counter offset
c.sw x9, 84(x10) # store value to put something in memory
c.lw x10, 84(x10) # perform operation

# Testcase cp_imm_mul
li x5, 0x1a6f3ea70f8b9d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd7bbfff28a19f79 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.sw x11, 88(x14) # store value to put something in memory
c.lw x13, 88(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0xe39e31a841f6cc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x622b6bbbef03b263 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x11, 92(x10) # store value to put something in memory
c.lw x10, 92(x10) # perform operation

# Testcase cp_imm_mul
li x14, 0x6672808253b81701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5fe939ede2ce8594 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x11) # store value to put something in memory
c.lw x14, 96(x11) # perform operation

# Testcase cp_imm_mul
li x27, 0x9265a515b5c6446b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe1b18f777e637297 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -100 # sub immediate from rs1 to counter offset
c.sw x13, 100(x11) # store value to put something in memory
c.lw x11, 100(x11) # perform operation

# Testcase cp_imm_mul
li x15, 0x1f23be64eb570f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9316706241a59e99 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -104 # sub immediate from rs1 to counter offset
c.sw x15, 104(x10) # store value to put something in memory
c.lw x15, 104(x10) # perform operation

# Testcase cp_imm_mul
li x11, 0xd179cb409d5bf6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x10d11e1c61a2ec8d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x9) # store value to put something in memory
c.lw x11, 108(x9) # perform operation

# Testcase cp_imm_mul
li x21, 0x4ba3737dcf11de30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66f973eea095a013 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sw x10, 112(x11) # store value to put something in memory
c.lw x13, 112(x11) # perform operation

# Testcase cp_imm_mul
li x10, 0x15618c3918d37c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc589693e9921f650 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x15, 116(x9) # store value to put something in memory
c.lw x10, 116(x9) # perform operation

# Testcase cp_imm_mul
li x3, 0xbdb0abe51ad1189f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x584ded7cef8f6fbb # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sw x13, 120(x10) # store value to put something in memory
c.lw x11, 120(x10) # perform operation

# Testcase cp_imm_mul
li x23, 0x5409b03598b5a0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5361a16c131c5e83 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x12) # store value to put something in memory
c.lw x15, 124(x12) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
