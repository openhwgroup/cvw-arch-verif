///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fmv.s.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.310928
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
li x27, 0x8afcc636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe47a9da7 # load immediate value into integer register
fmv.s.x f27, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x5, 0x3071680f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcc07d7c6 # load immediate value into integer register
fmv.s.x f5, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0xf017e71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5265bcea # load immediate value into integer register
fmv.s.x f12, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x2eeeb604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe0030b77 # load immediate value into integer register
fmv.s.x f1, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0xffca2220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xac3b0051 # load immediate value into integer register
fmv.s.x f25, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x13, 0xaf66a8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2738dadf # load immediate value into integer register
fmv.s.x f13, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x27, 0x7767bd6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb62882fe # load immediate value into integer register
fmv.s.x f27, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x17, 0x5fcd12eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc8ada2c0 # load immediate value into integer register
fmv.s.x f17, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0x4e195e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0cca0e3 # load immediate value into integer register
fmv.s.x f5, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xb4f6414d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe87506fb # load immediate value into integer register
fmv.s.x f11, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0x9e07921b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf98bd080 # load immediate value into integer register
fmv.s.x f16, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x2f13c17c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4bfc5902 # load immediate value into integer register
fmv.s.x f17, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x116c835c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa508a8d1 # load immediate value into integer register
fmv.s.x f25, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x03eed075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd870def1 # load immediate value into integer register
fmv.s.x f26, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0x1f6e5f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0f5a8181 # load immediate value into integer register
fmv.s.x f25, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0xe8050343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1065b763 # load immediate value into integer register
fmv.s.x f22, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0xe20492f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb08959ea # load immediate value into integer register
fmv.s.x f6, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x8f41a2d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x56466bea # load immediate value into integer register
fmv.s.x f9, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x13d44c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe1549c9f # load immediate value into integer register
fmv.s.x f8, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0x228bbd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x17e132c2 # load immediate value into integer register
fmv.s.x f26, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x27, 0x43d61e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x53eccb44 # load immediate value into integer register
fmv.s.x f27, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x6, 0x5bb57f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf15dc4d9 # load immediate value into integer register
fmv.s.x f6, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x25, 0x2798a86a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7a2c30d9 # load immediate value into integer register
fmv.s.x f25, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0x94805f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xccc8d1e6 # load immediate value into integer register
fmv.s.x f2, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x17, 0xcdfc9937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x15097b1d # load immediate value into integer register
fmv.s.x f17, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x26, 0xcc5ee095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb25fd0a1 # load immediate value into integer register
fmv.s.x f26, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0xe6426a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5ff5433e # load immediate value into integer register
fmv.s.x f9, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0xe577810e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbdb196ed # load immediate value into integer register
fmv.s.x f4, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x62f483b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x070e2195 # load immediate value into integer register
fmv.s.x f11, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x3, 0xbebc0971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc4f2a5a3 # load immediate value into integer register
fmv.s.x f3, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xe982e0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x97ab0074 # load immediate value into integer register
fmv.s.x f3, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x80cae2df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x77d9ef30 # load immediate value into integer register
fmv.s.x f17, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0xd8857518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # load immediate value into integer register
fmv.s.x f29, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x7b0d3ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # load immediate value into integer register
fmv.s.x f17, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0xd03e62a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # load immediate value into integer register
fmv.s.x f2, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x805d90ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # load immediate value into integer register
fmv.s.x f30, x8
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x112ff4d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # load immediate value into integer register
fmv.s.x f9, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x297c1b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # load immediate value into integer register
fmv.s.x f28, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0xbe9c336b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # load immediate value into integer register
fmv.s.x f1, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x9d1d0cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # load immediate value into integer register
fmv.s.x f13, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x281269cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # load immediate value into integer register
fmv.s.x f21, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x17, 0xfb5ce349 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # load immediate value into integer register
fmv.s.x f17, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xd51771cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # load immediate value into integer register
fmv.s.x f25, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0xb1963ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # load immediate value into integer register
fmv.s.x f2, x5
# Testcase cp_fd (Test destination fd = x0)
li x0, 0x47690418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x33c81929 # load immediate value into integer register
fmv.s.x f0, x23
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x8f629aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3b060b8a # load immediate value into integer register
fmv.s.x f1, x4
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3db74aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb43fb236 # load immediate value into integer register
fmv.s.x f2, x8
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x59441d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd75beaed # load immediate value into integer register
fmv.s.x f3, x26
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xdc5e75ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa21d1d15 # load immediate value into integer register
fmv.s.x f4, x4
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x44c7fea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3f9e6ccd # load immediate value into integer register
fmv.s.x f5, x22
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x1b294bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6e72874a # load immediate value into integer register
fmv.s.x f6, x18
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x04a854ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb897b56f # load immediate value into integer register
fmv.s.x f7, x5
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x605bbda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3014efa9 # load immediate value into integer register
fmv.s.x f8, x20
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x12e3c818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcae6a681 # load immediate value into integer register
fmv.s.x f9, x18
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc766431c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe129cd0b # load immediate value into integer register
fmv.s.x f10, x30
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xbc22332d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb9f90d1a # load immediate value into integer register
fmv.s.x f11, x3
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x504d4882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0b6a0433 # load immediate value into integer register
fmv.s.x f12, x4
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x630ab2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa23e1dfe # load immediate value into integer register
fmv.s.x f13, x19
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x4a097e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x523c9d66 # load immediate value into integer register
fmv.s.x f14, x29
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x1677a8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x26e478f9 # load immediate value into integer register
fmv.s.x f15, x3
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7e13058f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xafae5c33 # load immediate value into integer register
fmv.s.x f16, x16
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xdd7267b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xedf3418b # load immediate value into integer register
fmv.s.x f17, x31
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x610a2e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd5083e34 # load immediate value into integer register
fmv.s.x f18, x18
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x67a94f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf47c94f5 # load immediate value into integer register
fmv.s.x f19, x24
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xa4dcf43e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe85cfb89 # load immediate value into integer register
fmv.s.x f20, x29
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x5de18d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7f23ff19 # load immediate value into integer register
fmv.s.x f21, x20
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x5f09551a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa97fbba6 # load immediate value into integer register
fmv.s.x f22, x1
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbc92c006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xabe3c113 # load immediate value into integer register
fmv.s.x f23, x3
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x32e41d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x37072cb5 # load immediate value into integer register
fmv.s.x f24, x28
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x4f1cbdc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26304ae2 # load immediate value into integer register
fmv.s.x f25, x22
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x20b56ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9d7edb7a # load immediate value into integer register
fmv.s.x f26, x20
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x83a3f393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xde30ee5e # load immediate value into integer register
fmv.s.x f27, x20
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb2cdd7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa2a14fda # load immediate value into integer register
fmv.s.x f28, x3
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xda62e8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0ae46ba8 # load immediate value into integer register
fmv.s.x f29, x8
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x0000314a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb6926905 # load immediate value into integer register
fmv.s.x f30, x6
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xfda36eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfb0e28d9 # load immediate value into integer register
fmv.s.x f31, x29
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
