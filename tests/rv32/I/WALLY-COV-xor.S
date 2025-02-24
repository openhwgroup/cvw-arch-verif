///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-xor.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.010140
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x440e79c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x49ae73b6 # initialize rs1
li x18, 0xb09759f0 # initialize rs2
xor x0, x15, x18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3f490c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd75c2eac # initialize rs1
li x12, 0xebaab46e # initialize rs2
xor x1, x26, x12 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2bb2d2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa4b9d050 # initialize rs1
li x30, 0x54d56b5d # initialize rs2
xor x2, x13, x30 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8556c2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb5dead9b # initialize rs1
li x31, 0xccecb52b # initialize rs2
xor x3, x19, x31 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1b1effb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9b2de5ec # initialize rs1
li x9, 0x85ea825a # initialize rs2
xor x4, x28, x9 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb445e313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcb6bbc19 # initialize rs1
li x25, 0xc42c8217 # initialize rs2
xor x5, x10, x25 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x464dae66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6000bf6a # initialize rs1
li x3, 0x130f1105 # initialize rs2
xor x6, x14, x3 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xcd0ed8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4f205ca # initialize rs1
li x19, 0x6411d39e # initialize rs2
xor x7, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x71d5ce29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf35b0aa4 # initialize rs1
li x24, 0xfbfd074a # initialize rs2
xor x8, x28, x24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x957fa6be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfc3f243d # initialize rs1
li x31, 0x18510f32 # initialize rs2
xor x9, x18, x31 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfaedbdae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xba674c40 # initialize rs1
li x5, 0x88ec7008 # initialize rs2
xor x10, x16, x5 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0c396f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa110177d # initialize rs1
li x23, 0x67d485af # initialize rs2
xor x11, x31, x23 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x246eefa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6f3781a3 # initialize rs1
li x6, 0xc13f29e6 # initialize rs2
xor x12, x21, x6 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x06871920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x66348d0c # initialize rs1
li x1, 0x9d2e80b2 # initialize rs2
xor x13, x31, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa9157b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x012c091a # initialize rs1
li x22, 0x1802101c # initialize rs2
xor x14, x18, x22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xabdb08dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2eda5751 # initialize rs1
li x10, 0x8b1e944d # initialize rs2
xor x15, x31, x10 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5321d6a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x593f81a4 # initialize rs1
li x8, 0xe9113ae9 # initialize rs2
xor x16, x7, x8 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x8ad52ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x87724689 # initialize rs1
li x26, 0x24b061ee # initialize rs2
xor x17, x13, x26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x99c45de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9cb0aa03 # initialize rs1
li x4, 0x8d134b27 # initialize rs2
xor x18, x21, x4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xaeb5c017 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x25f79ef4 # initialize rs1
li x10, 0x6b8b8f7f # initialize rs2
xor x19, x8, x10 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x0394bf15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x25b5aca9 # initialize rs1
li x27, 0xed8304b6 # initialize rs2
xor x20, x10, x27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf5d378ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x681b67f0 # initialize rs1
li x23, 0x7c62b758 # initialize rs2
xor x21, x8, x23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x916808f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xccb95cf6 # initialize rs1
li x1, 0xc3b7788e # initialize rs2
xor x22, x20, x1 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd38947f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3393348c # initialize rs1
li x2, 0xd0747ea1 # initialize rs2
xor x23, x29, x2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x06418030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8ecb3a54 # initialize rs1
li x19, 0x0e4ecc3e # initialize rs2
xor x24, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xaf0d8bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2a870061 # initialize rs1
li x2, 0xfb6b3d1d # initialize rs2
xor x25, x19, x2 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xca1429c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2c8c5a1b # initialize rs1
li x8, 0xc00b55a9 # initialize rs2
xor x26, x30, x8 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3e6e9fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb897ae2f # initialize rs1
li x28, 0x9653a260 # initialize rs2
xor x27, x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9a8a6145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xeea92407 # initialize rs1
li x6, 0x3a8792ab # initialize rs2
xor x28, x24, x6 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x93258aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x60995912 # initialize rs1
li x21, 0x5d63690c # initialize rs2
xor x29, x22, x21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6ee2c9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7a755138 # initialize rs1
li x7, 0xaa2261eb # initialize rs2
xor x30, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x38e5c5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x59c09173 # initialize rs1
li x10, 0x25d7c91f # initialize rs2
xor x31, x16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x18, 0xb6f1c3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x66ee6841 # initialize rs1
li x6, 0x46c96807 # initialize rs2
xor x18, x0, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0xfe54ad94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7bf2f0d3 # initialize rs1
li x7, 0x57fb7184 # initialize rs2
xor x13, x1, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0x001b62fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xad91c538 # initialize rs1
li x3, 0xe54a35bf # initialize rs2
xor x21, x2, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0x9c9bb784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1a094e2c # initialize rs1
li x14, 0x80f70336 # initialize rs2
xor x20, x3, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x20, 0x2ed70b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdf6f0161 # initialize rs1
li x15, 0x5aa620a7 # initialize rs2
xor x20, x4, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x28, 0x3a779c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x942470d6 # initialize rs1
li x10, 0x41688411 # initialize rs2
xor x28, x5, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0xa0e049a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc3291b4b # initialize rs1
li x31, 0x07df7612 # initialize rs2
xor x29, x6, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0x3a087b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3361a95c # initialize rs1
li x25, 0x532bb858 # initialize rs2
xor x24, x7, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x99e0ef74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x480abcdd # initialize rs1
li x9, 0xadb1333e # initialize rs2
xor x27, x8, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0xe469b4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6989cc65 # initialize rs1
li x27, 0x6c30ca80 # initialize rs2
xor x7, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x0452ebe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc5d1984e # initialize rs1
li x9, 0x59acafc8 # initialize rs2
xor x23, x10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x12fece6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x90def0a7 # initialize rs1
li x25, 0x58bb3d36 # initialize rs2
xor x27, x11, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x6941dd08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x589d80ba # initialize rs1
li x29, 0x225a1cb2 # initialize rs2
xor x7, x12, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xce73fa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1d23651e # initialize rs1
li x24, 0x1da141c8 # initialize rs2
xor x12, x13, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xeacd148f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc7bdaafc # initialize rs1
li x17, 0x908c9345 # initialize rs2
xor x3, x14, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x69611ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x171a42c3 # initialize rs1
li x16, 0xcc611640 # initialize rs2
xor x3, x15, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0xcaa5830d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x001369ff # initialize rs1
li x7, 0x2191383e # initialize rs2
xor x15, x16, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0x6b220877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x012b6df0 # initialize rs1
li x31, 0x87a5b5e0 # initialize rs2
xor x6, x17, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0x60eeb091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3abf9d97 # initialize rs1
li x28, 0x4deb9e0e # initialize rs2
xor x31, x18, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x6, 0x3517c897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xacf5067f # initialize rs1
li x29, 0x250e2644 # initialize rs2
xor x6, x19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x809f6e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xff9364a5 # initialize rs1
li x15, 0x1f65f20c # initialize rs2
xor x21, x20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0xa9254c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1b69de05 # initialize rs1
li x30, 0x530f8a48 # initialize rs2
xor x4, x21, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0x142a765f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2a26cc3b # initialize rs1
li x1, 0x342cb332 # initialize rs2
xor x6, x22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x22, 0xb6050361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdbeafc28 # initialize rs1
li x21, 0xdfafc8bb # initialize rs2
xor x22, x23, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0xa2c39d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x63fc1a72 # initialize rs1
li x28, 0x74c22e4f # initialize rs2
xor x20, x24, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x12, 0x3a565458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9795da78 # initialize rs1
li x1, 0x421a4c1b # initialize rs2
xor x12, x25, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x2388e2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfc2dcb48 # initialize rs1
li x19, 0x6cbff4d5 # initialize rs2
xor x2, x26, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x6732668d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0a1391da # initialize rs1
li x3, 0xf60d58db # initialize rs2
xor x11, x27, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0x1dca5f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xddfbfcf2 # initialize rs1
li x26, 0xdb3ffd25 # initialize rs2
xor x7, x28, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0x64449f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbc951b38 # initialize rs1
li x16, 0x4ca06ad2 # initialize rs2
xor x21, x29, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xd4180f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x20445b68 # initialize rs1
li x13, 0x6739cf5d # initialize rs2
xor x25, x30, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0x560e64a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2d4feae0 # initialize rs1
li x2, 0x5765f5ec # initialize rs2
xor x11, x31, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x8b4706e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae852d37 # initialize rs1
li x0, 0x9fd0e48a # initialize rs2
xor x25, x4, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x5c003206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6937d396 # initialize rs1
li x1, 0xf6ed69d1 # initialize rs2
xor x18, x30, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0x53246d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7dc2a9ab # initialize rs1
li x2, 0xc0beb701 # initialize rs2
xor x5, x12, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xda037a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9be45dfc # initialize rs1
li x3, 0xfac0fe5d # initialize rs2
xor x11, x19, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x28, 0x208afe86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa1cbd7be # initialize rs1
li x4, 0x3afca47d # initialize rs2
xor x28, x8, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x13, 0x8c2602e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb3ffb537 # initialize rs1
li x5, 0x2b06f5dd # initialize rs2
xor x13, x7, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x19, 0x328ab693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x351eb2bd # initialize rs1
li x6, 0x09be65e1 # initialize rs2
xor x19, x5, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x22, 0x9bad6e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc98f6494 # initialize rs1
li x7, 0x71ef7e77 # initialize rs2
xor x22, x28, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0xd6a7711f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x36c8e46c # initialize rs1
li x8, 0xeb97e844 # initialize rs2
xor x25, x29, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xc9802ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2e06d611 # initialize rs1
li x9, 0x5a2b9771 # initialize rs2
xor x3, x17, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x2ae8fc0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x35db0096 # initialize rs1
li x10, 0xa75235ca # initialize rs2
xor x16, x3, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0xe03b51a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd5f5a8fe # initialize rs1
li x11, 0xd804b4ed # initialize rs2
xor x6, x5, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0xe90cdbec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2451bd77 # initialize rs1
li x12, 0x404518df # initialize rs2
xor x28, x29, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x72200596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x35d17302 # initialize rs1
li x13, 0xe0ed51b0 # initialize rs2
xor x1, x29, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x1e508f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x699bdde2 # initialize rs1
li x14, 0xfb024619 # initialize rs2
xor x26, x23, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xfd7dbd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xda9025ad # initialize rs1
li x15, 0x1726aa3f # initialize rs2
xor x22, x26, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0x933daeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe73ea94a # initialize rs1
li x16, 0xb14564ee # initialize rs2
xor x5, x19, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xb7211544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x26d883f8 # initialize rs1
li x17, 0xf87b4e6d # initialize rs2
xor x25, x18, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0x67d7a692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb5f8f979 # initialize rs1
li x18, 0x81d4be3a # initialize rs2
xor x1, x6, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xdddd7842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xad0ee402 # initialize rs1
li x19, 0x72568567 # initialize rs2
xor x16, x15, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x10, 0x5c7ad6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8228cb3a # initialize rs1
li x20, 0x24fc008d # initialize rs2
xor x10, x23, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0xa2493afc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xab1367a1 # initialize rs1
li x21, 0xd24b87a6 # initialize rs2
xor x28, x4, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x96e9a4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x396a84d7 # initialize rs1
li x22, 0x5568b8e2 # initialize rs2
xor x27, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x82b6d523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8ffdef30 # initialize rs1
li x23, 0x9abb9311 # initialize rs2
xor x17, x9, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0xdd98c10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x14f1e422 # initialize rs1
li x24, 0x132c2e73 # initialize rs2
xor x16, x6, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xd727c819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8bcc9eb7 # initialize rs1
li x25, 0x5418945f # initialize rs2
xor x8, x23, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0xd0daeb4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc0bda63c # initialize rs1
li x26, 0x1b4a82fc # initialize rs2
xor x8, x22, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x3e62cad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x629e7a61 # initialize rs1
li x27, 0xc7e6ff8c # initialize rs2
xor x12, x9, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0xaa43ab47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaa6c9ce8 # initialize rs1
li x28, 0xe86b7382 # initialize rs2
xor x24, x16, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xaffbecf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xacc0fd2e # initialize rs1
li x29, 0x49e42544 # initialize rs2
xor x18, x4, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0xd24e779d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x53e92ccc # initialize rs1
li x30, 0x05c916ff # initialize rs2
xor x7, x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0xba3efaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf5cd9510 # initialize rs1
li x31, 0x2d362b3d # initialize rs2
xor x24, x9, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xe5d5a785)
li x22, 0xbd0e08c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbd0e08c1 # initialize rs1
li x0, 0x05315c55 # initialize rs2
xor x22, x6, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xee777894)
li x14, 0xee777894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xee777894 # initialize rs1
li x8, 0xee777894 # initialize rs2
xor x14, x0, x8 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x9e697ff9)
li x1, 0xf2b1b301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9e697ff9 # initialize rs1
li x6, 0x9e697ff9 # initialize rs2
xor x1, x31, x6 # perform operation

