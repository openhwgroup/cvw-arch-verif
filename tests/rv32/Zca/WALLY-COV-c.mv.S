///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.mv.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.492311
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8e51a3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9ec31c5d
c.mv x0, x1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5e413ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xecb73cc0
c.mv x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x22e01b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x78f24d26
c.mv x2, x16 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x41287459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc283b4c1
c.mv x3, x28 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x8ac18f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9024c1ec
c.mv x4, x30 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x882805d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf03cdaa8
c.mv x5, x17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x5fca63dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe019485f
c.mv x6, x31 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x40f2bc76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd8eea8f5
c.mv x7, x24 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xcb9ddaba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa4026722
c.mv x8, x6 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6d6bc782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8840db0d
c.mv x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x90fb3cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa888917c
c.mv x10, x2 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x16944dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x570f9f16
c.mv x11, x30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7a86e4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x39b5142c
c.mv x12, x21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x30e92a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc95933a9
c.mv x13, x26 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x72b52579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1eeadbbf
c.mv x14, x17 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4492700d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb8baa5ec
c.mv x15, x4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x87e50c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd79d5315
c.mv x16, x26 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x167ede00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0a32f2ca
c.mv x17, x26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xefb63e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x47756661
c.mv x18, x27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xec6d7d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8ed7125a
c.mv x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdd4a7a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9905064a
c.mv x20, x12 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xda3ee22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9a6f8302
c.mv x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe555acd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x683b1173
c.mv x22, x4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa0856194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5134fd35
c.mv x23, x16 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb24cb994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0e74365b
c.mv x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd2517973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x56726e41
c.mv x25, x28 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3e9c0dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9f782073
c.mv x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x606b14d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa4df60ec
c.mv x27, x29 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x396d41a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1cd53f1f
c.mv x28, x15 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x57c1be9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7677ac18
c.mv x29, x20 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x26eb2c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdbb71ee3
c.mv x30, x15 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5decf9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1947d692
c.mv x31, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xc9131363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x94361802
c.mv x5, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xd4c27ced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x66ffcacd
c.mv x8, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x01af261f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x906c90bb
c.mv x17, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x31, 0x1bb07eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1f5b17ee
c.mv x31, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x2709e44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x627e1467
c.mv x26, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x15, 0x57b44b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5fb54516
c.mv x15, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x10, 0x9c5f1aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x123b96cf
c.mv x10, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xb54bb42d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64c9447b
c.mv x2, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x476325b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd602887a
c.mv x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0x305e7ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36b358c4
c.mv x31, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xf98015bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe291805a
c.mv x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xf5641847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x61ac005e
c.mv x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xd10de3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeda00bb0
c.mv x25, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x0a5f3308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x37525afa
c.mv x19, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0x3fd5acd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8bd41bee
c.mv x26, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xb8d0abf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xefbdcd6b
c.mv x10, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0xd176b907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x19453d8e
c.mv x11, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0x1daa4046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x833f223d
c.mv x9, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x7cd32043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5dfec68c
c.mv x21, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0xa17ede22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1e54bd4a
c.mv x16, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x29adee77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5d2e4428
c.mv x9, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0x54bf66f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61896b7d
c.mv x4, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x79add4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8689ace6
c.mv x16, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0xa274a501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd0bde117
c.mv x27, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xacf9b7be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x072d0383
c.mv x23, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x4fb6903a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6ca8d409
c.mv x16, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x90d1f413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x729e3bed
c.mv x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0xaa699910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5ccac2c4
c.mv x12, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x5a629f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaa957fb4
c.mv x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x6e03ab06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9324113
c.mv x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0xfef61dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x84f584cc
c.mv x1, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4a125070)
li x7, 0xd8b2d182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4a125070
c.mv x7, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x115155d3)
li x13, 0x2e00cf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xeeaeaa2d
c.mv x13, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0x1c399871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe3c6678f
c.mv x24, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x9390abbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6c6f5446
c.mv x15, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xe2bc50bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1d43af43
c.mv x1, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xdb741d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa48be29b
c.mv x11, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x24, 0x1b91151c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x646eeae5
c.mv x24, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0x85dcaa47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfa2355b8
c.mv x14, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0xb8cf9a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc7306570
c.mv x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x82313f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7dcec0ea
c.mv x22, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0xf3b498a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0c4b675b
c.mv x11, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x756a9ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe651e995
c.mv x13, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0x417a9486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x69301624
c.mv x16, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x5f6edbe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf5e67975
c.mv x8, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x8a807933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000
c.mv x17, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x0e6fbe21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001
c.mv x6, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x38273388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002
c.mv x25, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x4, 0xc5fd49fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000
c.mv x4, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x4d58d626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001
c.mv x8, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x4, 0xe379ca4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff
c.mv x4, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0xeabe163c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe
c.mv x13, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x12e227aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff
c.mv x29, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x71498317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe
c.mv x8, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x5, 0x50662feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.mv x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0x33b1ebf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa
c.mv x21, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0xe6ab1f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555
c.mv x13, x25 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
