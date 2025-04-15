///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-packh.S
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
li x0, 0x19a82beb # initialize rs1
li x7, 0x91e6978b # initialize rs2
packh x24, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x36236eb8 # initialize rs1
li x22, 0xfcafa981 # initialize rs2
packh x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x95ef9958 # initialize rs1
li x27, 0x348f2f26 # initialize rs2
packh x29, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x19c3ea3b # initialize rs1
li x12, 0xe7e8e44c # initialize rs2
packh x10, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2d1c18b0 # initialize rs1
li x12, 0x39a15a54 # initialize rs2
packh x14, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xeb37810b # initialize rs1
li x7, 0xb4ba05cf # initialize rs2
packh x26, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1d92021a # initialize rs1
li x16, 0x633b6ce5 # initialize rs2
packh x27, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd859c4ab # initialize rs1
li x23, 0x830f1289 # initialize rs2
packh x13, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6db80271 # initialize rs1
li x19, 0x6db1f2c8 # initialize rs2
packh x26, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb0d48996 # initialize rs1
li x16, 0x7439adaa # initialize rs2
packh x17, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x41697796 # initialize rs1
li x7, 0xaee12e63 # initialize rs2
packh x28, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8652cd4c # initialize rs1
li x8, 0x104c036a # initialize rs2
packh x27, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xabfaa021 # initialize rs1
li x29, 0x231e7ae8 # initialize rs2
packh x20, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5345e87a # initialize rs1
li x11, 0x7201aba6 # initialize rs2
packh x25, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x48f2841d # initialize rs1
li x20, 0x4fb71f7b # initialize rs2
packh x8, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6c44573d # initialize rs1
li x17, 0x6afbd124 # initialize rs2
packh x12, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x432be3e1 # initialize rs1
li x22, 0xf140952f # initialize rs2
packh x12, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1139b0e1 # initialize rs1
li x10, 0xf3521fcb # initialize rs2
packh x5, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x30c8f594 # initialize rs1
li x22, 0x9bd0607f # initialize rs2
packh x16, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x3be8c592 # initialize rs1
li x26, 0x6f24cb90 # initialize rs2
packh x3, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5c44c35c # initialize rs1
li x5, 0xfaf79478 # initialize rs2
packh x13, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb8c7bb71 # initialize rs1
li x30, 0x2d155502 # initialize rs2
packh x28, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa8e85e3c # initialize rs1
li x3, 0x8c81bb26 # initialize rs2
packh x7, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x269df7b1 # initialize rs1
li x28, 0xf801b96d # initialize rs2
packh x22, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd580da71 # initialize rs1
li x30, 0xf5da9b57 # initialize rs2
packh x8, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd2a3bad0 # initialize rs1
li x3, 0x4a08c25f # initialize rs2
packh x30, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x83f811a3 # initialize rs1
li x2, 0x09574f5d # initialize rs2
packh x31, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x961bbcb9 # initialize rs1
li x13, 0xec24e925 # initialize rs2
packh x30, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0b9c07b9 # initialize rs1
li x9, 0x1dfc7695 # initialize rs2
packh x24, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x46e22b42 # initialize rs1
li x5, 0x6b8a7d09 # initialize rs2
packh x18, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xec96cc58 # initialize rs1
li x5, 0x26c20de5 # initialize rs2
packh x9, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x430bf59b # initialize rs1
li x15, 0x3b7b3d93 # initialize rs2
packh x6, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0x4ecec3ab # initialize rs1
li x0, 0xa00ac97a # initialize rs2
packh x10, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xfe14e35c # initialize rs1
li x1, 0x8fbe08b5 # initialize rs2
packh x24, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x96ad45ee # initialize rs1
li x2, 0x2d26f2df # initialize rs2
packh x30, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0x8d3e88fd # initialize rs1
li x3, 0x92943999 # initialize rs2
packh x5, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xec8af5de # initialize rs1
li x4, 0xa073edbc # initialize rs2
packh x3, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xeaffb142 # initialize rs1
li x5, 0x6aa81136 # initialize rs2
packh x22, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xeef66582 # initialize rs1
li x6, 0x89c1fe15 # initialize rs2
packh x29, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xe0f3df23 # initialize rs1
li x7, 0x640bedcc # initialize rs2
packh x18, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xd5bc8b9e # initialize rs1
li x8, 0x866bbaf8 # initialize rs2
packh x19, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0xf561a09d # initialize rs1
li x9, 0x5a2a6a23 # initialize rs2
packh x10, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x30, 0xad019b06 # initialize rs1
li x10, 0xf64b1f0d # initialize rs2
packh x31, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x10, 0xd04d2a88 # initialize rs1
li x11, 0xfbf5581b # initialize rs2
packh x29, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x80e39b4f # initialize rs1
li x12, 0x807320a8 # initialize rs2
packh x3, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x182334b2 # initialize rs1
li x13, 0xf6762529 # initialize rs2
packh x1, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0xa9e6529f # initialize rs1
li x14, 0x9e765812 # initialize rs2
packh x27, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x0b6819ee # initialize rs1
li x15, 0xab312234 # initialize rs2
packh x16, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0xcd37258f # initialize rs1
li x16, 0x7ea3ba52 # initialize rs2
packh x14, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0x70c8b941 # initialize rs1
li x17, 0xabbb3387 # initialize rs2
packh x12, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x6c2ccc1b # initialize rs1
li x18, 0x0034bdfc # initialize rs2
packh x23, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x74dc8833 # initialize rs1
li x19, 0x33daff8a # initialize rs2
packh x2, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x376377f6 # initialize rs1
li x20, 0xd851b8ed # initialize rs2
packh x5, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0xadd1415e # initialize rs1
li x21, 0xf64c7657 # initialize rs2
packh x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x5a213ad2 # initialize rs1
li x22, 0x2c1c2fe2 # initialize rs2
packh x5, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0xc79d0b35 # initialize rs1
li x23, 0x0372a7be # initialize rs2
packh x6, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x12520b80 # initialize rs1
li x24, 0x5114d272 # initialize rs2
packh x21, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x07da8711 # initialize rs1
li x25, 0xf543250c # initialize rs2
packh x23, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0x4f547ffb # initialize rs1
li x26, 0x76760f21 # initialize rs2
packh x21, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x1660fb3f # initialize rs1
li x27, 0xafb4d410 # initialize rs2
packh x8, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x7c5a2ca6 # initialize rs1
li x28, 0x740b11d2 # initialize rs2
packh x23, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0x0f8dded9 # initialize rs1
li x29, 0xb72affbb # initialize rs2
packh x18, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x11, 0xa6d36abb # initialize rs1
li x30, 0x079355c6 # initialize rs2
packh x29, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0xce06bf18 # initialize rs1
li x31, 0x49c20294 # initialize rs2
packh x5, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 252)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x34679fed # initialize rs1
li x24, 0xd2a41d07 # initialize rs2
packh x0, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0xe2d12cd9 # initialize rs1
li x30, 0x3e69e608 # initialize rs2
packh x1, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xebfcb87a # initialize rs1
li x6, 0x847c2332 # initialize rs2
packh x2, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xc4ad85b0 # initialize rs1
li x12, 0xf1d25072 # initialize rs2
packh x3, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x4d7026ea # initialize rs1
li x3, 0x4bd1ae6c # initialize rs2
packh x4, x27, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xec15d13f # initialize rs1
li x29, 0xf7747ff7 # initialize rs2
packh x5, x31, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xcb3b359c # initialize rs1
li x15, 0x9e758b42 # initialize rs2
packh x6, x16, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xdba0bb4d # initialize rs1
li x10, 0xa8515491 # initialize rs2
packh x7, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xd3e423fa # initialize rs1
li x27, 0xcf866a56 # initialize rs2
packh x8, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x94a1acf7 # initialize rs1
li x30, 0xd266c8c5 # initialize rs2
packh x9, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x513ef034 # initialize rs1
li x18, 0x0bbfd301 # initialize rs2
packh x10, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x9b678c8c # initialize rs1
li x10, 0xbd618919 # initialize rs2
packh x11, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x72c2eb8c # initialize rs1
li x7, 0x0f5ab84d # initialize rs2
packh x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x7c45125c # initialize rs1
li x12, 0x3f8209d5 # initialize rs2
packh x13, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x5097dc6b # initialize rs1
li x3, 0x2c5738c8 # initialize rs2
packh x14, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x3e4f36c3 # initialize rs1
li x22, 0x6df1ecc6 # initialize rs2
packh x15, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0xf34b9141 # initialize rs1
li x3, 0xcee3f57d # initialize rs2
packh x16, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x37eba0d6 # initialize rs1
li x7, 0xb30fb662 # initialize rs2
packh x17, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0xcc8ff1f7 # initialize rs1
li x22, 0x5c17b0f4 # initialize rs2
packh x18, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xcdcb4cfa # initialize rs1
li x9, 0xc0c1d3a2 # initialize rs2
packh x19, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0xed40c337 # initialize rs1
li x31, 0x99ccf22a # initialize rs2
packh x20, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x0975003f # initialize rs1
li x28, 0xfeb42c94 # initialize rs2
packh x21, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xefe4557e # initialize rs1
li x19, 0x733c38da # initialize rs2
packh x22, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0xf1e6f2d2 # initialize rs1
li x18, 0xc91f6c2a # initialize rs2
packh x23, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x9fb5e4d6 # initialize rs1
li x16, 0xf1367a09 # initialize rs2
packh x24, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0x030bbf2f # initialize rs1
li x3, 0x7e757873 # initialize rs2
packh x25, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x3b5cef29 # initialize rs1
li x10, 0x0f3390eb # initialize rs2
packh x26, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x22, 0x5afa51cb # initialize rs1
li x12, 0x4236cca7 # initialize rs2
packh x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0xa97af365 # initialize rs1
li x8, 0xe6285556 # initialize rs2
packh x28, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0xd960f413 # initialize rs1
li x9, 0xfe170dc7 # initialize rs2
packh x29, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0xa6642e43 # initialize rs1
li x24, 0x6eaf734b # initialize rs2
packh x30, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x638e3f05 # initialize rs1
li x13, 0x16c99e33 # initialize rs2
packh x31, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x00000000 # initialize rs1
li x9, 0x29380c11 # initialize rs2
packh x18, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x00000001 # initialize rs1
li x17, 0xa7e0ea9b # initialize rs2
packh x12, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x25, 0x4709de4b # initialize rs2
packh x29, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x29, 0xfb347e44 # initialize rs2
packh x26, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x21, 0x4fd378d8 # initialize rs2
packh x2, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
li x16, 0x20fb73af # initialize rs2
packh x5, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x3, 0x7ffffffe # initialize rs1
li x27, 0x249e11f6 # initialize rs2
packh x28, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
li x29, 0x33b81cb9 # initialize rs2
packh x10, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
li x15, 0x4b525094 # initialize rs2
packh x11, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x20, 0x5bbc8872 # initialize rs1
li x26, 0x886e0458 # initialize rs2
packh x12, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x2, 0x84babdc3 # initialize rs2
packh x1, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x12, 0x6f8f41be # initialize rs2
packh x26, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xe66c984c # initialize rs1
li x26, 0x00000000 # initialize rs2
packh x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x05a711a1 # initialize rs1
li x26, 0x00000001 # initialize rs2
packh x9, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0xbaf469c7 # initialize rs1
li x23, 0x00000002 # initialize rs2
packh x21, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0xa8502cd3 # initialize rs1
li x28, 0x80000000 # initialize rs2
packh x27, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x17, 0x0f32c714 # initialize rs1
li x31, 0x80000001 # initialize rs2
packh x11, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x1, 0x270dfabb # initialize rs1
li x27, 0x7fffffff # initialize rs2
packh x6, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x1, 0x270ddb67 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
packh x18, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x389b01fe # initialize rs1
li x22, 0xffffffff # initialize rs2
packh x15, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x76077dfe # initialize rs1
li x9, 0xfffffffe # initialize rs2
packh x3, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x29, 0x13e3f2db # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
packh x1, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x6, 0xa982e00a # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
packh x26, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x9, 0x5489a260 # initialize rs1
li x27, 0x55555555 # initialize rs2
packh x28, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
packh x26, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x00000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
packh x19, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x00000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
packh x6, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
packh x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x13, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
packh x1, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x00000000 # initialize rs1
li x8, 0x7fffffff # initialize rs2
packh x6, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x27, 0x00000000 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
packh x29, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x2, 0x00000000 # initialize rs1
li x22, 0xffffffff # initialize rs2
packh x16, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x00000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
packh x3, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x3, 0x00000000 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
packh x16, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x22, 0x00000000 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
packh x2, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
packh x12, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x13, 0x00000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
packh x14, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
packh x28, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
packh x19, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x11, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
packh x16, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x9, 0x00000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
packh x30, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x1, 0x00000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
packh x6, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x21, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
packh x11, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x00000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
packh x5, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x00000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
packh x30, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x15, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
packh x30, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x22, 0x00000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
packh x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x8, 0x00000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
packh x22, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x00000002 # initialize rs1
li x26, 0x00000000 # initialize rs2
packh x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x00000002 # initialize rs1
li x3, 0x00000001 # initialize rs2
packh x11, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
packh x31, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0x00000002 # initialize rs1
li x27, 0x80000000 # initialize rs2
packh x1, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x7, 0x80000001 # initialize rs2
packh x30, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x9, 0x00000002 # initialize rs1
li x5, 0x7fffffff # initialize rs2
packh x21, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x8, 0x00000002 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
packh x2, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x00000002 # initialize rs1
li x12, 0xffffffff # initialize rs2
packh x25, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x26, 0xfffffffe # initialize rs2
packh x25, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
packh x9, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x00000002 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
packh x26, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x29, 0x00000002 # initialize rs1
li x27, 0x55555555 # initialize rs2
packh x26, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x5, 0x80000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
packh x16, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x16, 0x00000001 # initialize rs2
packh x22, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x6, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
packh x8, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x9, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
packh x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x13, 0x80000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
packh x30, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x11, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
packh x21, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x23, 0x80000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
packh x11, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x10, 0x80000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
packh x13, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x16, 0x80000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
packh x29, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x13, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
packh x2, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0x80000000 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
packh x19, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x25, 0x55555555 # initialize rs2
packh x9, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x24, 0x80000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
packh x15, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x12, 0x80000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
packh x21, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x17, 0x80000001 # initialize rs1
li x3, 0x00000002 # initialize rs2
packh x5, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
packh x7, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
packh x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x2, 0x80000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
packh x11, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x26, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
packh x1, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x31, 0x80000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
packh x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
packh x19, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x8, 0x80000001 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
packh x19, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
packh x24, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
packh x12, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
packh x24, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x17, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
packh x10, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
packh x5, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x31, 0x7fffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
packh x24, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x26, 0x7fffffff # initialize rs1
li x31, 0x80000001 # initialize rs2
packh x17, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
packh x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
packh x15, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x8, 0x7fffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
packh x7, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x15, 0x7fffffff # initialize rs1
li x17, 0xfffffffe # initialize rs2
packh x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x8, 0x7fffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
packh x21, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x9, 0x7fffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
packh x18, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x11, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
packh x13, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
packh x2, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x30, 0x7ffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
packh x25, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
packh x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x10, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
packh x8, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x7, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
packh x22, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
packh x29, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
packh x30, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x22, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
packh x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
packh x24, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x13, 0x7ffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
packh x20, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x22, 0x7ffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
packh x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x22, 0x7ffffffe # initialize rs1
li x11, 0x55555555 # initialize rs2
packh x27, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
packh x31, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
packh x6, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x16, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
packh x12, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x3, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
packh x31, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x18, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
packh x5, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x15, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
packh x26, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x5, 0xffffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
packh x21, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
packh x1, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x2, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
packh x8, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x18, 0xffffffff # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
packh x20, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x20, 0xffffffff # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
packh x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x16, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
packh x21, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0xfffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
packh x16, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x30, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
packh x8, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x16, 0x00000002 # initialize rs2
packh x23, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x8, 0xfffffffe # initialize rs1
li x11, 0x80000000 # initialize rs2
packh x28, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
packh x14, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0xfffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
packh x7, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x21, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
packh x7, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0xfffffffe # initialize rs1
li x2, 0xffffffff # initialize rs2
packh x16, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
packh x21, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x1, 0xfffffffe # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
packh x26, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
packh x26, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x19, 0xfffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
packh x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x14, 0x5bbc8872 # initialize rs1
li x11, 0x00000000 # initialize rs2
packh x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x13, 0x5bbc8872 # initialize rs1
li x16, 0x00000001 # initialize rs2
packh x17, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x11, 0x5bbc8872 # initialize rs1
li x13, 0x00000002 # initialize rs2
packh x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x7, 0x5bbc8872 # initialize rs1
li x2, 0x80000000 # initialize rs2
packh x9, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x28, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
packh x19, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x17, 0x5bbc8872 # initialize rs1
li x15, 0x7fffffff # initialize rs2
packh x20, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x6, 0x5bbc8872 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
packh x17, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x1, 0xffffffff # initialize rs2
packh x26, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x19, 0xfffffffe # initialize rs2
packh x24, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
packh x31, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x1, 0x5bbc8872 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
packh x21, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x27, 0x55555555 # initialize rs2
packh x8, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x30, 0x00000000 # initialize rs2
packh x26, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaa # initialize rs1
li x7, 0x00000001 # initialize rs2
packh x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x26, 0x00000002 # initialize rs2
packh x8, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
packh x6, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xaaaaaaaa # initialize rs1
li x29, 0x80000001 # initialize rs2
packh x31, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x28, 0x7fffffff # initialize rs2
packh x2, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x11, 0xaaaaaaaa # initialize rs1
li x18, 0x7ffffffe # initialize rs2
packh x5, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
packh x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x13, 0xfffffffe # initialize rs2
packh x3, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x25, 0xaaaaaaaa # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
packh x15, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x23, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
packh x25, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x16, 0xaaaaaaaa # initialize rs1
li x12, 0x55555555 # initialize rs2
packh x29, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0x55555555 # initialize rs1
li x30, 0x00000000 # initialize rs2
packh x29, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x55555555 # initialize rs1
li x18, 0x00000001 # initialize rs2
packh x21, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0x55555555 # initialize rs1
li x10, 0x00000002 # initialize rs2
packh x1, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x31, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
packh x20, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
packh x13, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x31, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
packh x8, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x9, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
packh x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
packh x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x12, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
packh x24, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x18, 0x55555555 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
packh x19, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x31, 0x55555555 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
packh x30, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x13, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
packh x18, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa317f271 # initialize rs1
li x0, 0x459e9cf9 # initialize rs2
packh x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa5b59fef # initialize rs1
li x1, 0xf2c63845 # initialize rs2
packh x6, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x1ea50e1b # initialize rs1
li x2, 0x01fcc85e # initialize rs2
packh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdb00ca4c # initialize rs1
li x3, 0x2d747a23 # initialize rs2
packh x13, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc2876732 # initialize rs1
li x4, 0xfe07dedd # initialize rs2
packh x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9b71d5f9 # initialize rs1
li x5, 0x43719c80 # initialize rs2
packh x25, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe21b56a9 # initialize rs1
li x6, 0xb6e66176 # initialize rs2
packh x5, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb0fdd2b5 # initialize rs1
li x7, 0xedfe2e47 # initialize rs2
packh x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x16298903 # initialize rs1
li x8, 0xf6e2fac3 # initialize rs2
packh x3, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4d74c83f # initialize rs1
li x9, 0x59903776 # initialize rs2
packh x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa021f986 # initialize rs1
li x10, 0x7ee5bfc9 # initialize rs2
packh x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xde7c7a7a # initialize rs1
li x11, 0x240abb5a # initialize rs2
packh x14, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xbd952c9f # initialize rs1
li x12, 0x4bbcccc9 # initialize rs2
packh x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa793e69a # initialize rs1
li x13, 0x0c1d99cc # initialize rs2
packh x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1480d936 # initialize rs1
li x14, 0x1b46242c # initialize rs2
packh x25, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xfb901732 # initialize rs1
li x15, 0x43183acb # initialize rs2
packh x9, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xab3c32ae # initialize rs1
li x16, 0x643c5d7a # initialize rs2
packh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x33b00a32 # initialize rs1
li x17, 0x202fa05e # initialize rs2
packh x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x5d82bbdf # initialize rs1
li x18, 0x594dff69 # initialize rs2
packh x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc800a1ff # initialize rs1
li x19, 0xfe0791b2 # initialize rs2
packh x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd635c052 # initialize rs1
li x20, 0x945a0758 # initialize rs2
packh x23, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x3d85fcb8 # initialize rs1
li x21, 0x0242c87d # initialize rs2
packh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x4498a1c8 # initialize rs1
li x22, 0xd1f10baf # initialize rs2
packh x25, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x6294c989 # initialize rs1
li x23, 0x24e22c26 # initialize rs2
packh x31, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x81bf8ecc # initialize rs1
li x24, 0xa2ae9467 # initialize rs2
packh x7, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x759c6e92 # initialize rs1
li x25, 0x9b587715 # initialize rs2
packh x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0444f3b1 # initialize rs1
li x26, 0x617fef45 # initialize rs2
packh x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x58264445 # initialize rs1
li x27, 0x5233b2cb # initialize rs2
packh x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xaa1083cb # initialize rs1
li x28, 0x98e6581a # initialize rs2
packh x17, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf8455622 # initialize rs1
li x29, 0xc20708de # initialize rs2
packh x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x353baf9d # initialize rs1
li x30, 0x5f9be79b # initialize rs2
packh x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa994e2f5 # initialize rs1
li x31, 0xd623eddf # initialize rs2
packh x21, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd1abd60e # initialize rs1
li x27, 0xd9b12af1 # initialize rs2
packh x0, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3de8da71 # initialize rs1
li x11, 0x609718c4 # initialize rs2
packh x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x88aebc3a # initialize rs1
li x7, 0xfa043040 # initialize rs2
packh x2, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1ee77f0a # initialize rs1
li x10, 0x35e28391 # initialize rs2
packh x3, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x802dbbbd # initialize rs1
li x16, 0x2ec66a9e # initialize rs2
packh x4, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e569e98 # initialize rs1
li x27, 0xd5f0e2a0 # initialize rs2
packh x5, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd9ecf120 # initialize rs1
li x4, 0xf5a7c48c # initialize rs2
packh x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd983492a # initialize rs1
li x20, 0x045495e7 # initialize rs2
packh x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe2118a10 # initialize rs1
li x23, 0xabe78626 # initialize rs2
packh x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc03d4c20 # initialize rs1
li x3, 0x91d466ef # initialize rs2
packh x9, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x86d02b2a # initialize rs1
li x19, 0xb7dba1b5 # initialize rs2
packh x10, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8e1da70b # initialize rs1
li x24, 0xd90a0af1 # initialize rs2
packh x11, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2f77a826 # initialize rs1
li x2, 0xc7155c75 # initialize rs2
packh x12, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x8503d0f7 # initialize rs1
li x30, 0xe2fbeb07 # initialize rs2
packh x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe845a45b # initialize rs1
li x26, 0x304bf042 # initialize rs2
packh x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xea2a3d0f # initialize rs1
li x19, 0x888ff659 # initialize rs2
packh x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbde1fd55 # initialize rs1
li x10, 0x93a42fc0 # initialize rs2
packh x16, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1f282a1c # initialize rs1
li x10, 0x74f5ed6f # initialize rs2
packh x17, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x76ae19af # initialize rs1
li x7, 0xb97b8376 # initialize rs2
packh x18, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x815b0348 # initialize rs1
li x13, 0x3c552391 # initialize rs2
packh x19, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x33177320 # initialize rs1
li x24, 0x5211b6f4 # initialize rs2
packh x20, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x04f7ae9e # initialize rs1
li x24, 0x1a4df3ff # initialize rs2
packh x21, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x59ef7c3f # initialize rs1
li x22, 0x0784df75 # initialize rs2
packh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x71944a28 # initialize rs1
li x12, 0x81ea2b20 # initialize rs2
packh x23, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xdffe2913 # initialize rs1
li x5, 0xab52850f # initialize rs2
packh x24, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x418d3388 # initialize rs1
li x2, 0x320a7cf1 # initialize rs2
packh x25, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0a99c0d0 # initialize rs1
li x26, 0x4cba91b8 # initialize rs2
packh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x91d23195 # initialize rs1
li x16, 0xe55393ea # initialize rs2
packh x27, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x39f61d98 # initialize rs1
li x25, 0xe3083ae7 # initialize rs2
packh x28, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x97e6caca # initialize rs1
li x8, 0x84efc6a4 # initialize rs2
packh x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6da50f4d # initialize rs1
li x8, 0x9cb5f8af # initialize rs2
packh x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa21f8636 # initialize rs1
li x7, 0x9c5bd313 # initialize rs2
packh x31, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x2f00a3d2 # initialize rs1
li x0, 0xd52615ea # initialize rs2
packh x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x5dcb8053 # initialize rs1
li x1, 0x4ec2b032 # initialize rs2
packh x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0x1efa0314 # initialize rs1
li x2, 0x4f3c777e # initialize rs2
packh x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x18, 0x69ae46c7 # initialize rs1
li x3, 0xd9aa7b44 # initialize rs2
packh x3, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xdfc98670 # initialize rs1
li x4, 0x585a9567 # initialize rs2
packh x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xced9d15c # initialize rs1
li x5, 0x628e375b # initialize rs2
packh x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x3f5d1deb # initialize rs1
li x6, 0x7d5238dc # initialize rs2
packh x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x3fadac22 # initialize rs1
li x7, 0x4af879c8 # initialize rs2
packh x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0xafafaa87 # initialize rs1
li x8, 0x7df63077 # initialize rs2
packh x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x21, 0xc6d9fbe2 # initialize rs1
li x9, 0x98769f6e # initialize rs2
packh x9, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x13, 0x761718c1 # initialize rs1
li x10, 0xd11c512e # initialize rs2
packh x10, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x12, 0x8f9b8f6c # initialize rs1
li x11, 0xcf94c8d4 # initialize rs2
packh x11, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x21, 0x6aa0be82 # initialize rs1
li x12, 0xf355d6c3 # initialize rs2
packh x12, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x21527241 # initialize rs1
li x13, 0xf7026e6a # initialize rs2
packh x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0x52870c68 # initialize rs1
li x14, 0x37ab03ba # initialize rs2
packh x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0xfd8033b3 # initialize rs1
li x15, 0xb938832b # initialize rs2
packh x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0x80d18cfc # initialize rs1
li x16, 0x179c60b2 # initialize rs2
packh x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x11, 0x50874575 # initialize rs1
li x17, 0x2a755b53 # initialize rs2
packh x17, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x17, 0xe9beec66 # initialize rs1
li x18, 0xbe4a4e50 # initialize rs2
packh x18, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0xa1fdd67b # initialize rs1
li x19, 0xa54f2d9e # initialize rs2
packh x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x895000f3 # initialize rs1
li x20, 0x7e3e0dc2 # initialize rs2
packh x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0x683a24e3 # initialize rs1
li x21, 0x8933ae4c # initialize rs2
packh x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0xefaaf6ad # initialize rs1
li x22, 0x6838829a # initialize rs2
packh x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0x08a8308a # initialize rs1
li x23, 0xf50f5b51 # initialize rs2
packh x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x5, 0xb177679e # initialize rs1
li x24, 0xd8c1b85c # initialize rs2
packh x24, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x8b46ba02 # initialize rs1
li x25, 0x13cf0956 # initialize rs2
packh x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0xbc355ae2 # initialize rs1
li x26, 0x649516a6 # initialize rs2
packh x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x8, 0xd23a4aaa # initialize rs1
li x27, 0xf12ce076 # initialize rs2
packh x27, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0xd59f48f0 # initialize rs1
li x28, 0x542ba8a1 # initialize rs2
packh x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x28, 0xe835fa2b # initialize rs1
li x29, 0xccd40d1c # initialize rs2
packh x29, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0x1ddf94bb # initialize rs1
li x30, 0xd1126a7b # initialize rs2
packh x30, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x3a0cd21f # initialize rs1
li x31, 0xcc16008d # initialize rs2
packh x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x819691c2 # initialize rs1
li x0, 0x533b01ae # initialize rs2
packh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x96bffcad # initialize rs1
li x1, 0xf24867e2 # initialize rs2
packh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa42c7ee7 # initialize rs1
li x2, 0xe1ca2822 # initialize rs2
packh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd20cce01 # initialize rs1
li x3, 0x8fdd413f # initialize rs2
packh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x48453caf # initialize rs1
li x4, 0x931cc541 # initialize rs2
packh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e50d5cc # initialize rs1
li x5, 0xc6a3d83f # initialize rs2
packh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8f37696b # initialize rs1
li x6, 0x34d48aa8 # initialize rs2
packh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1b0f2e67 # initialize rs1
li x7, 0x8e21f85b # initialize rs2
packh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xf1070ff8 # initialize rs1
li x8, 0x1973d8b5 # initialize rs2
packh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x088656fc # initialize rs1
li x9, 0xdaa8fc79 # initialize rs2
packh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9d581fd0 # initialize rs1
li x10, 0x8ae8e1ce # initialize rs2
packh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2e7eac44 # initialize rs1
li x11, 0xa7207514 # initialize rs2
packh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xfac6e4d4 # initialize rs1
li x12, 0x0cb2932d # initialize rs2
packh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2e48e192 # initialize rs1
li x13, 0xd250308f # initialize rs2
packh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x249daf2f # initialize rs1
li x14, 0xbd2527d9 # initialize rs2
packh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbd4f4f3d # initialize rs1
li x15, 0xb88e5d9f # initialize rs2
packh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6352e3b8 # initialize rs1
li x16, 0x00db3d1b # initialize rs2
packh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x982c020c # initialize rs1
li x17, 0x72d2cd62 # initialize rs2
packh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd1a7db07 # initialize rs1
li x18, 0xe7d3f319 # initialize rs2
packh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb60687ab # initialize rs1
li x19, 0xf43825df # initialize rs2
packh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x71fc37ff # initialize rs1
li x20, 0xa23e4fbe # initialize rs2
packh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x29097e13 # initialize rs1
li x21, 0x5906d31e # initialize rs2
packh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x804dc425 # initialize rs1
li x22, 0xb84ddef0 # initialize rs2
packh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x21181976 # initialize rs1
li x23, 0x5a3ae732 # initialize rs2
packh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xefcf3062 # initialize rs1
li x24, 0x69bb49c4 # initialize rs2
packh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x260123f8 # initialize rs1
li x25, 0x0c9e1ec3 # initialize rs2
packh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x763f200d # initialize rs1
li x26, 0x92539c77 # initialize rs2
packh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd559ec2e # initialize rs1
li x27, 0x190abe1f # initialize rs2
packh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9fd9a087 # initialize rs1
li x28, 0x1232a88d # initialize rs2
packh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x70b190e3 # initialize rs1
li x29, 0xbc7af791 # initialize rs2
packh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x754c6819 # initialize rs1
li x30, 0x9a69a5fb # initialize rs2
packh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa812cdb9 # initialize rs1
li x31, 0x4440ee34 # initialize rs2
packh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x6, x30 # perform first operation
packh x14, x31, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x12, x8 # perform first operation
packh x11, x9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x30, x8 # perform first operation
packh x28, x15, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x18, x29 # perform first operation
packh x18, x28, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x23, x19 # perform first operation
packh x19, x27, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x29 # perform first operation
packh x29, x23, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x9, x20 # perform first operation
packh x1, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x23, x30 # perform first operation
packh x7, x12, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x13, x28 # perform first operation
packh x19, x20, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x22, x7 # perform first operation
packh x22, x31, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x26, x12 # perform first operation
packh x12, x19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x3, x30 # perform first operation
packh x21, x9, x14 # perform second (triggering) operation

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
