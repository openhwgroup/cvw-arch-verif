///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.and.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.485396
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x785152a0)
li x13, 0x785152a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x785152a0 # initialize leagalized rd to a random value that should get changed
li x13, 0x785152a0 # initialize rs2
c.and x13, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x17682e19)
li x8, 0x869437a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6f0b85ed # initialize leagalized rd to a random value that should get changed
li x12, 0x17682e19 # initialize rs2
c.and x8, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x1d920cef)
li x31, 0x1e79b35a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcb0652a9 # initialize leagalized rd to a random value that should get changed
li x14, 0xe26df311 # initialize rs2
c.and x15, x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb7935d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2794d2b1 # initialize leagalized rd to a random value that should get changed
li x8, 0xc3823559 # initialize rs2
c.and x8, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfdfa4ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3ecb59d7 # initialize leagalized rd to a random value that should get changed
li x11, 0xf56f2823 # initialize rs2
c.and x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x45c8595f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa71df449 # initialize leagalized rd to a random value that should get changed
li x10, 0x50fc12a9 # initialize rs2
c.and x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x380d207b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf84f11f8 # initialize leagalized rd to a random value that should get changed
li x14, 0x4decaa52 # initialize rs2
c.and x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd80e33a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x19ea612b # initialize leagalized rd to a random value that should get changed
li x9, 0xf3057715 # initialize rs2
c.and x12, x9 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe72bed7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fcde917 # initialize leagalized rd to a random value that should get changed
li x10, 0x6db91a52 # initialize rs2
c.and x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb3ea7541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1337dd69 # initialize leagalized rd to a random value that should get changed
li x10, 0x20d604af # initialize rs2
c.and x14, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8ec5d8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x87a765a9 # initialize leagalized rd to a random value that should get changed
li x9, 0x0957ae2e # initialize rs2
c.and x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x7c9a70b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6af6531a # initialize leagalized rd to a random value that should get changed
li x8, 0x24271455 # initialize rs2
c.and x8, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0xafff3ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x950ca900 # initialize leagalized rd to a random value that should get changed
li x9, 0x3f7b813e # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0xf0fcfeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x905a7e95 # initialize leagalized rd to a random value that should get changed
li x10, 0xb3cc608a # initialize rs2
c.and x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x61b060fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4d71ef3f # initialize leagalized rd to a random value that should get changed
li x11, 0x86f9d828 # initialize rs2
c.and x9, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x8827c5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5da8b49 # initialize leagalized rd to a random value that should get changed
li x12, 0x818e900f # initialize rs2
c.and x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x3528b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xea1218c4 # initialize leagalized rd to a random value that should get changed
li x13, 0xb097bd43 # initialize rs2
c.and x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x0824af7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x05b0a4a6 # initialize leagalized rd to a random value that should get changed
li x14, 0x6d07047c # initialize rs2
c.and x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x0e8c1b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x40c452f1 # initialize leagalized rd to a random value that should get changed
li x15, 0xaf60d83f # initialize rs2
c.and x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x57896597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000 # initialize rs2
c.and x12, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x7609c768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x00000001 # initialize rs2
c.and x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x1b3630a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x00000002 # initialize rs2
c.and x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xd56be490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x80000000 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x4, 0x45495383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x80000001 # initialize rs2
c.and x12, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xa99011f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x7fffffff # initialize rs2
c.and x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0xf40d050e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.and x8, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x8eb48e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.and x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x948f31d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x24, 0x82213755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc8877 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xae00c9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xaaaaaaaa # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x7a2e99d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.and x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xab741a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c4aee2b # initialize leagalized rd to a random value that should get changed
li x12, 0x00000000 # initialize rs2
c.and x8, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x3f3da609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc93898d2 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000001 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x30ae2783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x786323f0 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.and x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x3124a863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfcafcc28 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.and x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x18, 0x207e1d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe6cb7d3d # initialize leagalized rd to a random value that should get changed
li x13, 0x80000001 # initialize rs2
c.and x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x44d15dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc982f295 # initialize leagalized rd to a random value that should get changed
li x12, 0x7fffffff # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x3cf1adfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5a377b0f # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x23f520ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1dce44a9 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.and x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xe291a454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4e0f60d0 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.and x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0x74f54f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x71650621 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.and x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0xe3c82bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x31da0fc0 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaa # initialize rs2
c.and x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x886894fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf9340cf1 # initialize leagalized rd to a random value that should get changed
li x12, 0x55555555 # initialize rs2
c.and x14, x12 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
