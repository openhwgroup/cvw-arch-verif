///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-srai.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.998189
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xc87d7520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4f02f7b2 # initialize rs1
srai x0, x5, 30 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0aa6a18e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5afe7bd8 # initialize rs1
srai x1, x19, 16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x30fc0f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x40332958 # initialize rs1
srai x2, x21, 15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0e9d26cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x60f0ca07 # initialize rs1
srai x3, x6, 14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb53b8e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaa994fa7 # initialize rs1
srai x4, x17, 31 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xddf0374a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7761e1b1 # initialize rs1
srai x5, x18, 16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4ae6fc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0d9b17fe # initialize rs1
srai x6, x21, 24 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x93c716b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe2e3dde0 # initialize rs1
srai x7, x30, 31 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xad810d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x406eeb93 # initialize rs1
srai x8, x15, 28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa06d9184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x799e875e # initialize rs1
srai x9, x5, 22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xedf9e152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x536cf9f4 # initialize rs1
srai x10, x13, 30 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x351c3f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe5408f75 # initialize rs1
srai x11, x22, 4 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1ff2aa10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9d69b232 # initialize rs1
srai x12, x4, 12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5515d423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x62cc9f47 # initialize rs1
srai x13, x12, 30 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd14eb0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe2d693a0 # initialize rs1
srai x14, x14, 2 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3a485665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xebb019d0 # initialize rs1
srai x15, x8, 4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1ad119e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd828b7ed # initialize rs1
srai x16, x30, 10 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcaec5d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8d54eb09 # initialize rs1
srai x17, x19, 5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5a6ee6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4e262b11 # initialize rs1
srai x18, x6, 1 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x63e88c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x64c093b6 # initialize rs1
srai x19, x25, 31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xec970179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa96ef892 # initialize rs1
srai x20, x30, 7 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x33fb3a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfd30d12c # initialize rs1
srai x21, x8, 15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x3416571e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb5e8c481 # initialize rs1
srai x22, x16, 23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe86d5eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0662f1a0 # initialize rs1
srai x23, x4, 22 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9dce868a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x17f7d7a0 # initialize rs1
srai x24, x10, 25 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x2f00cd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xed8310e2 # initialize rs1
srai x25, x27, 24 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xdc5abdba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x72526a3c # initialize rs1
srai x26, x25, 1 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb02dc979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3db5ded3 # initialize rs1
srai x27, x20, 28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xaf8e6ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa50960b9 # initialize rs1
srai x28, x28, 19 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x278e3e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4774bb3f # initialize rs1
srai x29, x29, 29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6879a401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x74c9f1f6 # initialize rs1
srai x30, x14, 7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8604dfa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4d01c041 # initialize rs1
srai x31, x2, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x25, 0x07ae310b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4b7607e7 # initialize rs1
srai x25, x0, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x29, 0x906d8f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x391e8721 # initialize rs1
srai x29, x1, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0x7d39cc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd54bebc7 # initialize rs1
srai x18, x2, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x23, 0xb6e5a331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xce64a0b8 # initialize rs1
srai x23, x3, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0x626e6f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf3d7ddd3 # initialize rs1
srai x8, x4, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x21, 0xb70bfddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe5cec450 # initialize rs1
srai x21, x5, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x10, 0x5069674c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x651b55a7 # initialize rs1
srai x10, x6, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0xa94a01db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x925a3472 # initialize rs1
srai x21, x7, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x93747aea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x70985609 # initialize rs1
srai x12, x8, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x6401c94b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x67632817 # initialize rs1
srai x1, x9, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xe6a2e43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x11aeac35 # initialize rs1
srai x16, x10, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xcf1efb36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x581b7577 # initialize rs1
srai x10, x11, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x107c24b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfa3f1c14 # initialize rs1
srai x31, x12, 19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xe5b6f1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaf399a64 # initialize rs1
srai x25, x13, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xecea44a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9b7d6755 # initialize rs1
srai x3, x14, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xe5163e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2a1b75c6 # initialize rs1
srai x14, x15, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x1eec9f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfde0abbc # initialize rs1
srai x15, x16, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0xdeb07b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0addc1f4 # initialize rs1
srai x13, x17, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0x1d975bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xca7031e8 # initialize rs1
srai x31, x18, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x4d0b31d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2144a2d4 # initialize rs1
srai x28, x19, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x9, 0x06ef0781 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x774f9341 # initialize rs1
srai x9, x20, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0x3c7a3e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x600a055a # initialize rs1
srai x8, x21, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0xbd638053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x916079ab # initialize rs1
srai x8, x22, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x1daba76d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9d2ef037 # initialize rs1
srai x9, x23, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0x069ec318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7f10ad54 # initialize rs1
srai x30, x24, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x75cd8200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x935b8e92 # initialize rs1
srai x16, x25, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x0add0610 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x47808d93 # initialize rs1
srai x19, x26, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x18, 0x83d00b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x60a3144c # initialize rs1
srai x18, x27, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xaf3c9fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x630a5c87 # initialize rs1
srai x30, x28, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0x49804400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2d03b050 # initialize rs1
srai x21, x29, 15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0x918e4228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x59ca0608 # initialize rs1
srai x23, x30, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0x0a855026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd4a3572f # initialize rs1
srai x22, x31, 0 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x83803569)
li x8, 0x7fb327ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fb327ef # initialize rs1
srai x8, x31, 6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x26b7cd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
srai x30, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x30feb3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
srai x6, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x558aaa17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
srai x9, x13, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x5ea30a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
srai x12, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x970104c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
srai x3, x19, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x61be2689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
srai x4, x28, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0xd777c84c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
srai x6, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x4312c1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
srai x10, x29, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0x0dfbec45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
srai x2, x18, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x4, 0x9c760bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
srai x4, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0xc7cf67cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
srai x29, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xed17ae78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
srai x11, x27, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0xc618b74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
srai x30, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x311d250e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
srai x6, x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x5, 0x74c595ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
srai x5, x17, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x42b185a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
srai x31, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x9, 0xff1c7a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
srai x9, x18, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xe8f19f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
srai x11, x26, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x6900f4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
srai x18, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x5, 0x66368212 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
srai x5, x1, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x9, 0x35885933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
srai x9, x31, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0xa778dc6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
srai x2, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0xf91613c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
srai x1, x29, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0xfcb200f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
srai x5, x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0xef894528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
srai x12, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x3e461dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
srai x27, x6, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0xc6aa67d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
srai x9, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x5, 0x87519a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
srai x5, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0x7d7d4ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
srai x14, x24, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x7, 0x9012c790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
srai x7, x30, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0x3c7c0bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
srai x21, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x20, 0x4d623212 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
srai x20, x3, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x8a1c8920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
srai x8, x6, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x30d99ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
srai x15, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x14, 0xbe05bf0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
srai x14, x5, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0xf534b439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
srai x9, x30, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0xe8820cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
srai x26, x11, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x49b4b7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
srai x8, x13, 3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x51a94910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
srai x15, x29, 29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x31, 0x582313c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
srai x31, x30, 22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x28, 0x84ae2b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
srai x28, x16, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x1c02e1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
srai x28, x31, 20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x117bead0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
srai x24, x22, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0x57371707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
srai x27, x15, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x65263442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
srai x8, x3, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0x7df35e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
srai x9, x29, 5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0x78f3524b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
srai x19, x10, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x18, 0xf662c35f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
srai x18, x21, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x793c6dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xff9dbe62 # initialize rs1
srai x0, x0, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x051872b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xae5a17bf # initialize rs1
srai x1, x1, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x613ba07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc78016cd # initialize rs1
srai x2, x2, 3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb7d62a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x19b111e6 # initialize rs1
srai x3, x3, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x568e1a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c5c8e46 # initialize rs1
srai x4, x4, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x4ec560f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5a428d9c # initialize rs1
srai x5, x5, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xe824d1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbcccdfcf # initialize rs1
srai x6, x6, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x21a4cd68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9d7281a6 # initialize rs1
srai x7, x7, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf8362652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0425d83 # initialize rs1
srai x8, x8, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcb12524f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x013363d4 # initialize rs1
srai x9, x9, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5a163bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3445f240 # initialize rs1
srai x10, x10, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe74c1f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x945caa14 # initialize rs1
srai x11, x11, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xcf8ed391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1551b831 # initialize rs1
srai x12, x12, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x143476cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3bb79840 # initialize rs1
srai x13, x13, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3ddc68a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xde6f84e9 # initialize rs1
srai x14, x14, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe97b21ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xae02f8cb # initialize rs1
srai x15, x15, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd67fa7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x532bab59 # initialize rs1
srai x16, x16, 3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc648a1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6e3e907f # initialize rs1
srai x17, x17, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc3b2008f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1d9aa35c # initialize rs1
srai x18, x18, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5633079b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x59342f85 # initialize rs1
srai x19, x19, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd3658a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x42ad4534 # initialize rs1
srai x20, x20, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc0beb26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x66847c0c # initialize rs1
srai x21, x21, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6bc5f95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdbab8b26 # initialize rs1
srai x22, x22, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa5602200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2100fb75 # initialize rs1
srai x23, x23, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3e8b745c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x864a2761 # initialize rs1
srai x24, x24, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3c869c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4923137d # initialize rs1
srai x25, x25, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6a9b6fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4fa63ca1 # initialize rs1
srai x26, x26, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe4ff999b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x885a6536 # initialize rs1
srai x27, x27, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x607f4ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbb7a34ed # initialize rs1
srai x28, x28, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3d0cf287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfeee6f04 # initialize rs1
srai x29, x29, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4de3edda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9390b6e # initialize rs1
srai x30, x30, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd875fb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb50c6d76 # initialize rs1
srai x31, x31, 11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x3b6ef40c)
li x10, 0x18aa1e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3b6ef40c # initialize rs1
srai x10, x3, 26 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x3d1eb33a)
li x26, 0xaf8bf358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc2e14cc6 # initialize rs1
srai x26, x23, 5 # perform operation

