///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.addi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.481829
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x85108b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x0, 18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x38e842dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x1, 27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd57ce771 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x2, -5 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa1a160a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x3, -4 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xedeb20bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x4, -22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x58fc677d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, -28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x58141c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5cad92cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x7, -26 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xab7ff3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x8, -25 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb49fbc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x9, -25 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3ebb3725 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, -20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x314300b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, -14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4efa42db # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x12, 24 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa50d8846 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x59cb68da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, 14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7b6b145c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, -16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb73c069e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x16, -32 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x44df249a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x17, -23 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8184d27c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, -2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xee3de80c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, -7 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa0f35921 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x20, 11 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x62146a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x21, 1 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfeaece2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, -4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xdd1021a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xac8b887d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, -14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x283ef0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x25, 0 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe024f206 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x26, 25 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xde090b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9bd23a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x09cd78ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, 15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x61500c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -20 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe963668d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, 15 # perform operation

# Testcase cp_imm_zero
li x5, 0xad8662bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x00000012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, -17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, 3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x14, 0x80000012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, -18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x7fffffe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, 26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x80000016 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x7fffffec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0xfffffff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xffffffee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x28, 0x5bbc8869 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x28, 0xaaaaaa93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x10, 0x55555565 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, -16 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
