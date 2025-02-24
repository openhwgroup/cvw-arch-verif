///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-jal.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.479642
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x583dbde9e102210d # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x0, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x36d8c4750febd8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x1, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1642fe3d5e4f15c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x2, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1d8cb5a99b848ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x3, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xc09fb5eba8eba00b # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x4, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9ba596f9d767fa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x5, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x970ebf17df1e9787 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x6, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x292d3b54a533c80c # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x7, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc2c3dc43077f10d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x8, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x382bc48fe395bded # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x9, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x92747b2d8cf827c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x10, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1f9b9959f4668485 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x11, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2bdc41e0d67efe1f # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x12, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x66b76f90fcc03468 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x13, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7334f99ce549a68a # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x14, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4d6cf3d1bf01ae9d # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x15, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5a54e8687efd5288 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x16, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x81c8d10ee19612f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x17, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf4efb87d59a5300c # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x18, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x524b87954f0c3323 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x19, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xef35ef61b8aa0a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x20, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa2fabf14063440f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x21, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1ba050b8f0ee92e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x22, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf9db9ec235b14ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x23, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xabff01d2bbc6abb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x24, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xfbeeaf1c0558ecc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x25, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5259cc9e2fd51e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x26, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe8fb6cd96cb31385 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x27, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7ce6a69e4165dda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x28, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x96c1d86583f14b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x29, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x45a41d786199bd69 # initialize rd to a random value that should get changed; helps covering rd_toggle
jal x30, 1f # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7fc8ee1838c0ed7d # initialize rd to a random value that should get changed; helps covering rd_toggle
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
