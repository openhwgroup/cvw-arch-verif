///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.lbu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.797999
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
