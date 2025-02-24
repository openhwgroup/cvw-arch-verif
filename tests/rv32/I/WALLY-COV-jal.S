///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-jal.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.963039
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xc289c857 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x0, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x8f755917 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x1, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc4ccafb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x2, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x80df4c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x3, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x422f6028 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x4, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xdca53d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x5, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x1f92252a # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x6, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x8dc9cfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x7, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xadaa2042 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x8, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x88536231 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x9, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x646565ed # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x10, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x103bff7d # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x11, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x565d6a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x12, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x46cda129 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x13, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3184f509 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x14, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3d84763f # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x15, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3ba35933 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x16, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3b0830e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x17, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x469d573e # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x18, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbc3f3b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x19, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4c8ee466 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x20, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf8f8d505 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x21, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x57042d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x22, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x14870e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x23, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc0ed024f # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x24, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xefe41faf # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x25, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5e268dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x26, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xef62419f # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x27, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x139d6da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x28, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf7c77b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x29, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd32b0a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x30, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xacf0da3b # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x31, 1f # perform operation
nop
1:

# Testcase cp_imm_ones_zeros 2
jal x20, 1f # jump to aligned address to stress immediate
.align 2
1:

# Testcase cp_imm_ones_zeros 3
jal x20, 1f # jump to aligned address to stress immediate
.align 3
1:

# Testcase cp_imm_ones_zeros 4
jal x20, 1f # jump to aligned address to stress immediate
.align 4
1:

# Testcase cp_imm_ones_zeros 5
jal x20, 1f # jump to aligned address to stress immediate
.align 5
1:

# Testcase cp_imm_ones_zeros 6
jal x20, 1f # jump to aligned address to stress immediate
.align 6
1:

# Testcase cp_imm_ones_zeros 7
jal x20, 1f # jump to aligned address to stress immediate
.align 7
1:

# Testcase cp_imm_ones_zeros 8
jal x20, 1f # jump to aligned address to stress immediate
.align 8
1:

# Testcase cp_imm_ones_zeros 9
jal x20, 1f # jump to aligned address to stress immediate
.align 9
1:

# Testcase cp_imm_ones_zeros 10
jal x20, 1f # jump to aligned address to stress immediate
.align 10
1:

# Testcase cp_imm_ones_zeros 11
jal x20, 1f # jump to aligned address to stress immediate
.align 11
1:

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
