///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.ld.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.982661
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x132abc6e0882008a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xab4db053a636126e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x8) # store value to put something in memory
c.ld x8, 8(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa00a359127b3d6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5eec509ce28e3aaa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x12, 144(x9) # store value to put something in memory
c.ld x9, 144(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x93730e40e916f7be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5842e1d256aa6276 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.sd x12, 136(x10) # store value to put something in memory
c.ld x10, 136(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6ddeff2766e0502d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf63f393ce07bfe2c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x9, 0(x11) # store value to put something in memory
c.ld x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9b172a99baff9fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x89e9283ecece0647 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -232 # sub immediate from rs1 to counter offset
c.sd x13, 232(x12) # store value to put something in memory
c.ld x12, 232(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4fbd22f154155bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x91fd6e8aa010747b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -160 # sub immediate from rs1 to counter offset
c.sd x9, 160(x13) # store value to put something in memory
c.ld x13, 160(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x91e93342ba2ddf46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x228b22dbe1755aa1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x15, 72(x14) # store value to put something in memory
c.ld x14, 72(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8914c799ab6b9ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x447fa6c483af5608 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -216 # sub immediate from rs1 to counter offset
c.sd x11, 216(x15) # store value to put something in memory
c.ld x15, 216(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9ca11a3edc71213c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5c3d17be1e69a08e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.sd x15, 200(x11) # store value to put something in memory
c.ld x8, 200(x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x180d73c0c70d2206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc8b8c62c0ff8b09b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x14) # store value to put something in memory
c.ld x9, 88(x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x4692c97230e52053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8b71a73baa06fe0d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x15, 96(x13) # store value to put something in memory
c.ld x10, 96(x13) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9cd18bdbc7b90a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x550705489dacf7c9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x12) # store value to put something in memory
c.ld x11, 112(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8abcd22e2d2d5cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7b905a72bcf7ab89 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -128 # sub immediate from rs1 to counter offset
c.sd x10, 128(x11) # store value to put something in memory
c.ld x12, 128(x11) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x35270490206c1265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaabbe152c01685f5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sd x9, 64(x13) # store value to put something in memory
c.ld x13, 64(x13) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x12903a3c0b875295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xff325bddd681ed91 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.sd x11, 72(x12) # store value to put something in memory
c.ld x14, 72(x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8da17e86554581c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd9939d36343371a9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x15) # store value to put something in memory
c.ld x15, 32(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x1e2a58e77bb3ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0880e8f741f4d64e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x11, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x9a7dc151a00f4c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x9) # store value to put something in memory
c.ld x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xff4d593772dc8989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x11) # store value to put something in memory
c.ld x10, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x911bbfbeff725837 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xad583ae1739e3387 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x14, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0xf76382adc075783f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sd x10, 8(x15) # store value to put something in memory
c.ld x15, 8(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0xc2e395b4afb7bcac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x15) # store value to put something in memory
c.ld x9, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x50d6b34d95124ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9b76db84e6542f28 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x11, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x9a0a222f2ec2aa62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x10) # store value to put something in memory
c.ld x13, 16(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x531f9b48daf97791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x11) # store value to put something in memory
c.ld x15, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0x0b8c0712f050b408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf8e997731250f4d6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x10) # store value to put something in memory
c.ld x10, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0x8d3f2f074e0515c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x12) # store value to put something in memory
c.ld x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x20, 0x86bb3b3685b15c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x12, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x21, 0x3aaf06c9936a83ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc0a0acbf57ebdc2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x10) # store value to put something in memory
c.ld x13, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x2, 0xc90b79e61fbb7b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x11) # store value to put something in memory
c.ld x10, 8(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0xc14da6b36421f072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x15, 248(x12) # store value to put something in memory
c.ld x15, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0xa995784b8eb01985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeabd24f2ff9652bd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x13, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0x2de1bc82a76c5cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -248 # sub immediate from rs1 to counter offset
c.sd x10, 248(x14) # store value to put something in memory
c.ld x15, 248(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x28, 0xf8156d3b19fe1eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -248 # sub immediate from rs1 to counter offset
c.sd x12, 248(x13) # store value to put something in memory
c.ld x12, 248(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x10, 0xeef75afcb03aa83e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e6b795c76069bcc # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x8) # store value to put something in memory
c.ld x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x12, 0xcbef79613d2f0ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x8, 240(x11) # store value to put something in memory
c.ld x12, 240(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x3, 0xdc39c4bc882465ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x15) # store value to put something in memory
c.ld x11, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x5e1b53973358dcee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4106929bcd128c7e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x21, 0xf249b0a0c65c6845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x13, 248(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x7583dfe6a6075f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x8) # store value to put something in memory
c.ld x11, 248(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x9, 0xd9fc7e5eceb0b88c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1dfec85109ba9d91 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x13, 0(x8) # store value to put something in memory
c.ld x9, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0xbda9196ce77298f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x12, 240(x9) # store value to put something in memory
c.ld x13, 240(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x4, 0xa3e8b5faf51d8938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x14) # store value to put something in memory
c.ld x12, 248(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x12, 0x3f39259ac17bb822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf77331f71bd891ed # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x30, 0xf6eb45b49fa3ab1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x13) # store value to put something in memory
c.ld x14, 184(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x28, 0xfd1430f4f5287b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x8) # store value to put something in memory
c.ld x12, 248(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0x15815dd728d3df9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3524e7dd294b3789 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x14) # store value to put something in memory
c.ld x14, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x6, 0x3630e533e099175c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sd x14, 80(x11) # store value to put something in memory
c.ld x14, 80(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xce7482d26515edd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x11) # store value to put something in memory
c.ld x8, 248(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x30, 0x384a7389e386962a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x47ac7036957ea779 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x8) # store value to put something in memory
c.ld x14, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x31, 0x89d8b5fc04c7802b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x10, 168(x8) # store value to put something in memory
c.ld x15, 168(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0xc42c367afedb1a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -248 # sub immediate from rs1 to counter offset
c.sd x9, 248(x10) # store value to put something in memory
c.ld x15, 248(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xaf0a6f4385213c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa9dfed6847be3ae6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x12, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x0901b2f756c07bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -248 # sub immediate from rs1 to counter offset
c.sd x13, 248(x10) # store value to put something in memory
c.ld x11, 248(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0xa43e3e6f8f2ed4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x9) # store value to put something in memory
c.ld x12, 248(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x528af8930fbed171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7c4e175cf59d5a4b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x13) # store value to put something in memory
c.ld x15, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0xeef8611c3267fd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -240 # sub immediate from rs1 to counter offset
c.sd x9, 240(x10) # store value to put something in memory
c.ld x14, 240(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x405bc730c0e44ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.sd x12, 248(x9) # store value to put something in memory
c.ld x14, 248(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xf04d06deb8d721c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa1ccbc88570366ca # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x12, 0(x8) # store value to put something in memory
c.ld x13, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0xb649dcf24b951a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x12, 0(x13) # store value to put something in memory
c.ld x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x9be0eb74b659b8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x11, 248(x15) # store value to put something in memory
c.ld x14, 248(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x24, 0x0c4f6bdece486e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x71f95f1f8def3d33 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sd x8, 0(x11) # store value to put something in memory
c.ld x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x5, 0x39865581e593e89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x14) # store value to put something in memory
c.ld x13, 8(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x26, 0xecf761e205c19fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x15, 248(x12) # store value to put something in memory
c.ld x10, 248(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xf21a23e5aa2733ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd41ad3626bf05b8c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -216 # sub immediate from rs1 to counter offset
c.sd x10, 216(x8) # store value to put something in memory
c.ld x13, 216(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x5b58c92cda944596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x231b625d0ae0fbe9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.sd x12, 200(x9) # store value to put something in memory
c.ld x11, 200(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xe94d89bf0240d9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6b7c6ee55e78677d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sd x12, 120(x10) # store value to put something in memory
c.ld x13, 120(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x59423e4564202404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x715216436b7dfd4e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -144 # sub immediate from rs1 to counter offset
c.sd x13, 144(x11) # store value to put something in memory
c.ld x11, 144(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x6163cf562bb1b135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe5662b92d51bcd8f # initialize rs2
la x12, scratch # base address 
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.sd x14, 16(x12) # store value to put something in memory
c.ld x9, 16(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x5510db1a45a09da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x055da4f5825653f1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -184 # sub immediate from rs1 to counter offset
c.sd x9, 184(x13) # store value to put something in memory
c.ld x14, 184(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xb91b0672cfcbebcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf501ea1521bdb670 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -176 # sub immediate from rs1 to counter offset
c.sd x11, 176(x14) # store value to put something in memory
c.ld x13, 176(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x929c7714eee840fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc1edc6143f44e54 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x15) # store value to put something in memory
c.ld x10, 80(x15) # perform operation

# Testcase cp_imm_mul
li x3, 0xc75d8a3c684bd2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0d52cfb3908f0518 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x11, 0(x8) # store value to put something in memory
c.ld x11, 0(x8) # perform operation

# Testcase cp_imm_mul
li x28, 0x2b1d26b4cc2352b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfe84d38111a03427 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sd x9, 8(x8) # store value to put something in memory
c.ld x12, 8(x8) # perform operation

# Testcase cp_imm_mul
li x25, 0xdbe99d35e276d1e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5c7d627ed5c6c1ab # initialize rs2
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.sd x12, 16(x15) # store value to put something in memory
c.ld x9, 16(x15) # perform operation

# Testcase cp_imm_mul
li x4, 0x67cce4147698ce75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xca754b957f06edaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, -24 # sub immediate from rs1 to counter offset
c.sd x15, 24(x10) # store value to put something in memory
c.ld x12, 24(x10) # perform operation

# Testcase cp_imm_mul
li x16, 0xb17748541adb094b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1085a2492f53bb82 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x8) # store value to put something in memory
c.ld x8, 32(x8) # perform operation

# Testcase cp_imm_mul
li x13, 0xaac88af97ebeb94f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb2f22790eee57505 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sd x14, 40(x11) # store value to put something in memory
c.ld x13, 40(x11) # perform operation

# Testcase cp_imm_mul
li x6, 0xb758fc94ccce0e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8adca0ba5b4c3ed6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -48 # sub immediate from rs1 to counter offset
c.sd x12, 48(x11) # store value to put something in memory
c.ld x14, 48(x11) # perform operation

# Testcase cp_imm_mul
li x27, 0x9319f247eee79d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb37950e1bb578056 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sd x8, 56(x13) # store value to put something in memory
c.ld x11, 56(x13) # perform operation

# Testcase cp_imm_mul
li x3, 0xffb5972534a04e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5e9d0e908aa08c0d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sd x10, 64(x13) # store value to put something in memory
c.ld x11, 64(x13) # perform operation

# Testcase cp_imm_mul
li x23, 0xf8f0ff9bbbda7e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa037eb6fdea482d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x13, 72(x14) # store value to put something in memory
c.ld x15, 72(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0x2c353b5bd9532756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d5759d18d5c8fdf # initialize rs2
la x10, scratch # base address 
addi x10, x10, -80 # sub immediate from rs1 to counter offset
c.sd x11, 80(x10) # store value to put something in memory
c.ld x10, 80(x10) # perform operation

# Testcase cp_imm_mul
li x4, 0x8ca23452c6fdae5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x94d621bb3f0a6d8f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sd x8, 88(x15) # store value to put something in memory
c.ld x12, 88(x15) # perform operation

# Testcase cp_imm_mul
li x3, 0x46b5ab079740dee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6aa24f0f271fc3f3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sd x12, 96(x11) # store value to put something in memory
c.ld x11, 96(x11) # perform operation

# Testcase cp_imm_mul
li x5, 0x2b99a407f3a13037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ca01f2c40f0080b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -104 # sub immediate from rs1 to counter offset
c.sd x13, 104(x12) # store value to put something in memory
c.ld x13, 104(x12) # perform operation

# Testcase cp_imm_mul
li x22, 0x1f4ef5c949eea72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x43a7055376fad308 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x11) # store value to put something in memory
c.ld x14, 112(x11) # perform operation

# Testcase cp_imm_mul
li x21, 0x6b59ba949f19a4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3700e3918b96a105 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sd x9, 120(x13) # store value to put something in memory
c.ld x13, 120(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x53bd3350da49d674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa2c45cd59e9c78bc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -128 # sub immediate from rs1 to counter offset
c.sd x9, 128(x12) # store value to put something in memory
c.ld x15, 128(x12) # perform operation

# Testcase cp_imm_mul
li x17, 0xb24eff4934376e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbaabb6590e6d9ba1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.sd x15, 136(x10) # store value to put something in memory
c.ld x9, 136(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xa4ff3651ae1988ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc44ec7648e21bf0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -144 # sub immediate from rs1 to counter offset
c.sd x10, 144(x11) # store value to put something in memory
c.ld x15, 144(x11) # perform operation

# Testcase cp_imm_mul
li x4, 0xc841403fbab9c1ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x887375c33b42be2b # initialize rs2
la x15, scratch # base address 
addi x15, x15, -152 # sub immediate from rs1 to counter offset
c.sd x9, 152(x15) # store value to put something in memory
c.ld x12, 152(x15) # perform operation

# Testcase cp_imm_mul
li x2, 0x9f3074acd7a2399e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2052a97fda6fc40 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -160 # sub immediate from rs1 to counter offset
c.sd x13, 160(x9) # store value to put something in memory
c.ld x10, 160(x9) # perform operation

# Testcase cp_imm_mul
li x7, 0x6b3bb4713b170a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x66be802bf64be4e6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.sd x9, 168(x15) # store value to put something in memory
c.ld x15, 168(x15) # perform operation

# Testcase cp_imm_mul
li x20, 0x87c6501047d07755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1d887e3fd79b494b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x9, 176(x13) # store value to put something in memory
c.ld x12, 176(x13) # perform operation

# Testcase cp_imm_mul
li x16, 0xbaeee05d72c40ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaf72e825139df672 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x11, 184(x8) # store value to put something in memory
c.ld x8, 184(x8) # perform operation

# Testcase cp_imm_mul
li x14, 0xa332f8b59b769b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe582ecd1fa42e418 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x10) # store value to put something in memory
c.ld x14, 192(x10) # perform operation

# Testcase cp_imm_mul
li x24, 0x261c291a8011eea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x282aa85542c71e26 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.sd x10, 200(x9) # store value to put something in memory
c.ld x8, 200(x9) # perform operation

# Testcase cp_imm_mul
li x4, 0x630c2de6fabe28af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x99a720afff93d952 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -208 # sub immediate from rs1 to counter offset
c.sd x10, 208(x13) # store value to put something in memory
c.ld x12, 208(x13) # perform operation

# Testcase cp_imm_mul
li x31, 0x9c1c7cd3757b4eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x76aa4b459bccbd12 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -216 # sub immediate from rs1 to counter offset
c.sd x14, 216(x15) # store value to put something in memory
c.ld x15, 216(x15) # perform operation

# Testcase cp_imm_mul
li x28, 0xaa7822ce42631ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0e33b13924456e5e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -224 # sub immediate from rs1 to counter offset
c.sd x14, 224(x10) # store value to put something in memory
c.ld x12, 224(x10) # perform operation

# Testcase cp_imm_mul
li x22, 0xb97cb8fc76df18f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7efcc2ea5c30577d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -232 # sub immediate from rs1 to counter offset
c.sd x9, 232(x13) # store value to put something in memory
c.ld x14, 232(x13) # perform operation

# Testcase cp_imm_mul
li x15, 0xa8d47885cf98f270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5e8563f242b221f3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -240 # sub immediate from rs1 to counter offset
c.sd x14, 240(x10) # store value to put something in memory
c.ld x15, 240(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xece8084e36259354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc83aba9a2f34e2e0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # store value to put something in memory
c.ld x15, 248(x12) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
