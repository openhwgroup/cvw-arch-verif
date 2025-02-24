//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.mul.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x36df44b3)
li x22, 0x36df44b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36df44b3 # initialize leagalized rd to a random value that should get changed
li x11, 0x36df44b3 # initialize rs2
c.mul x14, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd9b555c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x91482a7a # initialize leagalized rd to a random value that should get changed
li x8, 0x6e80fc0d # initialize rs2
c.mul x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x2ff383dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6bf9b096 # initialize leagalized rd to a random value that should get changed
li x9, 0x46bb4855 # initialize rs2
c.mul x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x44872293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1600b569 # initialize leagalized rd to a random value that should get changed
li x10, 0xd3111c96 # initialize rs2
c.mul x10, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xcf554830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x22ab54db # initialize leagalized rd to a random value that should get changed
li x11, 0xae9428ae # initialize rs2
c.mul x11, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x39afd7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x39a320f1 # initialize leagalized rd to a random value that should get changed
li x12, 0x56a40f24 # initialize rs2
c.mul x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x5bad5763 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcdfb2f82 # initialize leagalized rd to a random value that should get changed
li x13, 0xea71ce09 # initialize rs2
c.mul x13, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x2d78a6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x820afcb2 # initialize leagalized rd to a random value that should get changed
li x14, 0x483ec46a # initialize rs2
c.mul x14, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa17a0373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x19669ead # initialize leagalized rd to a random value that should get changed
li x15, 0x7547548b # initialize rs2
c.mul x15, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x29dbc725)
li x18, 0x58299029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x816e8a41 # initialize leagalized rd to a random value that should get changed
li x13, 0x29dbc725 # initialize rs2
c.mul x10, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4df1fb6d)
li x8, 0xb7cbdc5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8521740b # initialize leagalized rd to a random value that should get changed
li x9, 0xb20e0493 # initialize rs2
c.mul x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8bb70edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x131bf212 # initialize leagalized rd to a random value that should get changed
li x15, 0x2f364641 # initialize rs2
c.mul x8, x15 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x30fd7bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa0c50f6c # initialize leagalized rd to a random value that should get changed
li x14, 0xb57e3762 # initialize rs2
c.mul x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x14f3ca72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8341d1d1 # initialize leagalized rd to a random value that should get changed
li x13, 0xb7fee3c2 # initialize rs2
c.mul x10, x13 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x70ae7420 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7af80ce4 # initialize leagalized rd to a random value that should get changed
li x14, 0x8c3e2670 # initialize rs2
c.mul x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3bedca04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0bc69cd8 # initialize leagalized rd to a random value that should get changed
li x9, 0x77c839e9 # initialize rs2
c.mul x12, x9 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xed2c9028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e3329ba # initialize leagalized rd to a random value that should get changed
li x10, 0x841575a8 # initialize rs2
c.mul x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1b6aa330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x10e2d3da # initialize leagalized rd to a random value that should get changed
li x12, 0xe4de6c82 # initialize rs2
c.mul x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x067cb898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3d7d77df # initialize leagalized rd to a random value that should get changed
li x14, 0x9487ee8e # initialize rs2
c.mul x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x7fab3164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x375ae284 # initialize leagalized rd to a random value that should get changed
li x8, 0xc6896f49 # initialize rs2
c.mul x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0x83ee9afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd254082d # initialize leagalized rd to a random value that should get changed
li x9, 0x7c3281f0 # initialize rs2
c.mul x8, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0x730b9696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x337125b8 # initialize leagalized rd to a random value that should get changed
li x10, 0xb2b07afa # initialize rs2
c.mul x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x88d725f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x260b9baa # initialize leagalized rd to a random value that should get changed
li x11, 0xed043cdd # initialize rs2
c.mul x11, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x3499a5af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x02a68ff5 # initialize leagalized rd to a random value that should get changed
li x12, 0x78061b86 # initialize rs2
c.mul x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xf042f6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x31c46f72 # initialize leagalized rd to a random value that should get changed
li x13, 0xaba446d8 # initialize rs2
c.mul x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x13fbe4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4d12c521 # initialize leagalized rd to a random value that should get changed
li x14, 0x8081a3d3 # initialize rs2
c.mul x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0xcdab846a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8cc593a0 # initialize leagalized rd to a random value that should get changed
li x15, 0xda03946f # initialize rs2
c.mul x11, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x5d095f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000000 # initialize rs2
c.mul x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x34579cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000001 # initialize rs2
c.mul x9, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x89031ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.mul x10, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0x2317546c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x12, 0x80000000 # initialize rs2
c.mul x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x11, 0x3ff6a134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x14, 0x80000001 # initialize rs2
c.mul x11, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x23, 0x84763976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffff # initialize rs2
c.mul x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x5, 0x378f46b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x10, 0x7ffffffe # initialize rs2
c.mul x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x37216306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffff # initialize rs2
c.mul x12, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0x591d6d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x13, 0xfffffffe # initialize rs2
c.mul x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x2, 0x73ef391e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x14, 0x5bbc8877 # initialize rs2
c.mul x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x6, 0xe365d873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.mul x14, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0x97a47448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x55555555 # initialize rs2
c.mul x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0xc8ddf505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5abd505a # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000 # initialize rs2
c.mul x13, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0xbc596c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc67c1052 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000001 # initialize rs2
c.mul x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x79cf7106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x49138405 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.mul x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x6, 0xd419bfd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe4999f0d # initialize leagalized rd to a random value that should get changed
li x15, 0x80000000 # initialize rs2
c.mul x14, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x13, 0x0ce4256c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5241ca5e # initialize leagalized rd to a random value that should get changed
li x14, 0x80000001 # initialize rs2
c.mul x13, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0x3e47a2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf28eee69 # initialize leagalized rd to a random value that should get changed
li x15, 0x7fffffff # initialize rs2
c.mul x8, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0x5565d674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4cce2fe9 # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.mul x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0xcd3c705d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x383946ee # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff # initialize rs2
c.mul x13, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x35279570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x181bc417 # initialize leagalized rd to a random value that should get changed
li x11, 0xfffffffe # initialize rs2
c.mul x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x14, 0xecd5c3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6604c342 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.mul x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x3, 0x6b94a33d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x749925f5 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.mul x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xd02307b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfd5bcb1a # initialize leagalized rd to a random value that should get changed
li x14, 0x55555555 # initialize rs2
c.mul x14, x14 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
