///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-orn.S
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
li x0, 0x4b553a0e60e9eb24 # initialize rs1
li x15, 0x4a5a453c5940ea44 # initialize rs2
orn x1, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x708cc69dac64f405 # initialize rs1
li x15, 0xf68544034612269a # initialize rs2
orn x25, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8f892144a26e0ac0 # initialize rs1
li x25, 0x53ad0d69a4f5b85b # initialize rs2
orn x1, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2d779896a4da99c1 # initialize rs1
li x16, 0x81877e5aa6c264f2 # initialize rs2
orn x27, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x990393dee4cca341 # initialize rs1
li x9, 0x996fcaa8cdfa8c51 # initialize rs2
orn x25, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3486a40c25b27d69 # initialize rs1
li x9, 0x18691d437eee6538 # initialize rs2
orn x8, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa64b1c8462ea9f95 # initialize rs1
li x7, 0xfefcf47d1c016939 # initialize rs2
orn x29, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xb5e5636a25d33ca7 # initialize rs1
li x22, 0xda1f6277d88a0044 # initialize rs2
orn x24, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x28c5d27cb6d3af74 # initialize rs1
li x6, 0x450ea0e063ca44e4 # initialize rs2
orn x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x04b66c7dfe360c60 # initialize rs1
li x16, 0x1730752aa960b4b5 # initialize rs2
orn x2, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xcf5c5b2c78bbf8d4 # initialize rs1
li x27, 0xfe0e38522f7f8897 # initialize rs2
orn x6, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x10c4d450ac4164ba # initialize rs1
li x27, 0x894b59f7c1f2cba4 # initialize rs2
orn x16, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd895456304e40734 # initialize rs1
li x29, 0x65c755a7acb630b0 # initialize rs2
orn x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb98d857b576df6b1 # initialize rs1
li x25, 0xf4ec2885b66a310d # initialize rs2
orn x31, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0243771d86c2dcdb # initialize rs1
li x5, 0x14cdfa4bba1ade56 # initialize rs2
orn x16, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd58b5f0ee179033b # initialize rs1
li x3, 0x6bb4e5cb7af0c7f1 # initialize rs2
orn x11, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x262da683571a0d08 # initialize rs1
li x20, 0x7c17cc6ff9c27a6a # initialize rs2
orn x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc04ccf967035970d # initialize rs1
li x20, 0x97653bf32bd8f906 # initialize rs2
orn x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe4586fcb4d8d8c1d # initialize rs1
li x5, 0xede1f5f687bca8eb # initialize rs2
orn x2, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x9bfff6480a3045f3 # initialize rs1
li x15, 0xa40f189bc61a0263 # initialize rs2
orn x6, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa1a0c9c411bb548f # initialize rs1
li x24, 0x05604bdaa6c1b9d5 # initialize rs2
orn x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x564d165fb597c333 # initialize rs1
li x24, 0x179e32ed75c7de6b # initialize rs2
orn x13, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6161ba2fc04b8efb # initialize rs1
li x27, 0x299dcf535bb859eb # initialize rs2
orn x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe799f71a5be75232 # initialize rs1
li x2, 0x75b809410b9a3709 # initialize rs2
orn x8, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x92022e92481e0760 # initialize rs1
li x1, 0x81ee184795a2755b # initialize rs2
orn x8, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf0ce8e6b0fd9a9ba # initialize rs1
li x18, 0x218dd7d8b0a0f3da # initialize rs2
orn x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x56bbb3325cab60cb # initialize rs1
li x3, 0x7c6e3de4d324bb63 # initialize rs2
orn x10, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeb7374b6ee36b58a # initialize rs1
li x10, 0x7792f5b5d92bfd1e # initialize rs2
orn x3, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7d37c1263aa9fe87 # initialize rs1
li x12, 0x4909aa1ebd4bab6b # initialize rs2
orn x22, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9f77b579d911f3c9 # initialize rs1
li x23, 0x006fc671d3929a31 # initialize rs2
orn x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcd9e2dc362d34025 # initialize rs1
li x7, 0xeccb7f4f0e507745 # initialize rs2
orn x31, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x293afb8e0e62c4f9 # initialize rs1
li x1, 0xa6a4027b3013a7b2 # initialize rs2
orn x22, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0xe08c4a16b9acf7a1 # initialize rs1
li x0, 0xb5de5839b9d889ec # initialize rs2
orn x11, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x30, 0xfbebb82b01e10aed # initialize rs1
li x1, 0x2658fac69779e938 # initialize rs2
orn x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x98ab8c4f744de612 # initialize rs1
li x2, 0xe3de2d9c1248fa42 # initialize rs2
orn x13, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x11dcbfb54e07c282 # initialize rs1
li x3, 0xac8c57152caf4920 # initialize rs2
orn x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x3aa38a00ce66c311 # initialize rs1
li x4, 0x0b1f6d3f6fef5201 # initialize rs2
orn x15, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x9351e0fffedc4a1b # initialize rs1
li x5, 0xf8f197461e5e0c7b # initialize rs2
orn x31, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xd73a8d871c5734d3 # initialize rs1
li x6, 0xdadc3d97ff0a66e2 # initialize rs2
orn x3, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x326b1f759757ca59 # initialize rs1
li x7, 0xdbeb92c6dcf48f21 # initialize rs2
orn x4, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x400082d0ba882323 # initialize rs1
li x8, 0x5384986029547214 # initialize rs2
orn x15, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0x1bc95154d2cf6d59 # initialize rs1
li x9, 0x05ebbebbdb01ebe6 # initialize rs2
orn x10, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xd16ec2bfe2304872 # initialize rs1
li x10, 0x7b0e4ccf51b2ba17 # initialize rs2
orn x25, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xee9c67e751b874be # initialize rs1
li x11, 0xc23ac0d4716a9704 # initialize rs2
orn x24, x7, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x75a401a35b35ce40 # initialize rs1
li x12, 0xc801e693d2c58157 # initialize rs2
orn x29, x25, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0x3831b0520c2abf7e # initialize rs1
li x13, 0x4add3c5feca853f2 # initialize rs2
orn x1, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xa2c29b13fae69a0a # initialize rs1
li x14, 0x4b228ace9eba8884 # initialize rs2
orn x9, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0xb130f14af622b730 # initialize rs1
li x15, 0x9bcfa1636f3e1a49 # initialize rs2
orn x14, x12, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xcecd5a6f3033337a # initialize rs1
li x16, 0xfe36c5263d5ce9c6 # initialize rs2
orn x30, x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0x277d4e6ab38536a6 # initialize rs1
li x17, 0xf0f90b5d0d6bbde9 # initialize rs2
orn x15, x30, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xc6c8fa175a55f6c5 # initialize rs1
li x18, 0xfffae18ed92adf0f # initialize rs2
orn x3, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x34e5029fc091cd73 # initialize rs1
li x19, 0x55b4edc2c855d9d4 # initialize rs2
orn x13, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x4ef288770512af09 # initialize rs1
li x20, 0x7fcc73ba2594d0e7 # initialize rs2
orn x18, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x7e7181591c25db71 # initialize rs1
li x21, 0xfce4aeb5bcacafb1 # initialize rs2
orn x6, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x1113db6612c7644f # initialize rs1
li x22, 0x772e4a8f3de8f2c1 # initialize rs2
orn x18, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x0f5c5b0cdb7e0954 # initialize rs1
li x23, 0x310cf06a48267dcc # initialize rs2
orn x25, x17, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x3e529610db3b17d0 # initialize rs1
li x24, 0x28a6bd53a9d95697 # initialize rs2
orn x22, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x023e3da4973dc2bd # initialize rs1
li x25, 0xdbb50ea8e06f3af2 # initialize rs2
orn x17, x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x729f4cda0cc03ca5 # initialize rs1
li x26, 0xe6872b60d9eabe93 # initialize rs2
orn x29, x10, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x085531a9a2833f14 # initialize rs1
li x27, 0x29fd70f710e6ee87 # initialize rs2
orn x14, x2, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0x3ccbdf372389363d # initialize rs1
li x28, 0x412795818779296e # initialize rs2
orn x14, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0xa6d18ab36140761c # initialize rs1
li x29, 0x6b458275413ee837 # initialize rs2
orn x7, x11, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0xa157895b43d0c01e # initialize rs1
li x30, 0x4f7b60454eecf381 # initialize rs2
orn x7, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x9d2ec6efe20eaee0 # initialize rs1
li x31, 0x4d1d9ef81a33cad0 # initialize rs2
orn x12, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x5bbdae9a1d9b5538 # initialize rs1
li x24, 0x41c8f7dbb8a10e22 # initialize rs2
orn x0, x6, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xe093cad17b09d424 # initialize rs1
li x1, 0x842309d004b8cd74 # initialize rs2
orn x1, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0xe1d1a18c1ab5bdb5 # initialize rs1
li x16, 0x3e38512a1da8082c # initialize rs2
orn x2, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3f6c7537de01a673 # initialize rs1
li x15, 0x14febcd8df21574d # initialize rs2
orn x3, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x14, 0xdb860515580c778b # initialize rs1
li x27, 0x6c45be7ccb5cfef4 # initialize rs2
orn x4, x14, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x0940323a0c23f9ca # initialize rs1
li x26, 0x745da229bf382ecf # initialize rs2
orn x5, x2, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x94c9a7c565638d29 # initialize rs1
li x29, 0x42311d5faa5c1329 # initialize rs2
orn x6, x10, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xe2cb8beec41f2a8b # initialize rs1
li x27, 0x77d323f04aaa41b6 # initialize rs2
orn x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x9217be8a8085f2d0 # initialize rs1
li x30, 0x689f8b953aab3d04 # initialize rs2
orn x8, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0da450d350e6e558 # initialize rs1
li x30, 0x617ce6e22e5206cc # initialize rs2
orn x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0xb8626d3efad952b7 # initialize rs1
li x25, 0x3f9fff1d9b67134c # initialize rs2
orn x10, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x4949f1e047a7dfee # initialize rs1
li x8, 0xfa327ce0313c6b7f # initialize rs2
orn x11, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xda447e391bca64cf # initialize rs1
li x6, 0x837c034c024d7282 # initialize rs2
orn x12, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x44f34fe5700d65fd # initialize rs1
li x27, 0x7d83f0023a24f983 # initialize rs2
orn x13, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x171698e62b4c9678 # initialize rs1
li x31, 0x53ab5dd8155cfd10 # initialize rs2
orn x14, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x32a81a0c967ace3c # initialize rs1
li x15, 0xf93f0ed9a7d7890a # initialize rs2
orn x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0xc2232f9298048225 # initialize rs1
li x26, 0x4134b6f6fe067f95 # initialize rs2
orn x16, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x29f17d5bc39acf75 # initialize rs1
li x7, 0x72dd3274ff10b5ec # initialize rs2
orn x17, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x8309970a9b0b0469 # initialize rs1
li x10, 0x6411b3e0ee96cea6 # initialize rs2
orn x18, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xdec544a1230d9241 # initialize rs1
li x17, 0x8c9c54dc5a501df9 # initialize rs2
orn x19, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xb0d2f739db7d084b # initialize rs1
li x1, 0xdfa1abb10042313c # initialize rs2
orn x20, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xde862b5d2dd5ce6f # initialize rs1
li x9, 0xda16018108a48857 # initialize rs2
orn x21, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x6ae6db2b3fcba014 # initialize rs1
li x10, 0xea8c7144b93e8c03 # initialize rs2
orn x22, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x389cc2d6751d1d37 # initialize rs1
li x5, 0x0b8f497083c77af8 # initialize rs2
orn x23, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xcd94cb60870b923f # initialize rs1
li x5, 0x03eef8843ad76ff2 # initialize rs2
orn x24, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x7b5eee680615e4e7 # initialize rs1
li x9, 0x2489f7bca3962503 # initialize rs2
orn x25, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x6b3fa7b344517bee # initialize rs1
li x17, 0x21beeb7c6dc869fc # initialize rs2
orn x26, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x9664ecd7b4707aab # initialize rs1
li x18, 0xb9a32e2a9de4305b # initialize rs2
orn x27, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0x375b1585e31c8808 # initialize rs1
li x13, 0x220ab1d488f935e6 # initialize rs2
orn x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x8ad24dd70565da84 # initialize rs1
li x2, 0x7a9724f783f4db8a # initialize rs2
orn x29, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x1d9a4ff795a0627a # initialize rs1
li x27, 0xdee687379d726c95 # initialize rs2
orn x30, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x6aaebcdc7b4032bc # initialize rs1
li x15, 0xb6cd3913bc30c00a # initialize rs2
orn x31, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0000000000000000 # initialize rs1
li x7, 0x44886199e94e5f48 # initialize rs2
orn x6, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x0000000000000001 # initialize rs1
li x23, 0x2dda84226706ac5b # initialize rs2
orn x13, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x15, 0xf4d357f397f4365e # initialize rs2
orn x24, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x29, 0xb06ab5da3e32e21d # initialize rs2
orn x31, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
li x16, 0xc75cc18189ce5aa1 # initialize rs2
orn x13, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0xe56913d82524aaa9 # initialize rs2
orn x2, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x12, 0xc0d02a6894f85a75 # initialize rs2
orn x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0xfaef7c5f2ab02e90 # initialize rs2
orn x26, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x25, 0x14a30b452ca86e5e # initialize rs2
orn x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xf376bda82a2b5c98 # initialize rs2
orn x16, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x6585b04ddb872d56 # initialize rs2
orn x1, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0x5555555555555555 # initialize rs1
li x13, 0x43f4c1f2fa64b713 # initialize rs2
orn x7, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x16, 0x69ecafa860412a56 # initialize rs2
orn x20, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x27, 0x7cfe5c6826256b3d # initialize rs2
orn x21, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x6c24d2974db7f769 # initialize rs2
orn x26, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0x64f90da496c67c81 # initialize rs2
orn x30, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x39db1ea322960db0 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
orn x16, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xc68dab4df62c847d # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x16, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0xa42c4dafab6b3adf # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
orn x14, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xc7379302681907ec # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
orn x31, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x977ee08f704c0532 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
orn x22, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x15, 0x46b1607f92ef8b9e # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
orn x2, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0xfc92a1098512f19a # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
orn x12, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xa3485f514fdf450a # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
orn x7, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0xb22e988ae28b95c1 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
orn x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x2, 0x038c98821c3979e8 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
orn x11, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x08506fe2e6936746 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x670814ce9add2bfd # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
orn x23, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xb3e78f4db75d46e8 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x22, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0xfec02f5bdad21218 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
orn x19, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x8b5841ca6a44bff8 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
orn x21, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x444db9df9b351aac # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
orn x19, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x20, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
orn x9, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
orn x1, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x17, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
orn x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
orn x27, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
orn x30, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
orn x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
orn x27, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
orn x18, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
orn x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x11, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
orn x31, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
orn x18, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
orn x28, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
orn x26, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x7, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
orn x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
orn x30, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x20, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
orn x5, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
orn x13, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x1, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
orn x30, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
orn x25, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
orn x8, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
orn x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
orn x21, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
orn x21, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
orn x30, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
orn x16, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
orn x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x28, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x29, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
orn x8, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
orn x11, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
orn x16, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
orn x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x13, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
orn x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
orn x31, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
orn x8, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
orn x25, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
orn x22, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
orn x25, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x23, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x6, 0x0000000000000002 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
orn x17, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
orn x7, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
orn x20, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x19, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
orn x21, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x5, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x27, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
orn x29, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
orn x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x18, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
orn x6, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
orn x8, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
orn x15, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
orn x9, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
orn x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
orn x10, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
orn x6, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
orn x15, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x10, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x11, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
orn x19, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
orn x7, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
orn x26, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x17, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
orn x5, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
orn x13, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x3, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
orn x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
orn x22, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
orn x14, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
orn x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
orn x9, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
orn x15, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x30, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
orn x27, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x13, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
orn x12, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x15, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
orn x20, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
orn x30, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
orn x24, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
orn x28, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
orn x18, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
orn x11, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
orn x11, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
orn x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
orn x21, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
orn x5, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
orn x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
orn x10, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x7fffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x14, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x30, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
orn x23, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
orn x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x23, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
orn x12, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x1, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x28, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x29, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
orn x31, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
orn x31, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
orn x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
orn x30, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
orn x28, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
orn x23, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
orn x24, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
orn x20, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x28, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
orn x9, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
orn x1, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
orn x10, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
orn x12, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
orn x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
orn x3, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
orn x3, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
orn x6, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
orn x7, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
orn x2, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
orn x27, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
orn x22, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
orn x18, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
orn x8, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0xffffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
orn x28, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xffffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x7, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
orn x22, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
orn x20, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
orn x31, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
orn x3, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
orn x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x22, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
orn x14, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
orn x5, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
orn x1, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x6, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
orn x28, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
orn x10, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
orn x31, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
orn x22, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
orn x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
orn x30, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x30, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
orn x14, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
orn x10, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
orn x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
orn x15, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
orn x6, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
orn x29, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
orn x20, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
orn x26, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
orn x21, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
orn x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
orn x25, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
orn x30, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
orn x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x20, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
orn x1, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
orn x17, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
orn x30, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
orn x18, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
orn x21, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
orn x3, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
orn x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
orn x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
orn x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
orn x2, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
orn x31, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
orn x10, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
orn x7, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
orn x2, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x3, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
orn x25, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
orn x7, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
orn x14, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
orn x14, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
orn x5, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x14, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
orn x26, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x15, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x22, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x19, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
orn x1, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
orn x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x16, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
orn x9, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
orn x18, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
orn x15, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
orn x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
orn x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
orn x14, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5555555555555555 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x13, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
orn x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
orn x12, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
orn x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x21, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
orn x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
orn x27, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
orn x5, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
orn x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x14, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
orn x22, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
orn x14, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x8, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
orn x6, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
orn x25, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
orn x3, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
orn x25, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
orn x8, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x5, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x1, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x23, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
orn x12, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
orn x17, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x26, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
orn x28, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x25, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
orn x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
orn x27, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
orn x29, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
orn x23, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
orn x26, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x31, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
orn x30, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
orn x13, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
orn x27, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
orn x9, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
orn x5, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
orn x28, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x30, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
orn x24, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
orn x8, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
orn x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
orn x3, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x30, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
orn x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
orn x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
orn x26, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x11, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
orn x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
orn x3, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
orn x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
orn x16, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
orn x20, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
orn x12, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
orn x20, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
orn x3, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
orn x29, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
orn x9, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
orn x17, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x24, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x12, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
orn x27, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x23, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
orn x22, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x23, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
orn x15, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
orn x21, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
orn x10, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
orn x23, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
orn x19, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
orn x12, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
orn x23, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
orn x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
orn x12, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
orn x3, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
orn x1, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x29, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb57fd498afc237ff # initialize rs1
li x0, 0x5bb675da3774dead # initialize rs2
orn x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xdb86c1c7075ce1b5 # initialize rs1
li x1, 0x4fd2929c55e21322 # initialize rs2
orn x28, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x56357d5a3a7da833 # initialize rs1
li x2, 0xdef73ce7e6c0bdb9 # initialize rs2
orn x28, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6350163d2538f13a # initialize rs1
li x3, 0x9da9e6921ca1420e # initialize rs2
orn x23, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9e4a0448959764b # initialize rs1
li x4, 0x49a5164655f350f6 # initialize rs2
orn x28, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x55e60f8d7f708fc9 # initialize rs1
li x5, 0x1f264fe4f15a4d96 # initialize rs2
orn x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x782b9f9bc5ae08d8 # initialize rs1
li x6, 0x4ca3fa428311f4aa # initialize rs2
orn x3, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3d720bea5550c073 # initialize rs1
li x7, 0x52f54e8047716b1e # initialize rs2
orn x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x24f2768fcd0b42ca # initialize rs1
li x8, 0x7af45594f1b215de # initialize rs2
orn x28, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6dee222a0046542f # initialize rs1
li x9, 0x97cca2f5c3b3cd19 # initialize rs2
orn x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9dc18c55b3b938cf # initialize rs1
li x10, 0x36aaaf67236bc160 # initialize rs2
orn x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa8e99f8a0b6eaede # initialize rs1
li x11, 0x00078ebf06c22483 # initialize rs2
orn x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x22af51067f8737da # initialize rs1
li x12, 0xc2ede0e3f3fd8f5e # initialize rs2
orn x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xeb48a13108a2c484 # initialize rs1
li x13, 0x50c0546dfed6a45a # initialize rs2
orn x30, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf367752bc9cc7f33 # initialize rs1
li x14, 0xce40d856df31f4f3 # initialize rs2
orn x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9bc928c9e05d8505 # initialize rs1
li x15, 0xa243688ab03aa573 # initialize rs2
orn x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x05a27ed5b0b3401b # initialize rs1
li x16, 0x7a924baf2ffc15a3 # initialize rs2
orn x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xca8b23aaca4f4426 # initialize rs1
li x17, 0xd0da4d89e47fc405 # initialize rs2
orn x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x56e96363dbae1850 # initialize rs1
li x18, 0x6ac3735e7e59ca7d # initialize rs2
orn x7, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe68518bebe63d9ba # initialize rs1
li x19, 0xc7152f84ade86816 # initialize rs2
orn x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb41639c461b625a8 # initialize rs1
li x20, 0xab785f63cd523700 # initialize rs2
orn x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x441d2e1a053089ca # initialize rs1
li x21, 0xc02bacb3bb86e11b # initialize rs2
orn x31, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd6fb829d1ea7f706 # initialize rs1
li x22, 0x0c49f7f3ca690a62 # initialize rs2
orn x5, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x47dcf000a6ec85af # initialize rs1
li x23, 0x9d295a2daa2b67e4 # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7e579c8283982e0b # initialize rs1
li x24, 0xc7104624702dab8d # initialize rs2
orn x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb6b05b6af6e36e2b # initialize rs1
li x25, 0x8bb0db81c7cb18ca # initialize rs2
orn x18, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8508fca11e0908a8 # initialize rs1
li x26, 0xf2167b30375a2336 # initialize rs2
orn x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2572ef48db7084f1 # initialize rs1
li x27, 0x08d96669290bc68d # initialize rs2
orn x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x49f8bb4ae13608c2 # initialize rs1
li x28, 0xc2b3f2605a65aa37 # initialize rs2
orn x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcc05c935cc16922a # initialize rs1
li x29, 0x68e879b086736084 # initialize rs2
orn x25, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa8f04e343e7ff65e # initialize rs1
li x30, 0xaea5741871b81d6a # initialize rs2
orn x23, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x25b7ab71fd401718 # initialize rs1
li x31, 0x65387ee3a95af890 # initialize rs2
orn x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x02829167ba505e1b # initialize rs1
li x28, 0xfee29350f6b9fd4c # initialize rs2
orn x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa30a3b4892167b9d # initialize rs1
li x27, 0xc177d161c574b0fd # initialize rs2
orn x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb97919c5f4481028 # initialize rs1
li x31, 0x81572259a959d297 # initialize rs2
orn x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf9309aa987cf77fd # initialize rs1
li x18, 0xbc38c55edae3baba # initialize rs2
orn x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22a58bb4d7bc18bf # initialize rs1
li x19, 0x00ce81e39f966cb8 # initialize rs2
orn x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb7535685eeb22d33 # initialize rs1
li x29, 0x0fd78f5335b2ad03 # initialize rs2
orn x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd65eae7307343b63 # initialize rs1
li x18, 0x0da298304f789d2c # initialize rs2
orn x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1b6bfe919a02315 # initialize rs1
li x19, 0xf88534c452329e48 # initialize rs2
orn x7, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xce27f9ed5151c3ad # initialize rs1
li x18, 0x2610dcd9e1083b7e # initialize rs2
orn x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8a9ea4e8cfc88bcd # initialize rs1
li x1, 0x0fe76b0087b0aeb9 # initialize rs2
orn x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x29aa61334bb291d6 # initialize rs1
li x17, 0x8b3285205dca784c # initialize rs2
orn x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x88342c1902e6dee1 # initialize rs1
li x20, 0x9d02bac19107be50 # initialize rs2
orn x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x397c5de29874ed11 # initialize rs1
li x9, 0x36598cc9e8966406 # initialize rs2
orn x12, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x71665850ca598966 # initialize rs1
li x13, 0xb3e5a9d2bd1ec39d # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbcf85b615d7ae42a # initialize rs1
li x28, 0x6ba5f87ff1428a55 # initialize rs2
orn x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4e0f5cf263b43717 # initialize rs1
li x5, 0x049e543a59ae3d98 # initialize rs2
orn x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x109495da651098f5 # initialize rs1
li x22, 0x693e50e32300e007 # initialize rs2
orn x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x70add216b0cf74e8 # initialize rs1
li x23, 0x7e5f5409371487d2 # initialize rs2
orn x17, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6679607bfc7401ea # initialize rs1
li x5, 0x179498d4e32071c2 # initialize rs2
orn x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb0b2fff8477c89a4 # initialize rs1
li x1, 0xe492125c90a85c35 # initialize rs2
orn x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa36f7ecf71222518 # initialize rs1
li x3, 0x7e7c0cb03c8deadf # initialize rs2
orn x20, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7ad4b783d74de42a # initialize rs1
li x18, 0x9ff2763187182307 # initialize rs2
orn x21, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb098cb13c048b593 # initialize rs1
li x3, 0x8c2124ae298db000 # initialize rs2
orn x22, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa80699ab6956a450 # initialize rs1
li x27, 0x47e0468d92d68e86 # initialize rs2
orn x23, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9d3df4c9a7d0d78b # initialize rs1
li x14, 0x7000abb73ee2ec96 # initialize rs2
orn x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x63aefd09b45b1ca1 # initialize rs1
li x7, 0x38d7a11d784cee40 # initialize rs2
orn x25, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa75e708da79a35f2 # initialize rs1
li x24, 0xeb85511f5aa2572a # initialize rs2
orn x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x069e722b008c2d8c # initialize rs1
li x15, 0x41a2b939389eb224 # initialize rs2
orn x27, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbef9343fb8703947 # initialize rs1
li x31, 0xa5f9bb6205476e3f # initialize rs2
orn x28, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa58efeb51bea79f6 # initialize rs1
li x26, 0x51889e1369e8944c # initialize rs2
orn x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2ad0430697f7247c # initialize rs1
li x25, 0x5948feaa29c1149c # initialize rs2
orn x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x311b5dca8eb99a17 # initialize rs1
li x24, 0xf2ef705ce0a1e264 # initialize rs2
orn x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0xa3e7d8fe20825703 # initialize rs1
li x0, 0x46dcd47994b9445e # initialize rs2
orn x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x26, 0x9af3038687ce3749 # initialize rs1
li x1, 0xf775dda2c4b98766 # initialize rs2
orn x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xdddb429dffd357f3 # initialize rs1
li x2, 0x374c961e41a12274 # initialize rs2
orn x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x2, 0x4d6c1ce598436a76 # initialize rs1
li x3, 0x326cf1286afb7359 # initialize rs2
orn x3, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x6919b4d3a218171e # initialize rs1
li x4, 0x6c7d712a4ea7cfab # initialize rs2
orn x4, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xe68a1fba1851b0c0 # initialize rs1
li x5, 0x91dc58029b686c11 # initialize rs2
orn x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x9932c65ea0ce0fee # initialize rs1
li x6, 0xa4680e0c865bf95f # initialize rs2
orn x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xc736efec6d1421b2 # initialize rs1
li x7, 0x7bf22414d0336684 # initialize rs2
orn x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0xa5679b638a94b38c # initialize rs1
li x8, 0xc3897d913d739767 # initialize rs2
orn x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0x6aa4bfa67b5ad3c4 # initialize rs1
li x9, 0x85a05a472293dafe # initialize rs2
orn x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x25, 0x14cd286ae6938da1 # initialize rs1
li x10, 0x7691145ac5f1d951 # initialize rs2
orn x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x5, 0xd7ee127588d58f25 # initialize rs1
li x11, 0xd3c0192a6c4ee4d2 # initialize rs2
orn x11, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x143e4f3e23920858 # initialize rs1
li x12, 0x5f694d8808b2a6f8 # initialize rs2
orn x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x791e5329519136e3 # initialize rs1
li x13, 0xb75d1ec06789aea5 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x978ab36c87a129eb # initialize rs1
li x14, 0x5dc8b8c40e53a979 # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x2c6f9fcbe09bd3da # initialize rs1
li x15, 0x12d200922d761a51 # initialize rs2
orn x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0xd30065d5289c29fa # initialize rs1
li x16, 0xceb4fa4024f6dd5b # initialize rs2
orn x16, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x31743500f19e6747 # initialize rs1
li x17, 0xfeb33c3ceb2b1353 # initialize rs2
orn x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xcc3b2073cbc072ce # initialize rs1
li x18, 0xae19ab0a2adc8ea6 # initialize rs2
orn x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0xd9a8c62d3db75fdb # initialize rs1
li x19, 0x07f8be1046b6908b # initialize rs2
orn x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0x6b61dc107a4e68ca # initialize rs1
li x20, 0x79d053a26d53988e # initialize rs2
orn x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x17, 0x2014de1f05c18c55 # initialize rs1
li x21, 0x4fe019d708aa1cf2 # initialize rs2
orn x21, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x69ed180d6125e87f # initialize rs1
li x22, 0x86262dc6ee359198 # initialize rs2
orn x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xc71fdd20d7efaa72 # initialize rs1
li x23, 0x5d65ecc356955978 # initialize rs2
orn x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xb101abbc57c349ac # initialize rs1
li x24, 0x711a67e032f7c9e3 # initialize rs2
orn x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0xdf4c576d8b40b497 # initialize rs1
li x25, 0xf012a104ceb29842 # initialize rs2
orn x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0xc5b9e0cd838da2a8 # initialize rs1
li x26, 0x82cbe6607d474be9 # initialize rs2
orn x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0x86e6c962cd476592 # initialize rs1
li x27, 0x012a3d881140c767 # initialize rs2
orn x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0xd917a7ffc4ac58db # initialize rs1
li x28, 0x285d07d851b20c98 # initialize rs2
orn x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x8, 0x9b86b57189816e7b # initialize rs1
li x29, 0x840d34e8ca2aa674 # initialize rs2
orn x29, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x20, 0x94b71e0c9fa84ac3 # initialize rs1
li x30, 0x8083c31044074ccc # initialize rs2
orn x30, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x208a4b9456695cac # initialize rs1
li x31, 0xf19f5a171143fdcc # initialize rs2
orn x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x20a7d72c336a687f # initialize rs1
li x0, 0x6caae38e86b52f58 # initialize rs2
orn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb5fd024f5842c804 # initialize rs1
li x1, 0x9e5e7c2e1614b597 # initialize rs2
orn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x403622978e8edd7a # initialize rs1
li x2, 0xe7bfbb0732912b75 # initialize rs2
orn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x56a54c001f1ccb1d # initialize rs1
li x3, 0xb4287ad734e19115 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3a8e9fd092039a90 # initialize rs1
li x4, 0x9ebe17fcd7b64a16 # initialize rs2
orn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0750490d083d7d70 # initialize rs1
li x5, 0x0a059964e4e1cb62 # initialize rs2
orn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0aa6a3f4de46e370 # initialize rs1
li x6, 0xc8d2acc4dd99568f # initialize rs2
orn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf1e3b6e9b6d92f51 # initialize rs1
li x7, 0xf08f9456b4c9257a # initialize rs2
orn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa53812ca82848864 # initialize rs1
li x8, 0x6dd722f6f356ddeb # initialize rs2
orn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x0e607c1d9d92c538 # initialize rs1
li x9, 0x0405b31535445da8 # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e8cb028862603bd # initialize rs1
li x10, 0x1f4bb1bedc315207 # initialize rs2
orn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x91661b79bab23e6b # initialize rs1
li x11, 0xd22bfb55abb1ed6f # initialize rs2
orn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe235f63880faec83 # initialize rs1
li x12, 0xe693aa2b4bddbdfe # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x34296f0140e50534 # initialize rs1
li x13, 0x00b16cd8b8a38387 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x39a2556a0ed1bff2 # initialize rs1
li x14, 0xa1b28daf670f318f # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x56802cb4029e19c9 # initialize rs1
li x15, 0x3c316876b41e7b50 # initialize rs2
orn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa80214abdd771968 # initialize rs1
li x16, 0x7a0cc90930b36bf1 # initialize rs2
orn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x252e153b02626027 # initialize rs1
li x17, 0x01d95fbbd3c7c4c0 # initialize rs2
orn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4e6a1329f74c0010 # initialize rs1
li x18, 0x4a2754b717b84a40 # initialize rs2
orn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb7b4fbbdf261775b # initialize rs1
li x19, 0x1b65f3d3be137e44 # initialize rs2
orn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x50ea252e78689364 # initialize rs1
li x20, 0x916ded658f612d08 # initialize rs2
orn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x1161e9d664583985 # initialize rs1
li x21, 0x7ab9f88debb721a4 # initialize rs2
orn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x154e3bf55a2801ad # initialize rs1
li x22, 0x4c3eb7e93e232716 # initialize rs2
orn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x53639fdacae2e53a # initialize rs1
li x23, 0x0dc95308174282e7 # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc71c0062c01e5e66 # initialize rs1
li x24, 0x6cb1ecfd75a809d0 # initialize rs2
orn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6e7bafbeaf54b13b # initialize rs1
li x25, 0x301adefd7187aae0 # initialize rs2
orn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x41b36f9ce6985e11 # initialize rs1
li x26, 0xcd3ea7a30d336d94 # initialize rs2
orn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x69cacae9f123f1a6 # initialize rs1
li x27, 0x5ea1f1c7dac3f5ca # initialize rs2
orn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd8fc22285738331b # initialize rs1
li x28, 0xfa2c07e90d5ddf1b # initialize rs2
orn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x19d977c673c50cf3 # initialize rs1
li x29, 0x7a55b6c227c3db5c # initialize rs2
orn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x280e253a0aa0b759 # initialize rs1
li x30, 0x0f0138e4fb47e9ea # initialize rs2
orn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x777bbc0fb7cb9c67 # initialize rs1
li x31, 0xa96ac62872570b09 # initialize rs2
orn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x26, x2 # perform first operation
orn x1, x21, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x8, x26 # perform first operation
orn x10, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x7 # perform first operation
orn x25, x27, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x31, x29 # perform first operation
orn x29, x3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x27, x29 # perform first operation
orn x23, x7, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x13, x2 # perform first operation
orn x16, x14, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x30, x11 # perform first operation
orn x25, x22, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x9, x10 # perform first operation
orn x18, x30, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x2, x26 # perform first operation
orn x16, x23, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x26, x9 # perform first operation
orn x26, x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x19, x24 # perform first operation
orn x24, x18, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x29, x6 # perform first operation
orn x14, x24, x19 # perform second (triggering) operation

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