# Testcase cp_imm_shift
li x26, 0x52129029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x66b85c7b # initialize rs1
srai x26, x28, 0 # perform operation

# Testcase cp_imm_shift
li x18, 0xcafec45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xccfa2070 # initialize rs1
srai x18, x13, 1 # perform operation

# Testcase cp_imm_shift
li x4, 0x0f1e5ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf9811e11 # initialize rs1
srai x4, x16, 2 # perform operation

# Testcase cp_imm_shift
li x8, 0x81acc338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4c25bab7 # initialize rs1
srai x8, x24, 3 # perform operation

# Testcase cp_imm_shift
li x7, 0xe3585c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x212361a7 # initialize rs1
srai x7, x27, 4 # perform operation

# Testcase cp_imm_shift
li x31, 0xcffa1746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf81171cd # initialize rs1
srai x31, x17, 5 # perform operation

# Testcase cp_imm_shift
li x15, 0xb60fb40e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb055b5dd # initialize rs1
srai x15, x13, 6 # perform operation

# Testcase cp_imm_shift
li x23, 0x20af1141 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf7045562 # initialize rs1
srai x23, x22, 7 # perform operation

# Testcase cp_imm_shift
li x15, 0x967107a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x47d67984 # initialize rs1
srai x15, x31, 8 # perform operation

