///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.jr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.487972
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0x1f5b6f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
c.jr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x644bc35f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
c.jr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0xf9ec2af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
c.jr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x26390ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
c.jr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x24, 0xb981fe0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
c.jr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0xcc9c3920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
c.jr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0xdc468290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
c.jr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xcba1bc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
c.jr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xd5bc9494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
c.jr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0xc273d217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
c.jr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x22de6a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
c.jr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xe650f601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
c.jr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x9833a429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
c.jr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x5af3292f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
c.jr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x17, 0xadf8a5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
c.jr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0xce5ce27e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
c.jr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0x380230cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
c.jr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0xe8ed3bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
c.jr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x4, 0xdfafa730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
c.jr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0x921c7f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
c.jr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0xbdb56bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
c.jr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x8d15c3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
c.jr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0x214341f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
c.jr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0xc0942c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
c.jr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x971b117a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
c.jr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x418d132e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
c.jr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0xce701ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
c.jr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x15b69dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
c.jr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x86ead369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
c.jr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0x90d75649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
c.jr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0x29180ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
c.jr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x3, 1b
c.jr x3 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
