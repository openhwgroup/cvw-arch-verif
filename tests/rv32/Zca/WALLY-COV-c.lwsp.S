///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.lwsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.490645
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb8a3885d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x52b854bf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x17, 116(sp)   # store value to put something in memory
c.lwsp x1, 116(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3833e89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdfdd791d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x18, 224(sp)   # store value to put something in memory
c.lwsp x2, 224(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x9f491254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x64751cdc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x24, 144(sp)   # store value to put something in memory
c.lwsp x3, 144(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x68e059ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdda31e8e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x21, 240(sp)   # store value to put something in memory
c.lwsp x4, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7645690e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf3b93c65 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x6, 72(sp)   # store value to put something in memory
c.lwsp x5, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xfce58f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd5ccb30 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x18, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x7899d923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdfd5dcc3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x15, 52(sp)   # store value to put something in memory
c.lwsp x7, 52(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x53baf21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc6430cd7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x21, 60(sp)   # store value to put something in memory
c.lwsp x8, 60(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb1c26bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xef8f18fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x18, 16(sp)   # store value to put something in memory
c.lwsp x9, 16(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd0bfd78c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8d26011a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x28, 28(sp)   # store value to put something in memory
c.lwsp x10, 28(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb8e45886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2273ee5a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x23, 244(sp)   # store value to put something in memory
c.lwsp x11, 244(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x924e4007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1257f3f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x30, 164(sp)   # store value to put something in memory
c.lwsp x12, 164(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb415e12a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0f2e1190 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x23, 180(sp)   # store value to put something in memory
c.lwsp x13, 180(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc2631e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd9d46dc0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x30, 92(sp)   # store value to put something in memory
c.lwsp x14, 92(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7bb886db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x70ffda1e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x13, 56(sp)   # store value to put something in memory
c.lwsp x15, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xca6890d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x28f556da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x6, 232(sp)   # store value to put something in memory
c.lwsp x16, 232(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x047a8be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf57784e3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x26, 136(sp)   # store value to put something in memory
c.lwsp x17, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc77d3127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf2a388b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x9, 36(sp)   # store value to put something in memory
c.lwsp x18, 36(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa5a81a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x16f66b6a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x11, 32(sp)   # store value to put something in memory
c.lwsp x19, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbcc2f250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb6477ebc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x20, 108(sp)   # store value to put something in memory
c.lwsp x20, 108(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2c63549a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x140c3911 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x26, 56(sp)   # store value to put something in memory
c.lwsp x21, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x831e3c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfd5b9992 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x4, 216(sp)   # store value to put something in memory
c.lwsp x22, 216(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6b12212e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x815be463 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x3, 24(sp)   # store value to put something in memory
c.lwsp x23, 24(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x25ff3162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3d80bd08 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x8, 192(sp)   # store value to put something in memory
c.lwsp x24, 192(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd76e4d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x798df725 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x18, 136(sp)   # store value to put something in memory
c.lwsp x25, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd9c4832d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x06a564de # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x3, 20(sp)   # store value to put something in memory
c.lwsp x26, 20(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xdf7d1e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa32a761f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x17, 72(sp)   # store value to put something in memory
c.lwsp x27, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6e9c2dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x730eee50 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x26, 152(sp)   # store value to put something in memory
c.lwsp x28, 152(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x59186819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x05bcd9cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x20, 96(sp)   # store value to put something in memory
c.lwsp x29, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdecc3013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x17b72169 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x19, 16(sp)   # store value to put something in memory
c.lwsp x30, 16(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x88260390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa907b566 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x22, 188(sp)   # store value to put something in memory
c.lwsp x31, 188(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x3b415779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf92d1103 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x17, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x0ad67a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x16, 0(sp)   # store value to put something in memory
c.lwsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x1609bf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x911a5394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa9326359 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x00446ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x28, 4(sp)   # store value to put something in memory
c.lwsp x8, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0xe0f8554a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x7, 252(sp)   # store value to put something in memory
c.lwsp x26, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xf813a45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd88faeaf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x13d71695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x11, 8(sp)   # store value to put something in memory
c.lwsp x18, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0xd6c819c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x12, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x25, 0xdefba6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb673abdd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x25, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x28, 0x3e035823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x26, 0(sp)   # store value to put something in memory
c.lwsp x28, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0xbadb7bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x7, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x84e6dfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5ea0a34f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x7, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0xe90a4af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x19, 4(sp)   # store value to put something in memory
c.lwsp x30, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0x69e189f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x14, 252(sp)   # store value to put something in memory
c.lwsp x22, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x13, 0xbd87eeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x211addc4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x13, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x8ce7f5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x1, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x0fdae9af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x20, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x2, 0x4c63670f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd456d524 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x21, 0xc0d55ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x9, 248(sp)   # store value to put something in memory
c.lwsp x21, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xe6556160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x3, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x014a6be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x51c5f7cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x0d7d867d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x11, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xa067e538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x16, 252(sp)   # store value to put something in memory
c.lwsp x9, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0xbcb4d5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43d14647 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x28, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x02ee313c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x1, 248(sp)   # store value to put something in memory
c.lwsp x31, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x60a45861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x18, 252(sp)   # store value to put something in memory
c.lwsp x24, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x4, 0xd9e8c54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x538cd202 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0x3b43cfe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x29, 220(sp)   # store value to put something in memory
c.lwsp x12, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x25, 0xad164510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x7, 252(sp)   # store value to put something in memory
c.lwsp x25, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x23, 0xa8e6ba30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6db40270 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x23, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0xab7e9170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x4, 168(sp)   # store value to put something in memory
c.lwsp x16, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x31, 0x66ba941b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x10, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0x67f4b61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x125a4005 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x19, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0xaaf2b43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x28, 84(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0xb7ca6ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x1, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xe7a3abfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2abeb63a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x25, 0(sp)   # store value to put something in memory
c.lwsp x10, 0(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xfa1356b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf0aac7c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x25, 4(sp)   # store value to put something in memory
c.lwsp x22, 4(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x05ffb748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfe50bb8e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x22, 8(sp)   # store value to put something in memory
c.lwsp x30, 8(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x2d2275f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x92a3af1b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x11, 12(sp)   # store value to put something in memory
c.lwsp x26, 12(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x2735c459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8b5d04dc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x4, 16(sp)   # store value to put something in memory
c.lwsp x19, 16(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x9de3076b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x68136efd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x11, 20(sp)   # store value to put something in memory
c.lwsp x29, 20(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x45052aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf5a94bd7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x27, 24(sp)   # store value to put something in memory
c.lwsp x17, 24(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x4f396043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3318e350 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x22, 28(sp)   # store value to put something in memory
c.lwsp x17, 28(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x5a4b65c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x95cdcdec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x25, 32(sp)   # store value to put something in memory
c.lwsp x17, 32(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x82e5ce6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3b52fb9b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x21, 36(sp)   # store value to put something in memory
c.lwsp x15, 36(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb6c70506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa6fb1727 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x28, 40(sp)   # store value to put something in memory
c.lwsp x22, 40(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x18223b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x949783af # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x16, 44(sp)   # store value to put something in memory
c.lwsp x13, 44(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x2eafd752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x06bd5da0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x4, 48(sp)   # store value to put something in memory
c.lwsp x28, 48(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8534a9a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xce8bd2e2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x4, 52(sp)   # store value to put something in memory
c.lwsp x10, 52(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x823f9e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe7ccd801 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x26, 56(sp)   # store value to put something in memory
c.lwsp x10, 56(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x005c1ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x42a47d47 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x12, 60(sp)   # store value to put something in memory
c.lwsp x11, 60(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x86742047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x95e853cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x19, 64(sp)   # store value to put something in memory
c.lwsp x26, 64(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x1b13cdb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa1ba5a09 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x9, 68(sp)   # store value to put something in memory
c.lwsp x2, 68(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf2067857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x81aeb27e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x18, 72(sp)   # store value to put something in memory
c.lwsp x2, 72(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x29ded507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x265392d9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x31, 76(sp)   # store value to put something in memory
c.lwsp x12, 76(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xce459631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe28f5198 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x26, 80(sp)   # store value to put something in memory
c.lwsp x18, 80(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x0ef016bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x39f40901 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x23, 84(sp)   # store value to put something in memory
c.lwsp x30, 84(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x18db87d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00b763a4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x11, 88(sp)   # store value to put something in memory
c.lwsp x3, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xff12a0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8299a557 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x22, 92(sp)   # store value to put something in memory
c.lwsp x16, 92(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x0ad42002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5cdf6a84 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x7, 96(sp)   # store value to put something in memory
c.lwsp x25, 96(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x82406b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaecb3902 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x9, 100(sp)   # store value to put something in memory
c.lwsp x16, 100(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x272fc728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a9e09ce # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x19, 104(sp)   # store value to put something in memory
c.lwsp x28, 104(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x0b17e934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbae4c79e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x7, 108(sp)   # store value to put something in memory
c.lwsp x15, 108(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x063b3dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x748da6ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x20, 112(sp)   # store value to put something in memory
c.lwsp x7, 112(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x90acb2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x968b7c87 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x26, 116(sp)   # store value to put something in memory
c.lwsp x16, 116(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x4855da93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8b5d4298 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x18, 120(sp)   # store value to put something in memory
c.lwsp x10, 120(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x517da4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaee5e62a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x16, 124(sp)   # store value to put something in memory
c.lwsp x10, 124(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xdda607c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x07af7017 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x26, 128(sp)   # store value to put something in memory
c.lwsp x18, 128(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x7bb25960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4613640b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x26, 132(sp) # perform operation

# Testcase cp_imm_mul
li x4, 0xecf97aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0d51b8ac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x25, 136(sp)   # store value to put something in memory
c.lwsp x4, 136(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x30037078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x68e47c22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x8, 140(sp)   # store value to put something in memory
c.lwsp x26, 140(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xd0ba2475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe4aa3038 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x24, 144(sp)   # store value to put something in memory
c.lwsp x14, 144(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x08f37a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7232fe85 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x4, 148(sp)   # store value to put something in memory
c.lwsp x9, 148(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xd8aab959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8e3b7e6f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x30, 152(sp)   # store value to put something in memory
c.lwsp x15, 152(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xf80db857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1a063cba # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x20, 156(sp)   # store value to put something in memory
c.lwsp x1, 156(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x154a4127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x348dd243 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x31, 160(sp)   # store value to put something in memory
c.lwsp x29, 160(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x5973fee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd42e3d1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x22, 164(sp)   # store value to put something in memory
c.lwsp x9, 164(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x315d1b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb8cb80bc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x6, 168(sp)   # store value to put something in memory
c.lwsp x28, 168(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xed50c40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdcc45412 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x19, 172(sp)   # store value to put something in memory
c.lwsp x26, 172(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x28cbe1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x27ff48ab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x29, 176(sp)   # store value to put something in memory
c.lwsp x11, 176(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x308190ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6b8b1865 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x30, 180(sp)   # store value to put something in memory
c.lwsp x3, 180(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xbe1b266b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x08ad6f94 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x18, 184(sp)   # store value to put something in memory
c.lwsp x27, 184(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x7564467d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcf0256c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x21, 188(sp)   # store value to put something in memory
c.lwsp x12, 188(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xbd7d7d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x82abca9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x11, 192(sp)   # store value to put something in memory
c.lwsp x5, 192(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xdd041cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xde4fb68c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x24, 196(sp)   # store value to put something in memory
c.lwsp x6, 196(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x0dcb68ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe7b5a8ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x28, 200(sp)   # store value to put something in memory
c.lwsp x13, 200(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xa10463aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x20d2bd02 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x26, 204(sp)   # store value to put something in memory
c.lwsp x2, 204(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xc6f48cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf59e31f6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x9, 208(sp)   # store value to put something in memory
c.lwsp x12, 208(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x29b581eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48cda594 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x8, 212(sp)   # store value to put something in memory
c.lwsp x26, 212(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x109b6ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x171cbe6a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x16, 216(sp)   # store value to put something in memory
c.lwsp x11, 216(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x283d0942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x18849199 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x19, 220(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x359ea9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbea920e2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x4, 224(sp)   # store value to put something in memory
c.lwsp x27, 224(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xd3db0763 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1b022b01 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x18, 228(sp)   # store value to put something in memory
c.lwsp x26, 228(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x834e0f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0773d2a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x24, 232(sp)   # store value to put something in memory
c.lwsp x11, 232(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x42783808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x91daf653 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x28, 236(sp)   # store value to put something in memory
c.lwsp x9, 236(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xfdba3390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x85b94341 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x17, 240(sp)   # store value to put something in memory
c.lwsp x22, 240(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x60e53726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa1bfb82c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x29, 244(sp)   # store value to put something in memory
c.lwsp x3, 244(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xdcf325c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x479de62a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x8, 248(sp)   # store value to put something in memory
c.lwsp x27, 248(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xf82502ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0d0df96d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x19, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
