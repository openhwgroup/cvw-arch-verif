///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-packh.S
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
li x0, 0xfc52593aa9f3d515 # initialize rs1
li x7, 0x91e6978b084d7e87 # initialize rs2
packh x24, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x77dfe790a5b64a17 # initialize rs1
li x22, 0x348f2f2611acf566 # initialize rs2
packh x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf2e1e95866063e4a # initialize rs1
li x14, 0x08bbaa1d2d1c18b0 # initialize rs2
packh x20, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xcf4661af306e71fb # initialize rs1
li x28, 0x0104fc94eb37810b # initialize rs2
packh x15, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x633b6ce5a1d19831 # initialize rs1
li x16, 0xc1b3799fd3a16d4c # initialize rs2
packh x27, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc1a53156483e7b25 # initialize rs1
li x7, 0x6db1f2c888cebc07 # initialize rs2
packh x19, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6996e7ab7439adaa # initialize rs1
li x16, 0x626e6e2090135445 # initialize rs2
packh x9, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x41697796f49d4ff0 # initialize rs1
li x28, 0x9101e60f2ac650b7 # initialize rs2
packh x6, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xabfaa0219b10b345 # initialize rs1
li x22, 0x707b450c231e7ae8 # initialize rs2
packh x19, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x48f2841d8c90c60b # initialize rs1
li x16, 0x4a4c0a934fb71f7b # initialize rs2
packh x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb32c18433fa03a08 # initialize rs1
li x1, 0x6afbd124ffaaa4c2 # initialize rs2
packh x24, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa9726378e268ced7 # initialize rs1
li x9, 0xf140952fd2713232 # initialize rs2
packh x3, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x30e5f1740f435795 # initialize rs1
li x2, 0x7f745160aff561dc # initialize rs2
packh x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8660a93db1f560de # initialize rs1
li x30, 0x0edbb3553be8c592 # initialize rs2
packh x8, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7190d8edc1001b72 # initialize rs1
li x15, 0x5c44c35c60d0aca9 # initialize rs2
packh x21, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7f27fe1cb8c7bb71 # initialize rs1
li x13, 0xf7adc5eeeca266cf # initialize rs2
packh x29, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x8a3d98bc0995091b # initialize rs1
li x20, 0x269df7b1aa71fef7 # initialize rs2
packh x1, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa9d46062e40d7dd7 # initialize rs1
li x30, 0x5d6adea24a81e5c8 # initialize rs2
packh x8, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa648c2b638298027 # initialize rs1
li x29, 0xc548a54b72cec3f4 # initialize rs2
packh x15, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0584395b46e22b42 # initialize rs1
li x9, 0x1798f73e54fd2467 # initialize rs2
packh x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xec96cc58a7a6c369 # initialize rs1
li x22, 0xe57f9c2dd79681d2 # initialize rs2
packh x26, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3deffbaab78f1a0c # initialize rs1
li x7, 0x14689de5014768a1 # initialize rs2
packh x8, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x22c69904542d0da5 # initialize rs1
li x10, 0x538e5557f0d23d15 # initialize rs2
packh x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2907b14b6e8eee98 # initialize rs1
li x1, 0xd5822f20512265e1 # initialize rs2
packh x3, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x69275f09deef6b87 # initialize rs1
li x13, 0xcb843fef78589dbe # initialize rs2
packh x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x588057a87dd6c6db # initialize rs1
li x19, 0x4ad5e94d8c6918d3 # initialize rs2
packh x15, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x49a09c0ccc582d1c # initialize rs1
li x11, 0x1b671a33272c13dd # initialize rs2
packh x13, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6f69df16ad99be4b # initialize rs1
li x24, 0x2060adeeff0c371f # initialize rs2
packh x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa41f64c420601148 # initialize rs1
li x18, 0x43a9c3664b942827 # initialize rs2
packh x3, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x23f4aeeb001f2375 # initialize rs1
li x19, 0x5a00abef17ddce3f # initialize rs2
packh x10, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x04fd8bf12e4c331b # initialize rs1
li x14, 0xb5ae8ff66af3ecbc # initialize rs2
packh x10, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb4d8e5605db0d4ba # initialize rs1
li x21, 0xd0377fed050cb453 # initialize rs2
packh x13, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xf022d64c2421d7ed # initialize rs1
li x0, 0x3072232aa00ac97a # initialize rs2
packh x10, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x15b8e432e2e67d3f # initialize rs1
li x1, 0x6e1d6f7b96ad45ee # initialize rs2
packh x23, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xec8af5defcfee673 # initialize rs1
li x2, 0xb99c69ba35308eb4 # initialize rs2
packh x20, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x998188e2b79fccfe # initialize rs1
li x3, 0x7e4294cceaffb142 # initialize rs2
packh x25, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x4f8f29fde4b154a3 # initialize rs1
li x4, 0x5fd8165ceed789cc # initialize rs2
packh x18, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x2298aa8d866bbaf8 # initialize rs1
li x5, 0x7b0cead04fae83d9 # initialize rs2
packh x12, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xed727bf41f476d16 # initialize rs1
li x6, 0x9d81d462e0f5fd29 # initialize rs2
packh x10, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x7d52e115fbf5581b # initialize rs1
li x7, 0xbd7aff1d6abe6afa # initialize rs2
packh x11, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xb42bf35dddd323ca # initialize rs1
li x8, 0xf676252977aca69a # initialize rs2
packh x31, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0xf67ed2e68f91306e # initialize rs1
li x9, 0x9e7658121db2087b # initialize rs2
packh x27, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x2568b8710b6819ee # initialize rs1
li x10, 0x689ff326ab312234 # initialize rs2
packh x16, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0x5c85dca51f5223f5 # initialize rs1
li x11, 0x68531e2f33cf64f7 # initialize rs2
packh x18, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x4bcf7f8ed22d3617 # initialize rs1
li x12, 0xfec109ea8b6c1f66 # initialize rs2
packh x1, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x3376e4513f65ae03 # initialize rs1
li x13, 0x4d57219f376377f6 # initialize rs2
packh x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0xf30d883cb87d622b # initialize rs1
li x14, 0x715c0bb6339d641d # initialize rs2
packh x17, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x08d414b569d476d5 # initialize rs1
li x15, 0x83c8175b06509c5d # initialize rs2
packh x6, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x12520b80a7df7887 # initialize rs1
li x16, 0x507747215114d272 # initialize rs2
packh x25, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x6b0f39990fe05e63 # initialize rs1
li x17, 0x65bdf529709cd390 # initialize rs2
packh x15, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0xf018646cbbaab2c2 # initialize rs1
li x18, 0xd8d4ba24ee3abbe5 # initialize rs2
packh x13, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x24020c1cc7b1fe9c # initialize rs1
li x19, 0x079355c6050969b2 # initialize rs2
packh x9, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xa25026e6b53d3c4c # initialize rs1
li x20, 0xce06bf189fcd0fb2 # initialize rs2
packh x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0xce692f62732e2263 # initialize rs1
li x21, 0x0e69bafa5c3a9674 # initialize rs2
packh x3, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x77bc8096fe1a8e53 # initialize rs1
li x22, 0x280a578756d968bd # initialize rs2
packh x21, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0x3f645a75226805c0 # initialize rs1
li x23, 0x72767aa6712d44d5 # initialize rs2
packh x21, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x3125063bd5c427fd # initialize rs1
li x24, 0xe1bd1da70d38cccf # initialize rs2
packh x31, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0xdfdff838d0bbbfa1 # initialize rs1
li x25, 0x7567a91b7660bae7 # initialize rs2
packh x19, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xa059bd2b597acf9b # initialize rs1
li x26, 0x67a92c3912ebfd0a # initialize rs2
packh x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x49c5b502dff9f1db # initialize rs1
li x27, 0x57d1cf4c5186dd3b # initialize rs2
packh x1, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0x279bc99d9065b2e1 # initialize rs1
li x28, 0xd863539505b9f8d6 # initialize rs2
packh x5, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x4eca0bca8cd369dd # initialize rs1
li x29, 0xe46dc272ebc2fc0b # initialize rs2
packh x31, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0x8e010de104145cfc # initialize rs1
li x30, 0x67807f64fe6ee3d7 # initialize rs2
packh x25, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0xe7faf5371734afc9 # initialize rs1
li x31, 0x6bc9b2b60d30524b # initialize rs2
packh x29, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0xed88b8cb82b40cb8 # initialize rs1
li x24, 0x9c91f1361131f666 # initialize rs2
packh x0, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0xa059bdca9f128e89 # initialize rs1
li x13, 0x847c23328ce5b815 # initialize rs2
packh x1, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0xac5bdf511b7bab53 # initialize rs1
li x12, 0x6996e743c4ad85b0 # initialize rs2
packh x2, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x2, 0x465356be1728a29f # initialize rs1
li x6, 0x58f415934d7026ea # initialize rs2
packh x3, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x00d5b7871122512e # initialize rs1
li x31, 0x73a52c6478216a44 # initialize rs2
packh x4, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x21befbc17a499c0a # initialize rs1
li x26, 0x451be2164b715f0d # initialize rs2
packh x5, x18, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xcf866a561fbd44f0 # initialize rs1
li x4, 0x21bd67a18f5810a9 # initialize rs2
packh x6, x3, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xba7aa272e24b48e3 # initialize rs1
li x17, 0xeb259f27c90f579f # initialize rs2
packh x7, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xa74c9c519a539da4 # initialize rs1
li x20, 0xec43a115e0f93aa0 # initialize rs2
packh x8, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x6138a9a472c2eb8c # initialize rs1
li x7, 0xf7866087bba7913f # initialize rs2
packh x9, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x22e3c4097c45125c # initialize rs1
li x12, 0x435c300640b76704 # initialize rs2
packh x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xb56e593316813b4f # initialize rs1
li x14, 0x99b480f9b9724cff # initialize rs2
packh x11, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x387851793e4f36c3 # initialize rs1
li x26, 0x018979412e2ec3b3 # initialize rs2
packh x12, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x2f2f17a935f413ba # initialize rs1
li x13, 0xfd15d483ada27c52 # initialize rs2
packh x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xcc8ff1f7c8ea0752 # initialize rs1
li x25, 0xc0f09b9f8dc95efc # initialize rs2
packh x14, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xc0c1d3a2e0309c98 # initialize rs1
li x26, 0x835b69b2f20bca29 # initialize rs2
packh x15, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0xdbddb4d46fbb7c0c # initialize rs1
li x20, 0x945d367646dde5d9 # initialize rs2
packh x16, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x2cc4f8d5d360fa46 # initialize rs1
li x10, 0x23f7cb25efe4557e # initialize rs2
packh x17, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xf1367a09b30ce92c # initialize rs1
li x13, 0x738d1aaeb5fc4163 # initialize rs2
packh x18, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0xf6acbcbac17ec573 # initialize rs1
li x17, 0x15a5e791677f0148 # initialize rs2
packh x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xa92a04672de59125 # initialize rs1
li x14, 0xef24dd9b8b6b152d # initialize rs2
packh x20, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0xa97af365b31d20c2 # initialize rs1
li x30, 0xa8992915f71024c7 # initialize rs2
packh x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x6eaf734b698b63d4 # initialize rs1
li x8, 0x938fb95ac5704580 # initialize rs2
packh x22, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x16c99e334e8e6782 # initialize rs1
li x28, 0x338429b022e70b8a # initialize rs2
packh x23, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xef8e037a5211ab66 # initialize rs1
li x27, 0xa70605cc07de0116 # initialize rs2
packh x24, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0x470c03d268617809 # initialize rs1
li x27, 0xd434f1b89ac08e2d # initialize rs2
packh x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x300d857354d9d8af # initialize rs1
li x29, 0x2f70fbf1dfcb19ef # initialize rs2
packh x26, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x0bac6911f5ba9910 # initialize rs1
li x31, 0x43df93e45edfa3aa # initialize rs2
packh x27, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xb6427d464a081e9f # initialize rs1
li x31, 0xbf92a73851bd75e0 # initialize rs2
packh x28, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x41b2a962d022306c # initialize rs1
li x24, 0x7c4b9e2fafde7049 # initialize rs2
packh x29, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0xd607c6ca2ea294b1 # initialize rs1
li x17, 0x66158ebfca09f7fe # initialize rs2
packh x30, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0xc29f74f5cb69a060 # initialize rs1
li x28, 0x5b1b954470c47690 # initialize rs2
packh x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x9, 0xb2da47f93c14f020 # initialize rs2
packh x18, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x15, 0x8ffcf8a5ed595ad9 # initialize rs2
packh x2, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
li x6, 0x40f7147b8584c1b6 # initialize rs2
packh x29, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x8, 0xdffd8ba6d075515c # initialize rs2
packh x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x7, 0x8000000000000001 # initialize rs1
li x27, 0x6e16b6bd2c88c4be # initialize rs2
packh x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x31, 0x168b2e61881b75df # initialize rs2
packh x5, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x292d3d46677343e6 # initialize rs2
packh x23, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0xdf9fd30a862545c1 # initialize rs2
packh x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0xb732519c3d67d7d3 # initialize rs2
packh x17, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0bab5cf3d513b3dc # initialize rs2
packh x20, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xab0ce385a4c5d865 # initialize rs2
packh x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x31, 0xfd4c7ed3e4c0a8d8 # initialize rs2
packh x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x7, 0xab8191ebf56cef42 # initialize rs2
packh x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x9, 0x809145747c74903f # initialize rs2
packh x15, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x5, 0xf2e3320f37d85c87 # initialize rs2
packh x31, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x1, 0x9a0446a7922fa221 # initialize rs2
packh x20, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xa772aa6240b7a5b5 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
packh x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x05a711a1c49efe68 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
packh x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x46f73b72a8502cd3 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
packh x27, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x29, 0x8fdead08e846be22 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
packh x2, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xdd342aa382060e84 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
packh x6, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0x6211a4bf62ccbd05 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
packh x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x9b5c0bb1a97d88d7 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
packh x11, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x76077dfea7f9aa81 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
packh x7, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0x13e3f2db0364f637 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
packh x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x6, 0x2dff5598a982e00a # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x19968cdd590d3903 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xc692482a13a0b7a4 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
packh x5, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x1f5c6c862a5dcd0f # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
packh x22, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x38a236117924b71e # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
packh x23, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x23, 0x4d2012f05a027200 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
packh x31, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x510eee3f7062f5dd # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
packh x8, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
packh x26, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
packh x28, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
packh x31, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x26, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
packh x22, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x12, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
packh x28, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
packh x1, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
packh x25, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
packh x26, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
packh x21, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
packh x6, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x13, 0x0000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
packh x31, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
packh x16, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
packh x14, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x10, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
packh x5, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x12, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
packh x26, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
packh x20, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
packh x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x20, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x17, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
packh x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
packh x27, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
packh x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
packh x8, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x25, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
packh x18, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
packh x23, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x30, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x14, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x13, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
packh x30, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
packh x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x26, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
packh x10, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
packh x27, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
packh x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
packh x26, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
packh x13, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
packh x25, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x8, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
packh x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
packh x26, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
packh x16, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
packh x2, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
packh x1, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
packh x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000002 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
packh x14, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
packh x28, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
packh x28, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x11, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
packh x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
packh x9, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
packh x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x13, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
packh x28, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
packh x16, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
packh x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x7, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
packh x22, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
packh x29, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x19, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
packh x31, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
packh x20, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
packh x19, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x6, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x27, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
packh x2, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x25, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
packh x21, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
packh x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x30, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
packh x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x5, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
packh x25, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x24, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
packh x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x14, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x24, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
packh x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
packh x30, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
packh x13, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
packh x3, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
packh x17, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
packh x8, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
packh x21, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x19, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
packh x21, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
packh x13, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
packh x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x18, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
packh x17, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
packh x1, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
packh x1, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
packh x18, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x18, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
packh x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
packh x20, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
packh x6, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
packh x3, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x20, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
packh x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x7fffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
packh x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7fffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x10, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
packh x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
packh x8, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
packh x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
packh x11, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
packh x7, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
packh x26, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x5, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
packh x19, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
packh x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
packh x1, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
packh x19, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
packh x25, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
packh x13, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
packh x3, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x15, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
packh x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
packh x10, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
packh x12, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
packh x6, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
packh x17, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
packh x25, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
packh x19, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
packh x20, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x9, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
packh x27, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
packh x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
packh x6, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
packh x19, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
packh x30, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
packh x10, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x19, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
packh x23, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x1, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
packh x6, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
packh x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
packh x23, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x27, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
packh x30, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
packh x24, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x28, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
packh x18, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
packh x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
packh x31, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
packh x1, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x7, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
packh x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x22, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
packh x14, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x23, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
packh x19, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
packh x26, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
packh x30, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
packh x30, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
packh x28, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
packh x9, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
packh x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
packh x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
packh x19, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
packh x29, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
packh x27, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
packh x18, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
packh x11, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x15, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x3, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
packh x22, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
packh x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
packh x21, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
packh x15, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
packh x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
packh x7, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
packh x31, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
packh x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
packh x10, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
packh x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x14, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
packh x7, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
packh x19, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x23, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
packh x16, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x15, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
packh x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
packh x25, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
packh x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x11, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
packh x5, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x18, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
packh x27, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
packh x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
packh x8, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
packh x2, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
packh x22, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
packh x7, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
packh x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x8, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
packh x13, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
packh x11, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
packh x8, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x31, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
packh x12, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
packh x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
packh x15, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
packh x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
packh x20, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
packh x22, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x25, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
packh x27, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
packh x3, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
packh x5, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
packh x8, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
packh x12, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x00000000ffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
packh x21, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
packh x30, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
packh x9, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
packh x27, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
packh x26, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x3, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
packh x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
packh x19, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
packh x21, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
packh x7, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
packh x11, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
packh x28, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
packh x19, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
packh x7, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
packh x11, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
packh x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x14, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x30, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x10, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
packh x30, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
packh x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
packh x11, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x15, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
packh x25, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
packh x11, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
packh x7, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x31, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
packh x18, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x11, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
packh x16, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
packh x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
packh x8, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
packh x23, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
packh x21, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
packh x24, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x5, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
packh x18, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
packh x29, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
packh x25, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
packh x24, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x19, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
packh x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x15, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
packh x12, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x9, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
packh x28, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x18, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
packh x29, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
packh x24, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
packh x8, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
packh x20, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
packh x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
packh x16, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
packh x3, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
packh x28, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x8, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
packh x14, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
packh x9, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
packh x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x31, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
packh x30, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x11, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
packh x17, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x8375f940ececa6e9 # initialize rs1
li x0, 0xf2d4f1470eec409e # initialize rs2
packh x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf2c63845d2f7200f # initialize rs1
li x1, 0x106d3010b6219e36 # initialize rs2
packh x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x6947f90f593ece07 # initialize rs1
li x2, 0x359c3a9c1500e0ae # initialize rs2
packh x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfd50d14565763dd2 # initialize rs1
li x3, 0x43719c807e056516 # initialize rs2
packh x8, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x07c2d3c160e11cdf # initialize rs1
li x4, 0xb0fdd2b5c2da809a # initialize rs2
packh x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x807c572e516dd28b # initialize rs1
li x5, 0x9cfd4e41e7061962 # initialize rs2
packh x15, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x73890e962c171e80 # initialize rs1
li x6, 0x7ee5bfc9ba0eea63 # initialize rs2
packh x22, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbd952c9fd96b0c9d # initialize rs1
li x7, 0xfce05de74642d028 # initialize rs2
packh x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x44f34732ba3e6828 # initialize rs1
li x8, 0x5fc6f2e41480d936 # initialize rs2
packh x14, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4a3ddf1843183acb # initialize rs1
li x9, 0xe75b65de06abe6c5 # initialize rs2
packh x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6bc90f0fda7ea98c # initialize rs1
li x10, 0xbdee0131e8e26c25 # initialize rs2
packh x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8ae459c9787281fd # initialize rs1
li x11, 0x1afe537bf34f4ea2 # initialize rs2
packh x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd9a44e1393c77212 # initialize rs1
li x12, 0xa16f26ce41f2e1f2 # initialize rs2
packh x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0e391cea3d85fcb8 # initialize rs1
li x13, 0x74f875174a238d83 # initialize rs2
packh x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe0d35892d186f539 # initialize rs1
li x14, 0x82e4f0022c7faf8c # initialize rs2
packh x27, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc16fd4a22c36c814 # initialize rs1
li x15, 0x81bf8ecc31bee7ff # initialize rs2
packh x17, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7367c09736e91a63 # initialize rs1
li x16, 0x759c6e92da4027a4 # initialize rs2
packh x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x617fef45c5252096 # initialize rs1
li x17, 0xcc20677f2a0e98f2 # initialize rs2
packh x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xaa1083cb85cea662 # initialize rs1
li x18, 0x768327e898e6581a # initialize rs2
packh x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf8455622440b2fa1 # initialize rs1
li x19, 0x0f24b18bc20708de # initialize rs2
packh x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x601335595f9be79b # initialize rs1
li x20, 0xf0cebc85b48c6f5a # initialize rs2
packh x2, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd623eddfd4efdb6f # initialize rs1
li x21, 0xca2f41976cce0fd5 # initialize rs2
packh x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd296e096d639c9fb # initialize rs1
li x22, 0x14dc31b374f41443 # initialize rs2
packh x7, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xebec3338ce7509d9 # initialize rs1
li x23, 0xacfea0c912fe98b6 # initialize rs2
packh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd7425735238b713c # initialize rs1
li x24, 0xfbd83a34834ac465 # initialize rs2
packh x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x668ad3a1707a82c9 # initialize rs1
li x25, 0xa6954657c80541ac # initialize rs2
packh x3, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9dd1f763d7a50aae # initialize rs1
li x26, 0x4b6f0f16bb12d19b # initialize rs2
packh x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x37155daaee203f79 # initialize rs1
li x27, 0x015186dd703e955a # initialize rs2
packh x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x426e5a000c70e073 # initialize rs1
li x28, 0xab5dc6c04140d9bb # initialize rs2
packh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x02978186cfff9f52 # initialize rs1
li x29, 0xaa12a4d063ec2c41 # initialize rs2
packh x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xcf66d86448ceda0c # initialize rs1
li x30, 0x76640b88495f7f76 # initialize rs2
packh x8, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf82904711b713c76 # initialize rs1
li x31, 0xdfd9b13b779a770f # initialize rs2
packh x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd8f09d0748b90334 # initialize rs1
li x27, 0x6ada05fad1abd60e # initialize rs2
packh x0, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x609718c4c41b14fd # initialize rs1
li x8, 0xbdc4680dffbfe2c3 # initialize rs2
packh x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6a3153f97f5fc608 # initialize rs1
li x10, 0x2f7f5f1dcc2484f4 # initialize rs2
packh x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x20050dc20a4ee8b2 # initialize rs1
li x13, 0x5ea883cc3636702e # initialize rs2
packh x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd9236652e7b66670 # initialize rs1
li x31, 0xa2f4785599aef9f5 # initialize rs2
packh x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xabe7862609c49aa4 # initialize rs1
li x21, 0x1985aabf7ccd99cd # initialize rs2
packh x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x91d092b43e767d2e # initialize rs1
li x3, 0xb7dba1b5f2046317 # initialize rs2
packh x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x72f4cc8bb17bccb5 # initialize rs1
li x11, 0x6e8637d7075a3685 # initialize rs2
packh x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe2fbeb07866901fb # initialize rs1
li x11, 0xf44c36974452fc1d # initialize rs2
packh x8, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x304bf04214972c9b # initialize rs1
li x24, 0x0157af1fd4db3310 # initialize rs2
packh x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd09e07e07009877c # initialize rs1
li x24, 0xfa51c1470ba39b1f # initialize rs2
packh x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x036debdd233c5cd2 # initialize rs1
li x27, 0xfc2f66d55fccd0a0 # initialize rs2
packh x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x32a6920e815b0348 # initialize rs1
li x23, 0x3c5523918c067b58 # initialize rs2
packh x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x26f8de8d30180aa9 # initialize rs1
li x22, 0x6b796341bb5ab3b3 # initialize rs2
packh x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd939ad657441ac1a # initialize rs1
li x24, 0xb3aeafb37baed6d9 # initialize rs2
packh x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe0adaf52199ca520 # initialize rs1
li x1, 0x831796810d587018 # initialize rs2
packh x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x33317d3581ea2b20 # initialize rs1
li x3, 0x7e606a72712015e9 # initialize rs2
packh x16, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa813fdfbb8bac3b6 # initialize rs1
li x7, 0xa29271bc46c15d48 # initialize rs2
packh x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x540a0332a75c709e # initialize rs1
li x31, 0x447efa78c81fdc1c # initialize rs2
packh x18, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x23483aa83165b306 # initialize rs1
li x22, 0xe55393ea7869bffd # initialize rs2
packh x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x39f61d98ecfd0f61 # initialize rs1
li x9, 0xb0a195b5a3b4fe42 # initialize rs2
packh x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa3c273632f96e70f # initialize rs1
li x1, 0x43bf86ad97e6caca # initialize rs2
packh x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6da50f4d59d285e0 # initialize rs1
li x1, 0x2f1e8252087cec82 # initialize rs2
packh x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8f49815ec8465a7a # initialize rs1
li x24, 0x184d1d7b2a470c9e # initialize rs2
packh x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1bb1143aa15bf65b # initialize rs1
li x22, 0x41544b802182cf53 # initialize rs2
packh x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0c424b5ee1235078 # initialize rs1
li x30, 0x5781cfd9221f67a4 # initialize rs2
packh x25, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x50da4d75194091b0 # initialize rs1
li x3, 0x507f020d2a4c71dc # initialize rs2
packh x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3b9eef140984e22b # initialize rs1
li x5, 0x719ad48dc415d7f9 # initialize rs2
packh x27, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3298c1084a3c6e6f # initialize rs1
li x7, 0xb105a5c0b13c92e5 # initialize rs2
packh x28, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc53caa73cb12a3e6 # initialize rs1
li x7, 0x7a391b67131206a6 # initialize rs2
packh x29, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4ae482ac16c05b69 # initialize rs1
li x10, 0xe460a05d83e9f632 # initialize rs2
packh x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x24a1f895deec67b3 # initialize rs1
li x27, 0xd46ada0fe2f93a8a # initialize rs2
packh x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x18954cb26f30a37e # initialize rs1
li x0, 0xc4edb2f26c6d825f # initialize rs2
packh x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x7, 0x1efa03147d4766f4 # initialize rs1
li x1, 0xd8dffa775f059bd1 # initialize rs2
packh x1, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x69ae46c79d8327d5 # initialize rs1
li x2, 0x57ae0347f173cef6 # initialize rs2
packh x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0x20c12065a7bc3ae3 # initialize rs1
li x3, 0x8f5f13e1c0a16150 # initialize rs2
packh x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xd64ba43ef5af7089 # initialize rs1
li x4, 0x1f4d05c93f5d1deb # initialize rs2
packh x4, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x302bd0f9331fd37c # initialize rs1
li x5, 0x81b945a09f47bd33 # initialize rs2
packh x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xbb8ccca8e31581e1 # initialize rs1
li x6, 0xa021e1f86a1d1cfa # initialize rs2
packh x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x761718c1aace41ff # initialize rs1
li x7, 0xebfa8498fe4938b6 # initialize rs2
packh x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x4ee231b28f422e67 # initialize rs1
li x8, 0xcf94c8d41514dbe6 # initialize rs2
packh x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0xf355d6c3d04b1ebd # initialize rs1
li x9, 0x45fcffa30007d208 # initialize rs2
packh x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x7bf9124b52870c68 # initialize rs1
li x10, 0x37ab03bae6b466a4 # initialize rs2
packh x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x30, 0x3c5dce0a60cbabc7 # initialize rs1
li x11, 0x80d18cfc5b7ab09b # initialize rs2
packh x11, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0x2a755b536fcfc54e # initialize rs1
li x12, 0x5a1114e1b8ea857a # initialize rs2
packh x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x24, 0xc70ecaba426c9540 # initialize rs1
li x13, 0xbe4a4e50ee59a330 # initialize rs2
packh x13, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x29, 0xb09fc1c205b15064 # initialize rs1
li x14, 0xe3e761d06e5df2e9 # initialize rs2
packh x14, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x18, 0x97fd3f22eebad675 # initialize rs1
li x15, 0xb9c2582bc3751444 # initialize rs2
packh x15, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0xefaaf6add53ccea2 # initialize rs1
li x16, 0x726e39d05efa9f8b # initialize rs2
packh x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0xb177679e9a179765 # initialize rs1
li x17, 0x13cf09566e61e701 # initialize rs2
packh x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0xf3af099ade42b37b # initialize rs1
li x18, 0xc38e3341eb14fd68 # initialize rs2
packh x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0xb0227fcd6880a004 # initialize rs1
li x19, 0xd59f48f0f83ca57e # initialize rs2
packh x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0xd1126a7becfd67f8 # initialize rs1
li x20, 0xc26dbb7aa4418207 # initialize rs2
packh x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x87f8b79a3a4cdecc # initialize rs1
li x21, 0xbd89bd868e3eb9eb # initialize rs2
packh x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xddd41c17f55bb4c9 # initialize rs1
li x22, 0xc78fb0f6bc847326 # initialize rs2
packh x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xf783e34841abbd7b # initialize rs1
li x23, 0x6bb926f1b03050c3 # initialize rs2
packh x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xbe721fa6eba18119 # initialize rs1
li x24, 0x036ca959e7ad3b57 # initialize rs2
packh x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x18fa6ac9b1a1c40e # initialize rs1
li x25, 0x66df63829798e690 # initialize rs2
packh x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x0e261bfadaaf2bcd # initialize rs1
li x26, 0x73f713d843932a60 # initialize rs2
packh x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x28, 0xa9b9705c5a78ed53 # initialize rs1
li x27, 0xb353b62cf485e517 # initialize rs2
packh x27, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0x8718896a6988b1c7 # initialize rs1
li x28, 0xbcefd7389d0473cb # initialize rs2
packh x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0xb59443392fc503a3 # initialize rs1
li x29, 0x40e28c0ae8078ec3 # initialize rs2
packh x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x390019e187fd5aad # initialize rs1
li x30, 0xe63dfb07bd183268 # initialize rs2
packh x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x3595637835d2afbc # initialize rs1
li x31, 0xd94f1e8fa0761398 # initialize rs2
packh x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4c6f4048819691c2 # initialize rs1
li x0, 0xb58058894aaa789e # initialize rs2
packh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd47ad301d6750b4d # initialize rs1
li x1, 0x3b9f6d556e63c354 # initialize rs2
packh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xccfaa5e31df8d9f8 # initialize rs1
li x2, 0xfdf58536877bba95 # initialize rs2
packh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x904ce7bb4c07b32b # initialize rs1
li x3, 0xf83de4fa015d0def # initialize rs2
packh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9b116b3dacc46abd # initialize rs1
li x4, 0xe9b8f97976142ef7 # initialize rs2
packh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6fe4fb087fb1737c # initialize rs1
li x5, 0x616c156585fa5a92 # initialize rs2
packh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7d3ba550d69b13c9 # initialize rs1
li x6, 0x82a41cf50942e787 # initialize rs2
packh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x93227ecc35823da9 # initialize rs1
li x7, 0x10f993e73c865443 # initialize rs2
packh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe73949367cd91929 # initialize rs1
li x8, 0x2e48e192933ddc49 # initialize rs2
packh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xab024e9be67701de # initialize rs1
li x9, 0x8ff7295366b213e4 # initialize rs2
packh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6ff64856632023fb # initialize rs1
li x10, 0x74455733916cf936 # initialize rs2
packh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x28e6e3506f47aca0 # initialize rs1
li x11, 0x2f2e66556352e3b8 # initialize rs2
packh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd1a7db0794b57cd0 # initialize rs1
li x12, 0x997ef5331bb6e71d # initialize rs2
packh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0167125847e03ce7 # initialize rs1
li x13, 0x4baec1e44f857448 # initialize rs2
packh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6008d426c31609e0 # initialize rs1
li x14, 0x5906d31e2b86051b # initialize rs2
packh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3d91c1a3bef9bbab # initialize rs1
li x15, 0x8f5dd55920cd25f3 # initialize rs2
packh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6236d5feefcf3062 # initialize rs1
li x16, 0xa3b93f87abb2611d # initialize rs2
packh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x26db7282d327e3e6 # initialize rs1
li x17, 0x5fd64506260123f8 # initialize rs2
packh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x0375c62792df8f33 # initialize rs1
li x18, 0xd63e932ea7d71c63 # initialize rs2
packh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8129806616e0fc42 # initialize rs1
li x19, 0x9fd9a08715f8517f # initialize rs2
packh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9610e1a0453626c8 # initialize rs1
li x20, 0xdbdb19903e81bb2f # initialize rs2
packh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc86573b40bff7b3c # initialize rs1
li x21, 0x316a76e2634ce40d # initialize rs2
packh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc5df6384d21727eb # initialize rs1
li x22, 0x233c24ba5fb10d53 # initialize rs2
packh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfbdc56f77c2ff26e # initialize rs1
li x23, 0x617f07c9164e6439 # initialize rs2
packh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd9b844248245e85d # initialize rs1
li x24, 0x1479d4de08ef1a3e # initialize rs2
packh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3c0bfca988240a63 # initialize rs1
li x25, 0x3da9b47b226cd0bd # initialize rs2
packh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xadf3a1d60046acd9 # initialize rs1
li x26, 0xaa846eacce66ac5c # initialize rs2
packh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd68807d3a98790d0 # initialize rs1
li x27, 0x04b1959b850e4c20 # initialize rs2
packh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x99b456bd065043ff # initialize rs1
li x28, 0xd984135ec301762d # initialize rs2
packh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7d76dd88123c828d # initialize rs1
li x29, 0x2d3cd4a44d64addf # initialize rs2
packh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc8ee3dc95208596f # initialize rs1
li x30, 0xd75f972edb3fb066 # initialize rs2
packh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5cd294ee8d621419 # initialize rs1
li x31, 0xd4e5fbf66cf8a97f # initialize rs2
packh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x6, x30 # perform first operation
packh x20, x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x9, x10 # perform first operation
packh x12, x27, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x27, x17 # perform first operation
packh x23, x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x30, x31 # perform first operation
packh x29, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x17, x16 # perform first operation
packh x16, x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x16, x23 # perform first operation
packh x23, x22, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x24, x15 # perform first operation
packh x26, x25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x25, x21 # perform first operation
packh x8, x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x22, x16 # perform first operation
packh x1, x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x22, x27 # perform first operation
packh x22, x13, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x17, x9 # perform first operation
packh x9, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x29, x28 # perform first operation
packh x17, x14, x21 # perform second (triggering) operation

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
