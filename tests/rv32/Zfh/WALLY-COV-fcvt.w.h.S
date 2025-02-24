///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.w.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.541068
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
li x0, 0xcca817fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x62e0dfda # load x3 with value 0x62e0dfda
sw x3, 0(x2) # store 0x62e0dfda in memory
flh f21, 0(x2) # load 0x62e0dfda from memory into f21
fcvt.w.h x0, f21 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xfca87e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x61801b0a # load x3 with value 0x61801b0a
sw x3, 0(x2) # store 0x61801b0a in memory
flh f30, 0(x2) # load 0x61801b0a from memory into f30
fcvt.w.h x1, f30 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x7ea5cee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0350fb1f # load x3 with value 0x0350fb1f
sw x3, 0(x2) # store 0x0350fb1f in memory
flh f19, 0(x2) # load 0x0350fb1f from memory into f19
fcvt.w.h x2, f19 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfb498e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e61463c # load x3 with value 0x8e61463c
sw x3, 0(x2) # store 0x8e61463c in memory
flh f18, 0(x2) # load 0x8e61463c from memory into f18
fcvt.w.h x3, f18 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xfb982560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1cfd501d # load x3 with value 0x1cfd501d
sw x3, 0(x2) # store 0x1cfd501d in memory
flh f2, 0(x2) # load 0x1cfd501d from memory into f2
fcvt.w.h x4, f2 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3a8a183b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x55edeed1 # load x3 with value 0x55edeed1
sw x3, 0(x2) # store 0x55edeed1 in memory
flh f16, 0(x2) # load 0x55edeed1 from memory into f16
fcvt.w.h x5, f16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x29227291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xde3f4dd7 # load x3 with value 0xde3f4dd7
sw x3, 0(x2) # store 0xde3f4dd7 in memory
flh f19, 0(x2) # load 0xde3f4dd7 from memory into f19
fcvt.w.h x6, f19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe65a4d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x56c6b775 # load x3 with value 0x56c6b775
sw x3, 0(x2) # store 0x56c6b775 in memory
flh f25, 0(x2) # load 0x56c6b775 from memory into f25
fcvt.w.h x7, f25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0dd1ad0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb201cbd5 # load x3 with value 0xb201cbd5
sw x3, 0(x2) # store 0xb201cbd5 in memory
flh f12, 0(x2) # load 0xb201cbd5 from memory into f12
fcvt.w.h x8, f12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7fc57369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc226c14 # load x3 with value 0xdc226c14
sw x3, 0(x2) # store 0xdc226c14 in memory
flh f2, 0(x2) # load 0xdc226c14 from memory into f2
fcvt.w.h x9, f2 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa7c7d47e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x35a3b5f8 # load x3 with value 0x35a3b5f8
sw x3, 0(x2) # store 0x35a3b5f8 in memory
flh f6, 0(x2) # load 0x35a3b5f8 from memory into f6
fcvt.w.h x10, f6 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1099bed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x656d5e6f # load x3 with value 0x656d5e6f
sw x3, 0(x2) # store 0x656d5e6f in memory
flh f5, 0(x2) # load 0x656d5e6f from memory into f5
fcvt.w.h x11, f5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x79c56a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x89df7051 # load x3 with value 0x89df7051
sw x3, 0(x2) # store 0x89df7051 in memory
flh f13, 0(x2) # load 0x89df7051 from memory into f13
fcvt.w.h x12, f13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x095d418c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc2ec96ec # load x3 with value 0xc2ec96ec
sw x3, 0(x2) # store 0xc2ec96ec in memory
flh f20, 0(x2) # load 0xc2ec96ec from memory into f20
fcvt.w.h x13, f20 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe10d9826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x91382872 # load x3 with value 0x91382872
sw x3, 0(x2) # store 0x91382872 in memory
flh f1, 0(x2) # load 0x91382872 from memory into f1
fcvt.w.h x14, f1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe7d77bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfe050150 # load x3 with value 0xfe050150
sw x3, 0(x2) # store 0xfe050150 in memory
flh f1, 0(x2) # load 0xfe050150 from memory into f1
fcvt.w.h x15, f1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x8592bda5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfa04a0ed # load x3 with value 0xfa04a0ed
sw x3, 0(x2) # store 0xfa04a0ed in memory
flh f7, 0(x2) # load 0xfa04a0ed from memory into f7
fcvt.w.h x16, f7 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x871d4259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x98ad5d8e # load x3 with value 0x98ad5d8e
sw x3, 0(x2) # store 0x98ad5d8e in memory
flh f13, 0(x2) # load 0x98ad5d8e from memory into f13
fcvt.w.h x17, f13 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x77e7d2be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x59d481e8 # load x3 with value 0x59d481e8
sw x3, 0(x2) # store 0x59d481e8 in memory
flh f31, 0(x2) # load 0x59d481e8 from memory into f31
fcvt.w.h x18, f31 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x53410993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x82d6ec8f # load x3 with value 0x82d6ec8f
sw x3, 0(x2) # store 0x82d6ec8f in memory
flh f2, 0(x2) # load 0x82d6ec8f from memory into f2
fcvt.w.h x19, f2 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc2c83c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbcc113b6 # load x3 with value 0xbcc113b6
sw x3, 0(x2) # store 0xbcc113b6 in memory
flh f25, 0(x2) # load 0xbcc113b6 from memory into f25
fcvt.w.h x20, f25 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6f34e200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d77eb7e # load x3 with value 0x5d77eb7e
sw x3, 0(x2) # store 0x5d77eb7e in memory
flh f4, 0(x2) # load 0x5d77eb7e from memory into f4
fcvt.w.h x21, f4 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x817a4ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe15fe7a4 # load x3 with value 0xe15fe7a4
sw x3, 0(x2) # store 0xe15fe7a4 in memory
flh f4, 0(x2) # load 0xe15fe7a4 from memory into f4
fcvt.w.h x22, f4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6fe4003e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x05984799 # load x3 with value 0x05984799
sw x3, 0(x2) # store 0x05984799 in memory
flh f26, 0(x2) # load 0x05984799 from memory into f26
fcvt.w.h x23, f26 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5a526547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3731332f # load x3 with value 0x3731332f
sw x3, 0(x2) # store 0x3731332f in memory
flh f12, 0(x2) # load 0x3731332f from memory into f12
fcvt.w.h x24, f12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x2fc8c421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6bdb46cb # load x3 with value 0x6bdb46cb
sw x3, 0(x2) # store 0x6bdb46cb in memory
flh f10, 0(x2) # load 0x6bdb46cb from memory into f10
fcvt.w.h x25, f10 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x8e4fc825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x04f3779f # load x3 with value 0x04f3779f
sw x3, 0(x2) # store 0x04f3779f in memory
flh f21, 0(x2) # load 0x04f3779f from memory into f21
fcvt.w.h x26, f21 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1592aa8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x578e130b # load x3 with value 0x578e130b
sw x3, 0(x2) # store 0x578e130b in memory
flh f10, 0(x2) # load 0x578e130b from memory into f10
fcvt.w.h x27, f10 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xeb654543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea3ee5c9 # load x3 with value 0xea3ee5c9
sw x3, 0(x2) # store 0xea3ee5c9 in memory
flh f26, 0(x2) # load 0xea3ee5c9 from memory into f26
fcvt.w.h x28, f26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8ba1d880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x95dee81a # load x3 with value 0x95dee81a
sw x3, 0(x2) # store 0x95dee81a in memory
flh f15, 0(x2) # load 0x95dee81a from memory into f15
fcvt.w.h x29, f15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc7a24023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00b6dbb1 # load x3 with value 0x00b6dbb1
sw x3, 0(x2) # store 0x00b6dbb1 in memory
flh f20, 0(x2) # load 0x00b6dbb1 from memory into f20
fcvt.w.h x30, f20 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7a79b157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea9d3508 # load x3 with value 0xea9d3508
sw x3, 0(x2) # store 0xea9d3508 in memory
flh f22, 0(x2) # load 0xea9d3508 from memory into f22
fcvt.w.h x31, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x19, 0x1d9ef407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fcvt.w.h x19, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x18, 0xdac549dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fcvt.w.h x18, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x3, 0x23878819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fcvt.w.h x3, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x14, 0xb88c0d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fcvt.w.h x14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x7, 0xe3c4ad4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fcvt.w.h x7, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x31, 0x3cea7630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fcvt.w.h x31, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x6, 0x1a96f1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fcvt.w.h x6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x13, 0x44ea11a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fcvt.w.h x13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x22, 0x49e04654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fcvt.w.h x22, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x4, 0x06bb2dca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fcvt.w.h x4, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x27, 0x41c5db56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fcvt.w.h x27, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x30, 0x55b84f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fcvt.w.h x30, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x11, 0x457eee5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fcvt.w.h x11, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x24, 0x07052d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fcvt.w.h x24, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x2, 0xfa468bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fcvt.w.h x2, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x23, 0x9ba2ae2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fcvt.w.h x23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x97d2f4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fcvt.w.h x1, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x11, 0x1eb920d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fcvt.w.h x11, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x16, 0x455c6cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fcvt.w.h x16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x29, 0x49083ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fcvt.w.h x29, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x12, 0x10d1ee2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fcvt.w.h x12, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x5, 0x169e5b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fcvt.w.h x5, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x17, 0x0d9609e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fcvt.w.h x17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x28, 0x0e9c475b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fcvt.w.h x28, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x8, 0x3c8265a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fcvt.w.h x8, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x27, 0x1442fb2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fcvt.w.h x27, f20 # perform operation

