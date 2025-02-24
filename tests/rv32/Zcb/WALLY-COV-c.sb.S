///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.sb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.801535
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
