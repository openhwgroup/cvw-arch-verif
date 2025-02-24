///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.lui.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.986473
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc0cbfbe996cec123 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x1, 16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x72b53a7adc558d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048567 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfecab96b03f35096 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x3, 1048566 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x84ee573d4b8a0366 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x4, 1048564 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf9e494e28db2deb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 1048569 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x45379fd0793dd04b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x6, 19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x84397ee6e691223b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x7, 7 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x845acd9e1d9bb799 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x8, 1048558 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf34baae01a27ec09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048557 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd465942e89e6176e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x10, 1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x57d85d89df9c915f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048560 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x127108738750ec23 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x809418e745c0ef2e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x87050da3f98ecd1f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2128844215befc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 1048563 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x2d44223b646d5c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x16, 3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x09afa27d2a5a8e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x67ef8e6f4f49c75e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1048561 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x05ac7326d5c69d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048551 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc38a01b6cf54471c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x20, 1048560 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xbc74d407f21af374 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc1910fc85fc12f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048550 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x010873664ae1b142 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9886fc25cfac00ca # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x24, 19 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x2ae08d76e8db082c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x25, 11 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x52d97205cf5f15d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x26, 1048544 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6d83f8d1f3fe4824 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1d835007a154f659 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 24 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe9712865a39191e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x29, 29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1fca47d8170b645f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x30, 1048558 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa6254e04ce9f41df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x4efb18c47cfd5c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0xd2357da1f57cb641 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xa950c95f7f0c7a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x27, 0x25292a2a514e767e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1048544 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x2, 0xbe299dbab80daacd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048545 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x5, 0xa28ea6c627c03a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x15, 0x226a29e977ff2d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0xd45e46911c5b1050 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048575 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x22, 0x6eaae40ad126c5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048574 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x11, 0xd58dcea0ac39fb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048554 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x23, 0xb6df4e92c09fcc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x17, 0x7f963d5af14b4ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 22 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
