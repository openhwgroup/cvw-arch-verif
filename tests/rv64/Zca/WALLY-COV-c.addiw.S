///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.addiw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.978058
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x677287ad50224c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x1, -24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xdb9b71d075805a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, 7 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6f070f7ab507642c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x3, -1 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xe05b82446d2143c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, 13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xce1b8adb3a3a9d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa0ac3047352f39e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x6, -18 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xd9d85cc120616e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x7, -9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe13ad76f2f29f067 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x8, -17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x751953458afa583f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, -32 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x688705765ef3c2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x10, 1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xdcadd0403ff108e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x11, 31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x50736ad516c9ccbc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, -12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf5ede88fbea30320 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x13, -23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x740ec89faedf4db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, 19 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe1d147d4b7e1f920 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x15, 22 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa68b83944ac6d40e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x16, -21 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xddd4618cc82fef09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x17, -17 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0ab360c2fee926aa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x18, 1 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9d9db2e8e7fa5f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x19, -11 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x98644de0491a507c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, 31 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd3c05b386808b2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, -29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x869cdb887eb08790 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x22, 29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6b95b3c70bb14f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, -18 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x16d61f4df5750a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x24, 9 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xe91ab3878a99b2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x25, -19 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2107efff9672ea6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x26, 9 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xdb53c864162b9b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x194154774fa0d163 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x28, -17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6d4088746b5b2005 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x29, -7 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xe3cb9fda7dad47bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x30, 13 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2253c1ea11cb9a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x31, -13 # perform operation

# Testcase cp_imm_zero
li x12, 0x14d1acdc05bd869b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, 0 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 0 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 1 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 2 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 31 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 30 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -32 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -31 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -2 # perform operation

# Testcase cp_imm_corners
li x5, 0x2793d7e3ed738fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x000000000000000f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, -15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x0000000000000018 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, -23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xffffffffffffffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0x0000000080000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0x000000008000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x14, -25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x000000007ffffff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x29, 6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x0000000080000004 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x18, -6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0x00000000ffffffe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0x00000000ffffffed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, 17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0x00000000aaaaaac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, -27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x0000000055555574 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x8, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x5, 0x0000000063ae86da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x5, 29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x19, 0x00000000e3ae8710 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x19, -25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x0000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x28, -7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x17, -21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x24, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, -10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x13, 23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x9, 12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x10, -9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x5bbc887763ae86f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x12, 22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x20, -3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x4, 0x5555555555555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, -23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0x00000000ffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x4, 18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x2, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x23, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addiw x21, 26 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
