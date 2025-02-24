///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.xor.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.498174
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x440e3729)
li x6, 0x440e3729 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x440e3729 # initialize leagalized rd to a random value that should get changed
li x12, 0x440e3729 # initialize rs2
c.xor x14, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x75c368cd)
li x5, 0xc800c9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbcfdfb14 # initialize leagalized rd to a random value that should get changed
li x12, 0x75c368cd # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x7528f444)
li x13, 0x76ef7205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3156cc65 # initialize leagalized rd to a random value that should get changed
li x15, 0x8ad70bbc # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x461377a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x138b1928 # initialize leagalized rd to a random value that should get changed
li x8, 0x438af63c # initialize rs2
c.xor x8, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6f4ce0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x89267517 # initialize leagalized rd to a random value that should get changed
li x14, 0xe72787cb # initialize rs2
c.xor x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc1b798e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x105be658 # initialize leagalized rd to a random value that should get changed
li x14, 0xea740e4d # initialize rs2
c.xor x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x16fafb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x42cd12a3 # initialize leagalized rd to a random value that should get changed
li x15, 0x677a8073 # initialize rs2
c.xor x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3cd06d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa77788be # initialize leagalized rd to a random value that should get changed
li x14, 0x3ac163c6 # initialize rs2
c.xor x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0baae5d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa707327f # initialize leagalized rd to a random value that should get changed
li x8, 0x5bb5eb6b # initialize rs2
c.xor x13, x8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9ab461b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xba9decee # initialize leagalized rd to a random value that should get changed
li x12, 0x4cf4231e # initialize rs2
c.xor x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc1348268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x66aa64c7 # initialize leagalized rd to a random value that should get changed
li x10, 0xb59a3b51 # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xe9da1672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x90a6d5a1 # initialize leagalized rd to a random value that should get changed
li x8, 0xf94e3a23 # initialize rs2
c.xor x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0xf646d8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x670ce4c0 # initialize leagalized rd to a random value that should get changed
li x9, 0xf874ec4d # initialize rs2
c.xor x9, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0xdc9dfa7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11799ef4 # initialize leagalized rd to a random value that should get changed
li x10, 0x4b4108c6 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x8d06eeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6857a975 # initialize leagalized rd to a random value that should get changed
li x11, 0x79ac1d2b # initialize rs2
c.xor x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0x99b13ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xab833ca4 # initialize leagalized rd to a random value that should get changed
li x12, 0xa9dd749a # initialize rs2
c.xor x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x338b2bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcff3e62b # initialize leagalized rd to a random value that should get changed
li x13, 0x5ca89c8f # initialize rs2
c.xor x13, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xb9aad9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d45d95a # initialize leagalized rd to a random value that should get changed
li x14, 0x8af209a2 # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x761f175d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf61069a2 # initialize leagalized rd to a random value that should get changed
li x15, 0x7be77637 # initialize rs2
c.xor x15, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x94ed74db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000 # initialize rs2
c.xor x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x81a9dd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000001 # initialize rs2
c.xor x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x6a06b50f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.xor x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x037acc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x80000000 # initialize rs2
c.xor x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0xfbfd41a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000001 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x59c148c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffff # initialize rs2
c.xor x8, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0x7c4eddf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x7ffffffe # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x2ef8146e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.xor x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x88bb022a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffe # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x3, 0x00d5fcbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc8877 # initialize rs2
c.xor x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x36ab8421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaa # initialize rs2
c.xor x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0x70491282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x9a4da545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4cc878de # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000 # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0x972a3cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c3f9d61 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000001 # initialize rs2
c.xor x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xd042cd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf0613ee5 # initialize leagalized rd to a random value that should get changed
li x8, 0x00000002 # initialize rs2
c.xor x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x5b6ee1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb45c965d # initialize leagalized rd to a random value that should get changed
li x12, 0x80000000 # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x1ad1a973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x233a2931 # initialize leagalized rd to a random value that should get changed
li x9, 0x80000001 # initialize rs2
c.xor x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0xd454b9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb4e9c97e # initialize leagalized rd to a random value that should get changed
li x13, 0x7fffffff # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x589c8c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f9a7b16 # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xa10bd6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4ddddf7f # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff # initialize rs2
c.xor x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x4a1c7c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa45cf9c6 # initialize leagalized rd to a random value that should get changed
li x15, 0xfffffffe # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x24, 0x63979d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb6d30779 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.xor x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0x62677aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x932222ea # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.xor x12, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x29, 0x564dbc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0c183b35 # initialize leagalized rd to a random value that should get changed
li x11, 0x55555555 # initialize rs2
c.xor x13, x11 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
