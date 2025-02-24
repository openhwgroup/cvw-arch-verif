///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lui.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.969516
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x5355a4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x0, 596532 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x401cf08e # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x1, 176739 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x15be3f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x2, 106063 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb559f2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x3, 958255 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xa7e7ae59 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x4, 183611 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3d57ae6f # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x5, 758998 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xefdc7e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x6, 551430 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb30e22d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x7, 1033914 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd3c91327 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x8, 262064 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x4e2ef685 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x9, 660878 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xce33e6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x10, 350027 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x7895d6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x11, 975533 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x11904e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x12, 296541 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa3ba9958 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x13, 317216 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xf5d42de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x14, 448608 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x84b7c85b # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x15, 409959 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfcffdfd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x16, 825603 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x1a35d203 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x17, 149947 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8ff58bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x18, 1012339 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7d22d00e # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x19, 815852 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x89154da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x20, 803325 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x74378ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x21, 581773 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x78a2b650 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x22, 574992 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb2bf6889 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x23, 869024 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe5380134 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x24, 237249 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb680a0a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x25, 56221 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe116327b # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x26, 813156 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x331107f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x27, 222670 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x65c24cee # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x28, 934329 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa03dc1de # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x29, 178360 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf6acc737 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x30, 461670 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x926b0ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x31, 531793 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x0)
li x8, 0x82d96c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x8, 0 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0xfffff000)
li x13, 0xbbf88516 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x13, 1048575 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x80000000)
li x17, 0xbae381e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x17, 524288 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x1000)
li x31, 0x1cf965bf # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x31, 1 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x4ae20000)
li x22, 0x2faa9053 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x22, 306720 # perform operation

# Testcase cp_imm_zero
li x6, 0xaf3c41af # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x6, 0 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
