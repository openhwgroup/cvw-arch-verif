///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.jr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.982349
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x9c22e31b037a93ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
c.jr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x578efd62708babc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
c.jr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xcda5fd143ff96c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
c.jr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0xacd8054f5fc96588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
c.jr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0xe0cb83b58319ec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
c.jr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0xe60b8b76913f5843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
c.jr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x11, 0xfa23f58c81d71f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
c.jr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x3ff2617d7c1f2137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
c.jr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xb108042fc6f8ba53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
c.jr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0xf308d9284d7b3f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
c.jr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xb2e01543bd20f0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
c.jr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x3d38f1f761b8e943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
c.jr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x6336b2d9a005b337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
c.jr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xe0b1ce1fe7d1d8ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
c.jr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x6b6648617b1e5daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
c.jr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0xc0cfab6e0519e4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
c.jr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x98e354e68757cbef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
c.jr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0x5a3681887667a4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
c.jr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0xe0cc5285c0a0f423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
c.jr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xa585aa6f6828deb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
c.jr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x417d561e0b6dccd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
c.jr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x0e33cce529730ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
c.jr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x504f07f40ca561c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
c.jr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x26, 0x02ea94a4ede4815e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
c.jr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0x92528839760cdd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
c.jr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x316943aa73b21547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
c.jr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0x7d556b552e1d3e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
c.jr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0x1872716e20f6ac70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
c.jr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0x28564b5b466856e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
c.jr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xc0e4da2cabf5f4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
c.jr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x4, 0xec2d33cc63733802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
c.jr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x29, 1b
c.jr x29 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