# Testcase cmp_gpr_hazard raw test
xor x28, x3, x19 # perform first operation
xor x28, x28, x31 # perform second operation

# Testcase cmp_gpr_hazard raw test
xor x26, x8, x27 # perform first operation
xor x2, x5, x26 # perform second operation

# Testcase cmp_gpr_hazard waw test
xor x3, x16, x29 # perform first operation
xor x3, x13, x5 # perform second operation

# Testcase cmp_gpr_hazard waw test
xor x24, x17, x3 # perform first operation
xor x24, x14, x2 # perform second operation

# Testcase cmp_gpr_hazard war test
xor x18, x24, x2 # perform first operation
xor x24, x12, x15 # perform second operation

# Testcase cmp_gpr_hazard war test
xor x1, x20, x10 # perform first operation
xor x10, x16, x29 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x1c768c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x0, 0x2a12a453 # initialize rs2
xor x13, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xe8ae71d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
xor x21, x29, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0xda179902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
xor x27, x17, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0xf85c3b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x0, 0xde878495 # initialize rs2
xor x25, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x7b5b4ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
xor x19, x10, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0xae554f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
xor x13, x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0xc81d984e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x0, 0xdaef1f95 # initialize rs2
xor x17, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x02203f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x3, 0x00000002 # initialize rs2
xor x26, x24, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0x66af2e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
xor x14, x20, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0xd2c45bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
li x0, 0xb5ac49db # initialize rs2
xor x29, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0x1314d82c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x25, 0x80000000 # initialize rs2
xor x12, x8, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x27, 0xe473c1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
xor x27, x1, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x4, 0x18b64103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x0, 0xf6a98bc0 # initialize rs2
xor x4, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0x89ef1529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
xor x17, x13, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x20, 0x3e08af5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x31, 0x80000001 # initialize rs2
xor x20, x17, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x19, 0x20ca520b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x0, 0x0e3e3ccd # initialize rs2
xor x19, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x22, 0xca5bb4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
xor x22, x25, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x23, 0xe9803c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
xor x23, x3, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x2, 0xec86f1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x0, 0xd28822c0 # initialize rs2
xor x2, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x785788c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
xor x29, x4, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x19, 0xda7a6132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
xor x19, x27, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0xa5863000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x0, 0x55913119 # initialize rs2
xor x5, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0xbcb89644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
xor x2, x23, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x81580fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
xor x9, x26, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0xa3d493e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x0, 0xeeb7d860 # initialize rs2
xor x8, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xfd23fb8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
xor x14, x3, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0xe7b38972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
xor x30, x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0xf315dbf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x0, 0x69d70a20 # initialize rs2
xor x19, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x10, 0xe2583fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
xor x10, x8, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x26, 0x6057a9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
xor x26, x8, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x24, 0xb14980bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x0, 0x24dce744 # initialize rs2
xor x24, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x29, 0x6659df72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
xor x29, x10, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x84aca197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
xor x17, x13, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x7, 0xc1f82056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x0, 0xa52ebb71 # initialize rs2
xor x7, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0xe11570eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
xor x11, x21, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x24, 0xb32e19ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
xor x24, x4, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x6d232150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x14, 0xe081e76c # initialize rs2
xor x26, x23, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x67323643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x25, 0x73d85c81 # initialize rs2
xor x30, x10, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0xf8441611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x30, 0xaf1b87b1 # initialize rs2
xor x31, x9, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x2bd237e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x1, 0xeedd0b27 # initialize rs2
xor x2, x19, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x28, 0xd21c4f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x21, 0xcd94c4ca # initialize rs2
xor x28, x3, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x803967b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x5, 0x3241eb8a # initialize rs2
xor x28, x1, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x30, 0x511268d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x18, 0x95f5113a # initialize rs2
xor x30, x8, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x6a22e264 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x28, 0x7396bdbc # initialize rs2
xor x2, x24, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x135ae11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x28, 0x200c400b # initialize rs2
xor x29, x15, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x24, 0xd99f7cae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x21, 0x694e7c7f # initialize rs2
xor x24, x1, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0x1054cfb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x30, 0x5b5d5a6f # initialize rs2
xor x11, x31, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x3d29110e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x7, 0xb7639245 # initialize rs2
xor x8, x29, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0xf3b0059e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xda2aef1d # initialize rs1
li x10, 0x00000000 # initialize rs2
xor x9, x4, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x36019939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7aa4cff6 # initialize rs1
li x1, 0x00000001 # initialize rs2
xor x29, x9, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x0e837188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa5083418 # initialize rs1
li x17, 0x00000002 # initialize rs2
xor x30, x25, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x11, 0xc96e640d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa9b3f13b # initialize rs1
li x27, 0x80000000 # initialize rs2
xor x11, x7, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x20, 0x56f62770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdf14e68f # initialize rs1
li x24, 0x80000001 # initialize rs2
xor x20, x9, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0xbe4a2d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf415bb0f # initialize rs1
li x30, 0x7fffffff # initialize rs2
xor x13, x18, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0xb7d6eed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa0d945f7 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
xor x5, x2, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0x26d01b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x21937431 # initialize rs1
li x15, 0xffffffff # initialize rs2
xor x31, x29, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x4, 0x60002eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5eac56b0 # initialize rs1
li x11, 0xfffffffe # initialize rs2
xor x4, x23, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x17, 0x13a766c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbdc1ca48 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
xor x17, x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0xcaaf8bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd0003615 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
xor x13, x8, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0xf57e82f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc8caa8d1 # initialize rs1
li x9, 0x55555555 # initialize rs2
xor x2, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0xfcf902ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
xor x30, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x599ebe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
xor x22, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0xd5252818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
xor x18, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0xb3db6c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
xor x15, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x12, 0xd2a70187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
xor x12, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x10, 0x85e451e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x21, 0x7fffffff # initialize rs2
xor x10, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x6, 0x2700768e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
xor x6, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x1, 0xa0b0bf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
xor x1, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x7b96bedb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
xor x27, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x23, 0xfb0b74bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
xor x23, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0xd9c6ffa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xor x18, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x7, 0x13b13ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
xor x7, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x6dcdbf0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
xor x14, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0xc3d35ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
xor x11, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x2a887f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
xor x27, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x28, 0xd38c22b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x23, 0x80000000 # initialize rs2
xor x28, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0xa11fa221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
xor x23, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x19, 0x3c9de522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
xor x19, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x29, 0xc7836b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
xor x29, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x92fbc91f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x4, 0xffffffff # initialize rs2
xor x17, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x69b97492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x7, 0xfffffffe # initialize rs2
xor x16, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x23, 0x81b1dd51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
xor x23, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x1aa7c396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xor x14, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x3dd97e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
xor x7, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x9, 0xac52ceec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x3, 0x00000000 # initialize rs2
xor x9, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x31, 0x1c245e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
xor x31, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0xa846ae91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
xor x29, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x8, 0x44231a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x10, 0x80000000 # initialize rs2
xor x8, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x34da72d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x14, 0x80000001 # initialize rs2
xor x25, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x16, 0xc4d1ec7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x17, 0x7fffffff # initialize rs2
xor x16, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x24, 0x537ce900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
xor x24, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0xfe414cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x20, 0xffffffff # initialize rs2
xor x12, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0x98f52d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x14, 0xfffffffe # initialize rs2
xor x6, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x31, 0xb6b10895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
xor x31, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x15, 0xaeba1e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
xor x15, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0xad886ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
xor x16, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0xdac94a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
xor x29, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x12, 0xaa634d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
xor x12, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x10, 0x48514677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
xor x10, x2, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x25, 0x452b6492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
xor x25, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0xa34656e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
xor x22, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x31, 0xc07993b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
xor x31, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x8230dd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
xor x27, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x28, 0xc1887371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
xor x28, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x19051dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x22, 0xfffffffe # initialize rs2
xor x28, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x11, 0x4c2d2171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
xor x11, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0xbacca445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xor x25, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x18, 0xa9c6cfd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x16, 0x55555555 # initialize rs2
xor x18, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x11429aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
xor x26, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x21, 0xcef3b4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
xor x21, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0xfdf05c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
xor x1, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x30, 0xbdc88140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
xor x30, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x16, 0x935b0377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
xor x16, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x27, 0x7b6e4311 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x31, 0x7fffffff # initialize rs2
xor x27, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x74359de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
xor x1, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x0cda3be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x23, 0xffffffff # initialize rs2
xor x7, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0x0d59cc10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
xor x12, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x9, 0x4b7c3f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x3, 0x5bbc8877 # initialize rs2
xor x9, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x46723808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
xor x17, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x4, 0xc07f2365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
xor x4, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x9f53415c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
xor x11, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x4, 0x0b346175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
xor x4, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x2, 0x7c4109ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
xor x2, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x26, 0x17c8cfac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
xor x26, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x1, 0x0c6373a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
xor x1, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x24, 0xcfd9eb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
xor x24, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x4, 0x6ce7ef3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
xor x4, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x10, 0xa74ca539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
xor x10, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x325ea7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x11, 0xfffffffe # initialize rs2
xor x6, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x26, 0xa3a02b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
xor x26, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x64b02bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
xor x21, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x23, 0x848b06bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
xor x23, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x11, 0x7c1e5fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
xor x11, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0xecdb2d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
xor x31, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x7, 0x6ffcbdc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x4, 0x00000002 # initialize rs2
xor x7, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x30, 0xc1c1b31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x21, 0x80000000 # initialize rs2
xor x30, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x4, 0xadd31360 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
xor x4, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x9, 0xfd7f143d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x13, 0x7fffffff # initialize rs2
xor x9, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x18, 0x02475135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
xor x18, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x39f73e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x13, 0xffffffff # initialize rs2
xor x19, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x27, 0x9258310a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x9, 0xfffffffe # initialize rs2
xor x27, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x20, 0xcfd01114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
xor x20, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x5, 0x98a332c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
xor x5, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0xfc2b6570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x12, 0x55555555 # initialize rs2
xor x16, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x19, 0x2d09f7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
xor x19, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xe0a2836f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x4, 0x00000001 # initialize rs2
xor x3, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0x4c7b72db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x22, 0x00000002 # initialize rs2
xor x16, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xc8ec60ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
xor x25, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x4, 0x8c2db897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
xor x4, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x17, 0xba827011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
xor x17, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x17, 0xd21b8bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xor x17, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x3dcf9359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
xor x7, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xdc17b6a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
xor x29, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x1, 0x7a8858a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
xor x1, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x28, 0xe627d14d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
xor x28, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x19, 0x35afb1b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
xor x19, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x24, 0xce28804c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
xor x24, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0xb3dfea31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
xor x5, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0x6ce1acaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
xor x8, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x4, 0xd560a01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
xor x4, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xefa387f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
xor x10, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x27, 0xd0496ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
xor x27, x6, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xc7fba331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
xor x14, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x05779b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
xor x6, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x2978b671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
xor x14, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x19, 0x1ab0eb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
xor x19, x27, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x23, 0x2ba32463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
xor x23, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x5, 0x461d2e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
xor x5, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x8, 0x31389bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x17, 0x00000000 # initialize rs2
xor x8, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x29, 0xe9220c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x17, 0x00000001 # initialize rs2
xor x29, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x18, 0x3959a1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x21, 0x00000002 # initialize rs2
xor x18, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x25, 0xa68cbadd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x18, 0x80000000 # initialize rs2
xor x25, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x11, 0x20864733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x24, 0x80000001 # initialize rs2
xor x11, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x15, 0x0e064122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x5, 0x7fffffff # initialize rs2
xor x15, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x29, 0xbce64025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xor x29, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x3, 0x483a8b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x4, 0xffffffff # initialize rs2
xor x3, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x27, 0xecd5eea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x2, 0xfffffffe # initialize rs2
xor x27, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x9, 0x4fcb6c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
xor x9, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x31, 0xecd8bcdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
xor x31, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x26, 0x2ac9f642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x10, 0x55555555 # initialize rs2
xor x26, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0x4c971b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x22, 0x00000000 # initialize rs2
xor x24, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0x3f00822e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
xor x19, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x6, 0x5660d914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x12, 0x00000002 # initialize rs2
xor x6, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0x6bbeeada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x25, 0x80000000 # initialize rs2
xor x10, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x1, 0xec0f3f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x11, 0x80000001 # initialize rs2
xor x1, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x23, 0x1f8cb495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x16, 0x7fffffff # initialize rs2
xor x23, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x13, 0xca34e8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
xor x13, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x28, 0x1ff49650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x18, 0xffffffff # initialize rs2
xor x28, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x12, 0x741914ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
li x7, 0xfffffffe # initialize rs2
xor x12, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x21, 0xd6a8cdba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
xor x21, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x8, 0x2d7c216e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xor x8, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xedc0d91f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x19, 0x55555555 # initialize rs2
xor x17, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x30, 0x2718a648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
xor x30, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x19, 0x0f1fa1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x24, 0x00000001 # initialize rs2
xor x19, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x3, 0x560a9ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x20, 0x00000002 # initialize rs2
xor x3, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x3f6a084d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x26, 0x80000000 # initialize rs2
xor x30, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x7d7fafa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x26, 0x80000001 # initialize rs2
xor x12, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x18, 0x97df88e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
xor x18, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x31, 0xb72d3e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
xor x31, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0x09b414a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
xor x30, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x2, 0xb2c5d70c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
xor x2, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x27, 0x16545ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
xor x27, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x47737ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xor x1, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0xdf6f4566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
xor x2, x11, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x42281ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x76044fdc # initialize rs1
li x2, 0x07ebbd67 # initialize rs2
xor x0, x0, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7db69d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf6a12d0c # initialize rs1
li x11, 0x904c9837 # initialize rs2
xor x1, x1, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5cd4021c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd8306dfb # initialize rs1
li x14, 0xee6e7957 # initialize rs2
xor x2, x2, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1764f498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xec39852b # initialize rs1
li x9, 0x094a6bf1 # initialize rs2
xor x3, x3, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xc2e3473d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x814e3211 # initialize rs1
li x18, 0x564d4e1e # initialize rs2
xor x4, x4, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xfa99735e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa394a7ea # initialize rs1
li x12, 0xebbffab0 # initialize rs2
xor x5, x5, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x3ae5b633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x25198113 # initialize rs1
li x20, 0xf0df17cf # initialize rs2
xor x6, x6, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1bc91f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc0cdccf5 # initialize rs1
li x19, 0x482e1969 # initialize rs2
xor x7, x7, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc0ad563f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc862b143 # initialize rs1
li x1, 0x07e25fa2 # initialize rs2
xor x8, x8, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4aa188df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5417afa0 # initialize rs1
li x12, 0xb55806fe # initialize rs2
xor x9, x9, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9df22482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4952fe52 # initialize rs1
li x4, 0x3939c9ce # initialize rs2
xor x10, x10, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x378c8c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5b1c2c50 # initialize rs1
li x9, 0x41232cf4 # initialize rs2
xor x11, x11, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x534fe6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x19a7cd00 # initialize rs1
li x29, 0x85218b71 # initialize rs2
xor x12, x12, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x43d72260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdb7a111b # initialize rs1
li x21, 0x0495f78d # initialize rs2
xor x13, x13, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x2783e8d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x12bebb2f # initialize rs1
li x25, 0x45c48d9d # initialize rs2
xor x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x84a33d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8f6755f2 # initialize rs1
li x9, 0x3e97e242 # initialize rs2
xor x15, x15, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x08182376 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x24797f0d # initialize rs1
li x7, 0x4bf9e8c7 # initialize rs2
xor x16, x16, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb947d04c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdc268a75 # initialize rs1
li x10, 0x2884c8a5 # initialize rs2
xor x17, x17, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x44c95aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb3698f0f # initialize rs1
li x4, 0x69a2f1ad # initialize rs2
xor x18, x18, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xcde97bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6cb814a8 # initialize rs1
li x31, 0x58e57662 # initialize rs2
xor x19, x19, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5cd31c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7f5cc8fa # initialize rs1
li x2, 0x7b3af1dd # initialize rs2
xor x20, x20, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7138db0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x71b299b7 # initialize rs1
li x10, 0x1b57e593 # initialize rs2
xor x21, x21, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xfcbb949d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3818b6fd # initialize rs1
li x14, 0x3da91156 # initialize rs2
xor x22, x22, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf25d0dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1a783182 # initialize rs1
li x16, 0x8ce20954 # initialize rs2
xor x23, x23, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x08df5f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8570a475 # initialize rs1
li x30, 0x8a03e49b # initialize rs2
xor x24, x24, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xdd5f61e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a5bb253 # initialize rs1
li x16, 0x7ff699c6 # initialize rs2
xor x25, x25, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9ef76cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab2d04ab # initialize rs1
li x31, 0x437a6067 # initialize rs2
xor x26, x26, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x95c543a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfbd9df73 # initialize rs1
li x1, 0x4e801e9d # initialize rs2
xor x27, x27, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa57ce445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5730a95b # initialize rs1
li x9, 0x23c304ea # initialize rs2
xor x28, x28, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf2f91033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9ef3ce53 # initialize rs1
li x6, 0xc610f00d # initialize rs2
xor x29, x29, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc38b223a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaf774a99 # initialize rs1
li x12, 0x055bb728 # initialize rs2
xor x30, x30, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x5045b7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa477197d # initialize rs1
li x15, 0x3e987dc7 # initialize rs2
xor x31, x31, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x62d6b5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x210c366b # initialize rs1
li x0, 0xeefb3e5b # initialize rs2
xor x0, x17, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x0d90fa97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe991d70a # initialize rs1
li x1, 0xafe6e67f # initialize rs2
xor x1, x6, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x51fa6d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1c2198ee # initialize rs1
li x2, 0xaee54dac # initialize rs2
xor x2, x6, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x06f3dca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8fbb02e1 # initialize rs1
li x3, 0x3778738e # initialize rs2
xor x3, x3, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xbcc754c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x29b6b45f # initialize rs1
li x4, 0x36a0f886 # initialize rs2
xor x4, x3, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xcdbee2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea57faff # initialize rs1
li x5, 0xd297496d # initialize rs2
xor x5, x8, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x6c741e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6a26f621 # initialize rs1
li x6, 0x0182aabc # initialize rs2
xor x6, x4, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xc662d159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7e8d4de9 # initialize rs1
li x7, 0xa8778b58 # initialize rs2
xor x7, x28, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x6106a79e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x68887901 # initialize rs1
li x8, 0x4d88b44c # initialize rs2
xor x8, x7, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x5db7d8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe2fec435 # initialize rs1
li x9, 0xe7657f0d # initialize rs2
xor x9, x13, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x5ca942ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfe849af1 # initialize rs1
li x10, 0x240deb69 # initialize rs2
xor x10, x16, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xc362b41c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x50115633 # initialize rs1
li x11, 0x0764635f # initialize rs2
xor x11, x28, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x7cad20b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x86126a96 # initialize rs1
li x12, 0x262f7c61 # initialize rs2
xor x12, x13, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xeff2d996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x90632b23 # initialize rs1
li x13, 0x7b394c4a # initialize rs2
xor x13, x17, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x1fbce19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1ae2be2b # initialize rs1
li x14, 0xcdebdb4d # initialize rs2
xor x14, x18, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x1c433dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd0406f7b # initialize rs1
li x15, 0x0948dad8 # initialize rs2
xor x15, x28, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x548bf4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x846d256f # initialize rs1
li x16, 0x85d258a9 # initialize rs2
xor x16, x6, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x76641c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeebcf259 # initialize rs1
li x17, 0x41f44f49 # initialize rs2
xor x17, x13, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x78e5c1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3fe33bd1 # initialize rs1
li x18, 0x2fdd129a # initialize rs2
xor x18, x22, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x8a48adda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc735dce6 # initialize rs1
li x19, 0xb2a54c6f # initialize rs2
xor x19, x16, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x30e85bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc89e4a11 # initialize rs1
li x20, 0xf5e15317 # initialize rs2
xor x20, x16, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xcfde3065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd8b1ce95 # initialize rs1
li x21, 0xe48d91c5 # initialize rs2
xor x21, x13, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x42a8d662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x744de837 # initialize rs1
li x22, 0x754ec567 # initialize rs2
xor x22, x28, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xfa0eae92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x12b4829d # initialize rs1
li x23, 0xcd20297f # initialize rs2
xor x23, x2, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x3a542229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x53245435 # initialize rs1
li x24, 0x257ebadf # initialize rs2
xor x24, x3, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x1c66b4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd376bea3 # initialize rs1
li x25, 0xdb96f418 # initialize rs2
xor x25, x21, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xfdf6b90e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x52cd28d4 # initialize rs1
li x26, 0x9a8ce9b5 # initialize rs2
xor x26, x15, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x1c12b618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3ccda635 # initialize rs1
li x27, 0x96ddba9c # initialize rs2
xor x27, x30, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x0baf96fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x30599a9d # initialize rs1
li x28, 0xec1a057a # initialize rs2
xor x28, x6, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xcc9d76a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3589ec37 # initialize rs1
li x29, 0xf04228af # initialize rs2
xor x29, x19, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xbe13ea2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x123c2350 # initialize rs1
li x30, 0xca670bee # initialize rs2
xor x30, x16, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x665aaaa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x18509498 # initialize rs1
li x31, 0x008efa50 # initialize rs2
xor x31, x16, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xadeaf6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf959996c # initialize rs1
li x0, 0x631a7025 # initialize rs2
xor x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8272e16f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf4e0ea79 # initialize rs1
li x1, 0x89abb94f # initialize rs2
xor x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7331f355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfd4a3fee # initialize rs1
li x2, 0xbdd56b56 # initialize rs2
xor x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x69dfacdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5e1524be # initialize rs1
li x3, 0xd6da8f67 # initialize rs2
xor x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x637377a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x907b2be5 # initialize rs1
li x4, 0x7423eced # initialize rs2
xor x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x02981551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4490e41d # initialize rs1
li x5, 0x8972b344 # initialize rs2
xor x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb93aa1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa61c7045 # initialize rs1
li x6, 0x6bb3be32 # initialize rs2
xor x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x51db8a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe87bfd27 # initialize rs1
li x7, 0x470f2ba4 # initialize rs2
xor x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x91c38cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x38249fd1 # initialize rs1
li x8, 0x818a7441 # initialize rs2
xor x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6af41583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb4db5ebf # initialize rs1
li x9, 0x82f581ce # initialize rs2
xor x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0f43d510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa0043172 # initialize rs1
li x10, 0xa93b7698 # initialize rs2
xor x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe89299b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00b01857 # initialize rs1
li x11, 0xd4ac1bab # initialize rs2
xor x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x3a553f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb8d08b00 # initialize rs1
li x12, 0x23253a44 # initialize rs2
xor x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xca46b37c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3b6d0e70 # initialize rs1
li x13, 0xcadadf87 # initialize rs2
xor x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x018c845d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfcfe2ee4 # initialize rs1
li x14, 0xa818f854 # initialize rs2
xor x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x03a9f065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x09a11e69 # initialize rs1
li x15, 0x9e82444a # initialize rs2
xor x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd1a07c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6be1a19f # initialize rs1
li x16, 0x906235a3 # initialize rs2
xor x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x089c9ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xef7c9526 # initialize rs1
li x17, 0x6fb41de5 # initialize rs2
xor x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x3482b892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe4a031c4 # initialize rs1
li x18, 0x671b0ced # initialize rs2
xor x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x251b327b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x072287b4 # initialize rs1
li x19, 0x8aa2435b # initialize rs2
xor x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x859d31c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xac166d19 # initialize rs1
li x20, 0xd2d3faa3 # initialize rs2
xor x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa3535d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2b973ea6 # initialize rs1
li x21, 0xe8c40d60 # initialize rs2
xor x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb657854a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x28c98b51 # initialize rs1
li x22, 0x02efac1a # initialize rs2
xor x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3354c840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfb86e1c7 # initialize rs1
li x23, 0xddf469f8 # initialize rs2
xor x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xcb674821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x995709b4 # initialize rs1
li x24, 0xace9016e # initialize rs2
xor x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x312d900e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6f1bc7b0 # initialize rs1
li x25, 0x226262a3 # initialize rs2
xor x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfc0145d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfc59adb0 # initialize rs1
li x26, 0x654a97a4 # initialize rs2
xor x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe24c0d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdcdbf157 # initialize rs1
li x27, 0xf7f423fe # initialize rs2
xor x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xdcf2207e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x22e25be6 # initialize rs1
li x28, 0xa48af79e # initialize rs2
xor x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5f2c5ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x79f5c6a8 # initialize rs1
li x29, 0x68c2329b # initialize rs2
xor x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2f8d6096 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xec3ac0f2 # initialize rs1
li x30, 0xe29d7557 # initialize rs2
xor x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb9aacbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x058bb699 # initialize rs1
li x31, 0x52f21f6b # initialize rs2
xor x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x27, 0xce3db84b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x30e5be85 # initialize rs1
li x0, 0xa5c1ac8b # initialize rs2
xor x27, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x7, 0x4d9d7c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaa820b5b # initialize rs1
li x1, 0x000d6015 # initialize rs2
xor x7, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x6, 0x73ca6110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7283f9d9 # initialize rs1
li x2, 0xb58a8e13 # initialize rs2
xor x6, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x20, 0xf6e3ea08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x542a6ef7 # initialize rs1
li x3, 0xe89b71fa # initialize rs2
xor x20, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x23, 0xf9d5abc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x91ffbd13 # initialize rs1
li x4, 0xcf3bf895 # initialize rs2
xor x23, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x1, 0x5ceb2de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9fd1d4e9 # initialize rs1
li x5, 0x8345bfd2 # initialize rs2
xor x1, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x14, 0x5d70471f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4d43fd1d # initialize rs1
li x6, 0xb8b7b21c # initialize rs2
xor x14, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x11, 0xf8874727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdf302d09 # initialize rs1
li x7, 0x6d914024 # initialize rs2
xor x11, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x19, 0xb1847aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd89c9c4c # initialize rs1
li x8, 0x73a9e418 # initialize rs2
xor x19, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x20, 0xd53b1771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf1cdeb9a # initialize rs1
li x9, 0x25bb3c62 # initialize rs2
xor x20, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x4, 0x5c3b0206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5e626f73 # initialize rs1
li x10, 0x80c30e85 # initialize rs2
xor x4, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x8, 0x0fc323a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbb9d46ca # initialize rs1
li x11, 0x315d6561 # initialize rs2
xor x8, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x19, 0xa5f88b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd7b19296 # initialize rs1
li x12, 0x54084dd6 # initialize rs2
xor x19, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x3, 0x9f59ec77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x72ad33f7 # initialize rs1
li x13, 0x9281e0df # initialize rs2
xor x3, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x7, 0xfd0fc17f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xad05b0a7 # initialize rs1
li x14, 0x802669e1 # initialize rs2
xor x7, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x30, 0x5e2c4568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5872f572 # initialize rs1
li x15, 0x16a9f4da # initialize rs2
xor x30, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x9, 0x15fc8541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfe58fb13 # initialize rs1
li x16, 0xd6bc7317 # initialize rs2
xor x9, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x4, 0x5a87b519 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc4b363ac # initialize rs1
li x17, 0x3ca662ad # initialize rs2
xor x4, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x7, 0x79f5c8fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x45d9ab91 # initialize rs1
li x18, 0x307bc16e # initialize rs2
xor x7, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x20, 0x5c928ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x234cc7bc # initialize rs1
li x19, 0xe56e8c99 # initialize rs2
xor x20, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x26, 0x5196ca2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4522da5b # initialize rs1
li x20, 0x2a186405 # initialize rs2
xor x26, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x39899ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa3aed5c8 # initialize rs1
li x21, 0xa84f598d # initialize rs2
xor x21, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x20, 0xa0057c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x68cecb9d # initialize rs1
li x22, 0xfca0880e # initialize rs2
xor x20, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x29, 0xe7dd727c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb0b97496 # initialize rs1
li x23, 0x90497f70 # initialize rs2
xor x29, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0x88f26812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffa9bc1b # initialize rs1
li x24, 0xe163bbac # initialize rs2
xor x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x13, 0xe0d54b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x89a17a92 # initialize rs1
li x25, 0x8065da43 # initialize rs2
xor x13, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x8, 0xa458fb9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab3038aa # initialize rs1
li x26, 0xfa589f31 # initialize rs2
xor x8, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x17, 0xa459c309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc3466373 # initialize rs1
li x27, 0x5ec2e771 # initialize rs2
xor x17, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x15, 0xb02f8cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfab8e94f # initialize rs1
li x28, 0xc9b970dd # initialize rs2
xor x15, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x28, 0xa1f4c609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x28f5adc1 # initialize rs1
li x29, 0x45f0a575 # initialize rs2
xor x28, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x27, 0xfa3e6db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x496f2886 # initialize rs1
li x30, 0xc208abcc # initialize rs2
xor x27, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x30, 0xf3c07e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xeec8e313 # initialize rs1
li x31, 0x621bede3 # initialize rs2
xor x30, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x17238e5)
li x18, 0xf59d5942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x017238e5 # initialize rs1
li x2, 0x1a6780ba # initialize rs2
xor x18, x15, x2 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7858c85e)
li x12, 0x0ae68c86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x87a737a2 # initialize rs1
li x2, 0x29cd9567 # initialize rs2
xor x12, x15, x2 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x446947f)
li x25, 0x23fe6ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe72cdd91 # initialize rs1
li x23, 0x0446947f # initialize rs2
xor x25, x22, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x238a3a30)
li x19, 0x329ee0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf417d0db # initialize rs1
li x10, 0xdc75c5d0 # initialize rs2
xor x19, x22, x10 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
