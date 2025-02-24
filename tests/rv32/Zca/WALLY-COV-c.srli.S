///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.srli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.495199
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_shift
li x20, 0x4dba9ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe4dab1b1
c.srli x12, 1 # perform operation

# Testcase cp_imm_shift
li x6, 0x2bee6a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbc834704
c.srli x14, 2 # perform operation

# Testcase cp_imm_shift
li x10, 0x8c66d3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x32d8af24
c.srli x10, 3 # perform operation

# Testcase cp_imm_shift
li x14, 0xb0aefa76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x62d960a2
c.srli x14, 4 # perform operation

# Testcase cp_imm_shift
li x25, 0x667cb52c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfce56816
c.srli x9, 5 # perform operation

# Testcase cp_imm_shift
li x4, 0x9687dbce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x60c83789
c.srli x12, 6 # perform operation

# Testcase cp_imm_shift
li x17, 0xb947d178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xce22be94
c.srli x9, 7 # perform operation

# Testcase cp_imm_shift
li x2, 0xb3b79073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1ed54c36
c.srli x10, 8 # perform operation

# Testcase cp_imm_shift
li x4, 0xc1bb56e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcbb4fcd9
c.srli x12, 9 # perform operation

# Testcase cp_imm_shift
li x26, 0x9f21cc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa7afd8ac
c.srli x10, 10 # perform operation

# Testcase cp_imm_shift
li x2, 0xd2950e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3c5ca15e
c.srli x10, 11 # perform operation

# Testcase cp_imm_shift
li x8, 0x6e73c006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdd289243
c.srli x8, 12 # perform operation

# Testcase cp_imm_shift
li x25, 0xaae555fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x59d30f68
c.srli x9, 13 # perform operation

# Testcase cp_imm_shift
li x8, 0x8d7e984c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3fbe5e38
c.srli x8, 14 # perform operation

# Testcase cp_imm_shift
li x11, 0x63073c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0604d777
c.srli x11, 15 # perform operation

# Testcase cp_imm_shift
li x19, 0xbe862722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6eb8d26e
c.srli x11, 16 # perform operation

# Testcase cp_imm_shift
li x22, 0x399c8a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x60055687
c.srli x14, 17 # perform operation

# Testcase cp_imm_shift
li x8, 0xfba3418a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa8585c6a
c.srli x8, 18 # perform operation

# Testcase cp_imm_shift
li x19, 0x8a4c89a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4aec1a79
c.srli x11, 19 # perform operation

# Testcase cp_imm_shift
li x8, 0x3b2f7761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64069713
c.srli x8, 20 # perform operation

# Testcase cp_imm_shift
li x2, 0x226ae111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf71afbfa
c.srli x10, 21 # perform operation

# Testcase cp_imm_shift
li x23, 0x72a9d340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x51e1e260
c.srli x15, 22 # perform operation

# Testcase cp_imm_shift
li x20, 0x5b80f1bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff50cbe1
c.srli x12, 23 # perform operation

# Testcase cp_imm_shift
li x5, 0x9b6db87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaea64eb2
c.srli x13, 24 # perform operation

# Testcase cp_imm_shift
li x20, 0x0de5bd25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x959365e2
c.srli x12, 25 # perform operation

# Testcase cp_imm_shift
li x10, 0x2b22f486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7df6ee0b
c.srli x10, 26 # perform operation

# Testcase cp_imm_shift
li x18, 0xeae29cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd01b89e3
c.srli x10, 27 # perform operation

# Testcase cp_imm_shift
li x1, 0xe41239b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x197fa848
c.srli x9, 28 # perform operation

# Testcase cp_imm_shift
li x6, 0x0364b488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x46c89916
c.srli x14, 29 # perform operation

# Testcase cp_imm_shift
li x30, 0x28865106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a0138f5
c.srli x14, 30 # perform operation

# Testcase cp_imm_shift
li x18, 0x2a7ed988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1bd69768
c.srli x10, 31 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3b8d9fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x12e73c26
c.srli x8, 24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x165d01fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9bf74d20
c.srli x9, 28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb9e8c9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdc2151a0
c.srli x10, 13 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb21b45a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x61293ea5
c.srli x11, 27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x396f09cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xadcff500
c.srli x12, 18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xbc50f7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9e4cca3c
c.srli x13, 26 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x809582c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf48ce216
c.srli x14, 26 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd4bcb654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a4882fc
c.srli x15, 17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x26, 0x8d559fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x28, 0x9350581e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002
c.srli x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x18, 0xb1896ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000004
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe Shifted by 1)
li x26, 0x6225e8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffc Shifted by 1)
li x21, 0x01d61edc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffc
c.srli x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa Shifted by 1)
li x16, 0xdc0a7007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa
c.srli x8, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xb77910ee Shifted by 1)
li x8, 0xf9374a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb77910ee
c.srli x8, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
