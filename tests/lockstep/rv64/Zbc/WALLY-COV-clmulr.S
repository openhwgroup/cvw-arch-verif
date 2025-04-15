///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbc/WALLY-COV-clmulr.S
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
li x0, 0x34aceefe899a9db2 # initialize rs1
li x8, 0xb99031fdedf2a95e # initialize rs2
clmulr x3, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6e8f1f1df30c1633 # initialize rs1
li x17, 0x625d1439b6acac2e # initialize rs2
clmulr x14, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8f821d9a517b8732 # initialize rs1
li x26, 0x94f4475d3e614bef # initialize rs2
clmulr x24, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x27c918cd9e995b13 # initialize rs1
li x6, 0xf98b330660b3faec # initialize rs2
clmulr x13, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9af3bf1b797aab0b # initialize rs1
li x27, 0xe9972236b931f07a # initialize rs2
clmulr x17, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xaa50bc7faa75c01b # initialize rs1
li x11, 0xf30b6f6a2f586253 # initialize rs2
clmulr x26, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7ba3fe3c44c65b29 # initialize rs1
li x15, 0x8b18fee334ed71e7 # initialize rs2
clmulr x11, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcf48ff0756c5746e # initialize rs1
li x18, 0x72603bf72ac59309 # initialize rs2
clmulr x16, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd340cb283e355ed1 # initialize rs1
li x2, 0x2b6c919e054fad9f # initialize rs2
clmulr x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd667cd6dd1cfbfb8 # initialize rs1
li x20, 0x4b07fe28b203dc70 # initialize rs2
clmulr x13, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3cee66f743553a90 # initialize rs1
li x30, 0x1669f9c76d8174db # initialize rs2
clmulr x2, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe1369d39b1b160a7 # initialize rs1
li x1, 0xd356f357033813ed # initialize rs2
clmulr x8, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6d56c00e5c76bd8b # initialize rs1
li x19, 0xcc4284872ff3f2f4 # initialize rs2
clmulr x29, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xecf4d696d3511e5e # initialize rs1
li x27, 0x5c601504f1c1557f # initialize rs2
clmulr x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb24971448eb1245a # initialize rs1
li x8, 0x9f05d99ac808568b # initialize rs2
clmulr x10, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc9866eb6d2073b8c # initialize rs1
li x24, 0xa1945b693c0d51b5 # initialize rs2
clmulr x30, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdb4251f6a95f44d2 # initialize rs1
li x2, 0xf1919033bc0e91e5 # initialize rs2
clmulr x11, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x31bc8deeb7110e14 # initialize rs1
li x31, 0x06a298b9a06d1345 # initialize rs2
clmulr x18, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc14f0c7b6352bed5 # initialize rs1
li x25, 0x8164cfa757e76e64 # initialize rs2
clmulr x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x67acd5aadf0edeab # initialize rs1
li x31, 0x481403073a9c3d7b # initialize rs2
clmulr x11, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x099a502806d34228 # initialize rs1
li x23, 0x2db8f96bdcdea65d # initialize rs2
clmulr x12, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9bcb323b8467189d # initialize rs1
li x26, 0x92ca9bd98272c3e6 # initialize rs2
clmulr x7, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x254e33327e0e2b8a # initialize rs1
li x2, 0x934a62ca57e5c722 # initialize rs2
clmulr x5, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x82c1e161e17205c4 # initialize rs1
li x20, 0xc104babf9f089c01 # initialize rs2
clmulr x15, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x10218cccb25adfc8 # initialize rs1
li x23, 0x4346dfb3d303fc8f # initialize rs2
clmulr x27, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa3f777aa1d2d34fd # initialize rs1
li x2, 0x1593ddc88e85cc89 # initialize rs2
clmulr x19, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x544e482eaf6b555e # initialize rs1
li x24, 0xb8532c6d48460031 # initialize rs2
clmulr x6, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x40a4b8e6fc41feca # initialize rs1
li x18, 0x1cbcf8c8694df9fc # initialize rs2
clmulr x6, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x67976f24ad195c25 # initialize rs1
li x25, 0x01c995d02e548a81 # initialize rs2
clmulr x14, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7c34b0d4155b4cf5 # initialize rs1
li x5, 0xc8d37cba772527d1 # initialize rs2
clmulr x1, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9a504ffc4154c2b7 # initialize rs1
li x18, 0x6274a014950281d4 # initialize rs2
clmulr x20, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0faac44763393802 # initialize rs1
li x13, 0xdd253f789a9a7125 # initialize rs2
clmulr x11, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x3aee37fdf4b74198 # initialize rs1
li x0, 0xb82432b58801bba8 # initialize rs2
clmulr x25, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x297b08b0d8bea29f # initialize rs1
li x1, 0x0a08e936cfa2775c # initialize rs2
clmulr x22, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xc03354cec5d2c89a # initialize rs1
li x2, 0xdd3ac6376f16b004 # initialize rs2
clmulr x5, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0x9cb6476885105218 # initialize rs1
li x3, 0x254fd6f531af0ece # initialize rs2
clmulr x8, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x5902f9e011dc7bf4 # initialize rs1
li x4, 0x4a72ec9327d99823 # initialize rs2
clmulr x11, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xf66b076a47350ad0 # initialize rs1
li x5, 0x7f24c36afed532fd # initialize rs2
clmulr x1, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x97d40f6959021c01 # initialize rs1
li x6, 0x2407815033773582 # initialize rs2
clmulr x26, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x4c74adec47ae522d # initialize rs1
li x7, 0x06253767c8661b15 # initialize rs2
clmulr x14, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x6faa2ea1e0b676ac # initialize rs1
li x8, 0x934fda9821e279aa # initialize rs2
clmulr x7, x30, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0x43dcd08b806f7e64 # initialize rs1
li x9, 0x5f267274aeb559de # initialize rs2
clmulr x15, x28, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0xeecd0b9eca402089 # initialize rs1
li x10, 0x062128deb6e524c8 # initialize rs2
clmulr x31, x24, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x7b1d4afd3538f7fb # initialize rs1
li x11, 0x7597a94474e4160b # initialize rs2
clmulr x27, x22, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0xaa050a12a2e693eb # initialize rs1
li x12, 0xf20cf452f8a1f141 # initialize rs2
clmulr x14, x29, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x9628edc69cca0353 # initialize rs1
li x13, 0xf34d401314f89c7f # initialize rs2
clmulr x2, x31, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0x715e53d79060accf # initialize rs1
li x14, 0x40a336b37aa917ac # initialize rs2
clmulr x31, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x53696d6c0a010073 # initialize rs1
li x15, 0x5180f1141b142e51 # initialize rs2
clmulr x14, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x9, 0xe5dd57a764dc4e6f # initialize rs1
li x16, 0xe04fec8af56d6b41 # initialize rs2
clmulr x22, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x15, 0x253bbdd69d4a7537 # initialize rs1
li x17, 0xd1f3f73addb66f9c # initialize rs2
clmulr x23, x15, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xa74d66050c73a39c # initialize rs1
li x18, 0x7488d67716acdbf5 # initialize rs2
clmulr x23, x22, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xfd532a46baacc551 # initialize rs1
li x19, 0x5e7b5b4ce641f5b8 # initialize rs2
clmulr x11, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x35498df091456f17 # initialize rs1
li x20, 0x5965dea7d49e71a1 # initialize rs2
clmulr x3, x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x60e033f0ff74e7e7 # initialize rs1
li x21, 0x58d5f1f74e5a0040 # initialize rs2
clmulr x15, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0xe33f3cfd9fe3e77e # initialize rs1
li x22, 0x2bdfdf37d2107dc2 # initialize rs2
clmulr x10, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0x1ddef0a534add11a # initialize rs1
li x23, 0xea202b864bafe0b9 # initialize rs2
clmulr x27, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0xb0df9f0c04c9ea38 # initialize rs1
li x24, 0xa683f89fbbaeb17d # initialize rs2
clmulr x2, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0xdb38290659d21493 # initialize rs1
li x25, 0xbc2f7a6acfde7617 # initialize rs2
clmulr x26, x14, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0x8b5c6bba8a94f58c # initialize rs1
li x26, 0xe806b1512eae268d # initialize rs2
clmulr x14, x1, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x8f37fa773e932215 # initialize rs1
li x27, 0xf870bdd9378fd089 # initialize rs2
clmulr x4, x11, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x8, 0xe94b0d6dc9f0e5f8 # initialize rs1
li x28, 0x9e336cd627d6529d # initialize rs2
clmulr x16, x8, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x9640600c4f935d5f # initialize rs1
li x29, 0x774f4679253edfc6 # initialize rs2
clmulr x24, x17, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x051e4a8725eb954f # initialize rs1
li x30, 0xc2608ae306fde957 # initialize rs2
clmulr x18, x20, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x702a26023882802d # initialize rs1
li x31, 0x7a80b50c64004332 # initialize rs2
clmulr x1, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 504)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0xa281d24c5c728f18 # initialize rs1
li x21, 0x3882cd4febf2e3ff # initialize rs2
clmulr x0, x28, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x4, 0x32bf5ba7206c7231 # initialize rs1
li x8, 0x061c0e360a85679e # initialize rs2
clmulr x1, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xaab0ca2c24605879 # initialize rs1
li x20, 0x50696addb27e3cb2 # initialize rs2
clmulr x2, x19, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x273c979945595c8a # initialize rs1
li x24, 0xf3d51804135edead # initialize rs2
clmulr x3, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x7, 0x64430608551be783 # initialize rs1
li x20, 0x05ab2a0413d083b0 # initialize rs2
clmulr x4, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x4fade133f23508f5 # initialize rs1
li x2, 0xf67e8d35163169f5 # initialize rs2
clmulr x5, x14, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0xdded7164482f4cef # initialize rs1
li x10, 0xb8f42bc9285ab089 # initialize rs2
clmulr x6, x18, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x1a426338e5e37a90 # initialize rs1
li x3, 0x87bfe193e3b3f548 # initialize rs2
clmulr x7, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x71a45c7882b2d610 # initialize rs1
li x16, 0xa1214551569bc766 # initialize rs2
clmulr x8, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x335b5d071123281c # initialize rs1
li x6, 0xdf59ca6143c20fe4 # initialize rs2
clmulr x9, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x7c9624e59bfd1233 # initialize rs1
li x19, 0x85049fb580fd04b9 # initialize rs2
clmulr x10, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x9a75b4bff325c83b # initialize rs1
li x12, 0x211400b83b2b7de0 # initialize rs2
clmulr x11, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0x16a11102277696a7 # initialize rs1
li x8, 0xcdbbf43c05aa7b47 # initialize rs2
clmulr x12, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xe102b451f803b60f # initialize rs1
li x15, 0x5a22a2c92caade89 # initialize rs2
clmulr x13, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0x9a43c3939ef24da8 # initialize rs1
li x3, 0xb8e18925555fd4fb # initialize rs2
clmulr x14, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xfd4b2039ccb253de # initialize rs1
li x20, 0x5b632f027f95eb91 # initialize rs2
clmulr x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x94055f537cd6f706 # initialize rs1
li x6, 0x32d46d02cec626f4 # initialize rs2
clmulr x16, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xc371abb816338145 # initialize rs1
li x21, 0x3e5431d0789624f2 # initialize rs2
clmulr x17, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0x902c141d930d4756 # initialize rs1
li x12, 0x2fa9b9d676b69bab # initialize rs2
clmulr x18, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0xaeadc849080104f4 # initialize rs1
li x27, 0xf3390e58e04936e6 # initialize rs2
clmulr x19, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x0bbc06e98b22c433 # initialize rs1
li x28, 0x153fd0edde40ff38 # initialize rs2
clmulr x20, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x4ca40842f8fa2f69 # initialize rs1
li x7, 0x5c2376090d5e60fa # initialize rs2
clmulr x21, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x12, 0xd44dedef4d40b407 # initialize rs1
li x2, 0xf4a114d4ff245160 # initialize rs2
clmulr x22, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x5eb1334c937ccece # initialize rs1
li x15, 0x5e61b030d9453d84 # initialize rs2
clmulr x23, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0x2d1be3084dee4032 # initialize rs1
li x12, 0xe248ae29cf29dc5c # initialize rs2
clmulr x24, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x95945c6770d2e01e # initialize rs1
li x17, 0x24735549e2993adc # initialize rs2
clmulr x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x2161e342f1f94685 # initialize rs1
li x17, 0xbac74f17e3163771 # initialize rs2
clmulr x26, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x11e06a864c30663e # initialize rs1
li x12, 0x83b25e1e2d310e1b # initialize rs2
clmulr x27, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x11a51acff545ba11 # initialize rs1
li x13, 0xb33b2d8a9c0e1a45 # initialize rs2
clmulr x28, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0x6ac2ea58202f36ef # initialize rs1
li x13, 0x604f700657ebb2c5 # initialize rs2
clmulr x29, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x0d029b96cd647047 # initialize rs1
li x31, 0x308cbc99bf6eedc8 # initialize rs2
clmulr x30, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdd37acfcac4ec5ab # initialize rs1
li x29, 0x19b8a0c7867ce852 # initialize rs2
clmulr x31, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x27, 0x46da35acbacb26bd # initialize rs2
clmulr x28, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x0000000000000001 # initialize rs1
li x19, 0x200fa214488d4b48 # initialize rs2
clmulr x11, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x10, 0x3ede27eac54ad7d4 # initialize rs2
clmulr x14, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
li x5, 0x7280e9a098c98ce8 # initialize rs2
clmulr x15, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x17, 0x3be091a920e48b12 # initialize rs2
clmulr x5, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x22, 0xc70a2d2b79ce2d8f # initialize rs2
clmulr x25, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x30, 0xefaeffb824bfef2e # initialize rs2
clmulr x7, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0xbadc4a8ad831016c # initialize rs2
clmulr x17, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x6, 0x2d63e0051903ff79 # initialize rs2
clmulr x28, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x2e41dc9e46cbb537 # initialize rs2
clmulr x12, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xea02c7000a64affc # initialize rs2
clmulr x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x30, 0xd2b232aae81c4273 # initialize rs2
clmulr x7, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x29, 0xf6902d1890925e43 # initialize rs2
clmulr x6, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x22, 0x9c1fb25634f3a6a8 # initialize rs2
clmulr x7, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x19, 0xcc35b523bafa84d4 # initialize rs2
clmulr x11, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x25, 0x2092623a46b7e4a4 # initialize rs2
clmulr x22, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x49c4d429e0b28598 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
clmulr x18, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x8a60ca495d1f134a # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
clmulr x3, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0xad4e1a5d1c7de95a # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
clmulr x25, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x1bf549da4daf3c6a # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
clmulr x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0xef61836e83896c55 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
clmulr x22, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x640aa080c7a7b358 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
clmulr x1, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xa023a74e560bdd52 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
clmulr x23, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x26, 0x57412252318ef2e5 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
clmulr x23, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x25, 0x439413ee5b1102db # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
clmulr x17, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x1, 0x2092d782bc8f2a26 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
clmulr x19, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xd89705ea4e56748b # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x8, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0x801f0cbdc0a1b657 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
clmulr x21, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0xf57c7b5a134d9529 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
clmulr x21, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x19a0393072756547 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
clmulr x11, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0xb3385ec230ccaabe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
clmulr x25, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0xf175a45703876a3b # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
clmulr x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
clmulr x30, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
clmulr x20, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
clmulr x22, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x0000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
clmulr x10, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
clmulr x6, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
clmulr x2, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
clmulr x3, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
clmulr x11, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
clmulr x1, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
clmulr x21, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x17, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x31, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
clmulr x25, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
clmulr x9, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
clmulr x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
clmulr x7, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
clmulr x25, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
clmulr x15, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
clmulr x15, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
clmulr x15, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x24, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
clmulr x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
clmulr x3, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
clmulr x2, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
clmulr x20, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
clmulr x6, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
clmulr x21, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
clmulr x7, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x27, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x24, 0x0000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
clmulr x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
clmulr x1, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
clmulr x18, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
clmulr x24, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
clmulr x12, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x25, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
clmulr x16, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
clmulr x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
clmulr x21, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x7, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
clmulr x10, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x3, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
clmulr x2, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
clmulr x10, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
clmulr x27, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
clmulr x14, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
clmulr x20, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
clmulr x19, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x28, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
clmulr x2, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
clmulr x6, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
clmulr x7, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
clmulr x22, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
clmulr x5, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
clmulr x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x7, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
clmulr x21, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x22, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
clmulr x7, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
clmulr x31, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x5, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
clmulr x22, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
clmulr x12, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
clmulr x19, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
clmulr x13, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
clmulr x22, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x9, 0x8000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
clmulr x31, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x8000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x12, 0x8000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
clmulr x3, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
clmulr x20, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
clmulr x21, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x12, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
clmulr x26, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x24, 0x8000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
clmulr x13, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
clmulr x8, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x21, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
clmulr x22, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x21, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
clmulr x13, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
clmulr x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
clmulr x1, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
clmulr x26, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
clmulr x27, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
clmulr x30, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
clmulr x6, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
clmulr x14, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8000000000000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x20, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x30, 0x8000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
clmulr x12, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
clmulr x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
clmulr x27, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x12, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
clmulr x16, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x3, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
clmulr x16, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
clmulr x24, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
clmulr x26, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
clmulr x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x29, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
clmulr x23, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
clmulr x27, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
clmulr x31, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
clmulr x11, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
clmulr x2, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
clmulr x23, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x7fffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
clmulr x16, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x10, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
clmulr x29, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
clmulr x11, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
clmulr x27, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x3, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
clmulr x23, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x16, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
clmulr x31, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
clmulr x20, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x25, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
clmulr x5, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
clmulr x1, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
clmulr x21, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
clmulr x18, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
clmulr x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
clmulr x24, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x2, 0x7ffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
clmulr x29, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
clmulr x15, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
clmulr x5, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x13, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
clmulr x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
clmulr x15, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
clmulr x13, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x9, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
clmulr x15, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
clmulr x22, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
clmulr x31, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x18, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
clmulr x19, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
clmulr x25, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x10, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
clmulr x25, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x19, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
clmulr x16, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
clmulr x21, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
clmulr x23, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
clmulr x8, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
clmulr x19, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
clmulr x25, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x27, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x7, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
clmulr x8, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
clmulr x21, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
clmulr x22, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x14, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
clmulr x17, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
clmulr x26, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
clmulr x8, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x16, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
clmulr x23, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
clmulr x16, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
clmulr x21, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
clmulr x28, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
clmulr x11, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
clmulr x22, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
clmulr x25, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
clmulr x15, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0xfffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
clmulr x28, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xfffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x7, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0xfffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
clmulr x2, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
clmulr x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
clmulr x19, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x16, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
clmulr x25, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x11, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
clmulr x20, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
clmulr x9, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
clmulr x6, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
clmulr x29, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
clmulr x11, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
clmulr x25, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
clmulr x31, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
clmulr x20, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
clmulr x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
clmulr x23, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
clmulr x8, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x6, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmulr x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
clmulr x19, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
clmulr x13, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
clmulr x15, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
clmulr x15, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
clmulr x31, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
clmulr x12, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
clmulr x16, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
clmulr x17, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
clmulr x23, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
clmulr x12, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
clmulr x30, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
clmulr x7, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
clmulr x18, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
clmulr x7, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
clmulr x2, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
clmulr x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
clmulr x8, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
clmulr x10, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
clmulr x25, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x24, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
clmulr x2, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
clmulr x9, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x8, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
clmulr x6, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x6, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
clmulr x12, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
clmulr x16, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
clmulr x13, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
clmulr x23, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
clmulr x8, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
clmulr x17, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5555555555555555 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
clmulr x28, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x5555555555555555 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x30, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x17, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
clmulr x10, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
clmulr x26, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
clmulr x15, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x8, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
clmulr x21, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x18, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
clmulr x8, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
clmulr x25, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
clmulr x2, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
clmulr x24, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x16, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
clmulr x31, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x16, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
clmulr x20, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
clmulr x7, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
clmulr x12, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
clmulr x7, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
clmulr x20, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x3, 0x00000000ffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
clmulr x31, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x00000000ffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x24, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
clmulr x20, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
clmulr x31, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
clmulr x23, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
clmulr x19, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x7, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
clmulr x26, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
clmulr x28, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
clmulr x23, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
clmulr x23, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
clmulr x8, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x31, 0x00000000fffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
clmulr x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
clmulr x2, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
clmulr x28, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
clmulr x15, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
clmulr x8, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000fffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
clmulr x12, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x19, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x1, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmulr x19, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
clmulr x17, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
clmulr x1, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
clmulr x19, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x27, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
clmulr x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x20, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
clmulr x15, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x10, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
clmulr x23, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x5, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
clmulr x21, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
clmulr x11, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x17, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
clmulr x30, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
clmulr x1, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
clmulr x9, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
clmulr x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
clmulr x8, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000100000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
clmulr x3, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x12, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
clmulr x8, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
clmulr x25, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
clmulr x15, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
clmulr x10, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x9, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
clmulr x24, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
clmulr x6, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x31, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
clmulr x29, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x20, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
clmulr x2, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x25, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
clmulr x14, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
clmulr x6, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
clmulr x16, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
clmulr x29, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
clmulr x16, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
clmulr x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
clmulr x9, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulr x8, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
clmulr x19, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
clmulr x27, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x16, 0x0000000100000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
clmulr x26, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x8, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
clmulr x29, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
clmulr x20, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x6b02b9f9958d856b # initialize rs1
li x0, 0x235384fb56d95332 # initialize rs2
clmulr x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x74f33ec333d77cbf # initialize rs1
li x1, 0x0aac567a1fcaa1b6 # initialize rs2
clmulr x20, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xf388b7c74041b294 # initialize rs1
li x2, 0x749146f05e6e2145 # initialize rs2
clmulr x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xda2d8a30f127bde1 # initialize rs1
li x3, 0x381ddcc1b0ad2be5 # initialize rs2
clmulr x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4401ff054fd49b87 # initialize rs1
li x4, 0x41dc7b43e08d48a8 # initialize rs2
clmulr x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc2fa438a31b03f21 # initialize rs1
li x5, 0x1bacaa96a96f74dc # initialize rs2
clmulr x24, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3e34e36d0060fee3 # initialize rs1
li x6, 0x87efd5a8189a4595 # initialize rs2
clmulr x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x48d527765a8978f7 # initialize rs1
li x7, 0xc0cd45326c81199b # initialize rs2
clmulr x2, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc84181fddd69f090 # initialize rs1
li x8, 0x6c91628b59517124 # initialize rs2
clmulr x14, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa27afab6610575de # initialize rs1
li x9, 0x7dd8bd5825454a21 # initialize rs2
clmulr x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf8c4dcda67865cb1 # initialize rs1
li x10, 0x54598a1439042103 # initialize rs2
clmulr x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xfb6851edb2d7c678 # initialize rs1
li x11, 0x9bf98edac56fc8e1 # initialize rs2
clmulr x26, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x441cec3dcb2973b9 # initialize rs1
li x12, 0x8d996ecc534a1613 # initialize rs2
clmulr x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3d6d5c56518d4770 # initialize rs1
li x13, 0x61c6fe566a27b662 # initialize rs2
clmulr x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1b5e389bcca927e1 # initialize rs1
li x14, 0xc8d98fc3c2e031bf # initialize rs2
clmulr x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xda7fc3ed38b0bf18 # initialize rs1
li x15, 0x92457a7987725904 # initialize rs2
clmulr x9, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x3ac31bd8bb0c0f87 # initialize rs1
li x16, 0x4b53bc4cf6d66487 # initialize rs2
clmulr x18, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x8b5d3c68b806a566 # initialize rs1
li x17, 0xc160d231caaa9b15 # initialize rs2
clmulr x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x34d7fe34fdb5c68b # initialize rs1
li x18, 0xb7e4332684b874a8 # initialize rs2
clmulr x21, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x18366cfaa0fad8f4 # initialize rs1
li x19, 0x5ff6b83e6cbd077a # initialize rs2
clmulr x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x880dbb4b519bd7e3 # initialize rs1
li x20, 0x8e6fd6f2425dd2cd # initialize rs2
clmulr x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4237fed51b290e7a # initialize rs1
li x21, 0x33fc6f3b6b75e18c # initialize rs2
clmulr x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9972c04d76a24e78 # initialize rs1
li x22, 0xd6bef43faf6e39a2 # initialize rs2
clmulr x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xed12c78b5b9da333 # initialize rs1
li x23, 0x4608808f3e2057f1 # initialize rs2
clmulr x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x69e2cb7ae074f753 # initialize rs1
li x24, 0x353e2d8269167ba8 # initialize rs2
clmulr x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb78c400d4faff656 # initialize rs1
li x25, 0x384fb4f3dcc1c39d # initialize rs2
clmulr x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf83a301861a59c51 # initialize rs1
li x26, 0x0ce94c55ad541528 # initialize rs2
clmulr x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x7db86a1b8b21153f # initialize rs1
li x27, 0x6b83016502e74d58 # initialize rs2
clmulr x13, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0dffefbd92a9ef9d # initialize rs1
li x28, 0xd272116c029b6caf # initialize rs2
clmulr x3, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x17c1cb88243dc095 # initialize rs1
li x29, 0xe31f04ab438c3164 # initialize rs2
clmulr x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x797a3258d56e4da4 # initialize rs1
li x30, 0x61e63bb4c584c6bf # initialize rs2
clmulr x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88a4391a896bde5c # initialize rs1
li x31, 0x8d2551b6339ee3ca # initialize rs2
clmulr x12, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xee396ac6062e9133 # initialize rs1
li x8, 0x8a4327b5e8ba2719 # initialize rs2
clmulr x0, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaa9815a8779fe1d7 # initialize rs1
li x23, 0xdf06142c3ca73d62 # initialize rs2
clmulr x1, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x12644b41a1abe7b2 # initialize rs1
li x15, 0xa958cebe50bb009f # initialize rs2
clmulr x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x28942ac8c9360267 # initialize rs1
li x11, 0x8eb0e15143192c01 # initialize rs2
clmulr x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x72b6f91e2ac95740 # initialize rs1
li x2, 0x971695a84954ded1 # initialize rs2
clmulr x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf76f03e99616cb6 # initialize rs1
li x22, 0x81da9b63b96a46ff # initialize rs2
clmulr x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbdfe1da2545525f2 # initialize rs1
li x23, 0x4037bbdd6117ee87 # initialize rs2
clmulr x6, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1f9ebb64320206b2 # initialize rs1
li x17, 0x94f2ac21a7fd69bc # initialize rs2
clmulr x7, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x17306db1e7ae6c37 # initialize rs1
li x15, 0x93e3c174fd90a9c6 # initialize rs2
clmulr x8, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x13a6537684d9e2a3 # initialize rs1
li x21, 0x820d9d58759bcd36 # initialize rs2
clmulr x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xeab1460cb460ba5c # initialize rs1
li x23, 0x497453835564046e # initialize rs2
clmulr x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x859783120ac7e7a3 # initialize rs1
li x6, 0x72de4b53831533c2 # initialize rs2
clmulr x11, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x82f2dc735e77d1de # initialize rs1
li x18, 0x330857cfa86ddce9 # initialize rs2
clmulr x12, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdc0e0b40f5b92bf6 # initialize rs1
li x5, 0xa319f4962aa5dcc8 # initialize rs2
clmulr x13, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5b88701a32a667aa # initialize rs1
li x31, 0xf2d1e40e34eff0f4 # initialize rs2
clmulr x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4395b5565a7b1211 # initialize rs1
li x17, 0xe04c964c6036ea59 # initialize rs2
clmulr x15, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc1e2101458051b65 # initialize rs1
li x1, 0xec150df37db5345e # initialize rs2
clmulr x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0489f2906d217afa # initialize rs1
li x30, 0x8eb7f92384c22bd2 # initialize rs2
clmulr x17, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xed469698581afd1d # initialize rs1
li x27, 0x55cb2378688ed0f9 # initialize rs2
clmulr x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4d95c75b71916b3a # initialize rs1
li x30, 0x2ea1def321dfff2e # initialize rs2
clmulr x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa142631447ed2f24 # initialize rs1
li x1, 0x849dc078ec744db9 # initialize rs2
clmulr x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x142739df1dc7f739 # initialize rs1
li x3, 0x3fdc35a3f7f5d681 # initialize rs2
clmulr x21, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0396e46626d59efe # initialize rs1
li x31, 0x406fd36e58425b5b # initialize rs2
clmulr x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd2a6423749d7c3d8 # initialize rs1
li x13, 0x422370de81d55f0a # initialize rs2
clmulr x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7d39df289d421e98 # initialize rs1
li x15, 0x66a059b6c3ee9584 # initialize rs2
clmulr x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1a70585fba1a4d24 # initialize rs1
li x26, 0xc01afbfbadb04008 # initialize rs2
clmulr x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x915932633c787ab4 # initialize rs1
li x25, 0x99ab9809ad7a6f7a # initialize rs2
clmulr x26, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa5166002d07c0895 # initialize rs1
li x30, 0xd3cca804be63a45b # initialize rs2
clmulr x27, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc9202bbba6c647b8 # initialize rs1
li x25, 0x68fbff080bd3ed6a # initialize rs2
clmulr x28, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x91a1246806532b3e # initialize rs1
li x19, 0x566f2508eab8ee6e # initialize rs2
clmulr x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3cd65809523e7dbb # initialize rs1
li x29, 0xdd488413c52c6753 # initialize rs2
clmulr x30, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x43c929b65906435c # initialize rs1
li x25, 0x6f8b51bc78643017 # initialize rs2
clmulr x31, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0x7bfabdeee7c039b5 # initialize rs1
li x0, 0x8e336d73cdd8ed82 # initialize rs2
clmulr x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x26, 0x78b059f383c958c8 # initialize rs1
li x1, 0x608593b2ecc58f9b # initialize rs2
clmulr x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0xfec8e921bbefb301 # initialize rs1
li x2, 0x23854cc27c4c9d37 # initialize rs2
clmulr x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0xce6e43c9af952e8e # initialize rs1
li x3, 0x6c5ed2f25e24d08f # initialize rs2
clmulr x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x0861d6b674378275 # initialize rs1
li x4, 0xc41191a18effdaa6 # initialize rs2
clmulr x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xddb13086bc8aba40 # initialize rs1
li x5, 0x4ab4527583e0ce47 # initialize rs2
clmulr x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x29, 0xef13c1491e765fc9 # initialize rs1
li x6, 0xc6175e106280f1d8 # initialize rs2
clmulr x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xa2dc9deab1b720ec # initialize rs1
li x7, 0xb1b0668da2a70f2b # initialize rs2
clmulr x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x7, 0x700976f198eaf9b1 # initialize rs1
li x8, 0xf78f89e03d7bf7dd # initialize rs2
clmulr x8, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0x7f30556f3644f92b # initialize rs1
li x9, 0x676fc77e04d4b05c # initialize rs2
clmulr x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0x291c375b4bfe502b # initialize rs1
li x10, 0xdb2444e5e4dca73a # initialize rs2
clmulr x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x17, 0x3313de9fc8c54287 # initialize rs1
li x11, 0x22c0b4ad55e22939 # initialize rs2
clmulr x11, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0x11d267a2ac0a80bb # initialize rs1
li x12, 0x0741615472692105 # initialize rs2
clmulr x12, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0x2b72c3481cd5a677 # initialize rs1
li x13, 0x9845d13797efae3a # initialize rs2
clmulr x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x44676e1035c41122 # initialize rs1
li x14, 0xe3fabe0c30e80dda # initialize rs2
clmulr x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x31, 0xa265003b16f255e4 # initialize rs1
li x15, 0xc73cb492d72913a5 # initialize rs2
clmulr x15, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0xb55946b0adbbe583 # initialize rs1
li x16, 0xe35e483412019c50 # initialize rs2
clmulr x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x14c9e0de43743b8b # initialize rs1
li x17, 0xd4d57cbabea5ecfe # initialize rs2
clmulr x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0x0e1251fa22eadf11 # initialize rs1
li x18, 0xac57d0d819bfcd8d # initialize rs2
clmulr x18, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x21, 0x44a5f4d802ca962f # initialize rs1
li x19, 0x17c9903b96288200 # initialize rs2
clmulr x19, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x14, 0x64ed4bac37e61c0e # initialize rs1
li x20, 0x0995e149d2d505ed # initialize rs2
clmulr x20, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x9ea1de19e7ba32d6 # initialize rs1
li x21, 0x493f29f9ea61ed6d # initialize rs2
clmulr x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0xa12fe3e39f46acf5 # initialize rs1
li x22, 0xa9df95216ce09ad9 # initialize rs2
clmulr x22, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0x3dc9377c903c4a2a # initialize rs1
li x23, 0x3b90e6d2be6297cd # initialize rs2
clmulr x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0x8395ebf484765c64 # initialize rs1
li x24, 0xfbee850c9f3d2986 # initialize rs2
clmulr x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x811876381f1a95a9 # initialize rs1
li x25, 0x6f0d1b62d3b11e51 # initialize rs2
clmulr x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0xeeebbdd9b7a58d33 # initialize rs1
li x26, 0xe0d71d7c17206043 # initialize rs2
clmulr x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0x2258adbbde8bbc41 # initialize rs1
li x27, 0xad7307e38d3dc010 # initialize rs2
clmulr x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0xc328a8379ee67430 # initialize rs1
li x28, 0x0ca141f1564f35d9 # initialize rs2
clmulr x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0x1c2ec97c5fc66a4f # initialize rs1
li x29, 0x59a0e90fcfea2001 # initialize rs2
clmulr x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x03f45ba862654611 # initialize rs1
li x30, 0x0139b29daae6f1cc # initialize rs2
clmulr x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x9, 0x3b576bd7ca300634 # initialize rs1
li x31, 0x35a2a62a3bdab30a # initialize rs2
clmulr x31, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xbd5b573b1cc60cdc # initialize rs1
li x0, 0x45dd8e80c6e0a1eb # initialize rs2
clmulr x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc5d98bcc994710ad # initialize rs1
li x1, 0x4565f769868ef29a # initialize rs2
clmulr x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x99ccd7aeeda61c5b # initialize rs1
li x2, 0x5ad0ab8bdb44ce10 # initialize rs2
clmulr x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xe6e6da91f7ccac84 # initialize rs1
li x3, 0x7d09b8a5f79ccbff # initialize rs2
clmulr x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x05dd535b5e625136 # initialize rs1
li x4, 0x917095b22e19b852 # initialize rs2
clmulr x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa8d6dc2c7713e5ab # initialize rs1
li x5, 0x33280ef11565b3c6 # initialize rs2
clmulr x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5549156f7cd99050 # initialize rs1
li x6, 0x36b06f43b34a8585 # initialize rs2
clmulr x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4d0a4e3d54a33cf4 # initialize rs1
li x7, 0x3799891455f06f62 # initialize rs2
clmulr x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3f9e217521f4f5ac # initialize rs1
li x8, 0xb7e8a7a6746d4c92 # initialize rs2
clmulr x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xff8c3cae2980d584 # initialize rs1
li x9, 0xd121c7c3866ae6a9 # initialize rs2
clmulr x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xa94331696b37e31f # initialize rs1
li x10, 0x08391e4cdb5f8d9c # initialize rs2
clmulr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5d274b6651278a15 # initialize rs1
li x11, 0xb3010e54c7ce77e7 # initialize rs2
clmulr x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x60a96807140babf8 # initialize rs1
li x12, 0x7070a9850cd428d3 # initialize rs2
clmulr x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2e8cde4ef97e7620 # initialize rs1
li x13, 0x5b305501f5f00e06 # initialize rs2
clmulr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x63127741bb270a7a # initialize rs1
li x14, 0x5824365acbf06973 # initialize rs2
clmulr x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x707b4ff5a11f8bcf # initialize rs1
li x15, 0xc554c1f30b8b56e8 # initialize rs2
clmulr x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3a42be20fb5a8ce6 # initialize rs1
li x16, 0x87c127e4ff9b0136 # initialize rs2
clmulr x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xff90b7697aca217f # initialize rs1
li x17, 0xcef712e7614fd0b9 # initialize rs2
clmulr x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x707251dc4e12d73e # initialize rs1
li x18, 0x9b177c808c516b5f # initialize rs2
clmulr x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9b3a83337b337d53 # initialize rs1
li x19, 0x1d791dc79de95dc3 # initialize rs2
clmulr x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x40fefc0f3ba3ad11 # initialize rs1
li x20, 0xcacc3cbfcc1cd47d # initialize rs2
clmulr x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x0f7b9310a8ca921e # initialize rs1
li x21, 0x0eecec60470306ea # initialize rs2
clmulr x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5d0d287c9a63eb19 # initialize rs1
li x22, 0x0ead5f6061391693 # initialize rs2
clmulr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbdbef731febddd34 # initialize rs1
li x23, 0x362b2db672aec9bf # initialize rs2
clmulr x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe139eff4a513d00f # initialize rs1
li x24, 0xd42b8352c5dc92e2 # initialize rs2
clmulr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfee08fdfa1d187a7 # initialize rs1
li x25, 0xed47528a56dcedf3 # initialize rs2
clmulr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc9b6ca529cb47895 # initialize rs1
li x26, 0x5280d6f57bedaac9 # initialize rs2
clmulr x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x606688bca490ae23 # initialize rs1
li x27, 0x95e378498e742d9b # initialize rs2
clmulr x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x54eb9282c17d638e # initialize rs1
li x28, 0xe71278e5a7c4c029 # initialize rs2
clmulr x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6f03265110e8ea33 # initialize rs1
li x29, 0xecde7cebc399bf86 # initialize rs2
clmulr x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6b58800e8cb7e4b2 # initialize rs1
li x30, 0x1b8a98828f71ba7b # initialize rs2
clmulr x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9184758f2405d24b # initialize rs1
li x31, 0x022384030984535b # initialize rs2
clmulr x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x24, x9 # perform first operation
clmulr x18, x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x5, x9 # perform first operation
clmulr x31, x8, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x31, x12 # perform first operation
clmulr x14, x1, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x5, x3 # perform first operation
clmulr x3, x18, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x18, x28 # perform first operation
clmulr x27, x18, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x2 # perform first operation
clmulr x2, x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x15, x29 # perform first operation
clmulr x5, x26, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x18 # perform first operation
clmulr x30, x19, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x27, x29 # perform first operation
clmulr x14, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x14, x18 # perform first operation
clmulr x14, x3, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x20, x5 # perform first operation
clmulr x5, x30, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x7 # perform first operation
clmulr x22, x23, x1 # perform second (triggering) operation

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
