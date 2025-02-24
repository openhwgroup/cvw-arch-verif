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
li x8, 0x5d8801cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe596e5a0 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x8) # store value to put something in memory
c.lbu x8, 1(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x597d3ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3ec4c1f9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x9) # store value to put something in memory
c.lbu x9, 1(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf82c15f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7a1f7afc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x10, 1(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9bea66a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x142e39c4 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x11) # store value to put something in memory
c.lbu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x29db38e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc6b2177f # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x12) # store value to put something in memory
c.lbu x12, 1(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x6064eacb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa1662b8a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x13) # store value to put something in memory
c.lbu x13, 1(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x6b8bdcc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa893fedf # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x14) # store value to put something in memory
c.lbu x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfa84d9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x53320717 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x15) # store value to put something in memory
c.lbu x15, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xaed2d89b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x39f92da0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x14) # store value to put something in memory
c.lbu x8, 1(x14) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x32d8218b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9a1c16f4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x8) # store value to put something in memory
c.lbu x9, 1(x8) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb5ba59ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb7a58a04 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x13) # store value to put something in memory
c.lbu x10, 1(x13) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xad1d7786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x779362e4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x10) # store value to put something in memory
c.lbu x11, 1(x10) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x0d7bae5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x391991ab # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # store value to put something in memory
c.lbu x12, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5dbbcf7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcc66dd1c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x9) # store value to put something in memory
c.lbu x13, 0(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8240cb16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x796c2ad3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x11) # store value to put something in memory
c.lbu x14, 1(x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8d96fe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9e8b465b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x15) # store value to put something in memory
c.lbu x15, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xfbc7935d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x21de3702 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x15) # store value to put something in memory
c.lbu x9, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xc2830a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x9) # store value to put something in memory
c.lbu x14, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x41919255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x13) # store value to put something in memory
c.lbu x8, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x571cad0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcb2a4578 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # store value to put something in memory
c.lbu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0xecf3e139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x8) # store value to put something in memory
c.lbu x10, 1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x0b9d3438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x10) # store value to put something in memory
c.lbu x8, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0xe7608a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4c4327ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # store value to put something in memory
c.lbu x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x7396d8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x13) # store value to put something in memory
c.lbu x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xdd0b1b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x11) # store value to put something in memory
c.lbu x13, 1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x7, 0x6c023965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x49a909fe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # store value to put something in memory
c.lbu x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x9, 0x237f185a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000080 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x9, 0(x13) # store value to put something in memory
c.lbu x9, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x16, 0x382ef06f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000080 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x14) # store value to put something in memory
c.lbu x8, 1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x4, 0x54e16148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd8deb047 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x8) # store value to put something in memory
c.lbu x12, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x19, 0x09e3fba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000081 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x10) # store value to put something in memory
c.lbu x11, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x4, 0x683edb32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000081 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x10) # store value to put something in memory
c.lbu x12, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x15, 0x0cc5135e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3f038b7e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x1, 0xcfc2437f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000007f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x13) # store value to put something in memory
c.lbu x9, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x23, 0x2daa77d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000007f # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x9) # store value to put something in memory
c.lbu x15, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x16, 0x7bd4b3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc4a01b1d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x11) # store value to put something in memory
c.lbu x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x23, 0x3ab9e1ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000007e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x11, 0(x14) # store value to put something in memory
c.lbu x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x7, 0x31a8f9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000007e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x8) # store value to put something in memory
c.lbu x15, 1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x29, 0xd67cf45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc99b18de # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x8, 0x9649557b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000ff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x10) # store value to put something in memory
c.lbu x8, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x13, 0x39ccf4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000ff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x15) # store value to put something in memory
c.lbu x13, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0x415c58fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x464cb620 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # store value to put something in memory
c.lbu x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x29, 0x56a05ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000fe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x24, 0x2fe69372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000fe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x10) # store value to put something in memory
c.lbu x8, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x21, 0x575f3372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa00a4a01 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x9) # store value to put something in memory
c.lbu x13, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x3, 0x724a5f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000055 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x12) # store value to put something in memory
c.lbu x11, 1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x8, 0xb10c63e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000055 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x9) # store value to put something in memory
c.lbu x8, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x19, 0x1c26ecc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8478f246 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x12) # store value to put something in memory
c.lbu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x25, 0xe3cfa205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000aa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # store value to put something in memory
c.lbu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x30, 0x1fbf3a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000aa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x13) # store value to put something in memory
c.lbu x14, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x25, 0x81a6fb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb3d2c9a0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x13) # store value to put something in memory
c.lbu x9, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x28, 0xce358d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000005b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x8, 1(x15) # store value to put something in memory
c.lbu x12, 1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x18, 0x172862ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000005b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x9) # store value to put something in memory
c.lbu x10, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x8, 0xe7d3637f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc506b999 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # store value to put something in memory
c.lbu x8, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x14, 0x94eba990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000db # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x10) # store value to put something in memory
c.lbu x14, 1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x17, 0x3caa2e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000db # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x10) # store value to put something in memory
c.lbu x9, 1(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xf8df67f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd01dd72e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x8) # store value to put something in memory
c.lbu x11, 0(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x3f2b90b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xefe656f3 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x9) # store value to put something in memory
c.lbu x12, 1(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x369a5942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9e251734 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x10) # store value to put something in memory
c.lbu x13, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xc9973368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcffffda5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sb x10, 0(x11) # store value to put something in memory
c.lbu x12, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x6673689c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2107966f # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x12) # store value to put something in memory
c.lbu x13, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x0b7d5484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf53cd4c8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x13) # store value to put something in memory
c.lbu x15, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x1e6e8bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bca6b08 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x14) # store value to put something in memory
c.lbu x15, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x49681973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x35240aca # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sb x14, 0(x15) # store value to put something in memory
c.lbu x11, 0(x15) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sh.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x28, 0xf669feab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x79ec68ec # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0x5a870b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xccb316e1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x665754a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf3a9c4c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0x61dda342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x54890d23 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0xc151d35c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x75c6b07e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0xbdfaff94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2bb196ab # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x75cbde68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4840bdcb # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x9a5f2737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9b73e81c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0xbfcb9292 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xf825f37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xd04903f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x7db7f627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x29, 0xf82fddf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x5dfceeaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x2fe5508f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x0037c114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0x1c7ad41d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x15, 0xfa2cd00e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x996f553d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0xba586ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x16546113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x415b0d91 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0x2eb63af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf54abe61 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0xe5c10f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x07952734 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x569b9286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0e24f456 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x29eaf8d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb667072e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0x03e482a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb552bc1c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x88b722f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5b10eee9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x4, 0xb2bb1bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x90785707 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x15) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.not.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x746c1adb)
li x25, 0x58021750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5ef06417 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_sign (Test source rs1 value = -0x4ee737a0)
li x12, 0xdaa0e7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb50734d0 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x37aefd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeab0df8c # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0ee20867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd5301fce # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2786ce15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0c03f22d # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc731bbe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x46c253a6 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4b8b524d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d30fd29 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc3949387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa72011b7 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x347c6779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5ce3a2d4 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3a8c8b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f9e9479 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xf5cc85ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcf46ca41 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xb47ef719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x9530cd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x62ecb432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x763142f9 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x8d341163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xdc0fe702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xc9a39322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xafc6d907 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0xdc09f38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x5423dc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x788a53db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4ddf2d1c # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x16, 0x92a0170b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x13, 0x24a72efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x19555b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3a6f063f # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0xad333aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x69f47e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x13, 0xdf9519e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x65485d9b # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x23, 0x5a22505b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xd6893903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x1885028f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x726e0d51 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0xc957f3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x44590bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x979bbca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8d353205 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x31c64f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0x0406a5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xa1d2010c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5b267a84 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0x414ff1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0xdc199df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0xf265a74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4067a74c # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x55d422c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xbdead88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0xc6092f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5a375c7c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x373620fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x25, 0x6c83deb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x3, 0xfb200d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa94b00c2 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0x189d02e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0x363d0afb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xcc925d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x63e618bd # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x27c938fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf16b16ce # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0xa358ecae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x100806a6 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xea767587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7e0b4d17 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0xb490d960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3d6af9ea # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x76a7afb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd659a0ad # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0xfb7964e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x772583da # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0x394452f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe20740f8 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x6a6c7615 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfbe06aab # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0xde0b356d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x82b5538b # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0x25d72578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4fe63f49 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x18, 0x08d998c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3627431a # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x16cce3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x028981b2 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x590be21b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x71bb2d9d # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0xdb28f01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8fd49919 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xe006d535 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xac5a9de9 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x68c119f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa64f37cc # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x26, 0x21392019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x14db1b5e # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x21, 0xeb624241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x81024880 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x53f94ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x72bf8bc4 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sb.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0x0d3897d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd879cbc0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sb x8, 2(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0x2c7d37f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb4e40106 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x46fd80df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc4584afc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x6f43cd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6e6213ef # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x11, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x4ca5b6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2dd504ff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x12, 0(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x6d98d044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd01181bf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x13, 3(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x1ba8f414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcfad9d38 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x14, 1(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0xaf20389b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x808040f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x8, 3(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x65603ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0x2520c869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x42c4f1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -3 # sub immediate from rs1 to counter offset
c.sb x9, 3(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0xfe2bfdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
c.sb x12, 1(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x6762f095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x8, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0xa808e30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sb x14, 2(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0xe1ff550b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0x01ab9930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sb x9, 2(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x77839171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sb x15, 0(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x22, 0x453861ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
c.sb x9, 1(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0x82358630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sb x13, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0x678a8221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1 # sub immediate from rs1 to counter offset
c.sb x15, 1(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xb5022759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4258c25b # initialize rs2
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
c.sb x12, 3(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0xe2ea9e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x78a49b06 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sb x13, 2(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0xfe4ace1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x733112c1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1 # sub immediate from rs1 to counter offset
c.sb x13, 1(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x5f58728f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a37c8d0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0x9aa1c766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdb34bf2c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0x4819abd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a68d81c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
c.sb x10, 1(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0xfb48dca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x83dd5b9d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
c.sb x11, 1(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0xe4b91e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa7fbde7f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -3 # sub immediate from rs1 to counter offset
c.sb x10, 3(x15) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lhu.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeea9c83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x33a9e75d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # store value to put something in memory
c.lhu x8, 0(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa024e713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x45592108 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lhu x9, 0(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1534575b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa91fce94 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lhu x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5375d371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26d0adf9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x079f6ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x83f178fc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7f03b51f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x93c5a1c6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lhu x13, 0(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc4f23931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1bdc73f6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x14) # store value to put something in memory
c.lhu x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xab9b150a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x198cc87a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x15) # store value to put something in memory
c.lhu x15, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x13095d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x20f7a17a # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lhu x8, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfe62c2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9ac56e34 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lhu x9, 0(x8) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x087c56c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x39b2cbb9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # store value to put something in memory
c.lhu x10, 0(x14) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe85fab04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ead8dce # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lhu x11, 2(x8) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x16712044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1dcb8bfe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x12, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9b9d008c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x579cd6a7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lhu x13, 2(x9) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x75eeddf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc1ed9b8d # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lhu x14, 2(x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2d787d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd751e6b2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lhu x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xa1e01cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdefed4af # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x0f8ecf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lhu x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x639311e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xd302727e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1752dcd6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lhu x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x19eb8aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x14) # store value to put something in memory
c.lhu x10, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x805448e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lhu x9, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x916745bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe8b1975e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lhu x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x3326e211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0xf1cb0b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lhu x13, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0x8a7c2838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x311e72e4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x15, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x10, 0x7b202173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x10, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0xa5f22243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x11) # store value to put something in memory
c.lhu x15, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x26, 0xf6f2f976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5c2610d6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x10, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x2, 0x9b569ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00008001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x10, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x22, 0xc5f44d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00008001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lhu x14, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0xb6ae3994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06b8aa7b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x16, 0x820a452d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00007fff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lhu x8, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x26, 0x521144c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007fff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lhu x10, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x17, 0xc6421f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2bd40dfc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lhu x9, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x28, 0x864f9c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00007ffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x31, 0xf71ed73c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007ffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lhu x15, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x8, 0xe414acfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x11bc2387 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x27, 0xdfb1fa63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000ffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x11) # store value to put something in memory
c.lhu x11, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x23, 0x61baed45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x14) # store value to put something in memory
c.lhu x15, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x3, 0x7b59e4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe3e0f9ea # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lhu x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x11, 0x9da76447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x10) # store value to put something in memory
c.lhu x11, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x17, 0x5ba38cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000fffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lhu x9, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x7, 0x4cd42f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdf124bfe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x2a30303d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00005555 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lhu x10, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x21, 0x03ffcb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00005555 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lhu x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x00655dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb177ccea # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lhu x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x10, 0x9edf198a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x8) # store value to put something in memory
c.lhu x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x3, 0x5070db06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000aaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x5, 0xf87de4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1b5d424 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lhu x13, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x28, 0x151f7577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x21, 0x93feecc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005bbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lhu x13, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0xcaf8eb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1f40bf7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x9, 0xfefc7830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lhu x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x12, 0x098adf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000dbbc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lhu x12, 2(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x0030f88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5279d6e1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lhu x12, 0(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0xe1095f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdb7101b8 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lhu x14, 2(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x555a2653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdb419c81 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lhu x13, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xc0cbfdb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf588140 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x11) # store value to put something in memory
c.lhu x9, 0(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xcbe60e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x19579462 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x12) # store value to put something in memory
c.lhu x11, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xd68d583e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2bdfc2b7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lhu x8, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x6257c088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ba68ab0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lhu x11, 2(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0xa44b09b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf3a9f2bf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lhu x13, 0(x15) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.zext.b.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x33cb9935)
li x16, 0xf495c85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x33cb9935 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x624ed1c2)
li x31, 0xa7f76ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9db12e3e # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf9519c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe26dd9a5 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x361d1ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x25ae898e # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x24d9b49d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9b48063e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x18604d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc24ae7f7 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6b3823f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9adca4ea # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc064c451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5e9a1470 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0444e2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36da313a # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa6d3f44b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6cb66a41 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x232ce3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0xa95d594a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0x033714c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x00941c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x4e59f1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xaa7b2efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x0de6c9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xeccc38f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x425f2907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x9, 0xf99d4001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x16, 0x95cb8353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x25, 0x714668c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x25, 0xb35ba3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x2, 0x09acdcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x8, 0xddf71838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x8, 0x90ca2343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x20, 0x74918931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x2, 0xc3e7f4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x13, 0x8dede389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x18, 0x803daff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x9, 0x99ff2034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x3, 0x5aac9127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x21, 0xbf51bf6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x3, 0xb501b815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x16, 0xd965268a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x21, 0xb6e47f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0xbe373d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x19, 0x82762411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x9, 0xa374651f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x23, 0xb110188c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x26, 0xe56ad6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x22, 0x8af0bd47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x7, 0x9f13c413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x21, 0x8e372dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x24, 0x561662ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x13, 0x62e71444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x13, 0x772a6b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x20, 0x226db45a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x7, 0x4c31860f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x2c622d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f357f1e # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x692c5ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdfa8f37a # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xa79ca76c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea4deef2 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x01ce5606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4743f7ff # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x60efe0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x95f2566a # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x985a01f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcd150f5e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x8aaf6355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3c606d8d # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x897b2775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfb8e81bd # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x8c8e5b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xd2498155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0xa49775fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x6fb7431e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x94dad49e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0xbe998e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0xd92f9b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x180b7431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xac736c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x8, 0xbe977877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x21, 0xe8c3766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x4, 0xeee23caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lh.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7fdb6b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1c8ceacc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7523a139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x330e08c6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x77df89d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8043bf57 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x10) # store value to put something in memory
c.lh x10, 0(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbdf621af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x91af746e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8f3e8319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb5ab7711 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc3e613eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd2a6224f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x6de59d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8449f57b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4b5f231c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x49d22bda # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x12, 0(x15) # store value to put something in memory
c.lh x15, 0(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x64b5906b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0b5d1935 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x8, 0(x14) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xae864db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8dc1f538 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # store value to put something in memory
c.lh x9, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd2871aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8e72dd38 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x10, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc5b45766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d2a4b25 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lh x11, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3b9f8882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7bedc003 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa494c0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbfb2647b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x14) # store value to put something in memory
c.lh x13, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4b06cb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff9e519b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x04341dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x88fe139b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xbfe1668c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6261318b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x14, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0xacaba41b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0xda6f8bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0xef8c22a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc795aabb # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x8, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x2a18ff42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x3476565a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0x23db5c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa7fda9c9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x15, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xf7206873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x9) # store value to put something in memory
c.lh x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x4a1b57de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x9, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x14, 0xe9622ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x564564b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x8) # store value to put something in memory
c.lh x14, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0x0db78627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x22, 0x602859dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x20, 0xe831eba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb188c19d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x12, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x25, 0x2991b38e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x9, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x28, 0xd239bab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00008001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x2, 0xaf2585d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf6401f23 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0x3361f2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007fff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x14) # store value to put something in memory
c.lh x13, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x23, 0x8dbd2bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007fff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x15, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x17, 0x6badc6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x01693549 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x28, 0x13e1a1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007ffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x8, 0x6278c852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00007ffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x10) # store value to put something in memory
c.lh x8, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x5, 0x204ab715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa2957178 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x20, 0x63acbbf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000ffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x15) # store value to put something in memory
c.lh x12, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x5, 0x068200f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000ffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x8) # store value to put something in memory
c.lh x13, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x27, 0x6ab5aad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc92c1b47 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x26, 0x3647a167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000fffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x13) # store value to put something in memory
c.lh x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x14, 0x85d27d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000fffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x14, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x1, 0x70de504c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x24e7d619 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x22, 0xdabfca4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00005555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x14) # store value to put something in memory
c.lh x14, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0x2464f047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00005555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x14) # store value to put something in memory
c.lh x10, 2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0x77823fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaadb994e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x11, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x29, 0xd2b88766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lh x13, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x20, 0xd6b0720e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000aaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x31, 0x54540636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3dafaaea # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x15, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x5, 0x417288bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x9) # store value to put something in memory
c.lh x13, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x16, 0x01e14aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x9) # store value to put something in memory
c.lh x8, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x6, 0xbdea5409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb672c04d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x14, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x26, 0xdab17e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000dbbc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x25, 0x85fab210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000dbbc # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lh x9, 2(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xa3d2f886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcc9ef2a9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x14, 2(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x3c1337f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf5c339e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x9) # store value to put something in memory
c.lh x10, 0(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xf78907fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf5069b6e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x10) # store value to put something in memory
c.lh x8, 0(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x344a840b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x20ca0189 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lh x11, 2(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x909c49b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x924867d7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x6b11b9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc08cdeb5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x13) # store value to put something in memory
c.lh x15, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0xe49e4f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x91d63cfc # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x9a07246c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf08a4801 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x15) # store value to put something in memory
c.lh x13, 0(x15) # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
