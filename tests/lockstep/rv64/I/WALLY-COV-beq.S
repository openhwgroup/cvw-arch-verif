///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-beq.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x9a7b3e64430e797b # initialize rs1
li x26, 0x540096c4895e02a2 # initialize rs2
beq x0, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x540096c4895e02a2 # initialize rs1
li x26, 0x540096c4895e02a2 # initialize rs2
beq x0, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbb03230e3697b307 # initialize rs1
li x17, 0x90390627221e7238 # initialize rs2
beq x1, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x90390627221e7238 # initialize rs1
li x17, 0x90390627221e7238 # initialize rs2
beq x1, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8d81b25a591c0be2 # initialize rs1
li x25, 0xbe6d2e9cd09d0827 # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xbe6d2e9cd09d0827 # initialize rs1
li x25, 0xbe6d2e9cd09d0827 # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6530f85b839e7e13 # initialize rs1
li x9, 0x5037fd7772ad56b5 # initialize rs2
beq x3, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5037fd7772ad56b5 # initialize rs1
li x9, 0x5037fd7772ad56b5 # initialize rs2
beq x3, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x07ff3ec89f7481cc # initialize rs1
li x26, 0xb212874a15a74ad0 # initialize rs2
beq x4, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xb212874a15a74ad0 # initialize rs1
li x26, 0xb212874a15a74ad0 # initialize rs2
beq x4, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6b58ea576416a91f # initialize rs1
li x28, 0xc44a867df79c6c81 # initialize rs2
beq x5, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xc44a867df79c6c81 # initialize rs1
li x28, 0xc44a867df79c6c81 # initialize rs2
beq x5, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0aa24439619d6d36 # initialize rs1
li x5, 0xd121c2ac466e8ba3 # initialize rs2
beq x6, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xd121c2ac466e8ba3 # initialize rs1
li x5, 0xd121c2ac466e8ba3 # initialize rs2
beq x6, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb8dd063feb229d85 # initialize rs1
li x20, 0xbf5b320772cc3c63 # initialize rs2
beq x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xbf5b320772cc3c63 # initialize rs1
li x20, 0xbf5b320772cc3c63 # initialize rs2
beq x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf195fa532ed69549 # initialize rs1
li x22, 0xa4206d06d6f43940 # initialize rs2
beq x8, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xa4206d06d6f43940 # initialize rs1
li x22, 0xa4206d06d6f43940 # initialize rs2
beq x8, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x472be16875d72f0d # initialize rs1
li x6, 0xa1458a0ccf940fab # initialize rs2
beq x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xa1458a0ccf940fab # initialize rs1
li x6, 0xa1458a0ccf940fab # initialize rs2
beq x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9e7081895a09c956 # initialize rs1
li x4, 0x93373a13378a3042 # initialize rs2
beq x10, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x93373a13378a3042 # initialize rs1
li x4, 0x93373a13378a3042 # initialize rs2
beq x10, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc1e191e7506cc6d0 # initialize rs1
li x24, 0x6e8322452b36a6b4 # initialize rs2
beq x11, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x6e8322452b36a6b4 # initialize rs1
li x24, 0x6e8322452b36a6b4 # initialize rs2
beq x11, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x85cab0209fc29695 # initialize rs1
li x15, 0x0fbd1867ad3bce07 # initialize rs2
beq x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0fbd1867ad3bce07 # initialize rs1
li x15, 0x0fbd1867ad3bce07 # initialize rs2
beq x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb3660ba50aab5bcf # initialize rs1
li x31, 0x9a2d41a0a98da919 # initialize rs2
beq x13, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x9a2d41a0a98da919 # initialize rs1
li x31, 0x9a2d41a0a98da919 # initialize rs2
beq x13, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xd73adbc41d617331 # initialize rs1
li x15, 0x65fde9f082b87296 # initialize rs2
beq x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x65fde9f082b87296 # initialize rs1
li x15, 0x65fde9f082b87296 # initialize rs2
beq x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x08efaee54312a58c # initialize rs1
li x9, 0xe48f86be6f5b17fa # initialize rs2
beq x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xe48f86be6f5b17fa # initialize rs1
li x9, 0xe48f86be6f5b17fa # initialize rs2
beq x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa72895c75fd1a0af # initialize rs1
li x13, 0x87db52f5d98560cf # initialize rs2
beq x16, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x87db52f5d98560cf # initialize rs1
li x13, 0x87db52f5d98560cf # initialize rs2
beq x16, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd7c83c108e9852b8 # initialize rs1
li x29, 0xa6f4927d6c322b2d # initialize rs2
beq x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xa6f4927d6c322b2d # initialize rs1
li x29, 0xa6f4927d6c322b2d # initialize rs2
beq x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9eede694a2587afb # initialize rs1
li x21, 0x4632edb3c1091ce8 # initialize rs2
beq x18, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x4632edb3c1091ce8 # initialize rs1
li x21, 0x4632edb3c1091ce8 # initialize rs2
beq x18, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xdf2588875c075bc6 # initialize rs1
li x16, 0x216ad16df0c0b78a # initialize rs2
beq x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x216ad16df0c0b78a # initialize rs1
li x16, 0x216ad16df0c0b78a # initialize rs2
beq x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xed933e2b7e5596cb # initialize rs1
li x28, 0x4ec124a39bb4b47b # initialize rs2
beq x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x4ec124a39bb4b47b # initialize rs1
li x28, 0x4ec124a39bb4b47b # initialize rs2
beq x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf2879906b8a8e6b1 # initialize rs1
li x14, 0xf846eeed2107ec59 # initialize rs2
beq x21, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xf846eeed2107ec59 # initialize rs1
li x14, 0xf846eeed2107ec59 # initialize rs2
beq x21, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x473bccbb367ad031 # initialize rs1
li x26, 0xc69dc1bfa5607fc8 # initialize rs2
beq x22, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xc69dc1bfa5607fc8 # initialize rs1
li x26, 0xc69dc1bfa5607fc8 # initialize rs2
beq x22, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x43123e12c765be33 # initialize rs1
li x15, 0xdd000f0aa7d667cc # initialize rs2
beq x23, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xdd000f0aa7d667cc # initialize rs1
li x15, 0xdd000f0aa7d667cc # initialize rs2
beq x23, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb490dd508aa90423 # initialize rs1
li x23, 0x02075b45c2f60cb6 # initialize rs2
beq x24, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x02075b45c2f60cb6 # initialize rs1
li x23, 0x02075b45c2f60cb6 # initialize rs2
beq x24, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5263ceaa0dcf7fd5 # initialize rs1
li x3, 0xf51d64b975cb17c7 # initialize rs2
beq x25, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xf51d64b975cb17c7 # initialize rs1
li x3, 0xf51d64b975cb17c7 # initialize rs2
beq x25, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x165dff849f773824 # initialize rs1
li x3, 0x3f72469d74a14116 # initialize rs2
beq x26, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x3f72469d74a14116 # initialize rs1
li x3, 0x3f72469d74a14116 # initialize rs2
beq x26, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1830c99d33ae4c9b # initialize rs1
li x10, 0xe99ca7030f300dd5 # initialize rs2
beq x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xe99ca7030f300dd5 # initialize rs1
li x10, 0xe99ca7030f300dd5 # initialize rs2
beq x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4d95dcc7d27ee1bb # initialize rs1
li x16, 0xceb55d2614af5424 # initialize rs2
beq x28, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xceb55d2614af5424 # initialize rs1
li x16, 0xceb55d2614af5424 # initialize rs2
beq x28, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd9b4a788d14c83d4 # initialize rs1
li x16, 0x965b54d906761b20 # initialize rs2
beq x29, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x965b54d906761b20 # initialize rs1
li x16, 0x965b54d906761b20 # initialize rs2
beq x29, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3b78bc05a1475231 # initialize rs1
li x11, 0x85479a2f1428be56 # initialize rs2
beq x30, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x85479a2f1428be56 # initialize rs1
li x11, 0x85479a2f1428be56 # initialize rs2
beq x30, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4f10e126ab23d968 # initialize rs1
li x3, 0xa737734cb7fbcf46 # initialize rs2
beq x31, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xa737734cb7fbcf46 # initialize rs1
li x3, 0xa737734cb7fbcf46 # initialize rs2
beq x31, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0xa8e07f92da47589b # initialize rs1
li x0, 0x02a33c7b7d33cf6f # initialize rs2
beq x30, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x02a33c7b7d33cf6f # initialize rs1
li x0, 0x02a33c7b7d33cf6f # initialize rs2
beq x30, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x5f6b62b05ef0bb1e # initialize rs1
li x1, 0x903cd0bb59dbc625 # initialize rs2
beq x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x903cd0bb59dbc625 # initialize rs1
li x1, 0x903cd0bb59dbc625 # initialize rs2
beq x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0x3e0242c0417733df # initialize rs1
li x2, 0x1634f459c7098182 # initialize rs2
beq x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x1634f459c7098182 # initialize rs1
li x2, 0x1634f459c7098182 # initialize rs2
beq x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0xb8a3e20a837c9c68 # initialize rs1
li x3, 0x94fb792eb969dc36 # initialize rs2
beq x2, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x94fb792eb969dc36 # initialize rs1
li x3, 0x94fb792eb969dc36 # initialize rs2
beq x2, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
li x6, 0xb3c0744ff070419a # initialize rs1
li x4, 0x19340d72f4983f99 # initialize rs2
beq x6, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x19340d72f4983f99 # initialize rs1
li x4, 0x19340d72f4983f99 # initialize rs2
beq x6, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x43ab9be9948f02f9 # initialize rs1
li x5, 0xf3aae8af725342c3 # initialize rs2
beq x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xf3aae8af725342c3 # initialize rs1
li x5, 0xf3aae8af725342c3 # initialize rs2
beq x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xdbc8298c74962314 # initialize rs1
li x6, 0xc614ec60d093993c # initialize rs2
beq x31, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xc614ec60d093993c # initialize rs1
li x6, 0xc614ec60d093993c # initialize rs2
beq x31, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x6ee5f4c2ceed6f15 # initialize rs1
li x7, 0x55535e8b8c6b0634 # initialize rs2
beq x24, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55535e8b8c6b0634 # initialize rs1
li x7, 0x55535e8b8c6b0634 # initialize rs2
beq x24, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0xa3a68f82ae9aee9d # initialize rs1
li x8, 0x12d243913de4dcb2 # initialize rs2
beq x31, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x12d243913de4dcb2 # initialize rs1
li x8, 0x12d243913de4dcb2 # initialize rs2
beq x31, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x96e8a60b1ff017b0 # initialize rs1
li x9, 0xa95859ae35933a94 # initialize rs2
beq x19, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xa95859ae35933a94 # initialize rs1
li x9, 0xa95859ae35933a94 # initialize rs2
beq x19, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x600f83e6f6db5dd0 # initialize rs1
li x10, 0xdd8637caecf6a7f0 # initialize rs2
beq x24, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xdd8637caecf6a7f0 # initialize rs1
li x10, 0xdd8637caecf6a7f0 # initialize rs2
beq x24, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0xa54184045d791b68 # initialize rs1
li x11, 0x83ea5fc1d2e3cd0d # initialize rs2
beq x28, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x83ea5fc1d2e3cd0d # initialize rs1
li x11, 0x83ea5fc1d2e3cd0d # initialize rs2
beq x28, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0x6d1949b83c7a0ab9 # initialize rs1
li x12, 0x81980e376b91149b # initialize rs2
beq x3, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x81980e376b91149b # initialize rs1
li x12, 0x81980e376b91149b # initialize rs2
beq x3, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x2c0d9ceb99f685be # initialize rs1
li x13, 0x5408f4b17d01e9f8 # initialize rs2
beq x24, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5408f4b17d01e9f8 # initialize rs1
li x13, 0x5408f4b17d01e9f8 # initialize rs2
beq x24, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x563ba97c5fb3a172 # initialize rs1
li x14, 0x7a31d3b413f8011d # initialize rs2
beq x18, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7a31d3b413f8011d # initialize rs1
li x14, 0x7a31d3b413f8011d # initialize rs2
beq x18, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x617e1825dd4e0f5d # initialize rs1
li x15, 0xcfce6012e3c35a81 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xcfce6012e3c35a81 # initialize rs1
li x15, 0xcfce6012e3c35a81 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x47c8947d4c950fda # initialize rs1
li x16, 0xf99e10598cf1a476 # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xf99e10598cf1a476 # initialize rs1
li x16, 0xf99e10598cf1a476 # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x91dddc58c91734a5 # initialize rs1
li x17, 0xacaa9670553fd8b8 # initialize rs2
beq x9, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xacaa9670553fd8b8 # initialize rs1
li x17, 0xacaa9670553fd8b8 # initialize rs2
beq x9, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xc0ec0bd8ab3ea1df # initialize rs1
li x18, 0x2fff271655fb2f35 # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x2fff271655fb2f35 # initialize rs1
li x18, 0x2fff271655fb2f35 # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0xcaec27f3ba7ad34b # initialize rs1
li x19, 0xd8efc9b9efc77816 # initialize rs2
beq x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xd8efc9b9efc77816 # initialize rs1
li x19, 0xd8efc9b9efc77816 # initialize rs2
beq x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0xd07abe4aa51f0705 # initialize rs1
li x20, 0xf45c25a832d59054 # initialize rs2
beq x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xf45c25a832d59054 # initialize rs1
li x20, 0xf45c25a832d59054 # initialize rs2
beq x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0x3baf337a2d2b7d6e # initialize rs1
li x21, 0xa0079fbec0ab088d # initialize rs2
beq x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xa0079fbec0ab088d # initialize rs1
li x21, 0xa0079fbec0ab088d # initialize rs2
beq x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x29, 0x7badf4a03d1877de # initialize rs1
li x22, 0xc221c374aeb7da83 # initialize rs2
beq x29, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xc221c374aeb7da83 # initialize rs1
li x22, 0xc221c374aeb7da83 # initialize rs2
beq x29, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0xfcecb908f3a2d3d2 # initialize rs1
li x23, 0x727f7b127935ac89 # initialize rs2
beq x2, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x727f7b127935ac89 # initialize rs1
li x23, 0x727f7b127935ac89 # initialize rs2
beq x2, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0xce8ae203df13a045 # initialize rs1
li x24, 0xce65d1ce101a21c7 # initialize rs2
beq x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xce65d1ce101a21c7 # initialize rs1
li x24, 0xce65d1ce101a21c7 # initialize rs2
beq x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0x981d544922a29189 # initialize rs1
li x25, 0x3cfa7ae48281318f # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x3cfa7ae48281318f # initialize rs1
li x25, 0x3cfa7ae48281318f # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0x3c744dc6a2ae4500 # initialize rs1
li x26, 0x4504b847c5f89266 # initialize rs2
beq x8, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x4504b847c5f89266 # initialize rs1
li x26, 0x4504b847c5f89266 # initialize rs2
beq x8, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0xf1ee8fc2d482ddb8 # initialize rs1
li x27, 0xe57e26faa0235d98 # initialize rs2
beq x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xe57e26faa0235d98 # initialize rs1
li x27, 0xe57e26faa0235d98 # initialize rs2
beq x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x22b54f2181b4b70d # initialize rs1
li x28, 0xbfede899ec397f33 # initialize rs2
beq x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xbfede899ec397f33 # initialize rs1
li x28, 0xbfede899ec397f33 # initialize rs2
beq x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0xec1d42f0c7309408 # initialize rs1
li x29, 0x0d1ad2adc283ba19 # initialize rs2
beq x10, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0d1ad2adc283ba19 # initialize rs1
li x29, 0x0d1ad2adc283ba19 # initialize rs2
beq x10, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x84046e53fb9a2419 # initialize rs1
li x30, 0x7e2aa78d9402b61b # initialize rs2
beq x28, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7e2aa78d9402b61b # initialize rs1
li x30, 0x7e2aa78d9402b61b # initialize rs2
beq x28, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0xdb5f416631de2e5c # initialize rs1
li x31, 0xe46e2edc441773c5 # initialize rs2
beq x26, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe46e2edc441773c5 # initialize rs1
li x31, 0xe46e2edc441773c5 # initialize rs2
beq x26, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x16, 0x0000000000000000 # initialize rs1
li x14, 0xd103b39c65109277 # initialize rs2
beq x16, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xd103b39c65109277 # initialize rs1
li x14, 0xd103b39c65109277 # initialize rs2
beq x16, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x7, 0x31dc46dd42e32774 # initialize rs2
beq x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x31dc46dd42e32774 # initialize rs1
li x7, 0x31dc46dd42e32774 # initialize rs2
beq x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x30, 0xbed792a9a7018a0e # initialize rs2
beq x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xbed792a9a7018a0e # initialize rs1
li x30, 0xbed792a9a7018a0e # initialize rs2
beq x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x11, 0xeec1a739d328621a # initialize rs2
beq x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xeec1a739d328621a # initialize rs1
li x11, 0xeec1a739d328621a # initialize rs2
beq x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0x8000000000000001 # initialize rs1
li x21, 0x2a9341a7938b7a2a # initialize rs2
beq x19, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2a9341a7938b7a2a # initialize rs1
li x21, 0x2a9341a7938b7a2a # initialize rs2
beq x19, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x9, 0x9c8071ca5633405e # initialize rs2
beq x26, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x9c8071ca5633405e # initialize rs1
li x9, 0x9c8071ca5633405e # initialize rs2
beq x26, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0404d9c84d9b520b # initialize rs2
beq x12, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0404d9c84d9b520b # initialize rs1
li x23, 0x0404d9c84d9b520b # initialize rs2
beq x12, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0xa7bbaa15a7b5f217 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xa7bbaa15a7b5f217 # initialize rs1
li x25, 0xa7bbaa15a7b5f217 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x22, 0x8c83086af410543d # initialize rs2
beq x30, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x8c83086af410543d # initialize rs1
li x22, 0x8c83086af410543d # initialize rs2
beq x30, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x884dcc845463017f # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x884dcc845463017f # initialize rs1
li x15, 0x884dcc845463017f # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x040e7ae69556ede2 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x040e7ae69556ede2 # initialize rs1
li x15, 0x040e7ae69556ede2 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x7, 0xd805c7148135116e # initialize rs2
beq x8, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xd805c7148135116e # initialize rs1
li x7, 0xd805c7148135116e # initialize rs2
beq x8, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0x41852a2ea4568431 # initialize rs2
beq x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x41852a2ea4568431 # initialize rs1
li x15, 0x41852a2ea4568431 # initialize rs2
beq x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x5, 0xaace96ef484de0c5 # initialize rs2
beq x31, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaace96ef484de0c5 # initialize rs1
li x5, 0xaace96ef484de0c5 # initialize rs2
beq x31, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x29, 0xa5f9c1e56cb37690 # initialize rs2
beq x1, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xa5f9c1e56cb37690 # initialize rs1
li x29, 0xa5f9c1e56cb37690 # initialize rs2
beq x1, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x26, 0x0ed289985daeaf89 # initialize rs2
beq x7, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0ed289985daeaf89 # initialize rs1
li x26, 0x0ed289985daeaf89 # initialize rs2
beq x7, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xca55b95287f5e643 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
beq x23, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
beq x23, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0xe2f2ac737fb4e225 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
beq x25, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
beq x25, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x9da9ac41afcfb981 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
beq x3, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
beq x3, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0x80483e6c86318e41 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
beq x15, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
beq x15, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x11, 0x96e7697d6bcd2bd8 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
beq x11, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
beq x11, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x752111a912d355cf # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
beq x23, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
beq x23, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x4ea78d76690b97d4 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
beq x31, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
beq x31, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x2, 0x9eb6224fddd94fbe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
beq x2, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
beq x2, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0x512b626f37b1d814 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x26, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
beq x26, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x9, 0xb6a9bb00f689ded2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
beq x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
beq x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8863a0f6a1e72970 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0xfe361f4943af9833 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xfe9b3409cd114486 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
beq x11, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
beq x11, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x27, 0x09751ac9267f6f50 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
beq x27, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
beq x27, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x18, 0xacd49242ca14edc8 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
beq x18, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
beq x18, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x2005338db283e10b # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
beq x15, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
beq x15, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
beq x15, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
beq x15, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
beq x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
beq x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
beq x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
beq x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x29, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x29, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
beq x29, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
beq x27, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
beq x27, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
beq x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
beq x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
beq x10, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
beq x10, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
beq x23, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
beq x23, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x2, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x2, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x7, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
beq x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
beq x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x22, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x22, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
beq x1, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
beq x1, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x26, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x9, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x9, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x23, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
beq x23, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
beq x23, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x12, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
beq x12, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
beq x12, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x11, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
beq x11, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
beq x11, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
beq x27, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
beq x27, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
beq x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
beq x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
beq x30, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
beq x30, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
beq x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
beq x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
beq x22, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
beq x22, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x19, 0x0000000000000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
beq x19, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
beq x19, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
beq x18, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
beq x18, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x27, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
beq x27, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
beq x23, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
beq x23, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
beq x3, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
beq x3, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
beq x15, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
beq x15, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
beq x23, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
beq x23, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x23, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
beq x12, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
beq x12, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
beq x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
beq x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
beq x29, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
beq x29, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x6, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x6, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x9, 0x0000000000000002 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
beq x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
beq x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x16, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
beq x16, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
beq x16, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x13, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
beq x13, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
beq x13, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x11, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x11, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x20, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
beq x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
beq x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x20, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
beq x20, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
beq x20, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
beq x6, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
beq x6, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x1, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
beq x1, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
beq x1, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
beq x12, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
beq x12, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
beq x30, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
beq x30, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
beq x7, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
beq x7, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
beq x22, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
beq x22, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x8000000000000000 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
beq x2, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
beq x2, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x11, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x8000000000000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
beq x28, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
beq x28, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
beq x25, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
beq x25, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x26, 0x8000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
beq x26, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
beq x26, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x24, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
beq x24, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
beq x24, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x20, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
beq x20, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
beq x20, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x12, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x12, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x2, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x2, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
beq x26, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
beq x26, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x24, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
beq x24, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x14, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x14, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
beq x1, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
beq x1, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
beq x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
beq x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x8000000000000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x30, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x30, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x11, 0x8000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
beq x11, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
beq x11, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
beq x15, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
beq x15, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x5, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
beq x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
beq x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
beq x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
beq x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
beq x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
beq x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
beq x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
beq x14, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
beq x14, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
beq x26, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
beq x26, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
beq x6, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
beq x6, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
beq x24, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
beq x24, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
beq x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
beq x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
beq x25, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
beq x25, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x22, 0x7fffffffffffffff # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x7, 0x7fffffffffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
beq x7, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
beq x7, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
beq x15, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
beq x15, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
beq x19, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
beq x19, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
beq x16, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
beq x16, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x3, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
beq x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
beq x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
beq x7, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
beq x7, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x9, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
beq x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
beq x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
beq x16, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
beq x16, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x23, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
beq x23, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
beq x27, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
beq x27, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x12, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
beq x12, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x18, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x18, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
beq x3, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
beq x3, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
beq x11, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
beq x11, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x7, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
beq x20, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
beq x20, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
beq x15, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
beq x15, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
beq x23, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
beq x23, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
beq x27, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
beq x27, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x15, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x15, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x15, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
beq x19, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
beq x19, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
beq x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x14, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
beq x16, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
beq x16, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
beq x20, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
beq x20, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
beq x24, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
beq x24, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
beq x11, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
beq x11, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
beq x30, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
beq x30, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0xffffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
beq x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
beq x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xffffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x17, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x17, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x6, 0xffffffffffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x6, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x6, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
beq x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
beq x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
beq x21, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
beq x21, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
beq x30, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
beq x30, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x27, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x14, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
beq x14, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x19, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
beq x19, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
beq x19, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
beq x17, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
beq x17, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x10, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
beq x10, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
beq x10, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
beq x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
beq x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
beq x7, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
beq x7, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x5, 0xfffffffffffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
beq x5, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
beq x5, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
beq x15, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
beq x15, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0xfffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
beq x16, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
beq x16, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x14, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x14, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0xfffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
beq x21, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
beq x21, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
beq x8, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
beq x8, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
beq x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
beq x18, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
beq x18, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x18, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
beq x18, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
beq x18, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
beq x15, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
beq x15, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
beq x26, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
beq x26, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
beq x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
beq x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
beq x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
beq x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
beq x12, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
beq x12, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
beq x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x20, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x20, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
beq x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
beq x21, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
beq x21, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
beq x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
beq x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x13, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x13, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
beq x3, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
beq x3, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
beq x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x24, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x24, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x7, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x7, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
beq x29, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
beq x29, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x28, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
beq x28, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
beq x19, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
beq x19, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
beq x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
beq x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
beq x25, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
beq x25, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
beq x11, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
beq x11, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
beq x10, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
beq x10, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x24, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x24, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x14, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x14, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
beq x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
beq x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x11, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x11, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
beq x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
beq x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
beq x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
beq x29, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
beq x29, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x5, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x5, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
beq x5, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x27, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x27, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x20, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
beq x20, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
beq x20, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
beq x31, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
beq x31, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
beq x6, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
beq x6, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x28, 0x5555555555555555 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
beq x28, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
beq x28, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
beq x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
beq x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
beq x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
beq x30, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
beq x30, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
beq x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
beq x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
beq x25, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
beq x25, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x19, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
beq x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
beq x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
beq x28, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
beq x28, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
beq x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
beq x28, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
beq x28, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
beq x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
beq x25, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
beq x25, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x00000000ffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x15, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x15, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x29, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
beq x29, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
beq x29, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
beq x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
beq x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x24, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
beq x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
beq x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x26, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x26, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
beq x26, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x27, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x27, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x2, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
beq x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
beq x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x9, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
beq x9, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
beq x9, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
beq x30, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
beq x30, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x23, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
beq x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
beq x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x17, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
beq x17, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
beq x17, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
beq x17, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
beq x17, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x11, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
beq x11, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x1, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
beq x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x00000000fffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
beq x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x24, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x31, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
beq x31, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
beq x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
beq x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
beq x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
beq x20, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
beq x20, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
beq x26, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
beq x26, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
beq x3, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
beq x3, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
beq x2, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
beq x2, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
beq x20, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
beq x20, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x13, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x13, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
beq x13, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x5, 0x0000000100000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
beq x5, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
beq x5, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x19, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
beq x19, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
beq x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
beq x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
beq x19, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
beq x19, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
beq x5, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
beq x5, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x22, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x22, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x26, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x26, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
beq x26, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x17, 0x0000000100000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
beq x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
beq x15, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
beq x15, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
beq x31, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
beq x31, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
beq x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x14, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x6, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
beq x6, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x20, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
beq x20, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
beq x20, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
beq x30, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
beq x30, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x12, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
beq x12, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
beq x12, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
beq x24, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
beq x24, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x2, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
beq x2, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x11, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
beq x11, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
beq x11, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
beq x2, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
beq x2, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000100000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
beq x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
beq x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x9, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
beq x9, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x7, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x7, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
beq x7, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
beq x24, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
beq x24, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
beq x8, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
beq x8, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
beq x25, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
beq x25, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x22, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
beq x22, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe3d6b6a46e8150e9 # initialize rs1
li x0, 0xa75369578482c26e # initialize rs2
beq x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xa75369578482c26e # initialize rs1
li x0, 0xa75369578482c26e # initialize rs2
beq x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x989d8f8cc558e4b9 # initialize rs1
li x1, 0xe6da3165fed07fa8 # initialize rs2
beq x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xe6da3165fed07fa8 # initialize rs1
li x1, 0xe6da3165fed07fa8 # initialize rs2
beq x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x169905faa691ff7b # initialize rs1
li x2, 0xdb5b18d0e0eb67d3 # initialize rs2
beq x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xdb5b18d0e0eb67d3 # initialize rs1
li x2, 0xdb5b18d0e0eb67d3 # initialize rs2
beq x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1f31219d10092e60 # initialize rs1
li x3, 0x3e1950a2f49d985c # initialize rs2
beq x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x3e1950a2f49d985c # initialize rs1
li x3, 0x3e1950a2f49d985c # initialize rs2
beq x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x19769b95c377b327 # initialize rs1
li x4, 0x740aa3021f55ccff # initialize rs2
beq x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x740aa3021f55ccff # initialize rs1
li x4, 0x740aa3021f55ccff # initialize rs2
beq x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x84f5199424ab15f8 # initialize rs1
li x5, 0x315f58558dfb0b1a # initialize rs2
beq x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x315f58558dfb0b1a # initialize rs1
li x5, 0x315f58558dfb0b1a # initialize rs2
beq x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36fddfac1a1e9d9a # initialize rs1
li x6, 0x3f3fb7585555679d # initialize rs2
beq x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x3f3fb7585555679d # initialize rs1
li x6, 0x3f3fb7585555679d # initialize rs2
beq x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x35041be9932dc459 # initialize rs1
li x7, 0x2f038f8870c2f6f4 # initialize rs2
beq x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x2f038f8870c2f6f4 # initialize rs1
li x7, 0x2f038f8870c2f6f4 # initialize rs2
beq x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x43867aa61c8ff6a2 # initialize rs1
li x8, 0x8d861e15a3bb45b3 # initialize rs2
beq x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8d861e15a3bb45b3 # initialize rs1
li x8, 0x8d861e15a3bb45b3 # initialize rs2
beq x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf8c1253629888958 # initialize rs1
li x9, 0x16bcfa99de366c3a # initialize rs2
beq x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x16bcfa99de366c3a # initialize rs1
li x9, 0x16bcfa99de366c3a # initialize rs2
beq x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x237e9ecbeed9dd1e # initialize rs1
li x10, 0x6b483273ba269105 # initialize rs2
beq x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x6b483273ba269105 # initialize rs1
li x10, 0x6b483273ba269105 # initialize rs2
beq x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x5a62d6888114e81d # initialize rs1
li x11, 0x7588f5c158fc7290 # initialize rs2
beq x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7588f5c158fc7290 # initialize rs1
li x11, 0x7588f5c158fc7290 # initialize rs2
beq x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4d129b7ab150f3bd # initialize rs1
li x12, 0x53deb435a1c4091b # initialize rs2
beq x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x53deb435a1c4091b # initialize rs1
li x12, 0x53deb435a1c4091b # initialize rs2
beq x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xff4969afd3f043d9 # initialize rs1
li x13, 0x5fe735d276d9b69f # initialize rs2
beq x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5fe735d276d9b69f # initialize rs1
li x13, 0x5fe735d276d9b69f # initialize rs2
beq x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3ef5df2a4fe7f659 # initialize rs1
li x14, 0x02a7bd5dc2548a60 # initialize rs2
beq x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x02a7bd5dc2548a60 # initialize rs1
li x14, 0x02a7bd5dc2548a60 # initialize rs2
beq x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xfcbecd5aea153a8b # initialize rs1
li x15, 0xe2012a4e00dcfd2e # initialize rs2
beq x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xe2012a4e00dcfd2e # initialize rs1
li x15, 0xe2012a4e00dcfd2e # initialize rs2
beq x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x16bec80de93e5562 # initialize rs1
li x16, 0xa321e35666954827 # initialize rs2
beq x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xa321e35666954827 # initialize rs1
li x16, 0xa321e35666954827 # initialize rs2
beq x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x5a4f4e6c80998a86 # initialize rs1
li x17, 0x8d47410e375ba208 # initialize rs2
beq x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8d47410e375ba208 # initialize rs1
li x17, 0x8d47410e375ba208 # initialize rs2
beq x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x131da778545d6247 # initialize rs1
li x18, 0xac022bd14352d95c # initialize rs2
beq x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xac022bd14352d95c # initialize rs1
li x18, 0xac022bd14352d95c # initialize rs2
beq x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1966e5bccde95ecb # initialize rs1
li x19, 0xecea648e34df6d36 # initialize rs2
beq x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xecea648e34df6d36 # initialize rs1
li x19, 0xecea648e34df6d36 # initialize rs2
beq x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x1c69410b07a1edae # initialize rs1
li x20, 0x43a1c6a7f4402246 # initialize rs2
beq x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x43a1c6a7f4402246 # initialize rs1
li x20, 0x43a1c6a7f4402246 # initialize rs2
beq x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xeed246aa4aa90fd2 # initialize rs1
li x21, 0xe518c3319848bd0b # initialize rs2
beq x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xe518c3319848bd0b # initialize rs1
li x21, 0xe518c3319848bd0b # initialize rs2
beq x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6ff1c23eb7345cd3 # initialize rs1
li x22, 0x785df52d3ca0b651 # initialize rs2
beq x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x785df52d3ca0b651 # initialize rs1
li x22, 0x785df52d3ca0b651 # initialize rs2
beq x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xbc8cb80c5bb2d9e3 # initialize rs1
li x23, 0x959131d511cd2816 # initialize rs2
beq x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x959131d511cd2816 # initialize rs1
li x23, 0x959131d511cd2816 # initialize rs2
beq x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x3f73c70c161e82eb # initialize rs1
li x24, 0x6a200b0a14b82215 # initialize rs2
beq x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x6a200b0a14b82215 # initialize rs1
li x24, 0x6a200b0a14b82215 # initialize rs2
beq x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x8396dabeb2ce081f # initialize rs1
li x25, 0x3586894f25238c48 # initialize rs2
beq x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x3586894f25238c48 # initialize rs1
li x25, 0x3586894f25238c48 # initialize rs2
beq x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7e28c8b2952aef0c # initialize rs1
li x26, 0xaf03748a3a988f00 # initialize rs2
beq x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xaf03748a3a988f00 # initialize rs1
li x26, 0xaf03748a3a988f00 # initialize rs2
beq x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd55d636f42fe78c0 # initialize rs1
li x27, 0xcb1974de4798cbc8 # initialize rs2
beq x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xcb1974de4798cbc8 # initialize rs1
li x27, 0xcb1974de4798cbc8 # initialize rs2
beq x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x63f6458c74da01da # initialize rs1
li x28, 0x4e576a94420f11e4 # initialize rs2
beq x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x4e576a94420f11e4 # initialize rs1
li x28, 0x4e576a94420f11e4 # initialize rs2
beq x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe2c83d9f1b8e4abc # initialize rs1
li x29, 0x90ced6b4ac6d9a7f # initialize rs2
beq x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x90ced6b4ac6d9a7f # initialize rs1
li x29, 0x90ced6b4ac6d9a7f # initialize rs2
beq x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2a35beb9ce2dd0d1 # initialize rs1
li x30, 0xff3acc820e686886 # initialize rs2
beq x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xff3acc820e686886 # initialize rs1
li x30, 0xff3acc820e686886 # initialize rs2
beq x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf9d8caf9d6abc2f9 # initialize rs1
li x31, 0x838d2d1755ef5025 # initialize rs2
beq x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x838d2d1755ef5025 # initialize rs1
li x31, 0x838d2d1755ef5025 # initialize rs2
beq x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: beq x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x17, x11 # perform first operation
beq x19, x13, arbitraryLabel115
nop
arbitraryLabel115:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x28, x15 # perform first operation
beq x9, x30, arbitraryLabel116
nop
arbitraryLabel116:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x30, x15 # perform first operation
beq x17, x16, arbitraryLabel117
nop
arbitraryLabel117:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x1, x21 # perform first operation
beq x25, x19, arbitraryLabel118
nop
arbitraryLabel118:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x20, x2 # perform first operation
beq x8, x7, arbitraryLabel119
nop
arbitraryLabel119:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x8, x11 # perform first operation
beq x28, x2, arbitraryLabel120
nop
arbitraryLabel120:
nop
 # perform second (triggering) operation

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
