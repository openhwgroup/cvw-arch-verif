//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.sext.b.S
// ******************


    
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




// ******************
// Tests from: WALLY-COV-c.zext.h.S
// ******************


    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x032b7641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0xd05bbc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x39dd7d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x7aa76060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0xfeea749f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x23, 0x513b1185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x3c1539f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x5a1443ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfd284f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x21, 0xe6a35ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0x750c5a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0xb6cd0f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x409ab414)
li x21, 0x9796185b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x409ab414 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x642c3f5f)
li x13, 0xc2135f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9bd3c0a1 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6f36db17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x85e91a50 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa4778ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0c22049e # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8f14aa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x34d5f77f # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5890fa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf19ccc31 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7e7efbe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0a3cf36c # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x164fe3ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e5cd3c1 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3d465bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9d4bb7b6 # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf4a375af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe3277dc8 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xb2b81b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0xc985aa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0xa7b70b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x78ffa31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xe465ff45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x19f95815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x7e98e776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x90d02676 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x2aac1dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x18, 0xd8974820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x14, 0xf18d452a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0x79968f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x10, 0x72e4d4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x3, 0x02fcadd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x5, 0xa16af7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x11, 0x6ba40195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x1, 0xb1f33b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x9, 0x7cfecbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x4, 0x54d92297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x21f5e6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x18, 0xda7d7d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0xaf18177b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x25, 0x18a0956c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x6, 0x60a744f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x13, 0x34c9429b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x5, 0x820f42be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x28, 0x40f5af18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x4, 0xe2a0c789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x13, 0x2207b895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x16, 0x5d712f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x2ddbd126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0xaa1b2c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x1bb0aacb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x6df0ad45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x13, 0x91b9caba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x9b0c5eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x16, 0x2ebcbd12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x6, 0x310c693e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x30, 0x093191e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x82b6cf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x88f8fef2 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xedfb76a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf7f8cc67 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x066f66ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x212de5e2 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x4a5ecf2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f85d5b2 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x161c2754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe26ea131 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0x9df7439d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfdd8e682 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x87b00546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x752d55f7 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x871a4877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89e6ee3e # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sext.h.S
// ******************


    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0xfabe8d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0876588a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0xd3c9791a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x0b00ba79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x2ebc4ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0xf27f1794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x4f773845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x244279a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xbde062e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x22, 0x8317b6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xf67c12e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x62d18c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x672b9774)
li x26, 0x2b4f822a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x672b9774 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x54252fdd)
li x30, 0x0646b6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xabdad023 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x490a3561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf62b6632 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x99140c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaad79018 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x76222342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd007a8b4 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x21439a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55e71522 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1c350beb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d82d867 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xec34b11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc499ce09 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0b13e32e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf8d51e3a # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0e1d71b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x092ca3f7 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x60ccae20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x4, 0x61ee66f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x9a171af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0x2311c375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x4735b843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x4087d28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xc2bb78e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0x777b3b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x0366fc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x17, 0x73ee4831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x2, 0x77b5685e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x6, 0x83ae8b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x1, 0xbdf1f10a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x29, 0xa53bf8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x14, 0x6cb71d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x8, 0x7f0ad460 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x6, 0x49de9e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x19, 0x0f1917c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x21, 0x4a029a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x23, 0xe8aa26be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x29, 0x7101f56c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x31, 0x400b9194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x30, 0x01c93a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0x9225cd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x26, 0x8a673dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x15, 0xb34feb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x21, 0xca110444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0xf12f2d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x15, 0xa728f133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x6, 0xd99d393a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0xdc9dd1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x3, 0x94c7a6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x23, 0x957aa2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x9, 0x38d541cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x13, 0x45aa86d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x21, 0x92e15093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x20, 0x00ba0a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x5, 0x7c3d00a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x26, 0xb96686bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xfee75d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fac0486 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xd3003af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe5f44350 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x837ce8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe34e5114 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x87d8ad8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x42b4b19c # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0xa94493b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x637c02c3 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0xd971cc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xec476587 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0x3f4bb57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1373159f # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x7d06ad28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7eec5058 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
