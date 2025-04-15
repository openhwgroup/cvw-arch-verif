///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-andn.S
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
li x0, 0x972908c2ef77b5eb # initialize rs1
li x25, 0xc847043899ea5785 # initialize rs2
andn x6, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x748a6b77ccda3396 # initialize rs1
li x7, 0x55ea8b05988ab33b # initialize rs2
andn x24, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x49803e6c6fe3fd09 # initialize rs1
li x22, 0x259c640ea303cdd7 # initialize rs2
andn x26, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x383988ad481416b4 # initialize rs1
li x1, 0xa0d8db53c4e00a7e # initialize rs2
andn x12, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf322386f8c5c724e # initialize rs1
li x3, 0xdb0d0d2ffa388130 # initialize rs2
andn x16, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc2ece96427a5b508 # initialize rs1
li x31, 0x51b594b00945fc65 # initialize rs2
andn x15, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb9e296b1e5d72066 # initialize rs1
li x3, 0x5a8ccec9398ab823 # initialize rs2
andn x7, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xf09ea32a9ccaacf0 # initialize rs1
li x12, 0x40c67a4821b2c765 # initialize rs2
andn x22, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9cec0ca9e892039d # initialize rs1
li x5, 0xd580f0f2823c269d # initialize rs2
andn x6, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6c46f4d7a43a3ec4 # initialize rs1
li x27, 0xc160529fbbd36efa # initialize rs2
andn x30, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xfd482d70b73c8243 # initialize rs1
li x28, 0x1705e389e71a2bc1 # initialize rs2
andn x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0d6252f27ff4ca2f # initialize rs1
li x10, 0x19419512e56dca46 # initialize rs2
andn x29, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3d8025d64b89607d # initialize rs1
li x15, 0x4a4cd147e4fd905f # initialize rs2
andn x23, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x01ef40a3956efa09 # initialize rs1
li x17, 0xe83a7082bc300b7d # initialize rs2
andn x22, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6dfe9791abf5e818 # initialize rs1
li x12, 0xb101de81c92d697d # initialize rs2
andn x15, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x3901840a42236fa5 # initialize rs1
li x29, 0xd7464595651ab7f9 # initialize rs2
andn x27, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6febefb97ea4f30b # initialize rs1
li x10, 0xa08f785d32551ba3 # initialize rs2
andn x9, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcc892321077b9cb7 # initialize rs1
li x15, 0x788bec80fe8f7720 # initialize rs2
andn x16, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x72de831c1ffdc298 # initialize rs1
li x9, 0x4e956a9939bb9459 # initialize rs2
andn x5, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd518b68e8d7568a4 # initialize rs1
li x8, 0x3db79b4cdf18811c # initialize rs2
andn x20, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x66a9503806aa97d5 # initialize rs1
li x12, 0x77e3826a1441244a # initialize rs2
andn x18, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x057ac83aa57a05d3 # initialize rs1
li x17, 0x9d7e67b642f872a1 # initialize rs2
andn x13, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x15d94885a53744f3 # initialize rs1
li x24, 0xc2fb5ac6d4a75250 # initialize rs2
andn x23, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd5524b8c185fdaf5 # initialize rs1
li x2, 0x6470bc90349ecaa3 # initialize rs2
andn x5, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdde100997e0717af # initialize rs1
li x5, 0x475ddc84f279f992 # initialize rs2
andn x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x39cf5d461fbe7916 # initialize rs1
li x1, 0xef7fa27684569e25 # initialize rs2
andn x2, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcb13c17afa43c3c6 # initialize rs1
li x28, 0xd2207ef488866551 # initialize rs2
andn x20, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbf76a0c613a68632 # initialize rs1
li x31, 0x6968f283855411cb # initialize rs2
andn x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x585e95563599eb28 # initialize rs1
li x31, 0x569d03694bf71290 # initialize rs2
andn x21, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x66413919519ddcaa # initialize rs1
li x24, 0xdfab0fcfbc862c74 # initialize rs2
andn x27, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x231d60e40d61fe93 # initialize rs1
li x23, 0xbf5b3a74458037c2 # initialize rs2
andn x3, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb02cbf92a1d4559c # initialize rs1
li x2, 0x1e045994a85b67db # initialize rs2
andn x30, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0x3a78e51366135d02 # initialize rs1
li x0, 0x7bc8c0b08595cfca # initialize rs2
andn x16, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x6823928ded7a109f # initialize rs1
li x1, 0x7e6458d6b3ba5be9 # initialize rs2
andn x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0x4454464615969df9 # initialize rs1
li x2, 0x55ed10d21e9b8b09 # initialize rs2
andn x30, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x12, 0x984a026aa7ef9c45 # initialize rs1
li x3, 0xd337beb102b6eaaa # initialize rs2
andn x6, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x7d0a9576ae33e084 # initialize rs1
li x4, 0x7a985f5f4a8fc15b # initialize rs2
andn x11, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x30, 0xa50a84a7ad8d2dfa # initialize rs1
li x5, 0xc1b563285b6c4454 # initialize rs2
andn x2, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x7d80cd63ef4e3fea # initialize rs1
li x6, 0x7d8cb48b92bb33f8 # initialize rs2
andn x3, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x67414d6f41aa707e # initialize rs1
li x7, 0xc5d0f9669a53174c # initialize rs2
andn x27, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xfe8050d38e46f7e8 # initialize rs1
li x8, 0x84bd7a11bfb976d1 # initialize rs2
andn x9, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x072e58538875fbe0 # initialize rs1
li x9, 0x29a0c3461ba73a4e # initialize rs2
andn x28, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x8258e9e9bfbfd4f0 # initialize rs1
li x10, 0x1e80fc8970453e5d # initialize rs2
andn x8, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xc51eb8345a4b2301 # initialize rs1
li x11, 0x05191c4381090ae2 # initialize rs2
andn x20, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x5997371977882944 # initialize rs1
li x12, 0x6c8be576db1e90d5 # initialize rs2
andn x19, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x12, 0x1e67808ef65fdc41 # initialize rs1
li x13, 0x7219812ed99a81e5 # initialize rs2
andn x9, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x0ab54919f16ccc12 # initialize rs1
li x14, 0xd8ae4ebe938ec849 # initialize rs2
andn x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0x5dd5d3dbcf83adc0 # initialize rs1
li x15, 0x40c40cde7597fb51 # initialize rs2
andn x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x61482766ac6a5ab6 # initialize rs1
li x16, 0xd54bfb7a86b77077 # initialize rs2
andn x14, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0xd7fc13d62a50965b # initialize rs1
li x17, 0xbe9ba9ec7744694f # initialize rs2
andn x30, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x93229a16bf930a8a # initialize rs1
li x18, 0x863f00db196b8f1b # initialize rs2
andn x25, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x914b0db27ceff01c # initialize rs1
li x19, 0x56e55f3a0043f0da # initialize rs2
andn x3, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x602785db71bfb299 # initialize rs1
li x20, 0x940938ec4b85398e # initialize rs2
andn x22, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xff9a43b98763b749 # initialize rs1
li x21, 0x6ad8201fc1d8fa8e # initialize rs2
andn x1, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x302790f7054dc614 # initialize rs1
li x22, 0x8986418a752c8a06 # initialize rs2
andn x15, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0x20f692de2659f026 # initialize rs1
li x23, 0x85b072d3e45eac77 # initialize rs2
andn x18, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0x9385d56c8ae66098 # initialize rs1
li x24, 0x65753807545d5e90 # initialize rs2
andn x5, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0xa7c494842c846701 # initialize rs1
li x25, 0x04ec3cb4d1ef1e48 # initialize rs2
andn x9, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x178cc3d68f795fbd # initialize rs1
li x26, 0xa4822fa63d6e546e # initialize rs2
andn x11, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x9c2635b6b9aa7422 # initialize rs1
li x27, 0xe08c84cac5a7afeb # initialize rs2
andn x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xb429b15982dec439 # initialize rs1
li x28, 0x206e61cea9da03eb # initialize rs2
andn x3, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0xc3da79a3d85f09a5 # initialize rs1
li x29, 0xd7157bd8efc595de # initialize rs2
andn x20, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x1, 0xb0a59b96f4ee59db # initialize rs1
li x30, 0xf47c90b1f9c0cd9a # initialize rs2
andn x2, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x9e5864b89d1d392f # initialize rs1
li x31, 0x86d69b4e41761a44 # initialize rs2
andn x15, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xa8d152d29b3d9f41 # initialize rs1
li x29, 0xe5fd2295ad53b175 # initialize rs2
andn x0, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x02ad4ddf07abac3f # initialize rs1
li x5, 0x536ba05ad13b767b # initialize rs2
andn x1, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0xd49cdab51e895ece # initialize rs1
li x25, 0x1eeea22b198cf713 # initialize rs2
andn x2, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0xfb27294d2aff4faf # initialize rs1
li x28, 0xb4eef9d78df528bc # initialize rs2
andn x3, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x83aea0ad99bf5d7e # initialize rs1
li x19, 0x08db53f3518370ab # initialize rs2
andn x4, x21, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xc4a5216706559229 # initialize rs1
li x30, 0x6a1caa97cfc5612a # initialize rs2
andn x5, x25, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xfb08eaa9657fa6c1 # initialize rs1
li x9, 0x2a1a904f973285c3 # initialize rs2
andn x6, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x23, 0x2d4f968d9d8c5a9d # initialize rs1
li x20, 0xde8ab7364765e63f # initialize rs2
andn x7, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x19, 0x6644224b28be5b01 # initialize rs1
li x17, 0x3d47010a1bada8b0 # initialize rs2
andn x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xc919d06b8c6ebe17 # initialize rs1
li x22, 0x982d05b65719372c # initialize rs2
andn x9, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x22, 0x64dd4011bf9fc544 # initialize rs1
li x10, 0x62dde3ffceadfd7e # initialize rs2
andn x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x8bb57af438947379 # initialize rs1
li x2, 0x0a406d88387144b8 # initialize rs2
andn x11, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xda2402d5e9d0501a # initialize rs1
li x3, 0x590e72ab52dae01a # initialize rs2
andn x12, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0xca90cc86d50c9de3 # initialize rs1
li x19, 0x834870998421c090 # initialize rs2
andn x13, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xfc0141078455434c # initialize rs1
li x11, 0xb29be8bb1f694253 # initialize rs2
andn x14, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xb2e22531cb119bb8 # initialize rs1
li x20, 0xec2708ab49180cf4 # initialize rs2
andn x15, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x6353db39a7117a2c # initialize rs1
li x13, 0x865c47178759a2bc # initialize rs2
andn x16, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x5d04378b5723ce47 # initialize rs1
li x23, 0xb5518095c996fa90 # initialize rs2
andn x17, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x3283d9931ebd15c4 # initialize rs1
li x21, 0xca6cb7a770de0315 # initialize rs2
andn x18, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x5a302a5e8077a02a # initialize rs1
li x26, 0xb1da5da2c457240d # initialize rs2
andn x19, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x10e83d2c764a2d03 # initialize rs1
li x6, 0x0ab0871d24618d1c # initialize rs2
andn x20, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0x85cadd515a68e91c # initialize rs1
li x22, 0x7148a4311d72dea7 # initialize rs2
andn x21, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xc8714e1bc2f07535 # initialize rs1
li x22, 0x8701681cdb7ac732 # initialize rs2
andn x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0xf4f529729510d8b3 # initialize rs1
li x15, 0x379a1287f77a804a # initialize rs2
andn x23, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf8816e08a37e45e0 # initialize rs1
li x20, 0xa3898b2dd7237885 # initialize rs2
andn x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0xc87f334e92b0ad17 # initialize rs1
li x22, 0x310b3c7716e9032f # initialize rs2
andn x25, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x166f9294eb264cae # initialize rs1
li x25, 0x489e8fabcf83d1bc # initialize rs2
andn x26, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x59e969424e23c29a # initialize rs1
li x1, 0x11c51dfb89048230 # initialize rs2
andn x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x7709c388b1833b14 # initialize rs1
li x27, 0x3ce33b5352d70c03 # initialize rs2
andn x28, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0xbac629f0b5ccf7c5 # initialize rs1
li x20, 0x441393821b2481a2 # initialize rs2
andn x29, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x1bc3fe2ff8230815 # initialize rs1
li x28, 0xa0b2e80fa4760d83 # initialize rs2
andn x30, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x5d14911f2ed796d2 # initialize rs1
li x12, 0x55d35caa5aa1e672 # initialize rs2
andn x31, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x1, 0x6f22914f12011b36 # initialize rs2
andn x18, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x2, 0x3166518c73ab6ab9 # initialize rs2
andn x27, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x6ff908e0c9780f1c # initialize rs2
andn x22, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x72322228d2564dd3 # initialize rs2
andn x18, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x20, 0x545c14874187450f # initialize rs2
andn x31, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x30, 0x805b4e1a72e240a4 # initialize rs2
andn x7, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x4bfcf86c860ce262 # initialize rs2
andn x29, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x14, 0x8116c7f40594f8cd # initialize rs2
andn x10, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x0fed0d80b63db04a # initialize rs2
andn x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x2edb40eb5ee28e2d # initialize rs2
andn x18, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x416549517226dcde # initialize rs2
andn x24, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x13, 0x1487645044f12260 # initialize rs2
andn x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0xe5a056086f726dfe # initialize rs2
andn x26, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x09db2f4b96a80bdc # initialize rs2
andn x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x1, 0xbf52e11b2e69dfdf # initialize rs2
andn x11, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0x9808dba7188a0d4c # initialize rs2
andn x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x33e4a64a59c60b8f # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
andn x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0x31594d3cbfb33b92 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
andn x17, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0xeed3c558b1614636 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
andn x7, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x222cdd3891627957 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
andn x15, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x23af3dfa1d6bd2e7 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
andn x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x0cb1e164e8e6915f # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
andn x27, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xa9b81b985146f743 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
andn x19, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xf5e337d09cb6b9a6 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
andn x24, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x966c2ad2a89815ba # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
andn x24, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x9d977fb94f6945c9 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
andn x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xc70488e574caf41d # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x31, 0x37855de5be532eb8 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
andn x1, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0x4a2eece16d402fc5 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
andn x20, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0x95e87b5257a2cc0d # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
andn x21, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x051e1a9eefb070a5 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
andn x3, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xce4d2773c990aca9 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
andn x27, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
andn x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
andn x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x6, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x27, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
andn x24, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
andn x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
andn x5, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
andn x12, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
andn x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x3, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
andn x27, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x24, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x30, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
andn x22, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
andn x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
andn x31, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
andn x30, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
andn x14, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
andn x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
andn x24, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
andn x23, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x29, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x27, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
andn x7, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
andn x23, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
andn x1, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
andn x11, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
andn x13, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x19, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
andn x14, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
andn x11, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x8, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
andn x3, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x25, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
andn x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
andn x17, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
andn x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x18, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x14, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
andn x20, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x27, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
andn x26, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
andn x11, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
andn x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
andn x3, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
andn x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000002 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x22, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
andn x14, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x21, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
andn x20, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
andn x28, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x28, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
andn x18, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
andn x14, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x21, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
andn x13, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x7, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x14, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
andn x9, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
andn x6, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
andn x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
andn x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
andn x10, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
andn x9, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
andn x30, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x1, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
andn x12, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
andn x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
andn x7, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
andn x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
andn x16, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
andn x31, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
andn x22, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x24, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
andn x28, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x23, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
andn x29, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
andn x19, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
andn x31, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
andn x14, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
andn x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
andn x16, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
andn x29, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x28, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
andn x28, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
andn x12, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
andn x31, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
andn x30, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x8, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
andn x18, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
andn x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x7, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
andn x20, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
andn x11, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
andn x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
andn x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
andn x22, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
andn x14, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
andn x20, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
andn x10, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x7fffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
andn x12, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x17, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
andn x11, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
andn x16, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
andn x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
andn x20, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
andn x10, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x26, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
andn x28, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
andn x13, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
andn x24, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
andn x20, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
andn x14, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
andn x7, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
andn x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
andn x8, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x25, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
andn x28, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x21, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
andn x16, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
andn x22, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
andn x30, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x26, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
andn x11, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x21, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
andn x9, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x7, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x1, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
andn x30, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
andn x6, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
andn x13, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
andn x5, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
andn x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
andn x7, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
andn x19, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0xffffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
andn x31, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xffffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
andn x25, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
andn x6, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
andn x9, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x3, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x31, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x22, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
andn x11, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x29, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
andn x3, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
andn x20, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
andn x22, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
andn x3, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
andn x17, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
andn x6, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
andn x27, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
andn x28, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xfffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x20, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
andn x22, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
andn x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
andn x20, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
andn x23, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
andn x12, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
andn x18, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
andn x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
andn x7, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
andn x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
andn x15, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
andn x31, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
andn x14, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
andn x23, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x25, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
andn x31, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
andn x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
andn x30, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
andn x25, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
andn x27, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
andn x6, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
andn x21, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
andn x8, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
andn x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
andn x21, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
andn x31, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
andn x19, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
andn x28, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
andn x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
andn x12, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x6, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
andn x27, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
andn x9, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
andn x20, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
andn x31, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
andn x31, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
andn x7, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
andn x18, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
andn x24, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
andn x25, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x21, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
andn x15, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
andn x9, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
andn x6, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x13, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
andn x13, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x11, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
andn x20, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x24, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
andn x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
andn x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
andn x20, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
andn x30, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
andn x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x8, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
andn x2, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x8, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
andn x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
andn x1, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
andn x31, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
andn x27, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
andn x30, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x18, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x27, 0x00000000ffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
andn x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
andn x8, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
andn x16, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x7, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
andn x10, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x6, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
andn x31, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
andn x27, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x14, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x30, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
andn x10, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x9, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
andn x16, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
andn x29, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
andn x28, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
andn x21, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
andn x22, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
andn x27, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
andn x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
andn x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
andn x19, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x9, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x9, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
andn x16, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
andn x10, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
andn x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
andn x17, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x11, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
andn x22, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x27, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x30, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
andn x1, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
andn x23, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
andn x9, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x6, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
andn x20, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x21, 0x0000000100000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
andn x26, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
andn x27, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x13, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
andn x11, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x1, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
andn x9, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x31, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
andn x10, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x20, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x24, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
andn x1, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
andn x8, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
andn x12, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
andn x20, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
andn x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
andn x22, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000100000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x19, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
andn x28, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
andn x29, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
andn x12, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
andn x5, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x29, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
andn x17, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x02fea0a18208faf8 # initialize rs1
li x0, 0x2bb3b9bbb96a597d # initialize rs2
andn x23, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xbb95030cc499804b # initialize rs1
li x1, 0xe6a95c41cfaba60a # initialize rs2
andn x15, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x94406c90e20d94b9 # initialize rs1
li x2, 0x1bd3606641a8b489 # initialize rs2
andn x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbe0aee26011e1a82 # initialize rs1
li x3, 0x92b24d2ce59c2d8a # initialize rs2
andn x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8373952da413303b # initialize rs1
li x4, 0x7e59b847bf877d72 # initialize rs2
andn x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x38257e9a27f59ea5 # initialize rs1
li x5, 0xf2406d50ba059217 # initialize rs2
andn x4, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x426db8187b15e1dc # initialize rs1
li x6, 0x4e6a5c6001aa561b # initialize rs2
andn x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x622f35f5099d77bb # initialize rs1
li x7, 0x0905b5ad7e3fa3d5 # initialize rs2
andn x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2d31ab38e73c9ad4 # initialize rs1
li x8, 0xe36df470c195f4ec # initialize rs2
andn x30, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1aebbe18cc630a34 # initialize rs1
li x9, 0x4480f5b950e9d7da # initialize rs2
andn x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8f6aed53035f0b90 # initialize rs1
li x10, 0x5cd35023d3812914 # initialize rs2
andn x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x242b016e72fcc720 # initialize rs1
li x11, 0xe2af22a68354cbf1 # initialize rs2
andn x19, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf3f3a9a3a7acab77 # initialize rs1
li x12, 0xe03713d928d87123 # initialize rs2
andn x11, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7b70b23f0042c9cb # initialize rs1
li x13, 0x0a50dea2367ef7de # initialize rs2
andn x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7dc6dddccc64dceb # initialize rs1
li x14, 0x45db21600364db3f # initialize rs2
andn x26, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x658d6c406347715e # initialize rs1
li x15, 0x34df3bad990b6997 # initialize rs2
andn x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x325ee2e5ae3e0187 # initialize rs1
li x16, 0x22a4b8e844bf1582 # initialize rs2
andn x28, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xad3fe7b4517e5ece # initialize rs1
li x17, 0xd27f0f8bf9e2a577 # initialize rs2
andn x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x34f2ae021048942c # initialize rs1
li x18, 0x83a725d6b483a854 # initialize rs2
andn x16, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x261142594d0f6b46 # initialize rs1
li x19, 0xc097295b4857614b # initialize rs2
andn x16, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb911eb0aa2b36c62 # initialize rs1
li x20, 0x1dca10e732871ac4 # initialize rs2
andn x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x43aefce617c48d8a # initialize rs1
li x21, 0xd63c226e5a983b30 # initialize rs2
andn x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7b3abf715609071b # initialize rs1
li x22, 0x0bde2bffbd659e9b # initialize rs2
andn x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd25be7c95b824eb6 # initialize rs1
li x23, 0xa3411d89801445ef # initialize rs2
andn x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb820bb9ec004951a # initialize rs1
li x24, 0x7cbf13ade2f94509 # initialize rs2
andn x30, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbb25974b4cbca297 # initialize rs1
li x25, 0x5973b8372ba46695 # initialize rs2
andn x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x93f25eb0afcd2c83 # initialize rs1
li x26, 0xd557839c49c48c38 # initialize rs2
andn x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc5ec12115eda9ad5 # initialize rs1
li x27, 0x467620efa469b76f # initialize rs2
andn x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8ac34ccd8c4a17a2 # initialize rs1
li x28, 0x4033459b75d05ea5 # initialize rs2
andn x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6624b951e0b87e64 # initialize rs1
li x29, 0x4fc8630cee3380ea # initialize rs2
andn x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4dc5fbe0561711ad # initialize rs1
li x30, 0x5ecdae9bddbf4ae0 # initialize rs2
andn x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x48cd5ec16a97bf2e # initialize rs1
li x31, 0x7a162619637b4f4f # initialize rs2
andn x9, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1ef4d36caf7b190e # initialize rs1
li x30, 0xab4bece9de5a1525 # initialize rs2
andn x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x998b5f53df3f99ec # initialize rs1
li x3, 0x6afd44c990b45dcb # initialize rs2
andn x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x101e7891ac4d8588 # initialize rs1
li x5, 0xbd9582579e48e25a # initialize rs2
andn x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x79fed4a2f18d228f # initialize rs1
li x22, 0x02572817b7c8b7ab # initialize rs2
andn x3, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x09be9c931bdedb8d # initialize rs1
li x2, 0x8dd46ba3b6f2e8ca # initialize rs2
andn x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x841966527ab4b28c # initialize rs1
li x31, 0xc98a590298564e0e # initialize rs2
andn x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x571c6acc6c2e8166 # initialize rs1
li x25, 0x6e690554cc6e94b7 # initialize rs2
andn x6, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0bd76fd8c63f654f # initialize rs1
li x4, 0x7ea1273c44594c10 # initialize rs2
andn x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0fbebe787536ccd6 # initialize rs1
li x21, 0x41501f632ae09ac0 # initialize rs2
andn x8, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0f3c53132e146b36 # initialize rs1
li x21, 0x6b28ab8ae1e903b8 # initialize rs2
andn x9, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x871cba19a9a9aab9 # initialize rs1
li x4, 0x76d9682df111075b # initialize rs2
andn x10, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcef771e8506482df # initialize rs1
li x31, 0xac55adbe44589e0a # initialize rs2
andn x11, x11, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb2616854cbba5fa6 # initialize rs1
li x23, 0x3800642ccabf3863 # initialize rs2
andn x12, x12, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x214c8c7f0d2374f7 # initialize rs1
li x7, 0xa646bf5adeffd4ec # initialize rs2
andn x13, x13, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4467f3e57ab33d83 # initialize rs1
li x21, 0x4ba706a02b636c99 # initialize rs2
andn x14, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8346bece5702793b # initialize rs1
li x14, 0x340c606514e4fcf2 # initialize rs2
andn x15, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x71518ebcdc72aace # initialize rs1
li x25, 0x10500de785a7ccba # initialize rs2
andn x16, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4d638747d2b3da44 # initialize rs1
li x17, 0x7616c4313a23d232 # initialize rs2
andn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5dbb6eb9cca57eb7 # initialize rs1
li x12, 0x88ce25a8ddf84638 # initialize rs2
andn x18, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc5588ca2e344403b # initialize rs1
li x24, 0x2aa67dd676df703b # initialize rs2
andn x19, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9fc60e78e67203e4 # initialize rs1
li x29, 0xc79ba43563c30ae3 # initialize rs2
andn x20, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfe55d4d23d2030e3 # initialize rs1
li x10, 0x5a3f73f1dcd6ac20 # initialize rs2
andn x21, x21, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3db54cfa30bd5397 # initialize rs1
li x31, 0x1048ac18390f27d7 # initialize rs2
andn x22, x22, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1d85b55c183ab099 # initialize rs1
li x10, 0xa50b5ff0205623af # initialize rs2
andn x23, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7504e88c7a5b3ab4 # initialize rs1
li x18, 0x7868082eaeb9dca9 # initialize rs2
andn x24, x24, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x435a845c3019d14f # initialize rs1
li x23, 0xb84ce3487ceef62d # initialize rs2
andn x25, x25, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1b0e90d7713947aa # initialize rs1
li x16, 0xd50a4e1178bc03cb # initialize rs2
andn x26, x26, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf05dfd7135ea2928 # initialize rs1
li x30, 0xa1c1a696b5991dc7 # initialize rs2
andn x27, x27, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x825400859912ec0c # initialize rs1
li x13, 0xc36e9419e9592323 # initialize rs2
andn x28, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa62838c909314d25 # initialize rs1
li x19, 0x32421d9aebd6bf1f # initialize rs2
andn x29, x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcce382e416a10ce6 # initialize rs1
li x7, 0x9db08c500291b7bc # initialize rs2
andn x30, x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0d56dcf0f0dd1384 # initialize rs1
li x19, 0x9805d262a8bd0d23 # initialize rs2
andn x31, x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x6, 0x69d4da683bd70899 # initialize rs1
li x0, 0x61bbb4caa5ca7ab2 # initialize rs2
andn x0, x6, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x16, 0xae9016d370ce3eed # initialize rs1
li x1, 0x5764c27cbf710682 # initialize rs2
andn x1, x16, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x7b605c09b4725b9e # initialize rs1
li x2, 0xbb570ff94b7b0130 # initialize rs2
andn x2, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0xe98c337c585f560d # initialize rs1
li x3, 0x1b5759db70a053bd # initialize rs2
andn x3, x6, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x10, 0x66c1a64f7dbacc29 # initialize rs1
li x4, 0xba3da9201e4a0979 # initialize rs2
andn x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xa52b810e16095753 # initialize rs1
li x5, 0xc9c03f5b44f7b884 # initialize rs2
andn x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x0e7bde41e50d919f # initialize rs1
li x6, 0x26d2f381f2111ab7 # initialize rs2
andn x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x862d77e79b1bf54c # initialize rs1
li x7, 0xef0feb6186e1f456 # initialize rs2
andn x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x12, 0x567f0dff2c54c0d1 # initialize rs1
li x8, 0x23e2174a3a2ae39e # initialize rs2
andn x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0xa36dd079ee9d3f85 # initialize rs1
li x9, 0x73fe91e76f2fe2c3 # initialize rs2
andn x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x23, 0x0dbfa3d3520fb6e8 # initialize rs1
li x10, 0x89a9180980470665 # initialize rs2
andn x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0xe937db0222d2d785 # initialize rs1
li x11, 0x5220083edd259984 # initialize rs2
andn x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0x89ded47748f69556 # initialize rs1
li x12, 0x516b52653dcc31fb # initialize rs2
andn x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x200afa302d49b7d1 # initialize rs1
li x13, 0xce7a1fec422fb919 # initialize rs2
andn x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0x4c31fdae2ac91b26 # initialize rs1
li x14, 0x187a3c1a81b3b7a7 # initialize rs2
andn x14, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x23, 0xee46de62118c7aee # initialize rs1
li x15, 0x14a304fca100719c # initialize rs2
andn x15, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0xb99f943d025858c0 # initialize rs1
li x16, 0x71ced8fa5867abc8 # initialize rs2
andn x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xfbf6d9f16e32fa39 # initialize rs1
li x17, 0x5476e5be605897d5 # initialize rs2
andn x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0x2b0571ddf41a9318 # initialize rs1
li x18, 0xc553915d70cd88a0 # initialize rs2
andn x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0xdbdcd8ba07800859 # initialize rs1
li x19, 0x5adc024f36efcef6 # initialize rs2
andn x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0xfce918df574ce687 # initialize rs1
li x20, 0xffde951f1464dfc0 # initialize rs2
andn x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0x57e491672080c051 # initialize rs1
li x21, 0xb5bf7ccda1ff6046 # initialize rs2
andn x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x1, 0x5e3375952f1307c0 # initialize rs1
li x22, 0x6e1e636a89b2d95c # initialize rs2
andn x22, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x8, 0x328c13137aecbd49 # initialize rs1
li x23, 0xcccdea706b7482d2 # initialize rs2
andn x23, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc886d5f3fe16ddb9 # initialize rs1
li x24, 0x306d2d5239e310d6 # initialize rs2
andn x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x10, 0xb000a9eb86d45005 # initialize rs1
li x25, 0xdaad4d7a438abb95 # initialize rs2
andn x25, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0xec77db90057402ba # initialize rs1
li x26, 0x14e55f8f665ee036 # initialize rs2
andn x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xbfb93e6d583f9dc8 # initialize rs1
li x27, 0xb40f5d07969deeab # initialize rs2
andn x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0x1e3724f712e9fd90 # initialize rs1
li x28, 0x2fcc365d54597d26 # initialize rs2
andn x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x160c4856d5809279 # initialize rs1
li x29, 0xc50ffd3d1378050c # initialize rs2
andn x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x28, 0x9ed69e46268f8e6d # initialize rs1
li x30, 0x9890205238bd69db # initialize rs2
andn x30, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x21, 0xee06b2802f1803c2 # initialize rs1
li x31, 0x7122ddd2e9426b37 # initialize rs2
andn x31, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x48c3f701b5a5eeb5 # initialize rs1
li x0, 0x5e0eec702450bdb0 # initialize rs2
andn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4b5d9f3533de5ce7 # initialize rs1
li x1, 0xae4142eb19b07dea # initialize rs2
andn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1d85cce7f60ad694 # initialize rs1
li x2, 0xb9fdc53fd85aaa87 # initialize rs2
andn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4c4d4d1e4250acfe # initialize rs1
li x3, 0x89085c4453912c43 # initialize rs2
andn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe81d596d4173db50 # initialize rs1
li x4, 0x9f9537c9f77a9133 # initialize rs2
andn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5255fa3d4e523383 # initialize rs1
li x5, 0x2663a81c5fb6c747 # initialize rs2
andn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9cff643e0468067a # initialize rs1
li x6, 0x1ff9dd84c00a819e # initialize rs2
andn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56bd9bf6cdbca640 # initialize rs1
li x7, 0x0461c221f67c840c # initialize rs2
andn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xd3798f97e32a32b9 # initialize rs1
li x8, 0xa632faadbd0caa07 # initialize rs2
andn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf91df037fafd0bf0 # initialize rs1
li x9, 0x8c742f33a64f6290 # initialize rs2
andn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5aa20816780466aa # initialize rs1
li x10, 0xe30894f83db3534e # initialize rs2
andn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xd85ae56ab1855875 # initialize rs1
li x11, 0x52fb898f67512066 # initialize rs2
andn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xbd0c4e7f2b33f3d8 # initialize rs1
li x12, 0xe604c96877157690 # initialize rs2
andn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa6bffa2f75019a73 # initialize rs1
li x13, 0xeaf3307b9b708b37 # initialize rs2
andn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd83293463f0c4d8f # initialize rs1
li x14, 0x8818a83e077abc5a # initialize rs2
andn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x63c3aa96422d7abb # initialize rs1
li x15, 0xb49ccedaf0f142e6 # initialize rs2
andn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0107b2a8a97e7c6c # initialize rs1
li x16, 0xd43ff1da136f7e24 # initialize rs2
andn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc5d3acaf3fa52e88 # initialize rs1
li x17, 0x77c4d307f5406ae6 # initialize rs2
andn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x19ea32626dc5db23 # initialize rs1
li x18, 0x93f155dfa87cb66d # initialize rs2
andn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xae30cce0693ea5ab # initialize rs1
li x19, 0xa5aba7d811485699 # initialize rs2
andn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x113909d8d2b97664 # initialize rs1
li x20, 0x9e18e3bb7b0bf3ef # initialize rs2
andn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2665cf5d84a8a7f9 # initialize rs1
li x21, 0x1937e2018a5da3dd # initialize rs2
andn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xae802ecca6c0141b # initialize rs1
li x22, 0x45725c9cd1426fbc # initialize rs2
andn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x806002fe3a04be21 # initialize rs1
li x23, 0xc796058f50b1fd13 # initialize rs2
andn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa701509d320d1dd0 # initialize rs1
li x24, 0x1d1917ee1021437c # initialize rs2
andn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1a36ef42d8bef6de # initialize rs1
li x25, 0x8a12b028e7196905 # initialize rs2
andn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x333df859558a8889 # initialize rs1
li x26, 0x3afb85b0dff2d09b # initialize rs2
andn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd3fb1b74172c9eed # initialize rs1
li x27, 0x00528e239b02cf02 # initialize rs2
andn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xed6eda32ac7c583e # initialize rs1
li x28, 0x51478f198ef1502e # initialize rs2
andn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xe326d720e502ec8e # initialize rs1
li x29, 0xa4ab9a5a941b4e75 # initialize rs2
andn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9c53fbbc1c954212 # initialize rs1
li x30, 0xf0676026200094c0 # initialize rs2
andn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf1e5710b798d3cb4 # initialize rs1
li x31, 0x2beaef2476328fe9 # initialize rs2
andn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x5, x31 # perform first operation
andn x7, x3, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x11, x30 # perform first operation
andn x14, x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x10, x25 # perform first operation
andn x16, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x5 # perform first operation
andn x14, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x29, x17 # perform first operation
andn x17, x12, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x10, x18 # perform first operation
andn x18, x21, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x12, x28 # perform first operation
andn x22, x24, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x2, x30 # perform first operation
andn x14, x13, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x5, x26 # perform first operation
andn x12, x3, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x14, x2 # perform first operation
andn x14, x11, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x6, x1 # perform first operation
andn x1, x25, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x12, x15 # perform first operation
andn x26, x25, x9 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
