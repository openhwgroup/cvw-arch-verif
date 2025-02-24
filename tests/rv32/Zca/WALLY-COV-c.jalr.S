///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.jalr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.487622
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x18, 0x2846cd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2846cd32 # initialize legalized rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0xda4d9d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xda4d9d1a # initialize legalized rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x4, 0xd0c5a04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd0c5a04a # initialize legalized rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0x38092021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x38092021 # initialize legalized rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x10, 0x897e79f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x897e79f5 # initialize legalized rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x8663183f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8663183f # initialize legalized rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0x6030a542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6030a542 # initialize legalized rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x9f71df23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9f71df23 # initialize legalized rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x554bd6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x554bd6ad # initialize legalized rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x34bfbeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x34bfbeb7 # initialize legalized rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0xa69b79fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa69b79fa # initialize legalized rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0xde9a90a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xde9a90a7 # initialize legalized rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x4d1c682e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4d1c682e # initialize legalized rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x13623c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x13623c6b # initialize legalized rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0xbf55ba74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbf55ba74 # initialize legalized rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x6c9f9808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6c9f9808 # initialize legalized rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x5a203d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a203d1b # initialize legalized rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x0e2953b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0e2953b2 # initialize legalized rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xa58c325e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa58c325e # initialize legalized rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0x3d5bcc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d5bcc74 # initialize legalized rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x938cff7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x938cff7c # initialize legalized rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0x157b5a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x157b5a8d # initialize legalized rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x31ca1b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x31ca1b39 # initialize legalized rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0x977b8495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x977b8495 # initialize legalized rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0xf9b7437e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf9b7437e # initialize legalized rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0x5bdcb3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bdcb3d5 # initialize legalized rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x167033b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x167033b6 # initialize legalized rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x674e7118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x674e7118 # initialize legalized rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0xdf8c2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdf8c2b96 # initialize legalized rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x9ab6d0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9ab6d0e5 # initialize legalized rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0xb1c690e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb1c690e9 # initialize legalized rd (x1) to a random value that should get changed
la x31, 1f
c.jalr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x23, 1b
c.jalr x23 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
