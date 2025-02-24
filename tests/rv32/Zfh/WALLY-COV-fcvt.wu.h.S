///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.wu.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.542276
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rd (Test destination rd = x0)
li x0, 0x067ac774 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xabc25c2e # load x3 with value 0xabc25c2e
sw x3, 0(x2) # store 0xabc25c2e in memory
flh f5, 0(x2) # load 0xabc25c2e from memory into f5
fcvt.wu.h x0, f5 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa242b6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa9b77a4c # load x3 with value 0xa9b77a4c
sw x3, 0(x2) # store 0xa9b77a4c in memory
flh f20, 0(x2) # load 0xa9b77a4c from memory into f20
fcvt.wu.h x1, f20 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x61905533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc8d6dbbd # load x3 with value 0xc8d6dbbd
sw x3, 0(x2) # store 0xc8d6dbbd in memory
flh f23, 0(x2) # load 0xc8d6dbbd from memory into f23
fcvt.wu.h x2, f23 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4908dd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c4d7c29 # load x3 with value 0x4c4d7c29
sw x3, 0(x2) # store 0x4c4d7c29 in memory
flh f23, 0(x2) # load 0x4c4d7c29 from memory into f23
fcvt.wu.h x3, f23 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x6b5905ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x267999cc # load x3 with value 0x267999cc
sw x3, 0(x2) # store 0x267999cc in memory
flh f28, 0(x2) # load 0x267999cc from memory into f28
fcvt.wu.h x4, f28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1f52bc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3a6b7251 # load x3 with value 0x3a6b7251
sw x3, 0(x2) # store 0x3a6b7251 in memory
flh f17, 0(x2) # load 0x3a6b7251 from memory into f17
fcvt.wu.h x5, f17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xbeebef9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb8e83348 # load x3 with value 0xb8e83348
sw x3, 0(x2) # store 0xb8e83348 in memory
flh f5, 0(x2) # load 0xb8e83348 from memory into f5
fcvt.wu.h x6, f5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb556a553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xde8d8fb4 # load x3 with value 0xde8d8fb4
sw x3, 0(x2) # store 0xde8d8fb4 in memory
flh f27, 0(x2) # load 0xde8d8fb4 from memory into f27
fcvt.wu.h x7, f27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4b40643d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe469e620 # load x3 with value 0xe469e620
sw x3, 0(x2) # store 0xe469e620 in memory
flh f1, 0(x2) # load 0xe469e620 from memory into f1
fcvt.wu.h x8, f1 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x515d57e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe4a29f8a # load x3 with value 0xe4a29f8a
sw x3, 0(x2) # store 0xe4a29f8a in memory
flh f19, 0(x2) # load 0xe4a29f8a from memory into f19
fcvt.wu.h x9, f19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7b24e18b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0386af36 # load x3 with value 0x0386af36
sw x3, 0(x2) # store 0x0386af36 in memory
flh f9, 0(x2) # load 0x0386af36 from memory into f9
fcvt.wu.h x10, f9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4c0cac3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa909085c # load x3 with value 0xa909085c
sw x3, 0(x2) # store 0xa909085c in memory
flh f24, 0(x2) # load 0xa909085c from memory into f24
fcvt.wu.h x11, f24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xea02ea95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x502c1ed1 # load x3 with value 0x502c1ed1
sw x3, 0(x2) # store 0x502c1ed1 in memory
flh f29, 0(x2) # load 0x502c1ed1 from memory into f29
fcvt.wu.h x12, f29 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc996f1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87c044fb # load x3 with value 0x87c044fb
sw x3, 0(x2) # store 0x87c044fb in memory
flh f6, 0(x2) # load 0x87c044fb from memory into f6
fcvt.wu.h x13, f6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4fc4ef51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8b105176 # load x3 with value 0x8b105176
sw x3, 0(x2) # store 0x8b105176 in memory
flh f10, 0(x2) # load 0x8b105176 from memory into f10
fcvt.wu.h x14, f10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4d48a779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3703d3c4 # load x3 with value 0x3703d3c4
sw x3, 0(x2) # store 0x3703d3c4 in memory
flh f7, 0(x2) # load 0x3703d3c4 from memory into f7
fcvt.wu.h x15, f7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb92f838c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb4feaddc # load x3 with value 0xb4feaddc
sw x3, 0(x2) # store 0xb4feaddc in memory
flh f15, 0(x2) # load 0xb4feaddc from memory into f15
fcvt.wu.h x16, f15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xbcee11ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfaf2c2ec # load x3 with value 0xfaf2c2ec
sw x3, 0(x2) # store 0xfaf2c2ec in memory
flh f1, 0(x2) # load 0xfaf2c2ec from memory into f1
fcvt.wu.h x17, f1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x373e0262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x94650cac # load x3 with value 0x94650cac
sw x3, 0(x2) # store 0x94650cac in memory
flh f16, 0(x2) # load 0x94650cac from memory into f16
fcvt.wu.h x18, f16 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x562d318e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x85911a3a # load x3 with value 0x85911a3a
sw x3, 0(x2) # store 0x85911a3a in memory
flh f28, 0(x2) # load 0x85911a3a from memory into f28
fcvt.wu.h x19, f28 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x07cc9540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3836007e # load x3 with value 0x3836007e
sw x3, 0(x2) # store 0x3836007e in memory
flh f4, 0(x2) # load 0x3836007e from memory into f4
fcvt.wu.h x20, f4 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7e0f803b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x70699310 # load x3 with value 0x70699310
sw x3, 0(x2) # store 0x70699310 in memory
flh f4, 0(x2) # load 0x70699310 from memory into f4
fcvt.wu.h x21, f4 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x25d05be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4755a1b0 # load x3 with value 0x4755a1b0
sw x3, 0(x2) # store 0x4755a1b0 in memory
flh f17, 0(x2) # load 0x4755a1b0 from memory into f17
fcvt.wu.h x22, f17 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd1ee818e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb1474464 # load x3 with value 0xb1474464
sw x3, 0(x2) # store 0xb1474464 in memory
flh f2, 0(x2) # load 0xb1474464 from memory into f2
fcvt.wu.h x23, f2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc0658d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7a85893d # load x3 with value 0x7a85893d
sw x3, 0(x2) # store 0x7a85893d in memory
flh f5, 0(x2) # load 0x7a85893d from memory into f5
fcvt.wu.h x24, f5 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3259fb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1caa9630 # load x3 with value 0x1caa9630
sw x3, 0(x2) # store 0x1caa9630 in memory
flh f12, 0(x2) # load 0x1caa9630 from memory into f12
fcvt.wu.h x25, f12 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x6923ec0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8695f745 # load x3 with value 0x8695f745
sw x3, 0(x2) # store 0x8695f745 in memory
flh f28, 0(x2) # load 0x8695f745 from memory into f28
fcvt.wu.h x26, f28 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x51a013be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x825cb2d6 # load x3 with value 0x825cb2d6
sw x3, 0(x2) # store 0x825cb2d6 in memory
flh f9, 0(x2) # load 0x825cb2d6 from memory into f9
fcvt.wu.h x27, f9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xde613645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x37aa96ad # load x3 with value 0x37aa96ad
sw x3, 0(x2) # store 0x37aa96ad in memory
flh f20, 0(x2) # load 0x37aa96ad from memory into f20
fcvt.wu.h x28, f20 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x234dd7c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x98c17784 # load x3 with value 0x98c17784
sw x3, 0(x2) # store 0x98c17784 in memory
flh f31, 0(x2) # load 0x98c17784 from memory into f31
fcvt.wu.h x29, f31 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4ca650b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x11734a6a # load x3 with value 0x11734a6a
sw x3, 0(x2) # store 0x11734a6a in memory
flh f17, 0(x2) # load 0x11734a6a from memory into f17
fcvt.wu.h x30, f17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2db2e104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7353eae5 # load x3 with value 0x7353eae5
sw x3, 0(x2) # store 0x7353eae5 in memory
flh f15, 0(x2) # load 0x7353eae5 from memory into f15
fcvt.wu.h x31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x25, 0x3a933da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fcvt.wu.h x25, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x19, 0xbffce611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fcvt.wu.h x19, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x14, 0x67797135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fcvt.wu.h x14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x28, 0xeb5d08ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fcvt.wu.h x28, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x21, 0x9f03ef96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fcvt.wu.h x21, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x7, 0x4c81c3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fcvt.wu.h x7, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x3, 0xd8610e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fcvt.wu.h x3, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x4, 0xe760fe28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fcvt.wu.h x4, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x9, 0xdf0d5f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fcvt.wu.h x9, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x13, 0xf3d4c8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fcvt.wu.h x13, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x15, 0x6ec27d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fcvt.wu.h x15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x16, 0x4a2689d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fcvt.wu.h x16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x21, 0xd57d9ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fcvt.wu.h x21, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x17, 0x8d6b2192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fcvt.wu.h x17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x12, 0xd9e2a1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fcvt.wu.h x12, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x18, 0x8a91decc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fcvt.wu.h x18, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x31, 0xde8671e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fcvt.wu.h x31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x27, 0x5b226698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fcvt.wu.h x27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x3, 0x7febc8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fcvt.wu.h x3, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x2, 0x692f8eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fcvt.wu.h x2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x25, 0xa8a2cc6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fcvt.wu.h x25, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x18, 0x85b3ddb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fcvt.wu.h x18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x4, 0x2bcc736d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fcvt.wu.h x4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x7, 0x177ccc30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fcvt.wu.h x7, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x24, 0x2126868a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fcvt.wu.h x24, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x28, 0x30297d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fcvt.wu.h x28, f22 # perform operation

