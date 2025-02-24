///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZcbZbb//WALLY-COV-c.sext.b.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.821106
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xb69277d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0xbaa9251c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x84fa6b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x3a6eaa62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x016627cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x22, 0x10b1fe1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x8bba0228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xd9837e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xe4707272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x8, 0x21e11938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x30, 0x2c39dee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0xa1da7786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x217c9c15)
li x4, 0x05f61904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x217c9c15 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x49fa0308)
li x9, 0x1237291f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb605fcf8 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x28535799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe33ef029 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x86f05b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xda3988d1 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9d11856f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfa9da609 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe90e9415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8734c48f # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4b6eb3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xea1eefed # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa5289a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf049470d # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc8c16649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd6ebe013 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xaa43ec0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x60b9a426 # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0xac678a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x4, 0x9aeec60b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xad5f3a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xd879919f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x0114d885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0xc2a96be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xb3f4fc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x8358f4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0x276fbda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x13, 0x8aed38bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x4, 0x402b094e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x28, 0x6677beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x6, 0x76b021eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x29, 0x2d8a191e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x15, 0xecf929d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x7, 0xe0b76c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x9, 0x627f2510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x4, 0x45ae8c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x20, 0x6667de8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x23, 0xa6a4751f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x17, 0xa3eddb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x25, 0x4d039f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x20, 0x584a3bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x5, 0x587afeb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x30, 0xc6c8d8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x4, 0xb8694af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x13, 0x1ed4eb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x6, 0x42565843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x20, 0xf48ff916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x22, 0xb151264b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x2, 0x5283f408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x20, 0xb8e1587d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x31, 0xa4ef6caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x24, 0xbd6f6203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x22, 0x39bfff21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x24, 0x75226ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x16, 0xabc011a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000db # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x28, 0xa9f0115b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000db # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x11, 0x685bbbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x0efb6fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xef42d02a # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xda70ebb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1c95f4ee # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0xf5a2d45d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7d0f11da # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x0a54cfb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x30074930 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x3916bffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4f074a9e # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x18f53622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6bbc785b # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x89f5a157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfae4d000 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0xb733bb11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x28909191 # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
