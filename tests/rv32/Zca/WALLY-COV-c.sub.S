///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.sub.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.495778
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1d2b9303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf295195b # initialize leagalized rd to a random value that should get changed
li x9, 0xbaf67903 # initialize rs2
c.sub x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x95e5d8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7a3ce6f2 # initialize leagalized rd to a random value that should get changed
li x14, 0xc1130ff6 # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x430cf255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdf0fdfe5 # initialize leagalized rd to a random value that should get changed
li x12, 0x2b45786d # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe393443d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x029ffd63 # initialize leagalized rd to a random value that should get changed
li x12, 0x881b0138 # initialize rs2
c.sub x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x88905810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6783784e # initialize leagalized rd to a random value that should get changed
li x14, 0x6d7c6fd0 # initialize rs2
c.sub x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5a1ddff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6e3d559b # initialize leagalized rd to a random value that should get changed
li x12, 0x6719ac0c # initialize rs2
c.sub x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2f38def4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfe05c5da # initialize leagalized rd to a random value that should get changed
li x12, 0x582330c1 # initialize rs2
c.sub x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8fe17a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8ee7b381 # initialize leagalized rd to a random value that should get changed
li x14, 0x6c0e677f # initialize rs2
c.sub x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x231c0ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb4390a7b # initialize leagalized rd to a random value that should get changed
li x8, 0xe344081d # initialize rs2
c.sub x10, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x2ef28928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x94842cb2 # initialize leagalized rd to a random value that should get changed
li x9, 0x3fac795d # initialize rs2
c.sub x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0xc115bc02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3661757c # initialize leagalized rd to a random value that should get changed
li x10, 0xe057b823 # initialize rs2
c.sub x11, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x4, 0x5561b969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4e39b66e # initialize leagalized rd to a random value that should get changed
li x11, 0x877c55a7 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x79d98f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1192e12a # initialize leagalized rd to a random value that should get changed
li x12, 0x32983733 # initialize rs2
c.sub x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xd62b2843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa0b1a1de # initialize leagalized rd to a random value that should get changed
li x13, 0xa12efbe0 # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xc9e08992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ab3f192 # initialize leagalized rd to a random value that should get changed
li x14, 0x6af8ed61 # initialize rs2
c.sub x13, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x7082b6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd0c69e82 # initialize leagalized rd to a random value that should get changed
li x15, 0x7e02c18b # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x46ef0c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000 # initialize rs2
c.sub x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x1eccdac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.sub x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x706b5070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x15, 0xffffffff # initialize rs2
c.sub x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x5, 0x1830cb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x40000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xc0000000 # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0x1be3f45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x40000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xbfffffff # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0x614416c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3fffffff # initialize leagalized rd to a random value that should get changed
li x14, 0xc0000000 # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x1f1a6c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3fffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xc0000001 # initialize rs2
c.sub x9, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0xd66ab838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x80000000 # initialize rs2
c.sub x12, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x27f66404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x80000001 # initialize rs2
c.sub x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x23, 0x8d8fe3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2dde443b # initialize leagalized rd to a random value that should get changed
li x11, 0xd221bbc4 # initialize rs2
c.sub x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x57f52ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize leagalized rd to a random value that should get changed
li x12, 0xaaaaaaab # initialize rs2
c.sub x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0x426c4b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2aaaaaaa # initialize leagalized rd to a random value that should get changed
li x11, 0xd5555555 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xeff60d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x68711405 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000 # initialize rs2
c.sub x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x4, 0x2cd4e7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5f53b34f # initialize leagalized rd to a random value that should get changed
li x13, 0x00000001 # initialize rs2
c.sub x12, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x6990f532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf80c5e7b # initialize leagalized rd to a random value that should get changed
li x13, 0x00000002 # initialize rs2
c.sub x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0x13b3770b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x126f2bb8 # initialize leagalized rd to a random value that should get changed
li x12, 0x80000000 # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x20, 0x87444235 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8856b70b # initialize leagalized rd to a random value that should get changed
li x14, 0x80000001 # initialize rs2
c.sub x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0xa8c61125 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcb7da2eb # initialize leagalized rd to a random value that should get changed
li x10, 0x7fffffff # initialize rs2
c.sub x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x18, 0xe62dfbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x29459369 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffe # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0x97484ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x02d669a4 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0xe75db65c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xad61867a # initialize leagalized rd to a random value that should get changed
li x11, 0xfffffffe # initialize rs2
c.sub x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x18, 0x39ae3309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc831edd # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc8877 # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x18, 0x79692928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x600cd068 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.sub x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x27, 0x4f748f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f6e5187 # initialize leagalized rd to a random value that should get changed
li x14, 0x55555555 # initialize rs2
c.sub x11, x14 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