# Testcase cp_imm_shift
li x16, 0xdb9ebca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf0622e59 # initialize rs1
srai x16, x9, 9 # perform operation

# Testcase cp_imm_shift
li x24, 0x5307dfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd9ae566d # initialize rs1
srai x24, x22, 10 # perform operation

# Testcase cp_imm_shift
li x11, 0x20394ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb9379795 # initialize rs1
srai x11, x25, 11 # perform operation

# Testcase cp_imm_shift
li x2, 0x3dddec65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8b4406ff # initialize rs1
srai x2, x23, 12 # perform operation

# Testcase cp_imm_shift
li x3, 0x390f08fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2b3eb9c5 # initialize rs1
srai x3, x25, 13 # perform operation

# Testcase cp_imm_shift
li x30, 0x386c7664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4dd4625e # initialize rs1
srai x30, x13, 14 # perform operation

# Testcase cp_imm_shift
li x2, 0x6bf569bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb9fdb0c3 # initialize rs1
srai x2, x14, 15 # perform operation

# Testcase cp_imm_shift
li x16, 0xfe763669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6f4c9b9c # initialize rs1
srai x16, x29, 16 # perform operation

# Testcase cp_imm_shift
li x27, 0x69cf8ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x499ce528 # initialize rs1
srai x27, x4, 17 # perform operation

# Testcase cp_imm_shift
li x22, 0xe43a85fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x52a1fb05 # initialize rs1
srai x22, x11, 18 # perform operation

# Testcase cp_imm_shift
li x14, 0x0ea1426c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4c812172 # initialize rs1
srai x14, x1, 19 # perform operation

# Testcase cp_imm_shift
li x14, 0x0f2391f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3ff06155 # initialize rs1
srai x14, x20, 20 # perform operation

# Testcase cp_imm_shift
li x24, 0x86294128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1f973fdb # initialize rs1
srai x24, x10, 21 # perform operation

# Testcase cp_imm_shift
li x27, 0xb8c2fcfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x692bdad1 # initialize rs1
srai x27, x3, 22 # perform operation

# Testcase cp_imm_shift
li x16, 0xeb130bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x85d946e9 # initialize rs1
srai x16, x24, 23 # perform operation

# Testcase cp_imm_shift
li x23, 0xd4d498b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91535629 # initialize rs1
srai x23, x6, 24 # perform operation

# Testcase cp_imm_shift
li x27, 0x5789171f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf1e5f6df # initialize rs1
srai x27, x26, 25 # perform operation

# Testcase cp_imm_shift
li x30, 0x1cb983c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd69f9f83 # initialize rs1
srai x30, x29, 26 # perform operation

# Testcase cp_imm_shift
li x8, 0x955ca048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x16e9558a # initialize rs1
srai x8, x11, 27 # perform operation

# Testcase cp_imm_shift
li x15, 0x9b3876e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd9a0130c # initialize rs1
srai x15, x26, 28 # perform operation

# Testcase cp_imm_shift
li x4, 0x434c0430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x61205880 # initialize rs1
srai x4, x11, 29 # perform operation

# Testcase cp_imm_shift
li x4, 0x7dc753d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x982a6d40 # initialize rs1
srai x4, x8, 30 # perform operation

# Testcase cp_imm_shift
li x24, 0xe1f1af67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaed03754 # initialize rs1
srai x24, x13, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
