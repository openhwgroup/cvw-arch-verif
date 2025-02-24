///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.sb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.346318
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
