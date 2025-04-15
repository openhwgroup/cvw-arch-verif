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

    

// ******************
// Tests from: WALLY-COV-xperm4.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x482666a5 # initialize rs1
li x16, 0x1d60ecae # initialize rs2
xperm4 x22, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc15b18f9 # initialize rs1
li x17, 0xbdcac915 # initialize rs2
xperm4 x23, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf70f0e99 # initialize rs1
li x8, 0xdbda48fa # initialize rs2
xperm4 x31, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x370a96fc # initialize rs1
li x1, 0x9cfcdac1 # initialize rs2
xperm4 x10, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7fbfcbc9 # initialize rs1
li x5, 0x8c158af2 # initialize rs2
xperm4 x19, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0xa54cfefb # initialize rs1
li x11, 0x3903b979 # initialize rs2
xperm4 x12, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa312325f # initialize rs1
li x2, 0xd6e25107 # initialize rs2
xperm4 x20, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6aec2ac7 # initialize rs1
li x3, 0xf55890c6 # initialize rs2
xperm4 x6, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2986da45 # initialize rs1
li x25, 0x4cb4befa # initialize rs2
xperm4 x10, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xcf84aab0 # initialize rs1
li x13, 0x6daeeb85 # initialize rs2
xperm4 x26, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb05991f0 # initialize rs1
li x13, 0xdbfdeb7e # initialize rs2
xperm4 x7, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x48413cc8 # initialize rs1
li x7, 0xc02e7d88 # initialize rs2
xperm4 x19, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x57e13b8d # initialize rs1
li x5, 0x8cbef44a # initialize rs2
xperm4 x31, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x0a6d0490 # initialize rs1
li x31, 0x06aefa12 # initialize rs2
xperm4 x28, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x405ef979 # initialize rs1
li x24, 0xd6fd1af2 # initialize rs2
xperm4 x29, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x687ea325 # initialize rs1
li x1, 0xf28b5ebb # initialize rs2
xperm4 x22, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1ea20716 # initialize rs1
li x24, 0x417f16f2 # initialize rs2
xperm4 x6, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x315207f6 # initialize rs1
li x19, 0x7fa29bc7 # initialize rs2
xperm4 x29, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xdea8a01d # initialize rs1
li x14, 0x23367a8b # initialize rs2
xperm4 x24, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd4821fef # initialize rs1
li x5, 0xa77bdd37 # initialize rs2
xperm4 x21, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc8dc438d # initialize rs1
li x28, 0xb03db39c # initialize rs2
xperm4 x17, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xdd5cb3d4 # initialize rs1
li x1, 0x27147b7f # initialize rs2
xperm4 x3, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc975b356 # initialize rs1
li x18, 0x7a77de78 # initialize rs2
xperm4 x17, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x379d4fc0 # initialize rs1
li x7, 0x401977e8 # initialize rs2
xperm4 x9, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7e98635b # initialize rs1
li x15, 0xefeb09f6 # initialize rs2
xperm4 x31, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x2a4b09ec # initialize rs1
li x19, 0xbbc3f927 # initialize rs2
xperm4 x3, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd0242c5d # initialize rs1
li x16, 0x174570d7 # initialize rs2
xperm4 x31, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x07e9d476 # initialize rs1
li x19, 0x439499ac # initialize rs2
xperm4 x13, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf989475f # initialize rs1
li x15, 0x6a0387d5 # initialize rs2
xperm4 x14, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb9b4c899 # initialize rs1
li x1, 0xecaffb6d # initialize rs2
xperm4 x11, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3bc2bf4c # initialize rs1
li x28, 0xbddd4ce6 # initialize rs2
xperm4 x7, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4ff8a530 # initialize rs1
li x24, 0x82e5240a # initialize rs2
xperm4 x7, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x600caed4 # initialize rs1
li x0, 0xcd527cf1 # initialize rs2
xperm4 x30, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x30, 0xda702be0 # initialize rs1
li x1, 0xb0cb9981 # initialize rs2
xperm4 x12, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0x730fc972 # initialize rs1
li x2, 0x9156ce14 # initialize rs2
xperm4 x20, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xd89c77c3 # initialize rs1
li x3, 0xf0332679 # initialize rs2
xperm4 x6, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x2777929e # initialize rs1
li x4, 0x58d96655 # initialize rs2
xperm4 x25, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x0bac8bd8 # initialize rs1
li x5, 0x78dcd724 # initialize rs2
xperm4 x24, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xc94ffbca # initialize rs1
li x6, 0xa3ded22a # initialize rs2
xperm4 x5, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x8ec323cc # initialize rs1
li x7, 0xebb44514 # initialize rs2
xperm4 x28, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0xa937a828 # initialize rs1
li x8, 0x17ad9a97 # initialize rs2
xperm4 x27, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x318b4ff6 # initialize rs1
li x9, 0xce414cfb # initialize rs2
xperm4 x23, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0x23690b1e # initialize rs1
li x10, 0xbba4aad7 # initialize rs2
xperm4 x27, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x27bc9853 # initialize rs1
li x11, 0x29907e8d # initialize rs2
xperm4 x28, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0xd3e1d321 # initialize rs1
li x12, 0x5285b6e7 # initialize rs2
xperm4 x24, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0xbb9dfa1e # initialize rs1
li x13, 0x2b7d2d38 # initialize rs2
xperm4 x31, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x9bdac343 # initialize rs1
li x14, 0xbb1b2cd0 # initialize rs2
xperm4 x28, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0xb0487cac # initialize rs1
li x15, 0xe02d874a # initialize rs2
xperm4 x9, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x30c21af5 # initialize rs1
li x16, 0xd0a25398 # initialize rs2
xperm4 x31, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0xfff6db6e # initialize rs1
li x17, 0xb14cf838 # initialize rs2
xperm4 x24, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0x1f2006ad # initialize rs1
li x18, 0x538adbd4 # initialize rs2
xperm4 x25, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x1aeb0ba6 # initialize rs1
li x19, 0xdb8520f8 # initialize rs2
xperm4 x27, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x3ace18be # initialize rs1
li x20, 0xf8e94cb7 # initialize rs2
xperm4 x1, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0x3d33e037 # initialize rs1
li x21, 0xbed4d92c # initialize rs2
xperm4 x5, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0xd23b358f # initialize rs1
li x22, 0xeb2e36b1 # initialize rs2
xperm4 x30, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x63f7e79c # initialize rs1
li x23, 0x9af44942 # initialize rs2
xperm4 x12, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xa26f94f2 # initialize rs1
li x24, 0x36a49eb2 # initialize rs2
xperm4 x6, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0xd754aef0 # initialize rs1
li x25, 0x42413820 # initialize rs2
xperm4 x11, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xcd657f4d # initialize rs1
li x26, 0x0a54487b # initialize rs2
xperm4 x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0xd99f3f88 # initialize rs1
li x27, 0xd5e135f4 # initialize rs2
xperm4 x29, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0x43559b26 # initialize rs1
li x28, 0x0105c188 # initialize rs2
xperm4 x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0xa89f2201 # initialize rs1
li x29, 0x53d3461a # initialize rs2
xperm4 x22, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0xc5bdd39f # initialize rs1
li x30, 0xd9e1ba24 # initialize rs2
xperm4 x8, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0xc696e6c6 # initialize rs1
li x31, 0x2f2a6661 # initialize rs2
xperm4 x21, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xa8d214f0 # initialize rs1
li x25, 0x9f06d56e # initialize rs2
xperm4 x0, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x6b249f5a # initialize rs1
li x6, 0xe71ffa2d # initialize rs2
xperm4 x1, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x28, 0xee180021 # initialize rs1
li x17, 0xbfbb2047 # initialize rs2
xperm4 x2, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x10c2433d # initialize rs1
li x2, 0x00bd7658 # initialize rs2
xperm4 x3, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x4c92a2c0 # initialize rs1
li x15, 0xd916de66 # initialize rs2
xperm4 x4, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x6f72a83e # initialize rs1
li x22, 0x76c41802 # initialize rs2
xperm4 x5, x1, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x46ab30e8 # initialize rs1
li x24, 0x796b9882 # initialize rs2
xperm4 x6, x15, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x8b0fa230 # initialize rs1
li x10, 0xc82011f0 # initialize rs2
xperm4 x7, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x9c812644 # initialize rs1
li x19, 0xbdc67639 # initialize rs2
xperm4 x8, x14, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc15da661 # initialize rs1
li x1, 0x7103a54c # initialize rs2
xperm4 x9, x9, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0xe4313da7 # initialize rs1
li x11, 0xa388cdd2 # initialize rs2
xperm4 x10, x17, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x68e77a46 # initialize rs1
li x27, 0x883882b0 # initialize rs2
xperm4 x11, x10, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xa7fdf06e # initialize rs1
li x6, 0x4eea83d9 # initialize rs2
xperm4 x12, x13, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x4cb64500 # initialize rs1
li x24, 0xf8c2c2f2 # initialize rs2
xperm4 x13, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0xf2ed9f6b # initialize rs1
li x18, 0x386cf0ee # initialize rs2
xperm4 x14, x2, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x5c8123b3 # initialize rs1
li x11, 0x7b77445e # initialize rs2
xperm4 x15, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x8e601fa5 # initialize rs1
li x13, 0x70610d1d # initialize rs2
xperm4 x16, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x4, 0x8771628d # initialize rs1
li x15, 0x47de1a68 # initialize rs2
xperm4 x17, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x4, 0xff5cfb3f # initialize rs1
li x23, 0x885cfdbc # initialize rs2
xperm4 x18, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x4, 0x9042b332 # initialize rs1
li x14, 0x810abab4 # initialize rs2
xperm4 x19, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0x78af65a2 # initialize rs1
li x19, 0xb85f01df # initialize rs2
xperm4 x20, x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0xe760bfb3 # initialize rs1
li x19, 0x4225dd0d # initialize rs2
xperm4 x21, x23, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0xbd18ec0a # initialize rs1
li x23, 0xd80bfd3f # initialize rs2
xperm4 x22, x2, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0x92d983ad # initialize rs1
li x19, 0x3a1fb0a7 # initialize rs2
xperm4 x23, x2, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x6777bbc3 # initialize rs1
li x21, 0xd722d98f # initialize rs2
xperm4 x24, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x90068e11 # initialize rs1
li x27, 0x8bac4055 # initialize rs2
xperm4 x25, x13, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x3dc6fd1a # initialize rs1
li x19, 0x23d3353a # initialize rs2
xperm4 x26, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x25, 0xf0656271 # initialize rs1
li x14, 0xcd3b5448 # initialize rs2
xperm4 x27, x25, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0xcfccfac5 # initialize rs1
li x24, 0x5f6cc847 # initialize rs2
xperm4 x28, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x7140be6c # initialize rs1
li x8, 0x38010d33 # initialize rs2
xperm4 x29, x17, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0xc45501e6 # initialize rs1
li x23, 0x45d6a070 # initialize rs2
xperm4 x30, x10, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xb50a2c26 # initialize rs1
li x3, 0xf4211f8c # initialize rs2
xperm4 x31, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
li x14, 0x469ac6d0 # initialize rs2
xperm4 x19, x30, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x00000001 # initialize rs1
li x14, 0x62ae0880 # initialize rs2
xperm4 x1, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x00000002 # initialize rs1
li x23, 0x5eb17afc # initialize rs2
xperm4 x29, x25, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x2, 0x27184187 # initialize rs2
xperm4 x16, x1, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x3, 0x0f9f2ccb # initialize rs2
xperm4 x25, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x14, 0xfe893341 # initialize rs2
xperm4 x26, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x1, 0x0fd44f39 # initialize rs2
xperm4 x22, x17, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x9, 0xdd6fe742 # initialize rs2
xperm4 x3, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x17, 0x7da86b9c # initialize rs2
xperm4 x23, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x19, 0x18856c55 # initialize rs2
xperm4 x7, x12, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
li x28, 0xcb48aa5c # initialize rs2
xperm4 x9, x24, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x2, 0x375d2df4 # initialize rs2
xperm4 x25, x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x3423958e # initialize rs1
li x27, 0x00000000 # initialize rs2
xperm4 x31, x14, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0xb24caf32 # initialize rs1
li x24, 0x00000001 # initialize rs2
xperm4 x17, x30, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x4cd535c3 # initialize rs1
li x16, 0x00000002 # initialize rs2
xperm4 x12, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x27, 0xac15e048 # initialize rs1
li x9, 0x80000000 # initialize rs2
xperm4 x16, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0xa05e81b3 # initialize rs1
li x16, 0x80000001 # initialize rs2
xperm4 x22, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x069d2e3c # initialize rs1
li x12, 0x7fffffff # initialize rs2
xperm4 x9, x15, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x3a37dfce # initialize rs1
li x17, 0x7ffffffe # initialize rs2
xperm4 x14, x23, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x6827b102 # initialize rs1
li x22, 0xffffffff # initialize rs2
xperm4 x8, x29, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x59251c95 # initialize rs1
li x21, 0xfffffffe # initialize rs2
xperm4 x2, x3, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0xdd662ac2 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
xperm4 x16, x11, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x23, 0xa4f11c40 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
xperm4 x25, x23, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0x9d148598 # initialize rs1
li x1, 0x55555555 # initialize rs2
xperm4 x2, x20, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
xperm4 x15, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x00000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
xperm4 x15, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
xperm4 x11, x24, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x4, 0x00000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
xperm4 x12, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
xperm4 x16, x22, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x17, 0x00000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
xperm4 x19, x17, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x25, 0x00000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
xperm4 x22, x25, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
xperm4 x24, x21, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
xperm4 x2, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x28, 0x00000000 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
xperm4 x18, x28, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x17, 0x00000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xperm4 x13, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x20, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
xperm4 x14, x20, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
xperm4 x17, x21, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
xperm4 x1, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
xperm4 x23, x7, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x16, 0x00000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
xperm4 x30, x16, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x31, 0x00000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
xperm4 x28, x31, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
xperm4 x18, x24, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x22, 0x00000001 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
xperm4 x4, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
xperm4 x16, x14, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x15, 0x00000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
xperm4 x27, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x14, 0x00000001 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
xperm4 x7, x14, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x11, 0x00000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xperm4 x20, x11, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x00000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
xperm4 x21, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x00000002 # initialize rs1
li x25, 0x00000000 # initialize rs2
xperm4 x23, x29, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
xperm4 x27, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
xperm4 x28, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x21, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
xperm4 x22, x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x3, 0x00000002 # initialize rs1
li x29, 0x80000001 # initialize rs2
xperm4 x13, x3, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x7, 0x00000002 # initialize rs1
li x30, 0x7fffffff # initialize rs2
xperm4 x2, x7, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
xperm4 x16, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
xperm4 x7, x19, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x00000002 # initialize rs1
li x12, 0xfffffffe # initialize rs2
xperm4 x25, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x11, 0x00000002 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
xperm4 x28, x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0x00000002 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
xperm4 x4, x26, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x17, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
xperm4 x18, x17, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
xperm4 x8, x26, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x6, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
xperm4 x15, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x13, 0x80000000 # initialize rs1
li x1, 0x00000002 # initialize rs2
xperm4 x12, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x25, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
xperm4 x4, x25, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
xperm4 x25, x8, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0x80000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
xperm4 x28, x21, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x80000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
xperm4 x6, x14, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
xperm4 x21, x24, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x29, 0x80000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
xperm4 x26, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x16, 0x80000000 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
xperm4 x27, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x29, 0x80000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
xperm4 x24, x29, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x80000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
xperm4 x28, x23, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x23, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
xperm4 x19, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
xperm4 x29, x24, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x17, 0x80000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
xperm4 x22, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x17, 0x80000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
xperm4 x10, x17, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x31, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
xperm4 x28, x31, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x6, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
xperm4 x22, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x3, 0x80000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
xperm4 x26, x3, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x13, 0x80000001 # initialize rs1
li x12, 0xffffffff # initialize rs2
xperm4 x22, x13, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x80000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
xperm4 x15, x6, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x3, 0x80000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
xperm4 x26, x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x6, 0x80000001 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
xperm4 x25, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x27, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
xperm4 x2, x27, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x21, 0x7fffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
xperm4 x27, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x8, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
xperm4 x31, x8, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x14, 0x7fffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
xperm4 x2, x14, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x4, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
xperm4 x14, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x22, 0x7fffffff # initialize rs1
li x4, 0x80000001 # initialize rs2
xperm4 x14, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
xperm4 x11, x18, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x29, 0x7fffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
xperm4 x19, x29, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
xperm4 x8, x13, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x2, 0x7fffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
xperm4 x29, x2, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x14, 0x7fffffff # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
xperm4 x28, x14, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x9, 0x7fffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
xperm4 x17, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x12, 0x7fffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
xperm4 x2, x12, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x8, 0x7ffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
xperm4 x2, x8, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x10, 0x7ffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
xperm4 x15, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x15, 0x7ffffffe # initialize rs1
li x12, 0x00000002 # initialize rs2
xperm4 x19, x15, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x11, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
xperm4 x8, x11, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x6, 0x7ffffffe # initialize rs1
li x1, 0x80000001 # initialize rs2
xperm4 x15, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x1, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
xperm4 x7, x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x30, 0x7ffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
xperm4 x27, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
xperm4 x6, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x20, 0x7ffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
xperm4 x9, x20, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x7, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
xperm4 x19, x7, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x2, 0x7ffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
xperm4 x14, x2, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x7ffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
xperm4 x11, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
xperm4 x13, x22, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
xperm4 x13, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
xperm4 x29, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x4, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
xperm4 x28, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
xperm4 x14, x31, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x21, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
xperm4 x8, x21, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xperm4 x28, x18, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
xperm4 x2, x1, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x22, 0xffffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
xperm4 x20, x22, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x10, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
xperm4 x19, x10, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x1, 0xffffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
xperm4 x20, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x30, 0xffffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
xperm4 x3, x30, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
xperm4 x23, x22, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0xfffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
xperm4 x28, x3, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x21, 0x00000002 # initialize rs2
xperm4 x23, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x6, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
xperm4 x13, x6, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
xperm4 x3, x27, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x25, 0xfffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
xperm4 x12, x25, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
xperm4 x15, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
xperm4 x3, x16, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
xperm4 x2, x21, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x19, 0xfffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xperm4 x6, x19, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x27, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
xperm4 x31, x27, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x6, 0xfffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
xperm4 x23, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x8, 0x5bbc8872 # initialize rs1
li x9, 0x00000000 # initialize rs2
xperm4 x27, x8, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x8, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
xperm4 x12, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x6, 0x5bbc8872 # initialize rs1
li x19, 0x00000002 # initialize rs2
xperm4 x28, x6, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x16, 0x5bbc8872 # initialize rs1
li x7, 0x80000000 # initialize rs2
xperm4 x17, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x6, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
xperm4 x28, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x26, 0x7fffffff # initialize rs2
xperm4 x2, x1, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x9, 0x5bbc8872 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xperm4 x1, x9, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x30, 0x5bbc8872 # initialize rs1
li x23, 0xffffffff # initialize rs2
xperm4 x3, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x9, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
xperm4 x12, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x20, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
xperm4 x24, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x22, 0x5bbc8872 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
xperm4 x20, x22, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x11, 0x5bbc8872 # initialize rs1
li x1, 0x55555555 # initialize rs2
xperm4 x21, x11, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaa # initialize rs1
li x27, 0x00000000 # initialize rs2
xperm4 x28, x31, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaa # initialize rs1
li x19, 0x00000001 # initialize rs2
xperm4 x31, x10, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x20, 0xaaaaaaaa # initialize rs1
li x2, 0x00000002 # initialize rs2
xperm4 x6, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0x80000000 # initialize rs2
xperm4 x19, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x2, 0xaaaaaaaa # initialize rs1
li x1, 0x80000001 # initialize rs2
xperm4 x25, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
xperm4 x25, x27, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x4, 0xaaaaaaaa # initialize rs1
li x13, 0x7ffffffe # initialize rs2
xperm4 x24, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x4, 0xaaaaaaaa # initialize rs1
li x6, 0xffffffff # initialize rs2
xperm4 x17, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
xperm4 x11, x1, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x24, 0xaaaaaaaa # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
xperm4 x10, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
xperm4 x13, x25, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x12, 0x55555555 # initialize rs2
xperm4 x14, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x4, 0x55555555 # initialize rs1
li x10, 0x00000000 # initialize rs2
xperm4 x17, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x18, 0x55555555 # initialize rs1
li x17, 0x00000001 # initialize rs2
xperm4 x1, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x9, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
xperm4 x20, x9, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x24, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
xperm4 x12, x24, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x14, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
xperm4 x12, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x19, 0x7fffffff # initialize rs2
xperm4 x10, x13, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
xperm4 x11, x25, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x22, 0x55555555 # initialize rs1
li x31, 0xffffffff # initialize rs2
xperm4 x29, x22, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x26, 0x55555555 # initialize rs1
li x20, 0xfffffffe # initialize rs2
xperm4 x24, x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x6, 0x55555555 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
xperm4 x29, x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x9, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xperm4 x30, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
xperm4 x9, x8, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x96c19a19 # initialize rs1
li x0, 0x705b8c74 # initialize rs2
xperm4 x24, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0611f857 # initialize rs1
li x1, 0xd6999b2c # initialize rs2
xperm4 x31, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x11d234cb # initialize rs1
li x2, 0xb023a4e7 # initialize rs2
xperm4 x27, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfd253618 # initialize rs1
li x3, 0x4565e1c9 # initialize rs2
xperm4 x26, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xf8798f42 # initialize rs1
li x4, 0xdcf82b0f # initialize rs2
xperm4 x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xeb07000a # initialize rs1
li x5, 0x732bba0f # initialize rs2
xperm4 x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2b239a98 # initialize rs1
li x6, 0x107c4a6f # initialize rs2
xperm4 x28, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbef0c34b # initialize rs1
li x7, 0x685adf31 # initialize rs2
xperm4 x21, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb07ffe89 # initialize rs1
li x8, 0x56ae6878 # initialize rs2
xperm4 x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6be5b7f0 # initialize rs1
li x9, 0xd1462bc0 # initialize rs2
xperm4 x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe03dcda7 # initialize rs1
li x10, 0x6b7079cf # initialize rs2
xperm4 x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf0ce7279 # initialize rs1
li x11, 0x9c824c5c # initialize rs2
xperm4 x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5c694a6d # initialize rs1
li x12, 0xdb0b8c03 # initialize rs2
xperm4 x14, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd8ae3baa # initialize rs1
li x13, 0x10d22d80 # initialize rs2
xperm4 x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x72ba9a7c # initialize rs1
li x14, 0x47f228fe # initialize rs2
xperm4 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0b4c8e59 # initialize rs1
li x15, 0xc380acd3 # initialize rs2
xperm4 x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe57c098f # initialize rs1
li x16, 0xe98d9288 # initialize rs2
xperm4 x28, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xec91036a # initialize rs1
li x17, 0x9f99a2ff # initialize rs2
xperm4 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xb4fb3b9f # initialize rs1
li x18, 0x2feb32d2 # initialize rs2
xperm4 x21, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xadc114f0 # initialize rs1
li x19, 0xf7648ad6 # initialize rs2
xperm4 x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd3ec90db # initialize rs1
li x20, 0xb0e272d6 # initialize rs2
xperm4 x7, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x61b99fe7 # initialize rs1
li x21, 0x0e48bce7 # initialize rs2
xperm4 x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa8a88c65 # initialize rs1
li x22, 0x06b41865 # initialize rs2
xperm4 x25, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x437a8727 # initialize rs1
li x23, 0x0e631a22 # initialize rs2
xperm4 x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdb6f34d5 # initialize rs1
li x24, 0x62b171b6 # initialize rs2
xperm4 x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x41ee115d # initialize rs1
li x25, 0xb502a11f # initialize rs2
xperm4 x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x4967461a # initialize rs1
li x26, 0x02196092 # initialize rs2
xperm4 x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdaf7724c # initialize rs1
li x27, 0x501961aa # initialize rs2
xperm4 x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1f03457d # initialize rs1
li x28, 0xeb92878d # initialize rs2
xperm4 x10, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xecf2d72d # initialize rs1
li x29, 0xb41a82f2 # initialize rs2
xperm4 x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc7313c1f # initialize rs1
li x30, 0xf263ff6e # initialize rs2
xperm4 x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x7990e574 # initialize rs1
li x31, 0x8ea8c90f # initialize rs2
xperm4 x9, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfa99659c # initialize rs1
li x23, 0x710f718b # initialize rs2
xperm4 x0, x0, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc014a850 # initialize rs1
li x19, 0x1bac13d2 # initialize rs2
xperm4 x1, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9f0a120c # initialize rs1
li x7, 0x72d5edef # initialize rs2
xperm4 x2, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2f49ba9b # initialize rs1
li x17, 0x2b32ca98 # initialize rs2
xperm4 x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4d9ecbc8 # initialize rs1
li x2, 0xcb6ec11d # initialize rs2
xperm4 x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2960d2fa # initialize rs1
li x26, 0x7262d67d # initialize rs2
xperm4 x5, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe1d7116f # initialize rs1
li x9, 0xaa535b1a # initialize rs2
xperm4 x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc206736 # initialize rs1
li x8, 0x1eec8dc5 # initialize rs2
xperm4 x7, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3f2789da # initialize rs1
li x29, 0x9fa07b5b # initialize rs2
xperm4 x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x27b560c5 # initialize rs1
li x16, 0x53da1949 # initialize rs2
xperm4 x9, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5fc8c54a # initialize rs1
li x24, 0x9efdaa2c # initialize rs2
xperm4 x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8526e280 # initialize rs1
li x10, 0x7f44ed43 # initialize rs2
xperm4 x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x712a46ae # initialize rs1
li x20, 0xbd3bc904 # initialize rs2
xperm4 x12, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1a714194 # initialize rs1
li x26, 0x824e73e6 # initialize rs2
xperm4 x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8f06f2ac # initialize rs1
li x22, 0xce9f520b # initialize rs2
xperm4 x14, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x614aa552 # initialize rs1
li x14, 0xd29f1c05 # initialize rs2
xperm4 x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1e354396 # initialize rs1
li x2, 0xe8c1bda6 # initialize rs2
xperm4 x16, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3bb58e6d # initialize rs1
li x13, 0xbead22a3 # initialize rs2
xperm4 x17, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0335a2f8 # initialize rs1
li x16, 0xf347c050 # initialize rs2
xperm4 x18, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe2abcec2 # initialize rs1
li x7, 0x6b5a18f1 # initialize rs2
xperm4 x19, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0f41c187 # initialize rs1
li x16, 0xa1af0870 # initialize rs2
xperm4 x20, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xde5cbf3e # initialize rs1
li x26, 0xea312907 # initialize rs2
xperm4 x21, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5beacaa3 # initialize rs1
li x20, 0x22eab7bc # initialize rs2
xperm4 x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x6c09d6a5 # initialize rs1
li x10, 0x6a722fb3 # initialize rs2
xperm4 x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x799c4a3d # initialize rs1
li x9, 0x8a83fca5 # initialize rs2
xperm4 x24, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7b178d85 # initialize rs1
li x6, 0x6eece28f # initialize rs2
xperm4 x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x667b5d55 # initialize rs1
li x15, 0xc7654ca5 # initialize rs2
xperm4 x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3c08582c # initialize rs1
li x23, 0x4a3507b1 # initialize rs2
xperm4 x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf979ef67 # initialize rs1
li x6, 0xf407dfc1 # initialize rs2
xperm4 x28, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9cad37dd # initialize rs1
li x21, 0x2f8a864f # initialize rs2
xperm4 x29, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xec7862ac # initialize rs1
li x8, 0xc384b348 # initialize rs2
xperm4 x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf59cd311 # initialize rs1
li x13, 0xea19297d # initialize rs2
xperm4 x31, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x10, 0xe5acce99 # initialize rs1
li x0, 0x0a12c417 # initialize rs2
xperm4 x0, x10, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x18, 0x2393e0c2 # initialize rs1
li x1, 0xdfb666f8 # initialize rs2
xperm4 x1, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xc3efb8b1 # initialize rs1
li x2, 0x3cbdc7cb # initialize rs2
xperm4 x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0xa84ee28b # initialize rs1
li x3, 0xb778cc62 # initialize rs2
xperm4 x3, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x5cf3dbce # initialize rs1
li x4, 0xe073563e # initialize rs2
xperm4 x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xe1005309 # initialize rs1
li x5, 0xc4c70679 # initialize rs2
xperm4 x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x5c6315eb # initialize rs1
li x6, 0x422e7102 # initialize rs2
xperm4 x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xeeed9f4c # initialize rs1
li x7, 0x247e0382 # initialize rs2
xperm4 x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0x89ce5747 # initialize rs1
li x8, 0x656c53be # initialize rs2
xperm4 x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x24, 0x3a21beec # initialize rs1
li x9, 0x663a9d09 # initialize rs2
xperm4 x9, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x8800c923 # initialize rs1
li x10, 0xb6080d88 # initialize rs2
xperm4 x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0x98b161d4 # initialize rs1
li x11, 0xcbe5fd89 # initialize rs2
xperm4 x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0x8338ddf5 # initialize rs1
li x12, 0x9fad2d5c # initialize rs2
xperm4 x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0x2a234038 # initialize rs1
li x13, 0x45700f42 # initialize rs2
xperm4 x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0xb4767e1b # initialize rs1
li x14, 0x7e9e1ef9 # initialize rs2
xperm4 x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0x262036ad # initialize rs1
li x15, 0x35a8ddfe # initialize rs2
xperm4 x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0xd019e02c # initialize rs1
li x16, 0x281745f1 # initialize rs2
xperm4 x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x25, 0x9d3d6ba7 # initialize rs1
li x17, 0xa16ef4ad # initialize rs2
xperm4 x17, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0x57f0d6ce # initialize rs1
li x18, 0x3e56171f # initialize rs2
xperm4 x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0xa6974785 # initialize rs1
li x19, 0x3d4b477a # initialize rs2
xperm4 x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0x444b6281 # initialize rs1
li x20, 0x5bdf4f95 # initialize rs2
xperm4 x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0x3129a664 # initialize rs1
li x21, 0x96271371 # initialize rs2
xperm4 x21, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0xdaa6ad4f # initialize rs1
li x22, 0xf72fc0ee # initialize rs2
xperm4 x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0x2cec66a1 # initialize rs1
li x23, 0x8c1f7690 # initialize rs2
xperm4 x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0xb2354591 # initialize rs1
li x24, 0xfbb842e2 # initialize rs2
xperm4 x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0xd033d32a # initialize rs1
li x25, 0xa7bffee9 # initialize rs2
xperm4 x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x1, 0x674f20a1 # initialize rs1
li x26, 0xd55168bf # initialize rs2
xperm4 x26, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x10, 0xd94689a7 # initialize rs1
li x27, 0x04a16668 # initialize rs2
xperm4 x27, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x8a21184f # initialize rs1
li x28, 0x6675fbdc # initialize rs2
xperm4 x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0x806ee3c8 # initialize rs1
li x29, 0x74fb527d # initialize rs2
xperm4 x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x29, 0xf1418189 # initialize rs1
li x30, 0x42935e05 # initialize rs2
xperm4 x30, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x9, 0x1d05ea42 # initialize rs1
li x31, 0x84c6d2a6 # initialize rs2
xperm4 x31, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xbcdfb699 # initialize rs1
li x0, 0x96932b55 # initialize rs2
xperm4 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6ef42417 # initialize rs1
li x1, 0x2d7ecf14 # initialize rs2
xperm4 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xb35b5f71 # initialize rs1
li x2, 0x2d8538c6 # initialize rs2
xperm4 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x39429d0f # initialize rs1
li x3, 0x63c4ba1a # initialize rs2
xperm4 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x79eb0395 # initialize rs1
li x4, 0x3d8443de # initialize rs2
xperm4 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0dde0c9c # initialize rs1
li x5, 0xb31213aa # initialize rs2
xperm4 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcaf29475 # initialize rs1
li x6, 0xd8137ad0 # initialize rs2
xperm4 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xba13f0ad # initialize rs1
li x7, 0x759149e8 # initialize rs2
xperm4 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xdac27cc1 # initialize rs1
li x8, 0x2434c085 # initialize rs2
xperm4 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4f8640f9 # initialize rs1
li x9, 0xa8d1ca20 # initialize rs2
xperm4 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7976157e # initialize rs1
li x10, 0xb5c599af # initialize rs2
xperm4 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x14f11b21 # initialize rs1
li x11, 0x07b12ffd # initialize rs2
xperm4 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1e36ee5f # initialize rs1
li x12, 0xd1a94d9c # initialize rs2
xperm4 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x44c7eb21 # initialize rs1
li x13, 0x400fd3cf # initialize rs2
xperm4 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0a520faa # initialize rs1
li x14, 0xb263e8ab # initialize rs2
xperm4 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x87d4d809 # initialize rs1
li x15, 0x923e802a # initialize rs2
xperm4 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6e2fa0e5 # initialize rs1
li x16, 0xe99b26a1 # initialize rs2
xperm4 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc349765d # initialize rs1
li x17, 0x9cda6c92 # initialize rs2
xperm4 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2d5894ea # initialize rs1
li x18, 0xc5ffb3eb # initialize rs2
xperm4 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9ec73ea4 # initialize rs1
li x19, 0xaeef24f0 # initialize rs2
xperm4 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x67e9327d # initialize rs1
li x20, 0x6a449335 # initialize rs2
xperm4 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xee22d09f # initialize rs1
li x21, 0xd3ad4d26 # initialize rs2
xperm4 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x327d91ce # initialize rs1
li x22, 0x7fd4711f # initialize rs2
xperm4 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x26e72be9 # initialize rs1
li x23, 0xf6d6506c # initialize rs2
xperm4 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd5ba8543 # initialize rs1
li x24, 0x4db58b3a # initialize rs2
xperm4 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1a87df47 # initialize rs1
li x25, 0xc0b72ac4 # initialize rs2
xperm4 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd822fb81 # initialize rs1
li x26, 0x1b000e7a # initialize rs2
xperm4 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x86fec3a9 # initialize rs1
li x27, 0x48c98181 # initialize rs2
xperm4 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0d3acf5b # initialize rs1
li x28, 0xe82bfb2a # initialize rs2
xperm4 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x50d79bd4 # initialize rs1
li x29, 0x1edcacee # initialize rs2
xperm4 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc63bd74a # initialize rs1
li x30, 0x0aa9f23e # initialize rs2
xperm4 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd4d7b894 # initialize rs1
li x31, 0xe211d16e # initialize rs2
xperm4 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x25, x26 # perform first operation
xperm4 x20, x28, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x10, x29 # perform first operation
xperm4 x8, x2, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x14, x18 # perform first operation
xperm4 x29, x5, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x25 # perform first operation
xperm4 x25, x13, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x30, x5 # perform first operation
xperm4 x20, x2, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x19, x5 # perform first operation
xperm4 x5, x16, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x14, x26 # perform first operation
xperm4 x29, x16, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x8, x13 # perform first operation
xperm4 x2, x11, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x1, x21 # perform first operation
xperm4 x10, x7, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x22, x8 # perform first operation
xperm4 x22, x10, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x5, x18 # perform first operation
xperm4 x18, x16, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x3, x19 # perform first operation
xperm4 x7, x18, x5 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-xperm8.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x375a1843 # initialize rs1
li x21, 0x3f61d98e # initialize rs2
xperm8 x16, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd85b3df2 # initialize rs1
li x17, 0xa29052d6 # initialize rs2
xperm8 x9, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xaf27ea5b # initialize rs1
li x14, 0xc267678e # initialize rs2
xperm8 x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5dc63436 # initialize rs1
li x14, 0x2f7bbe26 # initialize rs2
xperm8 x7, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88fe0318 # initialize rs1
li x19, 0x38339322 # initialize rs2
xperm8 x14, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe17dcaef # initialize rs1
li x9, 0x9a504299 # initialize rs2
xperm8 x18, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x98603424 # initialize rs1
li x13, 0x6dca4c06 # initialize rs2
xperm8 x23, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfc8f6b36 # initialize rs1
li x22, 0x10890522 # initialize rs2
xperm8 x12, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa89cbb47 # initialize rs1
li x1, 0x38782f18 # initialize rs2
xperm8 x26, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8c569cb8 # initialize rs1
li x30, 0xc0eb59b5 # initialize rs2
xperm8 x20, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe30eaa46 # initialize rs1
li x3, 0xd999aa99 # initialize rs2
xperm8 x25, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3e4b8a3f # initialize rs1
li x3, 0xfc7ade1b # initialize rs2
xperm8 x17, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6166c40a # initialize rs1
li x1, 0xde1e1912 # initialize rs2
xperm8 x8, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5d1459c4 # initialize rs1
li x8, 0xdb43eba6 # initialize rs2
xperm8 x25, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xbe8f6bd6 # initialize rs1
li x18, 0x3589f1a1 # initialize rs2
xperm8 x25, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x52cd2aef # initialize rs1
li x12, 0xd2fcb0da # initialize rs2
xperm8 x17, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x77aa36e6 # initialize rs1
li x13, 0x7a5582df # initialize rs2
xperm8 x10, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2ebbab0a # initialize rs1
li x23, 0x876a8c1e # initialize rs2
xperm8 x1, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb2c5b0ca # initialize rs1
li x13, 0x6ec74d53 # initialize rs2
xperm8 x3, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xea8274dd # initialize rs1
li x5, 0x88e8eb05 # initialize rs2
xperm8 x6, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xba597060 # initialize rs1
li x30, 0x62daed71 # initialize rs2
xperm8 x13, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1c37a2d5 # initialize rs1
li x11, 0xb4ca6979 # initialize rs2
xperm8 x12, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6534da78 # initialize rs1
li x8, 0x4fbae413 # initialize rs2
xperm8 x26, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb436b36d # initialize rs1
li x2, 0xf8d9db01 # initialize rs2
xperm8 x8, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x420a73b0 # initialize rs1
li x16, 0x78efe40a # initialize rs2
xperm8 x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xbdd6eeea # initialize rs1
li x31, 0xcec6e883 # initialize rs2
xperm8 x19, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa4bbd310 # initialize rs1
li x7, 0xb8f9891b # initialize rs2
xperm8 x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6cb3a460 # initialize rs1
li x25, 0x66e7ccd4 # initialize rs2
xperm8 x7, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x17996146 # initialize rs1
li x21, 0x9791edb1 # initialize rs2
xperm8 x31, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd745f17e # initialize rs1
li x12, 0x1da8f9b3 # initialize rs2
xperm8 x7, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5143de9f # initialize rs1
li x10, 0x0f4817d4 # initialize rs2
xperm8 x23, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2e1ca13c # initialize rs1
li x27, 0x9cb45c13 # initialize rs2
xperm8 x6, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xb0a38ea9 # initialize rs1
li x0, 0x82f6eec1 # initialize rs2
xperm8 x28, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x15, 0x42bf5d6b # initialize rs1
li x1, 0x7a2efdc8 # initialize rs2
xperm8 x11, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0x166cd0f4 # initialize rs1
li x2, 0xcf6f50a5 # initialize rs2
xperm8 x18, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x48c1a329 # initialize rs1
li x3, 0x946de646 # initialize rs2
xperm8 x25, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x796f4532 # initialize rs1
li x4, 0x9ec8d48b # initialize rs2
xperm8 x2, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xeb985ce9 # initialize rs1
li x5, 0x1685527b # initialize rs2
xperm8 x27, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xbeea40fa # initialize rs1
li x6, 0xefb74c3b # initialize rs2
xperm8 x16, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x63395860 # initialize rs1
li x7, 0x71945ff5 # initialize rs2
xperm8 x31, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0xd119c710 # initialize rs1
li x8, 0xe5a02631 # initialize rs2
xperm8 x14, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0xbb9e58c8 # initialize rs1
li x9, 0xe17d45be # initialize rs2
xperm8 x20, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x5950708d # initialize rs1
li x10, 0x3d127ff4 # initialize rs2
xperm8 x29, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x7de38632 # initialize rs1
li x11, 0xc54d877e # initialize rs2
xperm8 x8, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x874c7fcf # initialize rs1
li x12, 0x08e2b57e # initialize rs2
xperm8 x3, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xed3140e9 # initialize rs1
li x13, 0xe378369a # initialize rs2
xperm8 x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x51950bdb # initialize rs1
li x14, 0x763d6f27 # initialize rs2
xperm8 x23, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xdef42108 # initialize rs1
li x15, 0x5a171d2b # initialize rs2
xperm8 x22, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x3df2433d # initialize rs1
li x16, 0xe44bd3bb # initialize rs2
xperm8 x22, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0x16c5ccca # initialize rs1
li x17, 0xa0dbcaf6 # initialize rs2
xperm8 x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0x8d073cfb # initialize rs1
li x18, 0x77564a7a # initialize rs2
xperm8 x17, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0xfa6ccee2 # initialize rs1
li x19, 0x68f2057c # initialize rs2
xperm8 x16, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x644e5657 # initialize rs1
li x20, 0xb0003d1d # initialize rs2
xperm8 x19, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x3466a59f # initialize rs1
li x21, 0xa832bee3 # initialize rs2
xperm8 x26, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0x24a004ba # initialize rs1
li x22, 0x5be29839 # initialize rs2
xperm8 x13, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x26962d84 # initialize rs1
li x23, 0xbe714951 # initialize rs2
xperm8 x31, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x9, 0x9b2ebbee # initialize rs1
li x24, 0xa9f56bba # initialize rs2
xperm8 x20, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x916c0d9f # initialize rs1
li x25, 0x6e937009 # initialize rs2
xperm8 x7, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0xbb0e2e63 # initialize rs1
li x26, 0x35555f94 # initialize rs2
xperm8 x2, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0xc837dcb7 # initialize rs1
li x27, 0x68ef39e5 # initialize rs2
xperm8 x5, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x59b532ad # initialize rs1
li x28, 0x522a4f16 # initialize rs2
xperm8 x3, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0xba97411f # initialize rs1
li x29, 0xef66c1ba # initialize rs2
xperm8 x6, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x48e27f51 # initialize rs1
li x30, 0xe696872a # initialize rs2
xperm8 x5, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x6e5e8bc1 # initialize rs1
li x31, 0xb41e5651 # initialize rs2
xperm8 x15, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x12c96a3b # initialize rs1
li x3, 0x4a2aeea9 # initialize rs2
xperm8 x0, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x83e44322 # initialize rs1
li x17, 0x146dba46 # initialize rs2
xperm8 x1, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0xc0908b70 # initialize rs1
li x31, 0xdd09bcca # initialize rs2
xperm8 x2, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfb18e661 # initialize rs1
li x20, 0x27912d10 # initialize rs2
xperm8 x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x8e949969 # initialize rs1
li x27, 0x8c5a2899 # initialize rs2
xperm8 x4, x20, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x0966fbb9 # initialize rs1
li x24, 0x2c169fb2 # initialize rs2
xperm8 x5, x31, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xf5fc6c02 # initialize rs1
li x14, 0x76c26d92 # initialize rs2
xperm8 x6, x24, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xdb606a95 # initialize rs1
li x27, 0x45d1f56d # initialize rs2
xperm8 x7, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x130c4118 # initialize rs1
li x26, 0xb2e5bf4a # initialize rs2
xperm8 x8, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x276ca9b3 # initialize rs1
li x8, 0x4c0f0c8d # initialize rs2
xperm8 x9, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x0f7707cb # initialize rs1
li x2, 0xe31af1a8 # initialize rs2
xperm8 x10, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x6, 0x5e8d97f7 # initialize rs1
li x5, 0xbc6223e1 # initialize rs2
xperm8 x11, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x3a96d2ba # initialize rs1
li x25, 0x8acf03e2 # initialize rs2
xperm8 x12, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2a970390 # initialize rs1
li x19, 0x2e52cb77 # initialize rs2
xperm8 x13, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0xcd430f63 # initialize rs1
li x28, 0xb654398a # initialize rs2
xperm8 x14, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xacb91885 # initialize rs1
li x8, 0x028fdc8f # initialize rs2
xperm8 x15, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0x3a78289b # initialize rs1
li x16, 0xef0ac503 # initialize rs2
xperm8 x16, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x8bd8a776 # initialize rs1
li x2, 0x2c22f41c # initialize rs2
xperm8 x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0x096a72dc # initialize rs1
li x25, 0x90755c00 # initialize rs2
xperm8 x18, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0xe1c23dbe # initialize rs1
li x27, 0xa5514cce # initialize rs2
xperm8 x19, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x1d590852 # initialize rs1
li x17, 0xef3ea656 # initialize rs2
xperm8 x20, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xa692fef2 # initialize rs1
li x29, 0x9d91d8b9 # initialize rs2
xperm8 x21, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x8a0f67ef # initialize rs1
li x21, 0x4e1782c8 # initialize rs2
xperm8 x22, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0xd6938ad3 # initialize rs1
li x29, 0x3079055e # initialize rs2
xperm8 x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x9f99eb7e # initialize rs1
li x20, 0x4331c8c7 # initialize rs2
xperm8 x24, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x40852d5d # initialize rs1
li x12, 0x340add53 # initialize rs2
xperm8 x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x6d557d91 # initialize rs1
li x2, 0x880e4b65 # initialize rs2
xperm8 x26, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0xac5fc3b1 # initialize rs1
li x26, 0x2b7ae5ed # initialize rs2
xperm8 x27, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0x9787d69b # initialize rs1
li x25, 0x713e4c16 # initialize rs2
xperm8 x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0x44aebc45 # initialize rs1
li x11, 0x4fe9233f # initialize rs2
xperm8 x29, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0x93e8f711 # initialize rs1
li x5, 0x5b0ad7bd # initialize rs2
xperm8 x30, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x0bef1d1d # initialize rs1
li x5, 0x9cfe8b9e # initialize rs2
xperm8 x31, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x00000000 # initialize rs1
li x15, 0x842cf238 # initialize rs2
xperm8 x31, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x15, 0xcc83c865 # initialize rs2
xperm8 x21, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x00000002 # initialize rs1
li x28, 0x951278a4 # initialize rs2
xperm8 x21, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x18, 0x54bc02df # initialize rs2
xperm8 x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x27, 0x16bf80a9 # initialize rs2
xperm8 x5, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x3, 0x7fffffff # initialize rs1
li x20, 0x0710e2e0 # initialize rs2
xperm8 x16, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x22, 0x42a8748d # initialize rs2
xperm8 x12, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x3, 0x5a53b850 # initialize rs2
xperm8 x22, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x23, 0x891ec298 # initialize rs2
xperm8 x9, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x18, 0xf01ec450 # initialize rs2
xperm8 x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x29, 0xb37c352b # initialize rs2
xperm8 x18, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x2, 0x09dc6b15 # initialize rs2
xperm8 x22, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0x9409b328 # initialize rs1
li x3, 0x00000000 # initialize rs2
xperm8 x28, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x9b798ad8 # initialize rs1
li x12, 0x00000001 # initialize rs2
xperm8 x15, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x7be05284 # initialize rs1
li x13, 0x00000002 # initialize rs2
xperm8 x7, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0xd99e542d # initialize rs1
li x28, 0x80000000 # initialize rs2
xperm8 x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x00ec3849 # initialize rs1
li x24, 0x80000001 # initialize rs2
xperm8 x7, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x16, 0x15e40433 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xperm8 x30, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x7, 0x6478e553 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
xperm8 x12, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x7f2138de # initialize rs1
li x1, 0xffffffff # initialize rs2
xperm8 x15, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x6d03cf23 # initialize rs1
li x21, 0xfffffffe # initialize rs2
xperm8 x7, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x2, 0x4ff70c35 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
xperm8 x12, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0xbb0d347f # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xperm8 x2, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0x6edc5c93 # initialize rs1
li x15, 0x55555555 # initialize rs2
xperm8 x19, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
xperm8 x6, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
xperm8 x21, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x00000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
xperm8 x22, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
xperm8 x27, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x28, 0x00000000 # initialize rs1
li x7, 0x80000001 # initialize rs2
xperm8 x18, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x9, 0x00000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xperm8 x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x28, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
xperm8 x6, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x00000000 # initialize rs1
li x2, 0xffffffff # initialize rs2
xperm8 x27, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
xperm8 x5, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x22, 0x00000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
xperm8 x16, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
xperm8 x10, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x8, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
xperm8 x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x23, 0x00000000 # initialize rs2
xperm8 x29, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
xperm8 x10, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
xperm8 x24, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x3, 0x00000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
xperm8 x2, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x25, 0x00000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
xperm8 x27, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
xperm8 x2, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x26, 0x00000001 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xperm8 x28, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x28, 0x00000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
xperm8 x1, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0x00000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
xperm8 x27, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x18, 0x00000001 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
xperm8 x12, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x00000001 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
xperm8 x15, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x28, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
xperm8 x19, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x8, 0x00000002 # initialize rs1
li x7, 0x00000000 # initialize rs2
xperm8 x13, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
xperm8 x27, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
xperm8 x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x22, 0x00000002 # initialize rs1
li x27, 0x80000000 # initialize rs2
xperm8 x13, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x31, 0x00000002 # initialize rs1
li x8, 0x80000001 # initialize rs2
xperm8 x25, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x16, 0x7fffffff # initialize rs2
xperm8 x1, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x6, 0x00000002 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
xperm8 x27, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
xperm8 x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x00000002 # initialize rs1
li x18, 0xfffffffe # initialize rs2
xperm8 x3, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x24, 0x00000002 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
xperm8 x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x00000002 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
xperm8 x16, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0x00000002 # initialize rs1
li x11, 0x55555555 # initialize rs2
xperm8 x12, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x30, 0x80000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
xperm8 x12, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x12, 0x80000000 # initialize rs1
li x5, 0x00000001 # initialize rs2
xperm8 x19, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0x80000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
xperm8 x2, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x9, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
xperm8 x3, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x16, 0x80000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
xperm8 x11, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x31, 0x80000000 # initialize rs1
li x7, 0x7fffffff # initialize rs2
xperm8 x8, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x25, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
xperm8 x18, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x1, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
xperm8 x22, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x21, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
xperm8 x1, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x20, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
xperm8 x24, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x29, 0x80000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
xperm8 x24, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x19, 0x80000000 # initialize rs1
li x15, 0x55555555 # initialize rs2
xperm8 x16, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x7, 0x80000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
xperm8 x25, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x13, 0x80000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
xperm8 x25, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x6, 0x80000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
xperm8 x28, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x14, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
xperm8 x31, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x2, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
xperm8 x1, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x14, 0x80000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
xperm8 x12, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x11, 0x80000001 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
xperm8 x12, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
xperm8 x18, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x11, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
xperm8 x18, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x18, 0x80000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
xperm8 x5, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x1, 0x80000001 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
xperm8 x13, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x23, 0x80000001 # initialize rs1
li x3, 0x55555555 # initialize rs2
xperm8 x22, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
xperm8 x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x8, 0x7fffffff # initialize rs1
li x15, 0x00000001 # initialize rs2
xperm8 x9, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x14, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
xperm8 x24, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x1, 0x7fffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
xperm8 x21, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x29, 0x7fffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
xperm8 x16, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
xperm8 x11, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
xperm8 x28, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x23, 0x7fffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
xperm8 x12, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
xperm8 x28, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x29, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xperm8 x22, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x11, 0x7fffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xperm8 x26, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x23, 0x7fffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
xperm8 x31, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x3, 0x7ffffffe # initialize rs1
li x9, 0x00000000 # initialize rs2
xperm8 x31, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x7ffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
xperm8 x6, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x7ffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
xperm8 x17, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x21, 0x7ffffffe # initialize rs1
li x23, 0x80000000 # initialize rs2
xperm8 x27, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x8, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
xperm8 x17, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x16, 0x7ffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
xperm8 x1, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
xperm8 x21, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x14, 0x7ffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
xperm8 x5, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
xperm8 x9, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xperm8 x26, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x13, 0x7ffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
xperm8 x6, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
xperm8 x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
xperm8 x25, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
xperm8 x5, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x29, 0xffffffff # initialize rs1
li x25, 0x00000002 # initialize rs2
xperm8 x21, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x6, 0xffffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
xperm8 x3, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x17, 0xffffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
xperm8 x26, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0xffffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
xperm8 x5, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x31, 0xffffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
xperm8 x24, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
xperm8 x17, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
xperm8 x26, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x13, 0xffffffff # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
xperm8 x19, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x20, 0xffffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
xperm8 x5, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x14, 0xffffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
xperm8 x7, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x18, 0xfffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
xperm8 x11, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
xperm8 x26, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0xfffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
xperm8 x20, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x24, 0xfffffffe # initialize rs1
li x20, 0x80000000 # initialize rs2
xperm8 x5, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x21, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
xperm8 x29, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x21, 0xfffffffe # initialize rs1
li x13, 0x7fffffff # initialize rs2
xperm8 x14, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x10, 0xfffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
xperm8 x11, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0xfffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
xperm8 x20, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
xperm8 x7, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x7, 0xfffffffe # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
xperm8 x9, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xperm8 x11, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x25, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
xperm8 x3, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x14, 0x5bbc8872 # initialize rs1
li x22, 0x00000000 # initialize rs2
xperm8 x3, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x28, 0x5bbc8872 # initialize rs1
li x2, 0x00000001 # initialize rs2
xperm8 x5, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x10, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
xperm8 x11, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x80000000 # initialize rs2
xperm8 x11, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x31, 0x5bbc8872 # initialize rs1
li x22, 0x80000001 # initialize rs2
xperm8 x26, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x29, 0x5bbc8872 # initialize rs1
li x2, 0x7fffffff # initialize rs2
xperm8 x9, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
xperm8 x13, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x23, 0x5bbc8872 # initialize rs1
li x26, 0xffffffff # initialize rs2
xperm8 x14, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x13, 0x5bbc8872 # initialize rs1
li x21, 0xfffffffe # initialize rs2
xperm8 x12, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
xperm8 x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x3, 0x5bbc8872 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
xperm8 x22, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x29, 0x5bbc8872 # initialize rs1
li x7, 0x55555555 # initialize rs2
xperm8 x30, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x11, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
xperm8 x17, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaa # initialize rs1
li x3, 0x00000001 # initialize rs2
xperm8 x29, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0x00000002 # initialize rs2
xperm8 x26, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x7, 0xaaaaaaaa # initialize rs1
li x6, 0x80000000 # initialize rs2
xperm8 x19, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x7, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
xperm8 x11, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x14, 0x7fffffff # initialize rs2
xperm8 x3, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xperm8 x5, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x13, 0xffffffff # initialize rs2
xperm8 x7, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x18, 0xfffffffe # initialize rs2
xperm8 x24, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x23, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
xperm8 x16, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
xperm8 x16, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x28, 0xaaaaaaaa # initialize rs1
li x20, 0x55555555 # initialize rs2
xperm8 x7, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0x55555555 # initialize rs1
li x23, 0x00000000 # initialize rs2
xperm8 x19, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x9, 0x55555555 # initialize rs1
li x20, 0x00000001 # initialize rs2
xperm8 x8, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0x55555555 # initialize rs1
li x28, 0x00000002 # initialize rs2
xperm8 x19, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0x55555555 # initialize rs1
li x7, 0x80000000 # initialize rs2
xperm8 x6, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
xperm8 x30, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x30, 0x55555555 # initialize rs1
li x17, 0x7fffffff # initialize rs2
xperm8 x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
xperm8 x7, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x23, 0x55555555 # initialize rs1
li x30, 0xffffffff # initialize rs2
xperm8 x11, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x55555555 # initialize rs1
li x3, 0xfffffffe # initialize rs2
xperm8 x11, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x24, 0x55555555 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
xperm8 x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
xperm8 x18, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
xperm8 x25, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x83daf434 # initialize rs1
li x0, 0x265bee2d # initialize rs2
xperm8 x28, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x603e9478 # initialize rs1
li x1, 0xd1262d7d # initialize rs2
xperm8 x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xcf6f5761 # initialize rs1
li x2, 0x19d545ee # initialize rs2
xperm8 x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf0d9bd13 # initialize rs1
li x3, 0xcc02b1e9 # initialize rs2
xperm8 x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf856b747 # initialize rs1
li x4, 0xae7da779 # initialize rs2
xperm8 x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef9d4a7b # initialize rs1
li x5, 0xfddeccd0 # initialize rs2
xperm8 x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x70b1dbdd # initialize rs1
li x6, 0xb806f0eb # initialize rs2
xperm8 x28, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x48da1863 # initialize rs1
li x7, 0xbbbf70c9 # initialize rs2
xperm8 x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1b585989 # initialize rs1
li x8, 0xe6deb709 # initialize rs2
xperm8 x30, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x884aae03 # initialize rs1
li x9, 0x8b924318 # initialize rs2
xperm8 x7, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb4ef5cc9 # initialize rs1
li x10, 0x59de2d7a # initialize rs2
xperm8 x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc6258d5d # initialize rs1
li x11, 0x98d13b23 # initialize rs2
xperm8 x19, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa9c7077e # initialize rs1
li x12, 0x98451b82 # initialize rs2
xperm8 x28, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6d4be7c3 # initialize rs1
li x13, 0x76a21e0c # initialize rs2
xperm8 x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc6bd6317 # initialize rs1
li x14, 0x415c23c2 # initialize rs2
xperm8 x1, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3fb43669 # initialize rs1
li x15, 0xe500a1f5 # initialize rs2
xperm8 x25, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb03dc585 # initialize rs1
li x16, 0x5c99aa25 # initialize rs2
xperm8 x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4590205d # initialize rs1
li x17, 0x314069e6 # initialize rs2
xperm8 x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x788a83a6 # initialize rs1
li x18, 0x707f9582 # initialize rs2
xperm8 x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x3e55dcdf # initialize rs1
li x19, 0x69d77414 # initialize rs2
xperm8 x14, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb9db7823 # initialize rs1
li x20, 0x2ddf4536 # initialize rs2
xperm8 x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf33f3458 # initialize rs1
li x21, 0xba8c1cdb # initialize rs2
xperm8 x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1dbc4d51 # initialize rs1
li x22, 0x6989224e # initialize rs2
xperm8 x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x431f449f # initialize rs1
li x23, 0x53dabe3d # initialize rs2
xperm8 x3, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x0b3c8658 # initialize rs1
li x24, 0x484c2d99 # initialize rs2
xperm8 x6, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x00c0672e # initialize rs1
li x25, 0x6761c830 # initialize rs2
xperm8 x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6ae7505c # initialize rs1
li x26, 0xfbd66b90 # initialize rs2
xperm8 x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x75771169 # initialize rs1
li x27, 0xff7579c2 # initialize rs2
xperm8 x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd1838169 # initialize rs1
li x28, 0x56ab834d # initialize rs2
xperm8 x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe11a33cd # initialize rs1
li x29, 0xd8663a8f # initialize rs2
xperm8 x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xaa484f0c # initialize rs1
li x30, 0x7f717bde # initialize rs2
xperm8 x24, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa85d76e7 # initialize rs1
li x31, 0x69b05183 # initialize rs2
xperm8 x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x202db2da # initialize rs1
li x16, 0x69a9e54e # initialize rs2
xperm8 x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x763d95b2 # initialize rs1
li x22, 0x892fad59 # initialize rs2
xperm8 x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa32d5c99 # initialize rs1
li x1, 0xb951c9a5 # initialize rs2
xperm8 x2, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xae6d70df # initialize rs1
li x6, 0x9c6d14f9 # initialize rs2
xperm8 x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf830b0f9 # initialize rs1
li x6, 0x8bebaf59 # initialize rs2
xperm8 x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x05b56176 # initialize rs1
li x21, 0xb1a1e32c # initialize rs2
xperm8 x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0f5c5e21 # initialize rs1
li x1, 0xb9bd4699 # initialize rs2
xperm8 x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1b690af6 # initialize rs1
li x28, 0x346be577 # initialize rs2
xperm8 x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf160e66a # initialize rs1
li x15, 0x0bf324dc # initialize rs2
xperm8 x8, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3918e564 # initialize rs1
li x14, 0xae8204e6 # initialize rs2
xperm8 x9, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfa5d9128 # initialize rs1
li x23, 0xd2066abe # initialize rs2
xperm8 x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x19b7bdb0 # initialize rs1
li x28, 0x911d1cf9 # initialize rs2
xperm8 x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x21104aa4 # initialize rs1
li x30, 0xd0f6d2a7 # initialize rs2
xperm8 x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x982ebd5a # initialize rs1
li x10, 0xc0a1d4af # initialize rs2
xperm8 x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xce39512e # initialize rs1
li x6, 0x117bb15c # initialize rs2
xperm8 x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa0bae061 # initialize rs1
li x16, 0x203020b0 # initialize rs2
xperm8 x15, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1b080ddc # initialize rs1
li x1, 0xf39289f3 # initialize rs2
xperm8 x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa07c6b99 # initialize rs1
li x14, 0x21d47127 # initialize rs2
xperm8 x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf3a6d964 # initialize rs1
li x10, 0xcc157cba # initialize rs2
xperm8 x18, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc17cc8f9 # initialize rs1
li x12, 0xb63f3860 # initialize rs2
xperm8 x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb3d7d58f # initialize rs1
li x17, 0xc7c2da5d # initialize rs2
xperm8 x20, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7c5760fe # initialize rs1
li x18, 0x030e48d0 # initialize rs2
xperm8 x21, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2e15103e # initialize rs1
li x29, 0x27700cf4 # initialize rs2
xperm8 x22, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdf1f9afe # initialize rs1
li x14, 0x8881186b # initialize rs2
xperm8 x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa07484d3 # initialize rs1
li x26, 0x8981378c # initialize rs2
xperm8 x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x42c208e0 # initialize rs1
li x16, 0xf403a513 # initialize rs2
xperm8 x25, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4ba67893 # initialize rs1
li x22, 0xfcfac081 # initialize rs2
xperm8 x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x271e2fd2 # initialize rs1
li x13, 0x4126cfb7 # initialize rs2
xperm8 x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x51ae0151 # initialize rs1
li x20, 0x5623313e # initialize rs2
xperm8 x28, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xae991eab # initialize rs1
li x3, 0x3daa6ee1 # initialize rs2
xperm8 x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x78e0015f # initialize rs1
li x16, 0x9b28fd4c # initialize rs2
xperm8 x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb3cb5f40 # initialize rs1
li x6, 0xf496092a # initialize rs2
xperm8 x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0xabe27582 # initialize rs1
li x0, 0x611a7626 # initialize rs2
xperm8 x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x18, 0x6bca06da # initialize rs1
li x1, 0x0fd7607a # initialize rs2
xperm8 x1, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0xa5e0dfa6 # initialize rs1
li x2, 0x0d8d69d9 # initialize rs2
xperm8 x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x30, 0xf3c57b81 # initialize rs1
li x3, 0x1762184b # initialize rs2
xperm8 x3, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x2f764ef3 # initialize rs1
li x4, 0xe134afbd # initialize rs2
xperm8 x4, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xfbe27cd5 # initialize rs1
li x5, 0x9af47d55 # initialize rs2
xperm8 x5, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x57546389 # initialize rs1
li x6, 0xed572a01 # initialize rs2
xperm8 x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0xa2f5e6b3 # initialize rs1
li x7, 0x9427d870 # initialize rs2
xperm8 x7, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0xd202da75 # initialize rs1
li x8, 0xec46a77b # initialize rs2
xperm8 x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x24, 0x7c1cfde1 # initialize rs1
li x9, 0x45fce13e # initialize rs2
xperm8 x9, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x6, 0x720f6fe8 # initialize rs1
li x10, 0xeba189dc # initialize rs2
xperm8 x10, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x5, 0xf7b65036 # initialize rs1
li x11, 0x5a5d8213 # initialize rs2
xperm8 x11, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x8, 0x0f024850 # initialize rs1
li x12, 0x3b3743f0 # initialize rs2
xperm8 x12, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x31, 0xdd25cad5 # initialize rs1
li x13, 0x3de89161 # initialize rs2
xperm8 x13, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x93ec05ad # initialize rs1
li x14, 0x1dc61732 # initialize rs2
xperm8 x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0xf96c0db5 # initialize rs1
li x15, 0xd70d33a4 # initialize rs2
xperm8 x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0xf1ac2653 # initialize rs1
li x16, 0x82861303 # initialize rs2
xperm8 x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0xc76c4898 # initialize rs1
li x17, 0x30f60a71 # initialize rs2
xperm8 x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x1d66fc99 # initialize rs1
li x18, 0x4ea9f46a # initialize rs2
xperm8 x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x22, 0xc6fd43bb # initialize rs1
li x19, 0xb6b43829 # initialize rs2
xperm8 x19, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x9, 0x5a7ad9ed # initialize rs1
li x20, 0xa97415a4 # initialize rs2
xperm8 x20, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x832b88ad # initialize rs1
li x21, 0x989f0c1e # initialize rs2
xperm8 x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x7, 0xbcb6c4d5 # initialize rs1
li x22, 0x81ad8627 # initialize rs2
xperm8 x22, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x9d7aabc9 # initialize rs1
li x23, 0x8a8b8e82 # initialize rs2
xperm8 x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0x3bb9adbe # initialize rs1
li x24, 0xef4934dd # initialize rs2
xperm8 x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x8, 0xcd084db7 # initialize rs1
li x25, 0xf231aa7b # initialize rs2
xperm8 x25, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x22, 0xa91adf90 # initialize rs1
li x26, 0xa58c33c2 # initialize rs2
xperm8 x26, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x3, 0x12102d72 # initialize rs1
li x27, 0x119916ea # initialize rs2
xperm8 x27, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0x11c7bd58 # initialize rs1
li x28, 0x59d85e7c # initialize rs2
xperm8 x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0xbbfc011a # initialize rs1
li x29, 0xdb364480 # initialize rs2
xperm8 x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x3751db9b # initialize rs1
li x30, 0x2c32b122 # initialize rs2
xperm8 x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x2, 0x1cfb8f68 # initialize rs1
li x31, 0x7abb03fa # initialize rs2
xperm8 x31, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd39506c9 # initialize rs1
li x0, 0x87f3394b # initialize rs2
xperm8 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x841b0853 # initialize rs1
li x1, 0xa2b52b97 # initialize rs2
xperm8 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x32c9ce81 # initialize rs1
li x2, 0x433f4c70 # initialize rs2
xperm8 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xcd93322c # initialize rs1
li x3, 0xa17d69cf # initialize rs2
xperm8 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcf212b9c # initialize rs1
li x4, 0xea8ca006 # initialize rs2
xperm8 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa38e48e8 # initialize rs1
li x5, 0x55852c9c # initialize rs2
xperm8 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed76816b # initialize rs1
li x6, 0xf8795618 # initialize rs2
xperm8 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5921b1dd # initialize rs1
li x7, 0x78f91a9e # initialize rs2
xperm8 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xded362eb # initialize rs1
li x8, 0xaa50fe05 # initialize rs2
xperm8 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa07c0ffc # initialize rs1
li x9, 0xb3436b3e # initialize rs2
xperm8 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x381870b1 # initialize rs1
li x10, 0x085300ec # initialize rs2
xperm8 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xaaec27ce # initialize rs1
li x11, 0x3ba8864a # initialize rs2
xperm8 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x3a4f0954 # initialize rs1
li x12, 0xc7bb93c5 # initialize rs2
xperm8 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x25ef0378 # initialize rs1
li x13, 0x7fae61e3 # initialize rs2
xperm8 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x61dc9760 # initialize rs1
li x14, 0xf8e07034 # initialize rs2
xperm8 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6f6ba0d3 # initialize rs1
li x15, 0xe91c0b94 # initialize rs2
xperm8 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf6fd3166 # initialize rs1
li x16, 0xf085bcd1 # initialize rs2
xperm8 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x24fb09c1 # initialize rs1
li x17, 0x1fd6fce6 # initialize rs2
xperm8 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x958fdcd8 # initialize rs1
li x18, 0x5f9ace35 # initialize rs2
xperm8 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x36071f71 # initialize rs1
li x19, 0x9d2d1b0f # initialize rs2
xperm8 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3548b359 # initialize rs1
li x20, 0x0851937b # initialize rs2
xperm8 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa19181ed # initialize rs1
li x21, 0x3805b1d3 # initialize rs2
xperm8 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9e5a2d42 # initialize rs1
li x22, 0x337c4eb1 # initialize rs2
xperm8 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3c9cb091 # initialize rs1
li x23, 0x4473c34c # initialize rs2
xperm8 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x8f415129 # initialize rs1
li x24, 0x7e773f1e # initialize rs2
xperm8 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x490954b5 # initialize rs1
li x25, 0x11932729 # initialize rs2
xperm8 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x52339889 # initialize rs1
li x26, 0xdf234145 # initialize rs2
xperm8 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x0f712774 # initialize rs1
li x27, 0x0b845849 # initialize rs2
xperm8 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa5763fcf # initialize rs1
li x28, 0xfc2c9ea7 # initialize rs2
xperm8 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x0d9ad980 # initialize rs1
li x29, 0x2d5a8301 # initialize rs2
xperm8 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb7e731d7 # initialize rs1
li x30, 0xb777cd22 # initialize rs2
xperm8 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe911128b # initialize rs1
li x31, 0x9feb103f # initialize rs2
xperm8 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x13, x20 # perform first operation
xperm8 x12, x19, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x10, x22 # perform first operation
xperm8 x18, x21, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x6, x8 # perform first operation
xperm8 x16, x21, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x18, x2 # perform first operation
xperm8 x25, x25, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x18, x17 # perform first operation
xperm8 x7, x9, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x21, x27 # perform first operation
xperm8 x27, x21, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x9, x22 # perform first operation
xperm8 x5, x7, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x31, x25 # perform first operation
xperm8 x6, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x2, x17 # perform first operation
xperm8 x31, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x28, x9 # perform first operation
xperm8 x28, x6, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x5, x17 # perform first operation
xperm8 x17, x31, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x11, x5 # perform first operation
xperm8 x28, x26, x14 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,3136 #combined


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