# Testcase cp_frm
li x24, 0x43078197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8aee9812 # load x3 with value 0x8aee9812
sw x3, 0(x2) # store 0x8aee9812 in memory
flh f10, 0(x2) # load 0x8aee9812 from memory into f10
fcvt.wu.h x24, f10, dyn # perform operation
fcvt.wu.h x24, f10, rdn # perform operation
fcvt.wu.h x24, f10, rmm # perform operation
fcvt.wu.h x24, f10, rne # perform operation
fcvt.wu.h x24, f10, rtz # perform operation
fcvt.wu.h x24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x24, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x26, 0xab68bb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaf13d1e3 # load x3 with value 0xaf13d1e3
sw x3, 0(x2) # store 0xaf13d1e3 in memory
flh f0, 0(x2) # load 0xaf13d1e3 from memory into f0
fcvt.wu.h x26, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0x8675be6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf4ebe18e # load x3 with value 0xf4ebe18e
sw x3, 0(x2) # store 0xf4ebe18e in memory
flh f1, 0(x2) # load 0xf4ebe18e from memory into f1
fcvt.wu.h x19, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x21, 0xc82e4106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x719e6d6b # load x3 with value 0x719e6d6b
sw x3, 0(x2) # store 0x719e6d6b in memory
flh f2, 0(x2) # load 0x719e6d6b from memory into f2
fcvt.wu.h x21, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0xebfecdff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9dddf7e4 # load x3 with value 0x9dddf7e4
sw x3, 0(x2) # store 0x9dddf7e4 in memory
flh f3, 0(x2) # load 0x9dddf7e4 from memory into f3
fcvt.wu.h x22, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0xb04fe165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6fe07a65 # load x3 with value 0x6fe07a65
sw x3, 0(x2) # store 0x6fe07a65 in memory
flh f4, 0(x2) # load 0x6fe07a65 from memory into f4
fcvt.wu.h x25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0xa766f327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e0c5627 # load x3 with value 0x0e0c5627
sw x3, 0(x2) # store 0x0e0c5627 in memory
flh f5, 0(x2) # load 0x0e0c5627 from memory into f5
fcvt.wu.h x5, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x17, 0x327b12d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9e09a050 # load x3 with value 0x9e09a050
sw x3, 0(x2) # store 0x9e09a050 in memory
flh f6, 0(x2) # load 0x9e09a050 from memory into f6
fcvt.wu.h x17, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x0ea5fd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x60e4cb38 # load x3 with value 0x60e4cb38
sw x3, 0(x2) # store 0x60e4cb38 in memory
flh f7, 0(x2) # load 0x60e4cb38 from memory into f7
fcvt.wu.h x23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x12, 0xc491be36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x01862451 # load x3 with value 0x01862451
sw x3, 0(x2) # store 0x01862451 in memory
flh f8, 0(x2) # load 0x01862451 from memory into f8
fcvt.wu.h x12, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x2, 0x8e360088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd583d7fe # load x3 with value 0xd583d7fe
sw x3, 0(x2) # store 0xd583d7fe in memory
flh f9, 0(x2) # load 0xd583d7fe from memory into f9
fcvt.wu.h x2, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x12, 0xce17c5ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfef36d7 # load x3 with value 0xbfef36d7
sw x3, 0(x2) # store 0xbfef36d7 in memory
flh f10, 0(x2) # load 0xbfef36d7 from memory into f10
fcvt.wu.h x12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0x4a9a8d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd964585a # load x3 with value 0xd964585a
sw x3, 0(x2) # store 0xd964585a in memory
flh f11, 0(x2) # load 0xd964585a from memory into f11
fcvt.wu.h x25, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0x6b830406 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac879033 # load x3 with value 0xac879033
sw x3, 0(x2) # store 0xac879033 in memory
flh f12, 0(x2) # load 0xac879033 from memory into f12
fcvt.wu.h x24, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x16, 0xb2a44e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5ad59b1d # load x3 with value 0x5ad59b1d
sw x3, 0(x2) # store 0x5ad59b1d in memory
flh f13, 0(x2) # load 0x5ad59b1d from memory into f13
fcvt.wu.h x16, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x4, 0x493499d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x498ee480 # load x3 with value 0x498ee480
sw x3, 0(x2) # store 0x498ee480 in memory
flh f14, 0(x2) # load 0x498ee480 from memory into f14
fcvt.wu.h x4, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0xc053fe67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd5d43372 # load x3 with value 0xd5d43372
sw x3, 0(x2) # store 0xd5d43372 in memory
flh f15, 0(x2) # load 0xd5d43372 from memory into f15
fcvt.wu.h x29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0x567dfa76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x838530e0 # load x3 with value 0x838530e0
sw x3, 0(x2) # store 0x838530e0 in memory
flh f16, 0(x2) # load 0x838530e0 from memory into f16
fcvt.wu.h x31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x4, 0x62d36a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc5309b3c # load x3 with value 0xc5309b3c
sw x3, 0(x2) # store 0xc5309b3c in memory
flh f17, 0(x2) # load 0xc5309b3c from memory into f17
fcvt.wu.h x4, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x29, 0xefe24ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14cac5a8 # load x3 with value 0x14cac5a8
sw x3, 0(x2) # store 0x14cac5a8 in memory
flh f18, 0(x2) # load 0x14cac5a8 from memory into f18
fcvt.wu.h x29, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x12, 0x04899bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x041d0c73 # load x3 with value 0x041d0c73
sw x3, 0(x2) # store 0x041d0c73 in memory
flh f19, 0(x2) # load 0x041d0c73 from memory into f19
fcvt.wu.h x12, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x4, 0xfffaa2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x545a8d0a # load x3 with value 0x545a8d0a
sw x3, 0(x2) # store 0x545a8d0a in memory
flh f20, 0(x2) # load 0x545a8d0a from memory into f20
fcvt.wu.h x4, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x30, 0x88916dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e3653db # load x3 with value 0x2e3653db
sw x3, 0(x2) # store 0x2e3653db in memory
flh f21, 0(x2) # load 0x2e3653db from memory into f21
fcvt.wu.h x30, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x26, 0x26460bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x983cc8ba # load x3 with value 0x983cc8ba
sw x3, 0(x2) # store 0x983cc8ba in memory
flh f22, 0(x2) # load 0x983cc8ba from memory into f22
fcvt.wu.h x26, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x22, 0x2551d045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x49787674 # load x3 with value 0x49787674
sw x3, 0(x2) # store 0x49787674 in memory
flh f23, 0(x2) # load 0x49787674 from memory into f23
fcvt.wu.h x22, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0xe5a67af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x121cc8e1 # load x3 with value 0x121cc8e1
sw x3, 0(x2) # store 0x121cc8e1 in memory
flh f24, 0(x2) # load 0x121cc8e1 from memory into f24
fcvt.wu.h x14, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0xf6e07f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xab519b5f # load x3 with value 0xab519b5f
sw x3, 0(x2) # store 0xab519b5f in memory
flh f25, 0(x2) # load 0xab519b5f from memory into f25
fcvt.wu.h x30, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0x0eb68dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x942c49e0 # load x3 with value 0x942c49e0
sw x3, 0(x2) # store 0x942c49e0 in memory
flh f26, 0(x2) # load 0x942c49e0 from memory into f26
fcvt.wu.h x1, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x15, 0x14018d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x36585acc # load x3 with value 0x36585acc
sw x3, 0(x2) # store 0x36585acc in memory
flh f27, 0(x2) # load 0x36585acc from memory into f27
fcvt.wu.h x15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x9, 0xd87677d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb08d8829 # load x3 with value 0xb08d8829
sw x3, 0(x2) # store 0xb08d8829 in memory
flh f28, 0(x2) # load 0xb08d8829 from memory into f28
fcvt.wu.h x9, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x2, 0xbb7a58b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x553e7eac # load x3 with value 0x553e7eac
sw x3, 0(x2) # store 0x553e7eac in memory
flh f29, 0(x2) # load 0x553e7eac from memory into f29
fcvt.wu.h x2, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0x81a9ed82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1205d8a # load x3 with value 0xe1205d8a
sw x3, 0(x2) # store 0xe1205d8a in memory
flh f30, 0(x2) # load 0xe1205d8a from memory into f30
fcvt.wu.h x14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x28, 0xd32097cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7e140602 # load x3 with value 0x7e140602
sw x3, 0(x2) # store 0x7e140602 in memory
flh f31, 0(x2) # load 0x7e140602 from memory into f31
fcvt.wu.h x28, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
