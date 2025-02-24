///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.or.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.493308
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x261cdc0a)
li x21, 0x261cdc0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x261cdc0a # initialize leagalized rd to a random value that should get changed
li x13, 0x261cdc0a # initialize rs2
c.or x13, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x3c6ec0c0)
li x8, 0xdaaf87a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe9eb06ab # initialize leagalized rd to a random value that should get changed
li x9, 0x3c6ec0c0 # initialize rs2
c.or x8, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xbecf215)
li x21, 0x6035e486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x21420a87 # initialize leagalized rd to a random value that should get changed
li x11, 0xf4130deb # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9edc7140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x898ebc9a # initialize leagalized rd to a random value that should get changed
li x14, 0x9f25fca6 # initialize rs2
c.or x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe5616e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe4601420 # initialize leagalized rd to a random value that should get changed
li x13, 0x1b731bdb # initialize rs2
c.or x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x90a79ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a65124e # initialize leagalized rd to a random value that should get changed
li x10, 0x7ec78d69 # initialize rs2
c.or x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x2a2f5fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf519efb0 # initialize leagalized rd to a random value that should get changed
li x14, 0xd9e1a926 # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaeafd48a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd96873c3 # initialize leagalized rd to a random value that should get changed
li x8, 0x8409b76f # initialize rs2
c.or x12, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb46ea513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xae13fdba # initialize leagalized rd to a random value that should get changed
li x15, 0x51b59bbe # initialize rs2
c.or x13, x15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x31470972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd7c7eb2b # initialize leagalized rd to a random value that should get changed
li x10, 0x99801140 # initialize rs2
c.or x14, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xdaa45caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x58ac522b # initialize leagalized rd to a random value that should get changed
li x15, 0x357c68f4 # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0x4d1fae1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3ca6155f # initialize leagalized rd to a random value that should get changed
li x8, 0x6157616a # initialize rs2
c.or x11, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x1176108d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf5a02fc3 # initialize leagalized rd to a random value that should get changed
li x9, 0xfd76caca # initialize rs2
c.or x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x5d1b0d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0889bb37 # initialize leagalized rd to a random value that should get changed
li x10, 0x47b685a1 # initialize rs2
c.or x8, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x4cccb4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x59f0b054 # initialize leagalized rd to a random value that should get changed
li x11, 0xa74701e8 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x495891be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc787c1ba # initialize leagalized rd to a random value that should get changed
li x12, 0x74ee601e # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x28795047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ce1f16a # initialize leagalized rd to a random value that should get changed
li x13, 0x770cd2d6 # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x899d63e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5579ff5a # initialize leagalized rd to a random value that should get changed
li x14, 0xdd52e00c # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x169ed654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd2321194 # initialize leagalized rd to a random value that should get changed
li x15, 0xf3067e16 # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0xc90b1e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000 # initialize rs2
c.or x9, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x29bf3dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000001 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x24a6af98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x00000002 # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x33663ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.or x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0x294cac52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x80000001 # initialize rs2
c.or x14, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0xe5e47ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x7fffffff # initialize rs2
c.or x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x7a6eaae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffe # initialize rs2
c.or x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xbd03898c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff # initialize rs2
c.or x14, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xf63bfe7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0x065f2c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc8877 # initialize rs2
c.or x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xbcb611c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x14, 0xaaaaaaaa # initialize rs2
c.or x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xb8db56f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x55555555 # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x68d11c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xced6ea35 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000 # initialize rs2
c.or x11, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xf6c18567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x11d905e1 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000001 # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x66e970ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x54b30a3a # initialize leagalized rd to a random value that should get changed
li x12, 0x00000002 # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x421f2fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xca589404 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.or x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x18, 0x7dd283b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3485d556 # initialize leagalized rd to a random value that should get changed
li x8, 0x80000001 # initialize rs2
c.or x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0x0950a893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1ed964b8 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffff # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0xfe1b456c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc09c0c1c # initialize leagalized rd to a random value that should get changed
li x15, 0x7ffffffe # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x27, 0x0071dce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x27c858e6 # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff # initialize rs2
c.or x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0xaeb2e5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89ee40a0 # initialize leagalized rd to a random value that should get changed
li x11, 0xfffffffe # initialize rs2
c.or x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x21, 0xdb6c3280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xacb2112b # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x40949606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc7a54006 # initialize leagalized rd to a random value that should get changed
li x14, 0xaaaaaaaa # initialize rs2
c.or x9, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x25, 0x5cad8f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x043d2a01 # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.or x9, x10 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
