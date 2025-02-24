///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.add.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.480838
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x75d9874f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcbaeca74
c.add x0, x1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x6d2c9c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8ce51d40
c.add x1, x3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x43dec2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x93f09974
c.add x2, x15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc6870ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb590e35d
c.add x3, x14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xe9478cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa757aaff
c.add x4, x18 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa3d13c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15113711
c.add x5, x10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x7ca72c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa2035799
c.add x6, x23 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x97ed2c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x96e08987
c.add x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2332957f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe38631b5
c.add x8, x3 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x86c62e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb46b8da0
c.add x9, x20 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x54b5985e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf858fb88
c.add x10, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8d059cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x43ded5b6
c.add x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3158dc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa116c97e
c.add x12, x30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x12265bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xac4c32bd
c.add x13, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x16af2f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc150e8fc
c.add x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc7925513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x91272d79
c.add x15, x16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc6803135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x67b09c99
c.add x16, x3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7e979200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x78cb4e02
c.add x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf2e0c202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x83b977d8
c.add x18, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x01ee07b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4b58fbd7
c.add x19, x12 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x66884747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd50efdd4
c.add x20, x14 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xe5fe9d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfd1aa864
c.add x21, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x78288ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2532fd34
c.add x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7b812d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0245966c
c.add x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xaaa55f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6d49abe3
c.add x24, x20 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x74de76ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb6f76e68
c.add x25, x31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x485b7dad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2aac4988
c.add x26, x20 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x01d2e4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdde57993
c.add x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2725a434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x877e8296
c.add x28, x11 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2760e490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x82979ad1
c.add x29, x25 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2a45b0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb42fc23c
c.add x30, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x483412bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x79afed3f
c.add x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x8f66ead1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1ee73771
c.add x6, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x9a1e4f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x75766260
c.add x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x6d092a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe26ea5f9
c.add x7, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0xb8ac5988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc5c752e
c.add x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x16, 0x343656b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0104b784
c.add x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0x7b4cd47f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x993f06fa
c.add x11, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x2, 0x0349ed80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dd2dc42
c.add x2, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xc66d4408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7052f981
c.add x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x4c0daf70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc4a07518
c.add x1, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x934aa7ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66107f99
c.add x4, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x1fb674b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7a7101f2
c.add x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xfae87a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1dd0b2f2
c.add x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x7c5d5ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x58a11448
c.add x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x9946e4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4a0fe9a8
c.add x17, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0xb88899ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x99672b55
c.add x17, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x32b544a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xea608497
c.add x26, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x839c5c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x358c4aa3
c.add x8, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xc20c5bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x011b8daa
c.add x8, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0x09958089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5fb61117
c.add x16, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x624b4122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x86751808
c.add x21, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0x2bc5947e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x25e75347
c.add x24, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xd0aec5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2eb0380d
c.add x21, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0x4e18c1af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa33e3be9
c.add x19, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x0b86f12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7607ca93
c.add x22, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x8755427b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x60760f51
c.add x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x8a31c36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x32df3d14
c.add x9, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x09dd7eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0faf85fe
c.add x26, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x82ffbf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8bd96fc3
c.add x5, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xe330084a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x81c95496
c.add x19, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x2b70ece3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x802154e9
c.add x28, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0x59404d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f15e9d0
c.add x26, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x176075ff)
li x6, 0xa0cd4059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x176075ff
c.add x6, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x2f4278c8)
li x4, 0xdee9bc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd0bd8738
c.add x4, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x5ccfb9de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa3304622
c.add x29, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x98f8ea7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x67071584
c.add x7, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xc27cd396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d832c6c
c.add x2, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x9b760c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe489f379
c.add x29, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0xf6ffd7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8900284b
c.add x22, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xe2b6b95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9d4946a1
c.add x28, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xfb64c37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x849b3c81
c.add x14, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x174174cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe8be8b32
c.add x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x0da95e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf256a1a6
c.add x11, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xf11fda68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6a9cae0f
c.add x17, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x63b2ba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x46f7f025
c.add x3, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0xe43d774c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7117de09
c.add x2, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x5010f0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000
c.add x13, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x98579b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001
c.add x10, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x691f9acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002
c.add x9, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x22, 0xf945c299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000
c.add x22, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0xede592c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001
c.add x16, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x94922889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.add x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0x47443b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe
c.add x22, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xc8a5b3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff
c.add x16, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xabc33b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe
c.add x6, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0xae50ac03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877
c.add x28, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x6, 0xb330f5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa
c.add x6, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x8f53d035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555
c.add x8, x6 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
