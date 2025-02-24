///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.jalr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.981981
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x19, 0xc7869fb63b9c77af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc7869fb63b9c77af # initialize legalized rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x4, 0xde63f4bc6a62ce86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xde63f4bc6a62ce86 # initialize legalized rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0xc1fe501a68fbf614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc1fe501a68fbf614 # initialize legalized rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x3809112a8ed48f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3809112a8ed48f07 # initialize legalized rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0x66d9654ccfb417dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x66d9654ccfb417dc # initialize legalized rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0xa89345336f01298b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa89345336f01298b # initialize legalized rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0xf44e6b28f94c83a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf44e6b28f94c83a4 # initialize legalized rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0xc2cc67d1c0899639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc2cc67d1c0899639 # initialize legalized rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x5e07ded821d01b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5e07ded821d01b60 # initialize legalized rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xa15af628bc836d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa15af628bc836d60 # initialize legalized rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xdbe4b5dc80ee0236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdbe4b5dc80ee0236 # initialize legalized rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x5d30abda1988d4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5d30abda1988d4e5 # initialize legalized rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xbdb0269a0085f4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbdb0269a0085f4e0 # initialize legalized rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x4a04174a43c779c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a04174a43c779c7 # initialize legalized rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xcb85af5390e4ed87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcb85af5390e4ed87 # initialize legalized rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0x834f6cf43618a746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x834f6cf43618a746 # initialize legalized rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0x8fe1bdb439b41cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8fe1bdb439b41cfc # initialize legalized rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0x6c1ca3fd7ff4895f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6c1ca3fd7ff4895f # initialize legalized rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x23d7021309fd5800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x23d7021309fd5800 # initialize legalized rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xda41275e96c8a723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xda41275e96c8a723 # initialize legalized rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x5a0b227dfd3a18f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a0b227dfd3a18f8 # initialize legalized rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x7163d19cda88c9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7163d19cda88c9bf # initialize legalized rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x3, 0x90fb4bb04d7aceec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x90fb4bb04d7aceec # initialize legalized rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0x34e7db2a3098d494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x34e7db2a3098d494 # initialize legalized rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0x03c0a1508aed4ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x03c0a1508aed4ae0 # initialize legalized rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x2e8ad803a1df1d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2e8ad803a1df1d3a # initialize legalized rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xac33c76e250db8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xac33c76e250db8ba # initialize legalized rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xfd3de91e7ff16ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfd3de91e7ff16ffe # initialize legalized rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x87566ee1f92743c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x87566ee1f92743c0 # initialize legalized rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x7de94e1c6ac942ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7de94e1c6ac942ce # initialize legalized rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0xbd16ee06634d9e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbd16ee06634d9e94 # initialize legalized rd (x1) to a random value that should get changed
la x31, 1f
c.jalr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x16, 1b
c.jalr x16 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
