///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicond/WALLY-COV-czero.nez.S
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
li x0, 0x0d92f58bd38347c4 # initialize rs1
li x10, 0x4e2e8a59d96ccb6a # initialize rs2
czero.nez x5, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb4c3ab99929c38c1 # initialize rs1
li x24, 0xd942b08da5a38af9 # initialize rs2
czero.nez x13, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x52c92445b343344d # initialize rs1
li x6, 0x23b96f96c4706595 # initialize rs2
czero.nez x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc1fbb9ed4bf82cb8 # initialize rs1
li x17, 0x1a6a879bedfa3342 # initialize rs2
czero.nez x13, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x831ce45b07a8098c # initialize rs1
li x8, 0x3727d4fc614b34c8 # initialize rs2
czero.nez x16, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3f3ff923c21836bc # initialize rs1
li x14, 0x498e60e48d12f413 # initialize rs2
czero.nez x6, x5, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xf20e11e651f8582e # initialize rs1
li x8, 0xcb1ceb3567159d4a # initialize rs2
czero.nez x21, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xda4f35ff4c0d718d # initialize rs1
li x13, 0xeaa6c4b659b89675 # initialize rs2
czero.nez x17, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x22d1a24444a9f500 # initialize rs1
li x7, 0x1bd7242aa88580c7 # initialize rs2
czero.nez x9, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x43681159ecf0ecb5 # initialize rs1
li x17, 0xb7891465b7225d8a # initialize rs2
czero.nez x14, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9060b6116408e4a0 # initialize rs1
li x13, 0x593cc91137c5947b # initialize rs2
czero.nez x7, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6d8c926a7c6c3871 # initialize rs1
li x21, 0x8bc4c4d356fb83d8 # initialize rs2
czero.nez x27, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd446d30f5c6badbb # initialize rs1
li x30, 0xe474d850310f76ad # initialize rs2
czero.nez x14, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc446d931a3423f07 # initialize rs1
li x25, 0x666ceda08c7bf655 # initialize rs2
czero.nez x10, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x1945c4bdde871e87 # initialize rs1
li x28, 0x486e549b7d16da3f # initialize rs2
czero.nez x31, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc5e0a8fc61be2cd6 # initialize rs1
li x11, 0x6ad8fe6360dc02e2 # initialize rs2
czero.nez x1, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa92057854eb9234b # initialize rs1
li x12, 0x4e584c300d69cf2f # initialize rs2
czero.nez x14, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc0062a99496179c4 # initialize rs1
li x10, 0xe5c56b6c3e637fe9 # initialize rs2
czero.nez x3, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x02a1ae2bccc616b3 # initialize rs1
li x28, 0x2fffb54ba53c89ef # initialize rs2
czero.nez x31, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x148f727b54fdec9e # initialize rs1
li x28, 0xb141abadd5af1c9f # initialize rs2
czero.nez x25, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x347eb6393da5dd4c # initialize rs1
li x8, 0x716dd7a759a20cb6 # initialize rs2
czero.nez x6, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf0f934fc982d32b3 # initialize rs1
li x28, 0x3fe459432a0d2030 # initialize rs2
czero.nez x13, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5538b4e828a8c4e3 # initialize rs1
li x29, 0x2cbb7709bb1753f0 # initialize rs2
czero.nez x31, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4b4d8775ca06c137 # initialize rs1
li x30, 0x2bfd83fe5650abf3 # initialize rs2
czero.nez x25, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x264cf8340f5e265e # initialize rs1
li x28, 0x3a0aeb794550ae08 # initialize rs2
czero.nez x14, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xda4e42b23e8a7f35 # initialize rs1
li x15, 0x0dd544a4c76e95d4 # initialize rs2
czero.nez x22, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf8dcfcd8a4764d91 # initialize rs1
li x24, 0xda093b6e4f19ef02 # initialize rs2
czero.nez x14, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x03c47e67b85fdfe1 # initialize rs1
li x13, 0xf5938ea9f9e9c2db # initialize rs2
czero.nez x14, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xdea0ca4eaae2b061 # initialize rs1
li x21, 0xf8ddcb6fd4172d01 # initialize rs2
czero.nez x8, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf334b208f4024fb4 # initialize rs1
li x30, 0x7b4984e2165aca94 # initialize rs2
czero.nez x17, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7ea67df1ce7e7e44 # initialize rs1
li x5, 0xee22221ef34534a1 # initialize rs2
czero.nez x16, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2c09a3307ea4fdf2 # initialize rs1
li x7, 0x34739872e38994ee # initialize rs2
czero.nez x8, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x12, 0x4d4b96fd7527ffd4 # initialize rs1
li x0, 0xd53dc3634a92869c # initialize rs2
czero.nez x14, x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x8c2b4d00b0e58529 # initialize rs1
li x1, 0x61e8bd15e5613816 # initialize rs2
czero.nez x3, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0xabb1a2b0f8b7404d # initialize rs1
li x2, 0x8ea82ff46f45eb65 # initialize rs2
czero.nez x5, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x7d44ffc8fbb8c94d # initialize rs1
li x3, 0x98495b231e298f35 # initialize rs2
czero.nez x30, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x02a4d7f53826e2ee # initialize rs1
li x4, 0x4d2912d6e931e903 # initialize rs2
czero.nez x12, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xbb39896a1555fc0a # initialize rs1
li x5, 0x4b2318e828611a31 # initialize rs2
czero.nez x6, x30, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x28, 0x3227099d1ca8b714 # initialize rs1
li x6, 0xca3bf85baf3fd4d8 # initialize rs2
czero.nez x23, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x7a7de435886c1c62 # initialize rs1
li x7, 0x22b85768dd45b14f # initialize rs2
czero.nez x27, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x06ec3ee762cd4b38 # initialize rs1
li x8, 0x395559f275498341 # initialize rs2
czero.nez x13, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0xae8ec61c86697e17 # initialize rs1
li x9, 0x6bea5ba718405f68 # initialize rs2
czero.nez x30, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x1546d30b4c0ab936 # initialize rs1
li x10, 0x3e29391541ffe67b # initialize rs2
czero.nez x24, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x4f3c58540a06a386 # initialize rs1
li x11, 0xfd70f1df3f13f318 # initialize rs2
czero.nez x8, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xac209f02d7f67fd7 # initialize rs1
li x12, 0xdb7797d844d89c7a # initialize rs2
czero.nez x10, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x1bf76bd6fde1f0af # initialize rs1
li x13, 0x373a7079e2a107ac # initialize rs2
czero.nez x9, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x80bc52c726d3b21c # initialize rs1
li x14, 0x14500566f5131e65 # initialize rs2
czero.nez x23, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0xf08e5001876f5d2a # initialize rs1
li x15, 0x14f484117adf55ed # initialize rs2
czero.nez x12, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x77dde8aa84b40188 # initialize rs1
li x16, 0xbf7db1f2d0b289a0 # initialize rs2
czero.nez x31, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xa89e2f78f309c6ca # initialize rs1
li x17, 0xef47d0ed31381aa2 # initialize rs2
czero.nez x23, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xe051fd4ca00113cf # initialize rs1
li x18, 0x21015251b2625c01 # initialize rs2
czero.nez x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x95b6d2e0acc5fc6c # initialize rs1
li x19, 0x103facac6bd06746 # initialize rs2
czero.nez x5, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x19, 0x21f3120dae1b4262 # initialize rs1
li x20, 0xd7f0a8b5b9835489 # initialize rs2
czero.nez x13, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x58e69f87f4398c73 # initialize rs1
li x21, 0xa347496ff8530fde # initialize rs2
czero.nez x6, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0x1a236108c0254ae2 # initialize rs1
li x22, 0xe856232eed6f9b95 # initialize rs2
czero.nez x8, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x44b34595ef3ed5e0 # initialize rs1
li x23, 0xec45f7444947b778 # initialize rs2
czero.nez x24, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x3, 0x36de31f5f7fdb727 # initialize rs1
li x24, 0x5fa5862a5f2de71a # initialize rs2
czero.nez x7, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0xf644888f772e8abb # initialize rs1
li x25, 0xf36b133ca121e621 # initialize rs2
czero.nez x12, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0x7b916736f701c049 # initialize rs1
li x26, 0xc8f9839cac70387a # initialize rs2
czero.nez x1, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0xa6b31449f79271e3 # initialize rs1
li x27, 0x43ab311c153591dd # initialize rs2
czero.nez x13, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x985a20038f4bac6a # initialize rs1
li x28, 0x215de3d2032e9ccd # initialize rs2
czero.nez x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x2cb9edbed8cfb657 # initialize rs1
li x29, 0x5e978fbaa0783984 # initialize rs2
czero.nez x11, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0xc093ac4770c055e3 # initialize rs1
li x30, 0x9a7c9d2420d6f4e0 # initialize rs2
czero.nez x1, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0x19d3b3ac00e3ffcb # initialize rs1
li x31, 0x6128a39af79e1fb8 # initialize rs2
czero.nez x24, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x3ae181518cd31078 # initialize rs1
li x24, 0xa7ae7a4ab4cf5d44 # initialize rs2
czero.nez x0, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x9e097196cac9d5fd # initialize rs1
li x20, 0xfc4de4fec99241c5 # initialize rs2
czero.nez x1, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0x4c45d3195efa3822 # initialize rs1
li x13, 0xcae691c86955d18b # initialize rs2
czero.nez x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x8871b722955ecafe # initialize rs1
li x1, 0xe46ec27121be3e15 # initialize rs2
czero.nez x3, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0xd8b458aebfe5a9d5 # initialize rs1
li x7, 0x29a054767704033e # initialize rs2
czero.nez x4, x26, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x4, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x3ec9a9b6b0db9057 # initialize rs1
li x6, 0xfb91a71e58ac12ef # initialize rs2
czero.nez x5, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
li x29, 0x92dcf0fe8dfd4dc3 # initialize rs1
li x9, 0x1e90a180e60d49a3 # initialize rs2
czero.nez x6, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x1, 0x630d16d78ea6541d # initialize rs1
li x21, 0x1f79268b1db498d6 # initialize rs2
czero.nez x7, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x5b9b07d2f4e112c3 # initialize rs1
li x28, 0x9df61099fe2b01c0 # initialize rs2
czero.nez x8, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x81c50b170bfd74c1 # initialize rs1
li x16, 0xbb2d692d33943de0 # initialize rs2
czero.nez x9, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x20, 0x3459ef1e28e8fb1f # initialize rs1
li x13, 0xe7e3e1a174b5da49 # initialize rs2
czero.nez x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0xcff3a9a0e2dbaf1d # initialize rs1
li x28, 0x3a918c114f938170 # initialize rs2
czero.nez x11, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0xe98539cb941e5ef0 # initialize rs1
li x27, 0xe577263ea73182de # initialize rs2
czero.nez x12, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0x0b18b14c2de77edd # initialize rs1
li x9, 0xce370153f74a5b45 # initialize rs2
czero.nez x13, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xb1238bc023581f33 # initialize rs1
li x23, 0x2e9227043306d9d2 # initialize rs2
czero.nez x14, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x9fcfbe54b952fa3d # initialize rs1
li x22, 0x55851f50e01a34f2 # initialize rs2
czero.nez x15, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xaa93473480fbed60 # initialize rs1
li x21, 0xfbbf69bec59c95bd # initialize rs2
czero.nez x16, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0xa000e09c0a04b90c # initialize rs1
li x10, 0x6f18f2a7de8be8fe # initialize rs2
czero.nez x17, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0xa74042e1963fc355 # initialize rs1
li x22, 0x352100f6b967b7f1 # initialize rs2
czero.nez x18, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0xa291543321233ded # initialize rs1
li x28, 0x24458d0230e9bb93 # initialize rs2
czero.nez x19, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa34196ddee7c9236 # initialize rs1
li x29, 0xc3b97db0a6e529f2 # initialize rs2
czero.nez x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xe509ae1cf7a229ea # initialize rs1
li x7, 0x37b2792c9e350ab2 # initialize rs2
czero.nez x21, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x64111f60ae76f532 # initialize rs1
li x18, 0xab62ca6b6cb35593 # initialize rs2
czero.nez x22, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x34d7a6e517ffcd56 # initialize rs1
li x28, 0xc35292eeda551f6c # initialize rs2
czero.nez x23, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x6ebc1c42c81281f6 # initialize rs1
li x11, 0xf64a5d674c6017ab # initialize rs2
czero.nez x24, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x9e977aa2212cedc6 # initialize rs1
li x10, 0xb988fbd1d5bcaeec # initialize rs2
czero.nez x25, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x1107910f83e0f92d # initialize rs1
li x13, 0x98b53e9fd0b21aee # initialize rs2
czero.nez x26, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x91c05e6ec6c08e59 # initialize rs1
li x11, 0x35112748fb8225ca # initialize rs2
czero.nez x27, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xfd67c0e442d807fa # initialize rs1
li x3, 0xae8bf69e1ad9097b # initialize rs2
czero.nez x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0x224a225f9ea0551c # initialize rs1
li x17, 0x11d2bdb76ff829b5 # initialize rs2
czero.nez x29, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0xc553d757d485f89b # initialize rs1
li x8, 0x98224f8d478ee507 # initialize rs2
czero.nez x30, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xa7ec74e5b07f0256 # initialize rs1
li x6, 0xa314cba87776ae6a # initialize rs2
czero.nez x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0x61e340a421237f75 # initialize rs2
czero.nez x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
li x19, 0xe864fee8797b462f # initialize rs2
czero.nez x18, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x4d6b26469a552bbb # initialize rs2
czero.nez x1, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x14, 0x010350fefbb0109e # initialize rs2
czero.nez x24, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
li x29, 0xe8b6465d68d8ae00 # initialize rs2
czero.nez x13, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x16, 0xc358452665c8bd16 # initialize rs2
czero.nez x9, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x22, 0x192307f421e477a5 # initialize rs2
czero.nez x12, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x28, 0xcea7af4c6d394a72 # initialize rs2
czero.nez x5, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x1, 0xf069a7bcb354eac1 # initialize rs2
czero.nez x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x94f92a3be9d368d9 # initialize rs2
czero.nez x3, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xe33b298ba2c8a20b # initialize rs2
czero.nez x25, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x6, 0x767ed39e84dbef26 # initialize rs2
czero.nez x12, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x27, 0xa26960e1c914eafc # initialize rs2
czero.nez x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x7, 0x259e2bd24ffcdc90 # initialize rs2
czero.nez x12, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x27, 0x3de97d46c32919df # initialize rs2
czero.nez x16, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x24, 0x46ca99d9dd175cf1 # initialize rs2
czero.nez x13, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x278da86a302a112f # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
czero.nez x20, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xf93a4fa6726cee8f # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
czero.nez x8, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xb277b5388e47f8a0 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
czero.nez x24, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0xaabcd9a265d37b1a # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
czero.nez x15, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0xce122901abb09388 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
czero.nez x21, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x4e87a9cb534f3921 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.nez x1, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xc5dffe0822d33dc6 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
czero.nez x29, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x26, 0x68bee2c5e67562b8 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
czero.nez x21, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0x5bf5e5d251ec1deb # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
czero.nez x11, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x10, 0xb214b0a8631487f4 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x2, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xc83b1dcc503f673b # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x21, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x9d0d0c977440a0d8 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
czero.nez x13, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0x7556be2127f556b2 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.nez x13, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x9835047e7b1d53cb # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
czero.nez x27, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x3, 0x09d80efba87b8027 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
czero.nez x14, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x26, 0x961a17677d5d2ebb # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
czero.nez x25, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x9, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
czero.nez x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
czero.nez x19, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
czero.nez x17, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x25, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
czero.nez x29, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0x0000000000000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
czero.nez x29, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
czero.nez x13, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
czero.nez x14, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
czero.nez x27, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
czero.nez x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x5, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x10, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x26, 0x0000000000000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
czero.nez x29, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
czero.nez x3, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
czero.nez x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x22, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
czero.nez x18, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
czero.nez x14, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
czero.nez x22, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
czero.nez x23, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
czero.nez x17, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
czero.nez x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x10, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
czero.nez x1, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
czero.nez x30, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
czero.nez x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
czero.nez x8, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
czero.nez x1, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x15, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x28, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x3, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
czero.nez x19, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.nez x31, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
czero.nez x24, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
czero.nez x12, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
czero.nez x12, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
czero.nez x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
czero.nez x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
czero.nez x5, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x24, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
czero.nez x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x6, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
czero.nez x10, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
czero.nez x6, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
czero.nez x24, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
czero.nez x10, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
czero.nez x20, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x15, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000002 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x16, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x16, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
czero.nez x22, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.nez x14, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
czero.nez x29, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
czero.nez x28, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x17, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
czero.nez x11, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x7, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.nez x31, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
czero.nez x22, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
czero.nez x11, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
czero.nez x9, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
czero.nez x30, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
czero.nez x7, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
czero.nez x18, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
czero.nez x21, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.nez x5, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x9, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x7, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
czero.nez x1, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
czero.nez x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
czero.nez x28, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
czero.nez x7, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x19, 0x8000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
czero.nez x6, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x19, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
czero.nez x7, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x11, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
czero.nez x3, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
czero.nez x6, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.nez x24, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.nez x3, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.nez x6, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
czero.nez x6, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
czero.nez x5, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
czero.nez x26, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x5, 0x8000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x1, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x15, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
czero.nez x15, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
czero.nez x23, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
czero.nez x27, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x1, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
czero.nez x24, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
czero.nez x31, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.nez x22, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x22, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
czero.nez x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x1, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
czero.nez x27, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x2, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
czero.nez x21, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
czero.nez x14, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
czero.nez x14, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
czero.nez x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
czero.nez x18, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
czero.nez x24, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0x7fffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x21, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7fffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x7, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x20, 0x7fffffffffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
czero.nez x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
czero.nez x29, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x10, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
czero.nez x26, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x31, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
czero.nez x1, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x3, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.nez x2, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
czero.nez x8, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
czero.nez x16, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
czero.nez x12, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
czero.nez x23, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.nez x31, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
czero.nez x1, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
czero.nez x30, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
czero.nez x5, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.nez x30, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x15, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x22, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
czero.nez x7, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
czero.nez x20, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
czero.nez x23, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x25, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
czero.nez x3, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x17, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
czero.nez x20, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x30, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
czero.nez x27, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
czero.nez x7, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.nez x21, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x13, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
czero.nez x2, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x15, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
czero.nez x11, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
czero.nez x3, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
czero.nez x17, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
czero.nez x3, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
czero.nez x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x27, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x25, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x25, 0xffffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
czero.nez x11, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.nez x16, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.nez x6, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x19, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.nez x8, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
czero.nez x3, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
czero.nez x5, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x25, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
czero.nez x15, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.nez x26, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
czero.nez x5, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
czero.nez x18, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
czero.nez x24, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
czero.nez x23, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
czero.nez x31, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.nez x27, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0xfffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x30, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
czero.nez x16, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
czero.nez x22, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
czero.nez x26, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.nez x20, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
czero.nez x15, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
czero.nez x31, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
czero.nez x28, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
czero.nez x3, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
czero.nez x9, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
czero.nez x19, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
czero.nez x28, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
czero.nez x1, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
czero.nez x20, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
czero.nez x17, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x6, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x31, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
czero.nez x31, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.nez x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
czero.nez x29, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
czero.nez x6, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
czero.nez x19, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
czero.nez x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
czero.nez x21, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
czero.nez x30, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
czero.nez x31, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
czero.nez x26, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
czero.nez x26, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.nez x27, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
czero.nez x31, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
czero.nez x1, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x11, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x23, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
czero.nez x18, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
czero.nez x3, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
czero.nez x1, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
czero.nez x7, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.nez x29, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
czero.nez x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
czero.nez x20, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x24, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.nez x12, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x7, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
czero.nez x26, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x8, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
czero.nez x14, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
czero.nez x31, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
czero.nez x12, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.nez x21, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x23, 0x5555555555555555 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.nez x24, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5555555555555555 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x20, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x5555555555555555 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x30, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
czero.nez x16, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x29, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
czero.nez x5, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
czero.nez x5, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
czero.nez x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x10, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.nez x26, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
czero.nez x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
czero.nez x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
czero.nez x10, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
czero.nez x9, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x28, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
czero.nez x30, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
czero.nez x14, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
czero.nez x19, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
czero.nez x18, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
czero.nez x11, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x24, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x24, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
czero.nez x26, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
czero.nez x30, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
czero.nez x6, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x12, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
czero.nez x14, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
czero.nez x25, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
czero.nez x15, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
czero.nez x3, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
czero.nez x18, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
czero.nez x2, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x8, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
czero.nez x18, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
czero.nez x11, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
czero.nez x6, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
czero.nez x7, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
czero.nez x29, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x11, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x30, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x15, 0x00000000fffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
czero.nez x13, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
czero.nez x12, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
czero.nez x24, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x12, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
czero.nez x10, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
czero.nez x18, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
czero.nez x15, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x9, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
czero.nez x30, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.nez x2, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.nez x18, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.nez x18, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
czero.nez x11, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
czero.nez x22, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
czero.nez x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
czero.nez x1, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x27, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x13, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
czero.nez x8, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
czero.nez x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
czero.nez x22, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
czero.nez x31, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
czero.nez x30, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x27, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
czero.nez x8, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
czero.nez x5, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x28, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
czero.nez x29, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x9, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.nez x14, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
czero.nez x19, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
czero.nez x24, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.nez x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
czero.nez x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
czero.nez x9, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
czero.nez x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000100000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.nez x17, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x18, 0x0000000100000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
czero.nez x25, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
czero.nez x5, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x10, 0x0000000100000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
czero.nez x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
czero.nez x15, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x27, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.nez x10, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x087b1ed4f30a641d # initialize rs1
li x0, 0x5ba4c715c145b429 # initialize rs2
czero.nez x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc183f7140a791543 # initialize rs1
li x1, 0x1cb36facf2f054a1 # initialize rs2
czero.nez x2, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xacf67c76c9ecc970 # initialize rs1
li x2, 0x0b8d4134a2c0c18c # initialize rs2
czero.nez x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2a9bca4ac3ccc0c7 # initialize rs1
li x3, 0xa2b0ebcac85d0027 # initialize rs2
czero.nez x21, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x939635373425e0ce # initialize rs1
li x4, 0x010f7cf7734968ce # initialize rs2
czero.nez x3, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x70bd893a63ddd188 # initialize rs1
li x5, 0x01f4180c132b7011 # initialize rs2
czero.nez x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbf260beece43d15e # initialize rs1
li x6, 0xf0aac520e6c6e94e # initialize rs2
czero.nez x31, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3d644210a7041af1 # initialize rs1
li x7, 0xe02cfd4b621534fe # initialize rs2
czero.nez x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9343f9c44dd244a9 # initialize rs1
li x8, 0xaeab4cb690f2645e # initialize rs2
czero.nez x28, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8480896c5a3b3af5 # initialize rs1
li x9, 0x98ef5d8b002a50c5 # initialize rs2
czero.nez x26, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7f0b87b796da250f # initialize rs1
li x10, 0x820fca325832204b # initialize rs2
czero.nez x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x07c79cb04a7efc54 # initialize rs1
li x11, 0xff6e786d0aabb267 # initialize rs2
czero.nez x18, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xfdee56b9283d57d5 # initialize rs1
li x12, 0xdff6ad52c086c1cb # initialize rs2
czero.nez x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x371603951c5bdbe7 # initialize rs1
li x13, 0x2b9ee036717ae0fe # initialize rs2
czero.nez x5, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x0b285524798d6c63 # initialize rs1
li x14, 0x405df8d5c6e39efb # initialize rs2
czero.nez x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x522fae868b1e0d5e # initialize rs1
li x15, 0xba00876f79a4f432 # initialize rs2
czero.nez x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0428c11f5ec1b7c1 # initialize rs1
li x16, 0x2049a97e0e91b65b # initialize rs2
czero.nez x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x94490753d147e0d0 # initialize rs1
li x17, 0xdb9871141a20f44f # initialize rs2
czero.nez x21, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa540ab22191212b6 # initialize rs1
li x18, 0x53c325f0e8fa0273 # initialize rs2
czero.nez x30, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x3021f9e0873363f0 # initialize rs1
li x19, 0x389d56d2a5e6dba7 # initialize rs2
czero.nez x11, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x916bb3ba7f9ffb90 # initialize rs1
li x20, 0x6d987f67c172aadb # initialize rs2
czero.nez x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x82a87e81d5bcb220 # initialize rs1
li x21, 0x44866423e57cc1a0 # initialize rs2
czero.nez x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe5909bc34666810b # initialize rs1
li x22, 0x6faa220edd3a60d1 # initialize rs2
czero.nez x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf388b43a0beab959 # initialize rs1
li x23, 0x78816106347cb5a1 # initialize rs2
czero.nez x18, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x28888848ede4d068 # initialize rs1
li x24, 0x2e0cde85e9f77ff4 # initialize rs2
czero.nez x3, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xcc9626b29d1991b8 # initialize rs1
li x25, 0x42d1d8fc468c20ca # initialize rs2
czero.nez x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd7b8b61e0221b135 # initialize rs1
li x26, 0x7f945d04f1fa4ce8 # initialize rs2
czero.nez x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x79acad786fee5aa0 # initialize rs1
li x27, 0xcc71f51ddc248c11 # initialize rs2
czero.nez x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x19f59ad540c42727 # initialize rs1
li x28, 0x4b026e13d517136e # initialize rs2
czero.nez x17, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x0b886bacdded1f2e # initialize rs1
li x29, 0x707fa823028fb36a # initialize rs2
czero.nez x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x57a7c01dbeda785c # initialize rs1
li x30, 0x2b0bbbaaba40cd35 # initialize rs2
czero.nez x6, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb51853d8bcd5ce8a # initialize rs1
li x31, 0x712f57164dd03f5e # initialize rs2
czero.nez x27, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd708ee905a186b37 # initialize rs1
li x31, 0x74b68a61162c2585 # initialize rs2
czero.nez x0, x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa81344116a09ebb0 # initialize rs1
li x5, 0xd13c382d246a9855 # initialize rs2
czero.nez x1, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1a9ff33bb048be82 # initialize rs1
li x16, 0x5dafc0b07d55f0f2 # initialize rs2
czero.nez x2, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb62c7ae274988b4a # initialize rs1
li x2, 0xa28391d65777b604 # initialize rs2
czero.nez x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x040a8ed9410cf82c # initialize rs1
li x22, 0xba1d1eb9570b98fd # initialize rs2
czero.nez x4, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd44a72320c28a4dc # initialize rs1
li x14, 0x284cfeac6121a7ab # initialize rs2
czero.nez x5, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa1cf668326af3beb # initialize rs1
li x21, 0x324dee84af49fd7f # initialize rs2
czero.nez x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x95f82ce5cc31e3d6 # initialize rs1
li x3, 0xbe82c8fd78bf1785 # initialize rs2
czero.nez x7, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6c338c402b06d1a8 # initialize rs1
li x9, 0xa86a933c9df06a88 # initialize rs2
czero.nez x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5b01e4d5d1246c81 # initialize rs1
li x31, 0x6be220f3414e3b06 # initialize rs2
czero.nez x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x321645c45731d6e3 # initialize rs1
li x30, 0x590aa669ebb59feb # initialize rs2
czero.nez x10, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3ab150b903aeea93 # initialize rs1
li x5, 0x15e1471c3c3f2cbb # initialize rs2
czero.nez x11, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9c78dd8a70fb9d3c # initialize rs1
li x20, 0xed834395279d9b37 # initialize rs2
czero.nez x12, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x69816037fd3b6e4a # initialize rs1
li x31, 0x545688efbc753141 # initialize rs2
czero.nez x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0743b9d6abf5e2e0 # initialize rs1
li x15, 0xcff2d1cc68ab2ca4 # initialize rs2
czero.nez x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdae3f4d8e20008ca # initialize rs1
li x5, 0x4963af38b18a85a7 # initialize rs2
czero.nez x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x84adc6689c31a28f # initialize rs1
li x9, 0xf72558756d58578f # initialize rs2
czero.nez x16, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3792878afae43da0 # initialize rs1
li x5, 0x4d2908cc0c10c3be # initialize rs2
czero.nez x17, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x227e794635ba0a41 # initialize rs1
li x13, 0xfd3330ce037f1384 # initialize rs2
czero.nez x18, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfaa55d5a93086372 # initialize rs1
li x13, 0xa7f81f6d57f4466b # initialize rs2
czero.nez x19, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x11dd5d2d55485c5e # initialize rs1
li x6, 0xb6b0745d13ed3380 # initialize rs2
czero.nez x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xef0bb11d0c95222c # initialize rs1
li x16, 0xc5a4c8bda2c69f91 # initialize rs2
czero.nez x21, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd766b56af7b775dd # initialize rs1
li x26, 0x42244ba040746067 # initialize rs2
czero.nez x22, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x54ec7043d4895099 # initialize rs1
li x25, 0x8135dcd68c480849 # initialize rs2
czero.nez x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa1e4283dc4c6da7a # initialize rs1
li x5, 0x2ca4e828583508e2 # initialize rs2
czero.nez x24, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9b09574e1ad59ab1 # initialize rs1
li x20, 0x32e94964a7e2e803 # initialize rs2
czero.nez x25, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa47c7e2182212c6e # initialize rs1
li x26, 0x92d3c341bbca2c76 # initialize rs2
czero.nez x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6cdff97769ba676d # initialize rs1
li x13, 0x2eb31ba8f9267eec # initialize rs2
czero.nez x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe9809ec189da22c4 # initialize rs1
li x1, 0x03f6f68b887f6eb2 # initialize rs2
czero.nez x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x50956de4ef28eb32 # initialize rs1
li x29, 0x2bc19be74a90878e # initialize rs2
czero.nez x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x84c1826e9a58f97a # initialize rs1
li x1, 0xff5d104719869cc3 # initialize rs2
czero.nez x30, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x43005db774237413 # initialize rs1
li x11, 0x05efb5c76f66fea9 # initialize rs2
czero.nez x31, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x7b3af711633b9989 # initialize rs1
li x0, 0xe4e22684989b36d8 # initialize rs2
czero.nez x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x18, 0xf8b1177b91d33da3 # initialize rs1
li x1, 0x4e3972378e43928b # initialize rs2
czero.nez x1, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x13, 0x5e537d1200905fef # initialize rs1
li x2, 0x87bef5da69499101 # initialize rs2
czero.nez x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0x798680990e48647d # initialize rs1
li x3, 0x1dc2f17e1f2cbc5e # initialize rs2
czero.nez x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xc4d0ae69811266e5 # initialize rs1
li x4, 0x23f749ed250197d0 # initialize rs2
czero.nez x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x4873094e79588ae2 # initialize rs1
li x5, 0xdcd095a165eda014 # initialize rs2
czero.nez x5, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x7a7b2ac36b99c5cd # initialize rs1
li x6, 0x41ecc96523606361 # initialize rs2
czero.nez x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x2d5535d5d2c5c893 # initialize rs1
li x7, 0x27eae8a207994e6e # initialize rs2
czero.nez x7, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x20, 0x140a0fb148bf572d # initialize rs1
li x8, 0xc8a0fd860bc98477 # initialize rs2
czero.nez x8, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0x03af94a322395cec # initialize rs1
li x9, 0xcb3d51d880b06285 # initialize rs2
czero.nez x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x3, 0x2b87d46499055998 # initialize rs1
li x10, 0xfae9c8e7ca7619e5 # initialize rs2
czero.nez x10, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x9, 0x416f5bd30bf74a2d # initialize rs1
li x11, 0xcc471839a5b18a3e # initialize rs2
czero.nez x11, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x20, 0x3b50a8ce4c700bf9 # initialize rs1
li x12, 0x1094ccec6cd28652 # initialize rs2
czero.nez x12, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x33366aa93841bca9 # initialize rs1
li x13, 0x8209ab550edf5421 # initialize rs2
czero.nez x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0x8375b3306989fbe4 # initialize rs1
li x14, 0xf6b932e0acd4f0b0 # initialize rs2
czero.nez x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0xbcf291e79431f658 # initialize rs1
li x15, 0xb019c75e0736871f # initialize rs2
czero.nez x15, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x9, 0xa64dd9a7eb8d62c4 # initialize rs1
li x16, 0xfe238abe00cf9b08 # initialize rs2
czero.nez x16, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xa3148e6acc14daf2 # initialize rs1
li x17, 0xb8fa9b73ee1389c4 # initialize rs2
czero.nez x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xe5d371caae46357e # initialize rs1
li x18, 0x44052ad9881ceb85 # initialize rs2
czero.nez x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x1, 0x8c766b51ec901bcd # initialize rs1
li x19, 0x0d39c1477317301d # initialize rs2
czero.nez x19, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0x8be301c1da8d76cc # initialize rs1
li x20, 0xdc95e8eee6731b84 # initialize rs2
czero.nez x20, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x7, 0x32d079f7b48f2ea5 # initialize rs1
li x21, 0x8f5a2a7f0d7addb2 # initialize rs2
czero.nez x21, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x29, 0x9bd64a6a6a205fc9 # initialize rs1
li x22, 0x6ba7cc83c85430e1 # initialize rs2
czero.nez x22, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0x16ad75e776072274 # initialize rs1
li x23, 0x3df63a390d205029 # initialize rs2
czero.nez x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0xbd0591de2f602ffc # initialize rs1
li x24, 0xa84e409e7c6d1e0b # initialize rs2
czero.nez x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0xc4d5fbd3a31d31c5 # initialize rs1
li x25, 0xb09ccf0040aef816 # initialize rs2
czero.nez x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0xe52e9822663edd00 # initialize rs1
li x26, 0x96fcff79adb7c510 # initialize rs2
czero.nez x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0xb57528cb8dddf5a5 # initialize rs1
li x27, 0x0c70dd41ac512188 # initialize rs2
czero.nez x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x15, 0x872ba995f717a553 # initialize rs1
li x28, 0x352d24b811d9aa74 # initialize rs2
czero.nez x28, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x27, 0x51b7ab2280aa1f97 # initialize rs1
li x29, 0x122c5e588bd89c53 # initialize rs2
czero.nez x29, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x8fbfd578a2bc4ed3 # initialize rs1
li x30, 0x7956a8e9204aa599 # initialize rs2
czero.nez x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x21, 0xb0a2bf3662add55c # initialize rs1
li x31, 0xaa3fcb6cbff54930 # initialize rs2
czero.nez x31, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7364676277191114 # initialize rs1
li x0, 0x8c39becbb628aecf # initialize rs2
czero.nez x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x7f67245221b3b4a1 # initialize rs1
li x1, 0x8fe76a0206fdc623 # initialize rs2
czero.nez x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xacd815dea16538fc # initialize rs1
li x2, 0xf1c32cd59fb32467 # initialize rs2
czero.nez x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1d4af44dc48c7039 # initialize rs1
li x3, 0x68076a843575707b # initialize rs2
czero.nez x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0655fe7aebe51089 # initialize rs1
li x4, 0x9e77dfaeedfb1827 # initialize rs2
czero.nez x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdcba909e2c84d526 # initialize rs1
li x5, 0xa1f32e2cf5e156b9 # initialize rs2
czero.nez x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xea940376a3bd2e8a # initialize rs1
li x6, 0x500ed62e949cea4c # initialize rs2
czero.nez x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe3416a03b5c4ccb4 # initialize rs1
li x7, 0x30b0c4832ed0782c # initialize rs2
czero.nez x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x846d912acad4dfdc # initialize rs1
li x8, 0xffc46ddd8e29e59b # initialize rs2
czero.nez x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x317a244a8ba002fe # initialize rs1
li x9, 0xc7c35783fb5e8521 # initialize rs2
czero.nez x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xffc9100fd235f23e # initialize rs1
li x10, 0x98b71f20a7d76d62 # initialize rs2
czero.nez x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xd006af6d8cce4110 # initialize rs1
li x11, 0x509eedfddeacce58 # initialize rs2
czero.nez x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7ed80d9ec8bb71e0 # initialize rs1
li x12, 0x70e84396a8bb4285 # initialize rs2
czero.nez x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc7e35414e88f9067 # initialize rs1
li x13, 0x4d8b882233f5d000 # initialize rs2
czero.nez x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xac95f330c5efe30b # initialize rs1
li x14, 0x1332e9c205e6ede2 # initialize rs2
czero.nez x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x518e8e7f4493ac02 # initialize rs1
li x15, 0xf7033b873b0864d3 # initialize rs2
czero.nez x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xed04021d3a657414 # initialize rs1
li x16, 0xca9ab03834c6e975 # initialize rs2
czero.nez x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc6f330b6b060ff7b # initialize rs1
li x17, 0x49124d70064d5c02 # initialize rs2
czero.nez x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb064091c48171590 # initialize rs1
li x18, 0xefd25964e983169e # initialize rs2
czero.nez x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb7964b0525eb6fec # initialize rs1
li x19, 0xf9218868883b8ce8 # initialize rs2
czero.nez x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x55af16e2c8d9d019 # initialize rs1
li x20, 0xd1e4e7420ead988d # initialize rs2
czero.nez x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x48ae7da698c1b690 # initialize rs1
li x21, 0x63dbd5c63db1ab28 # initialize rs2
czero.nez x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdd23bd081b2092d9 # initialize rs1
li x22, 0x519ec15ed9ab3d7e # initialize rs2
czero.nez x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7bc84e577f830139 # initialize rs1
li x23, 0x490c39118e4dba4f # initialize rs2
czero.nez x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x93b3ca6dd15803fc # initialize rs1
li x24, 0x3c545e68c5b00506 # initialize rs2
czero.nez x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5f190da32c97a040 # initialize rs1
li x25, 0x56cbd88ab857a30f # initialize rs2
czero.nez x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc363eaa241559f9e # initialize rs1
li x26, 0x94745b0be8c47f35 # initialize rs2
czero.nez x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xebbef2ffa5b07d88 # initialize rs1
li x27, 0xb9b4f5a3fd2d76a6 # initialize rs2
czero.nez x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9d59dcbfc8df9673 # initialize rs1
li x28, 0xffb9ce9c846b54b3 # initialize rs2
czero.nez x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x39c533c38909d512 # initialize rs1
li x29, 0x6a2e50d5125e3bdd # initialize rs2
czero.nez x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xfceb4cd1e13fd49e # initialize rs1
li x30, 0xac90f94aa039e7b0 # initialize rs2
czero.nez x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1ca014084d5eca89 # initialize rs1
li x31, 0xbdf41063c9736f0e # initialize rs2
czero.nez x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x6 # perform first operation
czero.nez x24, x10, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x14, x30 # perform first operation
czero.nez x2, x3, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x1, x5 # perform first operation
czero.nez x2, x25, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x9, x26 # perform first operation
czero.nez x1, x1, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x21, x15 # perform first operation
czero.nez x18, x19, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x1, x18 # perform first operation
czero.nez x24, x27, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x14, x26 # perform first operation
czero.nez x25, x9, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x29, x28 # perform first operation
czero.nez x21, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x15, x11 # perform first operation
czero.nez x25, x18, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x9, x19 # perform first operation
czero.nez x9, x31, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x30, x9 # perform first operation
czero.nez x9, x16, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x2, x6 # perform first operation
czero.nez x19, x25, x14 # perform second (triggering) operation

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