# Testcase cp_frm
li x3, 0x924d0180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdcdac061 # load x3 with value 0xdcdac061
sw x3, 0(x2) # store 0xdcdac061 in memory
flh f17, 0(x2) # load 0xdcdac061 from memory into f17
fcvt.w.h x3, f17, dyn # perform operation
fcvt.w.h x3, f17, rdn # perform operation
fcvt.w.h x3, f17, rmm # perform operation
fcvt.w.h x3, f17, rne # perform operation
fcvt.w.h x3, f17, rtz # perform operation
fcvt.w.h x3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x3, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x11, 0xd6ae2fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27b7948b # load x3 with value 0x27b7948b
sw x3, 0(x2) # store 0x27b7948b in memory
flh f0, 0(x2) # load 0x27b7948b from memory into f0
fcvt.w.h x11, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x8, 0x2be297e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf2d5c29b # load x3 with value 0xf2d5c29b
sw x3, 0(x2) # store 0xf2d5c29b in memory
flh f1, 0(x2) # load 0xf2d5c29b from memory into f1
fcvt.w.h x8, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x25, 0x3957aaf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xebe918da # load x3 with value 0xebe918da
sw x3, 0(x2) # store 0xebe918da in memory
flh f2, 0(x2) # load 0xebe918da from memory into f2
fcvt.w.h x25, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x21, 0x8db91fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x46302172 # load x3 with value 0x46302172
sw x3, 0(x2) # store 0x46302172 in memory
flh f3, 0(x2) # load 0x46302172 from memory into f3
fcvt.w.h x21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0x0c55c9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaef5b4e1 # load x3 with value 0xaef5b4e1
sw x3, 0(x2) # store 0xaef5b4e1 in memory
flh f4, 0(x2) # load 0xaef5b4e1 from memory into f4
fcvt.w.h x6, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0xd17051db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2700a8b0 # load x3 with value 0x2700a8b0
sw x3, 0(x2) # store 0x2700a8b0 in memory
flh f5, 0(x2) # load 0x2700a8b0 from memory into f5
fcvt.w.h x12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x3fa280e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa1cc1317 # load x3 with value 0xa1cc1317
sw x3, 0(x2) # store 0xa1cc1317 in memory
flh f6, 0(x2) # load 0xa1cc1317 from memory into f6
fcvt.w.h x12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0x89e6214b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27810f53 # load x3 with value 0x27810f53
sw x3, 0(x2) # store 0x27810f53 in memory
flh f7, 0(x2) # load 0x27810f53 from memory into f7
fcvt.w.h x26, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x2, 0x1f2328ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5179b8b6 # load x3 with value 0x5179b8b6
sw x3, 0(x2) # store 0x5179b8b6 in memory
flh f8, 0(x2) # load 0x5179b8b6 from memory into f8
fcvt.w.h x2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0xc54d6e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a71eeed # load x3 with value 0x6a71eeed
sw x3, 0(x2) # store 0x6a71eeed in memory
flh f9, 0(x2) # load 0x6a71eeed from memory into f9
fcvt.w.h x29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x23, 0x80224d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe9a8c608 # load x3 with value 0xe9a8c608
sw x3, 0(x2) # store 0xe9a8c608 in memory
flh f10, 0(x2) # load 0xe9a8c608 from memory into f10
fcvt.w.h x23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0x2ae1307b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c528993 # load x3 with value 0x8c528993
sw x3, 0(x2) # store 0x8c528993 in memory
flh f11, 0(x2) # load 0x8c528993 from memory into f11
fcvt.w.h x19, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x17, 0x92998cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ebf3067 # load x3 with value 0x6ebf3067
sw x3, 0(x2) # store 0x6ebf3067 in memory
flh f12, 0(x2) # load 0x6ebf3067 from memory into f12
fcvt.w.h x17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x9, 0xe4421e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd29d66a2 # load x3 with value 0xd29d66a2
sw x3, 0(x2) # store 0xd29d66a2 in memory
flh f13, 0(x2) # load 0xd29d66a2 from memory into f13
fcvt.w.h x9, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x9, 0xb522bd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x854ea1cb # load x3 with value 0x854ea1cb
sw x3, 0(x2) # store 0x854ea1cb in memory
flh f14, 0(x2) # load 0x854ea1cb from memory into f14
fcvt.w.h x9, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x10, 0xbf251c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41a45eae # load x3 with value 0x41a45eae
sw x3, 0(x2) # store 0x41a45eae in memory
flh f15, 0(x2) # load 0x41a45eae from memory into f15
fcvt.w.h x10, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0xb73fa67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27679610 # load x3 with value 0x27679610
sw x3, 0(x2) # store 0x27679610 in memory
flh f16, 0(x2) # load 0x27679610 from memory into f16
fcvt.w.h x31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x19, 0xbbca7e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xadba1b75 # load x3 with value 0xadba1b75
sw x3, 0(x2) # store 0xadba1b75 in memory
flh f17, 0(x2) # load 0xadba1b75 from memory into f17
fcvt.w.h x19, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x16, 0xad1215a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xad415931 # load x3 with value 0xad415931
sw x3, 0(x2) # store 0xad415931 in memory
flh f18, 0(x2) # load 0xad415931 from memory into f18
fcvt.w.h x16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x13, 0x931588e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe6ca9f02 # load x3 with value 0xe6ca9f02
sw x3, 0(x2) # store 0xe6ca9f02 in memory
flh f19, 0(x2) # load 0xe6ca9f02 from memory into f19
fcvt.w.h x13, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x7, 0x1bb5f042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9ee5d9fd # load x3 with value 0x9ee5d9fd
sw x3, 0(x2) # store 0x9ee5d9fd in memory
flh f20, 0(x2) # load 0x9ee5d9fd from memory into f20
fcvt.w.h x7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0xd2ade366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27e74e50 # load x3 with value 0x27e74e50
sw x3, 0(x2) # store 0x27e74e50 in memory
flh f21, 0(x2) # load 0x27e74e50 from memory into f21
fcvt.w.h x12, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0xefc69825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd68250e8 # load x3 with value 0xd68250e8
sw x3, 0(x2) # store 0xd68250e8 in memory
flh f22, 0(x2) # load 0xd68250e8 from memory into f22
fcvt.w.h x29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x6, 0x61ec8a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x796543f3 # load x3 with value 0x796543f3
sw x3, 0(x2) # store 0x796543f3 in memory
flh f23, 0(x2) # load 0x796543f3 from memory into f23
fcvt.w.h x6, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x25, 0x9a8ea4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe9f8af50 # load x3 with value 0xe9f8af50
sw x3, 0(x2) # store 0xe9f8af50 in memory
flh f24, 0(x2) # load 0xe9f8af50 from memory into f24
fcvt.w.h x25, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x26, 0x69130285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x79858023 # load x3 with value 0x79858023
sw x3, 0(x2) # store 0x79858023 in memory
flh f25, 0(x2) # load 0x79858023 from memory into f25
fcvt.w.h x26, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x28, 0x47a742f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x256c0b4a # load x3 with value 0x256c0b4a
sw x3, 0(x2) # store 0x256c0b4a in memory
flh f26, 0(x2) # load 0x256c0b4a from memory into f26
fcvt.w.h x28, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x11, 0xa34c3a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1bfe5cc # load x3 with value 0xe1bfe5cc
sw x3, 0(x2) # store 0xe1bfe5cc in memory
flh f27, 0(x2) # load 0xe1bfe5cc from memory into f27
fcvt.w.h x11, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x19, 0x3235ea66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9013a812 # load x3 with value 0x9013a812
sw x3, 0(x2) # store 0x9013a812 in memory
flh f28, 0(x2) # load 0x9013a812 from memory into f28
fcvt.w.h x19, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x31, 0x10ee6c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff22dd47 # load x3 with value 0xff22dd47
sw x3, 0(x2) # store 0xff22dd47 in memory
flh f29, 0(x2) # load 0xff22dd47 from memory into f29
fcvt.w.h x31, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x26, 0xf4adc9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x15d92b9b # load x3 with value 0x15d92b9b
sw x3, 0(x2) # store 0x15d92b9b in memory
flh f30, 0(x2) # load 0x15d92b9b from memory into f30
fcvt.w.h x26, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x16, 0xfb9e0ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe806a954 # load x3 with value 0xe806a954
sw x3, 0(x2) # store 0xe806a954 in memory
flh f31, 0(x2) # load 0xe806a954 from memory into f31
fcvt.w.h x16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
