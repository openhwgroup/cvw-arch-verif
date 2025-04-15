///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkx/WALLY-COV-xperm4.S
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

.EQU SIGSIZE,1568


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
