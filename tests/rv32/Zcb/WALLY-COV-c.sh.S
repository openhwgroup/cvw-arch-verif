///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.sh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.801945
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
