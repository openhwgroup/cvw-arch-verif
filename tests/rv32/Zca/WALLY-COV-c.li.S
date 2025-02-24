///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.li.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.488287
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfc352ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x0, 2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x06fefdbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x6021d3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -13 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xcc68aab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 31 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x08f22e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x4, -28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x75f142df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4ef96e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, -12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x56ee3ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, -32 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf65ecca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa75ed639 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, -12 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe2c40852 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x944a9f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, -27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc9c61541 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 25 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xeb702341 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x13, 23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x02c28408 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -27 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x75c9336f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x48d480bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x723a2525 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x36b8ea6b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, -22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x472cd102 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, 0 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa6c75db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, 13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5e214769 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, 24 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe0e2f3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x049b7e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -15 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa465302f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, -26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6e0d824c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, 3 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7e1a261b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, -13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6658238c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x27bf15f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ffc3d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x08c3725a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5ed2f26b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -8 # perform operation

# Testcase cp_imm_zero
li x7, 0x82077009 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x8706e0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x7b833169 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0x622c6bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x93756007 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0xfceec518 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x4da1d7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x19c89afe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xc41b10fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x09d65d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x31, 0xa6a7817e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x12, 0x521e2e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -32 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x18, 0xce9031b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x6, 0x203159e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x5, 0x713c575e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x15, 0xaee2188f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x20, 0x4fae831c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x15, 0xf7bb31b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x31, 0xc6aecd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x27, 0x11384bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x10, 0xbfbef8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x11, 0xe57e85f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x24, 0xedeafb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x29, 0xb91bfa74 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x23, 0x9fba92a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x17, 0xe46c5298 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x19, 0x553aadce # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x12, 0x6e4f8bab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x17, 0x94c139bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x1, 0x6e3e246d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x27, 0xf467c015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x22, 0x919b57f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x15, 0xfc317012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x8, 0xc710a9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x12, 0x91ce8c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x19, 0x60488b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, 22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x21, 0xcfb7642a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
