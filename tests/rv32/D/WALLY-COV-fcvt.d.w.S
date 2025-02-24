///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.d.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.851322
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0x4c269275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xff2b8a52 # load immediate value into integer register
fcvt.d.w f4, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x38673cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xda2fc632 # load immediate value into integer register
fcvt.d.w f31, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0x3641619e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x84e7ffb1 # load immediate value into integer register
fcvt.d.w f25, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0x9ae88d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3a82fc68 # load immediate value into integer register
fcvt.d.w f5, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0x1d733ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8e9e308d # load immediate value into integer register
fcvt.d.w f19, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x25, 0x798a73f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6ffcda07 # load immediate value into integer register
fcvt.d.w f25, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0xb695e026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb25baed0 # load immediate value into integer register
fcvt.d.w f29, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x22, 0xd54d1bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x54d003b7 # load immediate value into integer register
fcvt.d.w f22, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0xc552e6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdda6aab6 # load immediate value into integer register
fcvt.d.w f17, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x2813b409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf0bb831f # load immediate value into integer register
fcvt.d.w f16, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0xa569d326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a91b4b8 # load immediate value into integer register
fcvt.d.w f14, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0xc88fbd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2163c488 # load immediate value into integer register
fcvt.d.w f19, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x474e0402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfe989317 # load immediate value into integer register
fcvt.d.w f5, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x1cba6022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3796e37c # load immediate value into integer register
fcvt.d.w f14, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0xe17c638e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa0241121 # load immediate value into integer register
fcvt.d.w f19, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0x39ffb32d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x459d2f6f # load immediate value into integer register
fcvt.d.w f7, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x51665d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf9e76f10 # load immediate value into integer register
fcvt.d.w f27, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0xafc40b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x43385915 # load immediate value into integer register
fcvt.d.w f31, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0x263a0dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6fc6989a # load immediate value into integer register
fcvt.d.w f5, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xeb395e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6bf57510 # load immediate value into integer register
fcvt.d.w f15, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x2ef2e252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdb96b52c # load immediate value into integer register
fcvt.d.w f22, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0xacdcc3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x60dfd715 # load immediate value into integer register
fcvt.d.w f31, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x29, 0xc4c2fc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x44a880c1 # load immediate value into integer register
fcvt.d.w f29, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0xd03fb64b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfb5a39b8 # load immediate value into integer register
fcvt.d.w f4, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x29, 0x72b08b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa95d41a6 # load immediate value into integer register
fcvt.d.w f29, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xa161e65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x74b38727 # load immediate value into integer register
fcvt.d.w f11, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0x29d93437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x53c8138a # load immediate value into integer register
fcvt.d.w f27, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0xb4ef8ade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x33677fc7 # load immediate value into integer register
fcvt.d.w f14, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x25f2819d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0cedde96 # load immediate value into integer register
fcvt.d.w f19, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x25, 0x2d108266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfdccbe04 # load immediate value into integer register
fcvt.d.w f25, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0x0577cdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9f6e8b17 # load immediate value into integer register
fcvt.d.w f18, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0x98001875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9bef8e5d # load immediate value into integer register
fcvt.d.w f29, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0xb43c1721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # load immediate value into integer register
fcvt.d.w f15, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x481a7422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # load immediate value into integer register
fcvt.d.w f5, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x84aacd2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # load immediate value into integer register
fcvt.d.w f25, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x8ac593a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # load immediate value into integer register
fcvt.d.w f5, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x99736cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # load immediate value into integer register
fcvt.d.w f2, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x30, 0xee483085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # load immediate value into integer register
fcvt.d.w f30, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x84ea7a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # load immediate value into integer register
fcvt.d.w f25, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xfeffc3b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # load immediate value into integer register
fcvt.d.w f23, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x9836b97b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # load immediate value into integer register
fcvt.d.w f12, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x16, 0x3eb0faef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # load immediate value into integer register
fcvt.d.w f16, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xefb657b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # load immediate value into integer register
fcvt.d.w f9, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x7927635a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # load immediate value into integer register
fcvt.d.w f21, x26
# Testcase cp_fd (Test destination fd = x0)
li x0, 0x6d9584a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4d3b15a6 # load immediate value into integer register
fcvt.d.w f0, x8
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x2d3cd94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd76588d7 # load immediate value into integer register
fcvt.d.w f1, x7
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xa32889dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x73f054db # load immediate value into integer register
fcvt.d.w f2, x4
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xcd9005b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3ae04900 # load immediate value into integer register
fcvt.d.w f3, x10
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x3402ecd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd46e9f62 # load immediate value into integer register
fcvt.d.w f4, x6
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xacfd3314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xda9b27ea # load immediate value into integer register
fcvt.d.w f5, x31
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x6e018d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0ee64199 # load immediate value into integer register
fcvt.d.w f6, x6
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2128702b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa31d310c # load immediate value into integer register
fcvt.d.w f7, x20
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xfa40962f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x202569ef # load immediate value into integer register
fcvt.d.w f8, x2
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x0d053deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0a913610 # load immediate value into integer register
fcvt.d.w f9, x28
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0235fe3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd7311b02 # load immediate value into integer register
fcvt.d.w f10, x27
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x99da8d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaba80aa # load immediate value into integer register
fcvt.d.w f11, x27
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9b151111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xee81ef18 # load immediate value into integer register
fcvt.d.w f12, x2
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x764d295d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x63dd09db # load immediate value into integer register
fcvt.d.w f13, x27
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xae9e6da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xabfe9c25 # load immediate value into integer register
fcvt.d.w f14, x29
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x083e2bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe2a67371 # load immediate value into integer register
fcvt.d.w f15, x22
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x47623a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffdf2900 # load immediate value into integer register
fcvt.d.w f16, x5
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3b0dc4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x04131f0c # load immediate value into integer register
fcvt.d.w f17, x2
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x4a2645d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x533ff927 # load immediate value into integer register
fcvt.d.w f18, x30
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x53e7688a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3fce62b8 # load immediate value into integer register
fcvt.d.w f19, x28
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x29a21974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1419dc75 # load immediate value into integer register
fcvt.d.w f20, x10
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf02e0f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x372a24f9 # load immediate value into integer register
fcvt.d.w f21, x12
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xea70319e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x628c21f4 # load immediate value into integer register
fcvt.d.w f22, x24
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xcee7146c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x28cf8581 # load immediate value into integer register
fcvt.d.w f23, x14
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xbb076387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x59a2c9df # load immediate value into integer register
fcvt.d.w f24, x1
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xcd784fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x70a057c6 # load immediate value into integer register
fcvt.d.w f25, x11
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf0b14afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9beb6891 # load immediate value into integer register
fcvt.d.w f26, x23
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x533d87f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x95cebfaa # load immediate value into integer register
fcvt.d.w f27, x12
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x447cfffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x643c6611 # load immediate value into integer register
fcvt.d.w f28, x9
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x0d4405d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6c4f5168 # load immediate value into integer register
fcvt.d.w f29, x16
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe9694c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9ead1d48 # load immediate value into integer register
fcvt.d.w f30, x6
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x31949aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2e83c884 # load immediate value into integer register
fcvt.d.w f31, x10
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
