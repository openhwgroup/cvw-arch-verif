///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.slli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.493840
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xeae163f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x05b4116a
c.slli x0, 16 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xd79aac38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55aece89
c.slli x1, 12 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x96c8234c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8b5a8f4b
c.slli x2, 22 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7d9688b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x000f2101
c.slli x3, 7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x79aff440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c44cfab
c.slli x4, 4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x751ba369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x476d53b2
c.slli x5, 10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe97266e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xee36c007
c.slli x6, 21 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x32948c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x87b3c481
c.slli x7, 28 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x850e36c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x62606997
c.slli x8, 17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc7b013e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3e99b22d
c.slli x9, 29 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2ebea87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x58e5915b
c.slli x10, 29 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd07387d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd8f962fd
c.slli x11, 24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xcc9b0c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4a5a687a
c.slli x12, 18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa7341eca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x77957c69
c.slli x13, 2 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7b9bc17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4bb6fb63
c.slli x14, 23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0acac135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x84f53b35
c.slli x15, 18 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x45fe88c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4339cc26
c.slli x16, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x55af1ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6d57cd45
c.slli x17, 8 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4481bf8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa4759d44
c.slli x18, 4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfafb8de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9c050071
c.slli x19, 2 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xad7defda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4e14ca4f
c.slli x20, 13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x444c9d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x165b7234
c.slli x21, 6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4c898ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa802b969
c.slli x22, 29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x74daef1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8cb36ced
c.slli x23, 5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc1402eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x553f8295
c.slli x24, 12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd6e1a13c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6067b3e2
c.slli x25, 7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5b85e5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x66e496d5
c.slli x26, 19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x2b2082e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x41536901
c.slli x27, 22 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc5366582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa2e8ce77
c.slli x28, 29 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3441a878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x514a9f5e
c.slli x29, 18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x89526ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6bfd0078
c.slli x30, 19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf4ff33cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe97be685
c.slli x31, 19 # perform operation

# Testcase cp_imm_shift
li x2, 0x2b41abb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xeb53432e
c.slli x2, 1 # perform operation

# Testcase cp_imm_shift
li x10, 0x34899365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x297acf53
c.slli x10, 2 # perform operation

# Testcase cp_imm_shift
li x24, 0x7ec822a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0caf8373
c.slli x24, 3 # perform operation

# Testcase cp_imm_shift
li x21, 0x9fe4b5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaf3e91d
c.slli x21, 4 # perform operation

# Testcase cp_imm_shift
li x17, 0x22235337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5381c5c9
c.slli x17, 5 # perform operation

# Testcase cp_imm_shift
li x30, 0x2d1af953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc1749780
c.slli x30, 6 # perform operation

# Testcase cp_imm_shift
li x22, 0xe1d898bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20dfcc7a
c.slli x22, 7 # perform operation

# Testcase cp_imm_shift
li x19, 0x949a3b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb2f0a209
c.slli x19, 8 # perform operation

# Testcase cp_imm_shift
li x30, 0xd6f549ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1abd7431
c.slli x30, 9 # perform operation

# Testcase cp_imm_shift
li x4, 0x3e12371e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd7d67719
c.slli x4, 10 # perform operation

# Testcase cp_imm_shift
li x13, 0xdcfdfc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0e8b9d0
c.slli x13, 11 # perform operation

# Testcase cp_imm_shift
li x31, 0x42f8ef86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x687e633e
c.slli x31, 12 # perform operation

# Testcase cp_imm_shift
li x4, 0x446c78a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe785f510
c.slli x4, 13 # perform operation

# Testcase cp_imm_shift
li x21, 0x92f2349f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd7bb6ef5
c.slli x21, 14 # perform operation

# Testcase cp_imm_shift
li x9, 0x678c0783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7b3b2e04
c.slli x9, 15 # perform operation

# Testcase cp_imm_shift
li x1, 0x7e36b3c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7be8ed21
c.slli x1, 16 # perform operation

# Testcase cp_imm_shift
li x3, 0xdb780453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb44f6853
c.slli x3, 17 # perform operation

# Testcase cp_imm_shift
li x27, 0xb72b6c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdb1c9ae2
c.slli x27, 18 # perform operation

# Testcase cp_imm_shift
li x5, 0x6e7258b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf5775235
c.slli x5, 19 # perform operation

# Testcase cp_imm_shift
li x19, 0x349abc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x349f9ba1
c.slli x19, 20 # perform operation

# Testcase cp_imm_shift
li x26, 0x4b1b23b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc9fea648
c.slli x26, 21 # perform operation

# Testcase cp_imm_shift
li x5, 0x9cf00851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcd793877
c.slli x5, 22 # perform operation

# Testcase cp_imm_shift
li x27, 0xeeae30f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4eacbbff
c.slli x27, 23 # perform operation

# Testcase cp_imm_shift
li x19, 0xb4917edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x96808819
c.slli x19, 24 # perform operation

# Testcase cp_imm_shift
li x23, 0x49d2de8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf9ee1cd8
c.slli x23, 25 # perform operation

# Testcase cp_imm_shift
li x4, 0xf3b3dc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x73754961
c.slli x4, 26 # perform operation

# Testcase cp_imm_shift
li x28, 0xd51d802f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8f0b394b
c.slli x28, 27 # perform operation

# Testcase cp_imm_shift
li x10, 0xbdac36c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1c20fc03
c.slli x10, 28 # perform operation

# Testcase cp_imm_shift
li x17, 0x47cc91a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe2a064e1
c.slli x17, 29 # perform operation

# Testcase cp_imm_shift
li x8, 0xd78822f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f33f88a
c.slli x8, 30 # perform operation

# Testcase cp_imm_shift
li x20, 0x034037b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc163d6ee
c.slli x20, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x10, 0x35511d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000
c.slli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1 Shifted by 1)
li x5, 0x43393ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001
c.slli x5, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x40000000 Shifted by 1)
li x30, 0x24f904c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40000000
c.slli x30, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3fffffff Shifted by 1)
li x13, 0xf4202135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3fffffff
c.slli x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff Shifted by 1)
li x27, 0xfa122d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff
c.slli x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555 Shifted by 1)
li x7, 0x5c1b4703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555
c.slli x7, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2dde443b Shifted by 1)
li x10, 0x6ca0b1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2dde443b
c.slli x10, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
