///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.addi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.974616
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8dae4c9a6d4e4949 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x0, 21 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xdd0813358545f063 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x1, 27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3d5f17edaa309015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x2, -15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x97d4a9f696114697 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x3, -13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf637128073e45ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x4, -1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x037cdf44acf52762 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 4 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb2d6eb59d60f48f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -29 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x86c2a5c767ffb298 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x7, -20 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5d0fd3f360222ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x8, -28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb89dc81ad5f9d8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x9, 30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb3d2c24970c14afe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, 7 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcac501a49f3d5ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, 31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2b58181105f8e083 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x12, -12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9355f3537b8c4b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 27 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x22b65ad22f467b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, -5 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8ef0132526a932e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, 17 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xce273bde03524bec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x16, -27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x49234b78934e691e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x17, 0 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8b5be832d4b75028 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, -2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa6812448f3a51425 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, 31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x6c17420f13fdb1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x20, -3 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x313e0b3dcf1a0127 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x21, -9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x633a7aadf60e88e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, -3 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x34f4a972f882c3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, -24 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa1e8302e3998ce45 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, 12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xcf6397774529200e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x25, 8 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7f16e4c42284c692 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x26, 7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x71e8fa2f27f5296f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8857570452e7294d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, -2 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1753a4b2657d5884 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, -27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5c001d3f98fb9d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1216236101575a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, -12 # perform operation

# Testcase cp_imm_zero
li x13, 0xc8b46bb4572d2441 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xffffffffffffffee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x0000000000000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0xfffffffffffffff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0x7ffffffffffffff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, 11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x29, 0x8000000000000016 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, -21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x31, 0x8000000000000015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x6, 0x7fffffffffffffec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x6, 0x5bbc887763ae870b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, -13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x22, 0x5555555555555536 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x0000000100000010 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, -17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x000000010000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, -28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0x000000010000001a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x15, 0x000000010000001e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, -29 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
