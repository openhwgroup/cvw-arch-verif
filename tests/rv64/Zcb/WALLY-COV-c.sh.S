///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.sh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.346727
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
