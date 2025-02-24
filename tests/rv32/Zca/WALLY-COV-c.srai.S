///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.srai.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.494621
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_shift
li x16, 0x64430245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2b0598a9
c.srai x8, 1 # perform operation

# Testcase cp_imm_shift
li x30, 0xb4e378fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x14938f63
c.srai x14, 2 # perform operation

# Testcase cp_imm_shift
li x31, 0x3583a8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb65cbc61
c.srai x15, 3 # perform operation

# Testcase cp_imm_shift
li x27, 0xe0f3ce79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf03d1f48
c.srai x11, 4 # perform operation

# Testcase cp_imm_shift
li x20, 0xfebe8cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7a273ced
c.srai x12, 5 # perform operation

# Testcase cp_imm_shift
li x19, 0x962d3687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8a57f5b5
c.srai x11, 6 # perform operation

# Testcase cp_imm_shift
li x1, 0xbef3eb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcd8a73e7
c.srai x9, 7 # perform operation

# Testcase cp_imm_shift
li x26, 0x11bc2ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6af5f71b
c.srai x10, 8 # perform operation

# Testcase cp_imm_shift
li x2, 0x2bbaa829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb5f4225c
c.srai x10, 9 # perform operation

# Testcase cp_imm_shift
li x25, 0x5f3105e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8ab33b71
c.srai x9, 10 # perform operation

# Testcase cp_imm_shift
li x1, 0x2a04e783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0ba85a8a
c.srai x9, 11 # perform operation

# Testcase cp_imm_shift
li x12, 0x213fafcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x667f7355
c.srai x12, 12 # perform operation

# Testcase cp_imm_shift
li x12, 0x9d02d507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x004a11fc
c.srai x12, 13 # perform operation

# Testcase cp_imm_shift
li x4, 0x5b08f45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2a3f2c1e
c.srai x12, 14 # perform operation

# Testcase cp_imm_shift
li x28, 0x164883d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe76482bb
c.srai x12, 15 # perform operation

# Testcase cp_imm_shift
li x14, 0x0bc89902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7644cc53
c.srai x14, 16 # perform operation

# Testcase cp_imm_shift
li x28, 0x44dd8449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xadd84f36
c.srai x12, 17 # perform operation

# Testcase cp_imm_shift
li x13, 0x125c5fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8d047fd8
c.srai x13, 18 # perform operation

# Testcase cp_imm_shift
li x16, 0x03bd52b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc47f589e
c.srai x8, 19 # perform operation

# Testcase cp_imm_shift
li x18, 0xeba5a7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xad30ec5a
c.srai x10, 20 # perform operation

# Testcase cp_imm_shift
li x7, 0x152c611e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd1fa6f3c
c.srai x15, 21 # perform operation

# Testcase cp_imm_shift
li x16, 0x76183137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb17950be
c.srai x8, 22 # perform operation

# Testcase cp_imm_shift
li x12, 0x4fdc99df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x196f5e70
c.srai x12, 23 # perform operation

# Testcase cp_imm_shift
li x8, 0xeb3090e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x980f8746
c.srai x8, 24 # perform operation

# Testcase cp_imm_shift
li x17, 0x231994f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x631b9019
c.srai x9, 25 # perform operation

# Testcase cp_imm_shift
li x13, 0x50608520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfd00dd40
c.srai x13, 26 # perform operation

# Testcase cp_imm_shift
li x2, 0x7686eed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x254fe3bb
c.srai x10, 27 # perform operation

# Testcase cp_imm_shift
li x21, 0xfc6fc89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe28ed40d
c.srai x13, 28 # perform operation

# Testcase cp_imm_shift
li x29, 0x8b86a668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x87acba8e
c.srai x13, 29 # perform operation

# Testcase cp_imm_shift
li x20, 0xcdc55a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x74f6efa5
c.srai x12, 30 # perform operation

# Testcase cp_imm_shift
li x17, 0x62a20e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x20c31158
c.srai x9, 31 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0a76ab1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbbff2145
c.srai x8, 26 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe91fa2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf9adb7e9
c.srai x9, 16 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x622864ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x74ddc4e5
c.srai x10, 27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd93d5381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6c4bdddf
c.srai x11, 6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf50c6d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x01ba7613
c.srai x12, 21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x73a386b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x79ad68f0
c.srai x13, 12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5e3a29e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd2a2552a
c.srai x14, 28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2cf67914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0d0d4081
c.srai x15, 19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x15, 0x90064939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000
c.srai x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x23, 0xa73e890c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002
c.srai x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x1, 0x73903dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000004
c.srai x9, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe Shifted by 1)
li x24, 0xe3771b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe
c.srai x8, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x377910ee Shifted by 1)
li x29, 0xfa886773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x377910ee
c.srai x13, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
