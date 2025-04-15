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
// Tests from: WALLY-COV-czero.nez.S
// ******************


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

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-czero.eqz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x366e265b193b9e5c # initialize rs1
li x17, 0xa38829ad2f6602bc # initialize rs2
czero.eqz x1, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x4645507fc38fe501 # initialize rs1
li x7, 0x1a593b4270c8b42a # initialize rs2
czero.eqz x22, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x52e2a80b239c2b02 # initialize rs1
li x23, 0xbdbf39a8744e2d94 # initialize rs2
czero.eqz x6, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x61896410a1c04ce9 # initialize rs1
li x17, 0xc16d64b33df0285d # initialize rs2
czero.eqz x10, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x87e16d36f4a85654 # initialize rs1
li x29, 0x3803ec7071f6e2f5 # initialize rs2
czero.eqz x23, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd8f3486c778507ed # initialize rs1
li x21, 0xdc06e60b326ae568 # initialize rs2
czero.eqz x9, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x922971afe32eb245 # initialize rs1
li x5, 0x346d7f443a6437b8 # initialize rs2
czero.eqz x2, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7851532167b1b053 # initialize rs1
li x22, 0xfa7f9ac378188d63 # initialize rs2
czero.eqz x18, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x78459b6e90799427 # initialize rs1
li x25, 0x3f384a18f39d04e0 # initialize rs2
czero.eqz x20, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2ce3ad7df8862a6b # initialize rs1
li x18, 0xb2b9e7b713a150d6 # initialize rs2
czero.eqz x25, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x28c5ed20cad28ae3 # initialize rs1
li x13, 0xe26a29cf16945d9e # initialize rs2
czero.eqz x9, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x94d627217e95b981 # initialize rs1
li x30, 0x946385e9041d7fdd # initialize rs2
czero.eqz x7, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd350c7cdc749153b # initialize rs1
li x18, 0x06e51a824abcb050 # initialize rs2
czero.eqz x20, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5b72f98f02835b45 # initialize rs1
li x15, 0x6fbb2a316752f353 # initialize rs2
czero.eqz x26, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb8797646819ca06d # initialize rs1
li x7, 0x523084aea27e9a00 # initialize rs2
czero.eqz x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc7bc2709298ffefb # initialize rs1
li x7, 0xf4ecaf8da2678768 # initialize rs2
czero.eqz x6, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xec0b8e0a2fa8957e # initialize rs1
li x23, 0xe734299f33aec264 # initialize rs2
czero.eqz x1, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x335a646a8a36afe9 # initialize rs1
li x5, 0x85ec10f0496cf682 # initialize rs2
czero.eqz x12, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x14fae1c5b1e073a6 # initialize rs1
li x25, 0x9d8bdbca150ca2b8 # initialize rs2
czero.eqz x20, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x82b29ea57d551387 # initialize rs1
li x9, 0xa4ee26c47756b9d3 # initialize rs2
czero.eqz x25, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x34ff7d20b0dd1ad7 # initialize rs1
li x30, 0x309a0c65f52c887d # initialize rs2
czero.eqz x10, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8bcf3862cbb46100 # initialize rs1
li x17, 0x6b27b5e9928461ac # initialize rs2
czero.eqz x3, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3027a4eda344e5cf # initialize rs1
li x28, 0x6a545352b327411c # initialize rs2
czero.eqz x19, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x960041774a72bcd4 # initialize rs1
li x21, 0x565c6ed344f6c5e1 # initialize rs2
czero.eqz x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x06c52f14265b7e01 # initialize rs1
li x23, 0x5d11db2f91da7aa6 # initialize rs2
czero.eqz x17, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7cc3bde633abbdee # initialize rs1
li x17, 0x4757489ae1661738 # initialize rs2
czero.eqz x2, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x19e05272c1964f19 # initialize rs1
li x28, 0xa63bc479009990c1 # initialize rs2
czero.eqz x15, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4e348d217a23373a # initialize rs1
li x1, 0x67f328d20bb70459 # initialize rs2
czero.eqz x13, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x48d12d9c7a2f45f7 # initialize rs1
li x12, 0x121791c8a9738719 # initialize rs2
czero.eqz x27, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0be037213fd34d5f # initialize rs1
li x14, 0x968d792902f6e53e # initialize rs2
czero.eqz x8, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xc7b471c1be1e1ef7 # initialize rs1
li x26, 0xcaac772cb3792701 # initialize rs2
czero.eqz x8, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x72328518100881e6 # initialize rs1
li x7, 0x881aafe756d205fe # initialize rs2
czero.eqz x13, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0xf7670b550d318b4e # initialize rs1
li x0, 0xc5817246d3deb5dc # initialize rs2
czero.eqz x15, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x13, 0xb27ee38a76579eb6 # initialize rs1
li x1, 0x4b638b92780c3dbb # initialize rs2
czero.eqz x16, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x7aef5a09c88aa77a # initialize rs1
li x2, 0xe58ac950ccfcd48d # initialize rs2
czero.eqz x22, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x54d184b2547f3e00 # initialize rs1
li x3, 0x68b3723654c3e2b3 # initialize rs2
czero.eqz x18, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x1972fbc2c4359b2d # initialize rs1
li x4, 0x46e976d587992278 # initialize rs2
czero.eqz x19, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x746c76b63afd6f88 # initialize rs1
li x5, 0x0e91ece334a3a14c # initialize rs2
czero.eqz x6, x3, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x3, 0x3c8a9d6b8acc079a # initialize rs1
li x6, 0xe914469a6cf9d0e4 # initialize rs2
czero.eqz x22, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x42deebc146d7ff16 # initialize rs1
li x7, 0xbf63c48ea156d7f4 # initialize rs2
czero.eqz x2, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0x3f6fa74e83533f2d # initialize rs1
li x8, 0x235830558ea27b18 # initialize rs2
czero.eqz x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xf274cc6e09a39e51 # initialize rs1
li x9, 0x365afb792316a191 # initialize rs2
czero.eqz x1, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0xd98d82ef286048d6 # initialize rs1
li x10, 0x6309659e95e4cd9f # initialize rs2
czero.eqz x31, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0xc845dec82f52ae44 # initialize rs1
li x11, 0x0954dc8a17b3f533 # initialize rs2
czero.eqz x9, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0xe5402deac8fa0415 # initialize rs1
li x12, 0x39a10efff43393bd # initialize rs2
czero.eqz x8, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0xa8666bf5115c1a85 # initialize rs1
li x13, 0xca7b9109edcd448c # initialize rs2
czero.eqz x26, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0xe31d965af10c0a05 # initialize rs1
li x14, 0x1802862b9bfa0331 # initialize rs2
czero.eqz x12, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xeffec880cc6c7fa0 # initialize rs1
li x15, 0x7c98284c3676b041 # initialize rs2
czero.eqz x23, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x5ec9952ac8ce4441 # initialize rs1
li x16, 0x0c44aed8c4a55de6 # initialize rs2
czero.eqz x30, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x04da033bbd0ccc96 # initialize rs1
li x17, 0x11bf6a7dae93f65a # initialize rs2
czero.eqz x7, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x3fa3fee52394801b # initialize rs1
li x18, 0xb6683973ae741c42 # initialize rs2
czero.eqz x2, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0x08294fd0acd6f614 # initialize rs1
li x19, 0x3da1596fe5e61e6d # initialize rs2
czero.eqz x16, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x10, 0x1ca59705feaba4a1 # initialize rs1
li x20, 0x28aae60b9ffd6525 # initialize rs2
czero.eqz x11, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0x67dbb04101d448fb # initialize rs1
li x21, 0x9bcbda8db8e78a2e # initialize rs2
czero.eqz x17, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x13, 0x89fcba4468c6748b # initialize rs1
li x22, 0x992eb5bbf7dc99da # initialize rs2
czero.eqz x23, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xd885788d83eff2d7 # initialize rs1
li x23, 0xf53b62a1acae92e8 # initialize rs2
czero.eqz x12, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0xc3f37f6b77061677 # initialize rs1
li x24, 0xf26bacbcf53b50f1 # initialize rs2
czero.eqz x27, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x12, 0xc35604c5e1970fb2 # initialize rs1
li x25, 0xc07823bad39df631 # initialize rs2
czero.eqz x23, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0xf10bca364016641d # initialize rs1
li x26, 0xf256b7de52cc9622 # initialize rs2
czero.eqz x18, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x14983463d776e6bf # initialize rs1
li x27, 0x76e76fa2a499dd4e # initialize rs2
czero.eqz x2, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x355f3a59038485b3 # initialize rs1
li x28, 0x293d3cb360d40009 # initialize rs2
czero.eqz x26, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0xad8842d0106c20bc # initialize rs1
li x29, 0xb9a4342b063c1a5f # initialize rs2
czero.eqz x22, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0x27b7deff93211bbe # initialize rs1
li x30, 0xc394e78d4e71f5e0 # initialize rs2
czero.eqz x25, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x6e689a42ddabf15c # initialize rs1
li x31, 0x2e9800d888ab03bb # initialize rs2
czero.eqz x21, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0x7b06b131fc26da11 # initialize rs1
li x11, 0xb89719bcc111ac4c # initialize rs2
czero.eqz x0, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x3dbc19ba354b5cf4 # initialize rs1
li x7, 0xa2f07d068e091665 # initialize rs2
czero.eqz x1, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0x30658df50dac1497 # initialize rs1
li x16, 0xc6375380a84ab868 # initialize rs2
czero.eqz x2, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xadb7fa6cc0e44b9a # initialize rs1
li x10, 0x0450591e94a0de99 # initialize rs2
czero.eqz x3, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x342e0bfda9decd67 # initialize rs1
li x17, 0x240e72b1f3acff91 # initialize rs2
czero.eqz x4, x31, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x7d2bd7d78b12845f # initialize rs1
li x30, 0x4959b49ccccb949a # initialize rs2
czero.eqz x5, x12, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x868abe793351048d # initialize rs1
li x17, 0x8c2a717ebd18e6ee # initialize rs2
czero.eqz x6, x28, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x5e7e4c1449628ffa # initialize rs1
li x9, 0xa0529174d752b771 # initialize rs2
czero.eqz x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x971b6b545b44d244 # initialize rs1
li x17, 0x2209924660aed45f # initialize rs2
czero.eqz x8, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xe1de7754d7c03d20 # initialize rs1
li x19, 0x1c19e8e9a1815d27 # initialize rs2
czero.eqz x9, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0xad68588193ff0978 # initialize rs1
li x8, 0xa89a4a60748eb83f # initialize rs2
czero.eqz x10, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x6bf80783947b09c0 # initialize rs1
li x6, 0xf18ecc81eaded3a4 # initialize rs2
czero.eqz x11, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0xc92ae076a1071eaf # initialize rs1
li x3, 0x160b4dc02c8488c4 # initialize rs2
czero.eqz x12, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x25, 0x68ff0419c5ce39b2 # initialize rs1
li x8, 0x5eedb227339fa2c5 # initialize rs2
czero.eqz x13, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0x9e63142fd182ea3c # initialize rs1
li x29, 0xe405f4fb4a958dd4 # initialize rs2
czero.eqz x14, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x1ad19752ca571ef4 # initialize rs1
li x21, 0xd0479ab7ab9dc739 # initialize rs2
czero.eqz x15, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x26, 0xd76bd12f33f08d48 # initialize rs1
li x2, 0x0d19ca4278f81aef # initialize rs2
czero.eqz x16, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x9663f6b6a39ff78d # initialize rs1
li x8, 0x9eb002fb35c6a9d6 # initialize rs2
czero.eqz x17, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x9b65d2de2197dc96 # initialize rs1
li x27, 0xcfb765315ac4abfc # initialize rs2
czero.eqz x18, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbc6e8e55de370813 # initialize rs1
li x25, 0x5563c26b85d3d467 # initialize rs2
czero.eqz x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0xff8c7212e742a287 # initialize rs1
li x24, 0xda49d44b01b59ed8 # initialize rs2
czero.eqz x20, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0x767b86cbd6dfd62b # initialize rs1
li x19, 0x40222f1dea2a0f89 # initialize rs2
czero.eqz x21, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0x60b0a84174f96cf5 # initialize rs1
li x8, 0xa2cebee02c4a2526 # initialize rs2
czero.eqz x22, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8be3b2e1408bbe83 # initialize rs1
li x27, 0x6702b10dc0fcd73e # initialize rs2
czero.eqz x23, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x417df350a81c6656 # initialize rs1
li x5, 0xcb331add99e3ba67 # initialize rs2
czero.eqz x24, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x53f7faa0b79f2976 # initialize rs1
li x27, 0xd3589363fc79140e # initialize rs2
czero.eqz x25, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd4939b83aa3e60f3 # initialize rs1
li x24, 0x210804aed14c9e92 # initialize rs2
czero.eqz x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x33e9e9a97af3d96d # initialize rs1
li x20, 0x7b9cf1ad64c6c29a # initialize rs2
czero.eqz x27, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0x4cfe0d198523443c # initialize rs1
li x13, 0x6a2b4482116d2ec2 # initialize rs2
czero.eqz x28, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x20, 0x94ffaf452d86b22d # initialize rs1
li x22, 0xdda19f652b31d1ca # initialize rs2
czero.eqz x29, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x3903547056f4aa58 # initialize rs1
li x21, 0x06b205f884c641fe # initialize rs2
czero.eqz x30, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0x173c3635a1de7f06 # initialize rs1
li x12, 0x8ab97226a3eb6fd5 # initialize rs2
czero.eqz x31, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x7, 0xc026124579e71b64 # initialize rs2
czero.eqz x5, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x0000000000000001 # initialize rs1
li x18, 0x7056263b49455c0a # initialize rs2
czero.eqz x31, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x9, 0xa7c7b8c3a30ddf0d # initialize rs2
czero.eqz x18, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x28, 0x3510fb2feb8cf112 # initialize rs2
czero.eqz x5, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x7, 0x8000000000000001 # initialize rs1
li x25, 0xf839c386dd82dbd0 # initialize rs2
czero.eqz x6, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x30, 0xf33cc894e0c546fc # initialize rs2
czero.eqz x5, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5af49e799904ae49 # initialize rs2
czero.eqz x10, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x8, 0xc84fe97d2c190c3f # initialize rs2
czero.eqz x19, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x24, 0x65b92eb9870a3a29 # initialize rs2
czero.eqz x12, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x945746d0868c1f2d # initialize rs2
czero.eqz x16, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x497eb0346d8a0a08 # initialize rs2
czero.eqz x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x5, 0x8ecd63f1234800fd # initialize rs2
czero.eqz x31, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x10, 0x1c4eb407278b773f # initialize rs2
czero.eqz x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x8, 0x4d5e6b170767f47f # initialize rs2
czero.eqz x26, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x6, 0xd7d3bcfc23f2265e # initialize rs2
czero.eqz x14, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x1, 0x06d23a5c37a12fef # initialize rs2
czero.eqz x29, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x2451494404aaef2d # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
czero.eqz x27, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x55408aef52fa8ffa # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
czero.eqz x12, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x2314d5968d04f9eb # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
czero.eqz x29, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0x93b86b3472f368ac # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
czero.eqz x2, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x30, 0x6a37f19c67486a22 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
czero.eqz x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x780d47d623235b28 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
czero.eqz x29, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x27, 0x7bdd03e772fbf8a8 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
czero.eqz x8, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x496421c931398108 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
czero.eqz x22, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0x80cc12cd11ad4882 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
czero.eqz x6, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0x3b29daa21c46d58a # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x18, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x9178fa92260d4fca # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x13, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0xb88a275abf243783 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
czero.eqz x24, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0x8afc645fb0cb5022 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
czero.eqz x29, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x0d118c123b55984e # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
czero.eqz x25, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xbfb2c976de089d86 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
czero.eqz x14, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0x9dff93147a4453dd # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
czero.eqz x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x26, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
czero.eqz x16, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
czero.eqz x27, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
czero.eqz x20, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x13, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
czero.eqz x14, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
czero.eqz x12, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
czero.eqz x15, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
czero.eqz x3, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
czero.eqz x17, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
czero.eqz x14, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x25, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x7, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
czero.eqz x18, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
czero.eqz x16, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
czero.eqz x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x28, 0x0000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
czero.eqz x7, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
czero.eqz x13, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
czero.eqz x11, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x5, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
czero.eqz x3, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
czero.eqz x22, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
czero.eqz x14, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
czero.eqz x23, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
czero.eqz x12, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
czero.eqz x27, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.eqz x10, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.eqz x7, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x8, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x30, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x10, 0x0000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
czero.eqz x31, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
czero.eqz x17, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
czero.eqz x21, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x3, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
czero.eqz x11, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x30, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
czero.eqz x17, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x5, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
czero.eqz x3, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
czero.eqz x19, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
czero.eqz x16, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x15, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
czero.eqz x6, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.eqz x1, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
czero.eqz x25, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
czero.eqz x19, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
czero.eqz x22, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
czero.eqz x17, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x10, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x26, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x3, 0x0000000000000002 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
czero.eqz x21, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
czero.eqz x30, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
czero.eqz x15, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x12, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
czero.eqz x17, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x10, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
czero.eqz x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x23, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
czero.eqz x21, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x28, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
czero.eqz x25, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
czero.eqz x20, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
czero.eqz x28, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
czero.eqz x6, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
czero.eqz x23, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.eqz x12, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
czero.eqz x11, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
czero.eqz x24, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x30, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x30, 0x8000000000000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
czero.eqz x16, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
czero.eqz x8, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
czero.eqz x1, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x3, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
czero.eqz x30, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x9, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
czero.eqz x6, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x10, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
czero.eqz x19, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x21, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
czero.eqz x1, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x23, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
czero.eqz x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x5, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
czero.eqz x31, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
czero.eqz x3, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
czero.eqz x27, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
czero.eqz x11, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
czero.eqz x31, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
czero.eqz x31, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x16, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x26, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
czero.eqz x12, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
czero.eqz x30, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
czero.eqz x21, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.eqz x11, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x21, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
czero.eqz x25, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
czero.eqz x2, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x6, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
czero.eqz x17, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x2, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
czero.eqz x29, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
czero.eqz x11, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
czero.eqz x18, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
czero.eqz x16, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
czero.eqz x24, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
czero.eqz x1, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.eqz x8, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0x7fffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x15, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x30, 0x7fffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
czero.eqz x6, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
czero.eqz x31, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
czero.eqz x1, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
czero.eqz x18, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.eqz x13, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
czero.eqz x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x16, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
czero.eqz x18, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
czero.eqz x23, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
czero.eqz x16, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
czero.eqz x21, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
czero.eqz x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
czero.eqz x9, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
czero.eqz x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
czero.eqz x30, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x5, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7ffffffffffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x8, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
czero.eqz x1, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
czero.eqz x7, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
czero.eqz x2, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
czero.eqz x19, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x20, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
czero.eqz x27, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
czero.eqz x21, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x25, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
czero.eqz x29, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
czero.eqz x5, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
czero.eqz x13, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
czero.eqz x18, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
czero.eqz x7, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
czero.eqz x2, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
czero.eqz x19, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
czero.eqz x18, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x1, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xffffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x28, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x28, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
czero.eqz x2, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
czero.eqz x15, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
czero.eqz x3, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
czero.eqz x29, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
czero.eqz x5, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
czero.eqz x3, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x18, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
czero.eqz x20, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
czero.eqz x26, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
czero.eqz x5, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.eqz x27, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
czero.eqz x10, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
czero.eqz x17, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
czero.eqz x26, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
czero.eqz x13, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0xfffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x12, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x17, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x5, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
czero.eqz x16, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x17, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
czero.eqz x24, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
czero.eqz x16, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x5, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
czero.eqz x8, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
czero.eqz x19, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
czero.eqz x11, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
czero.eqz x19, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
czero.eqz x30, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
czero.eqz x25, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
czero.eqz x10, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
czero.eqz x8, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
czero.eqz x3, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
czero.eqz x14, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
czero.eqz x25, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x22, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x7, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
czero.eqz x9, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
czero.eqz x15, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
czero.eqz x16, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
czero.eqz x30, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
czero.eqz x29, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
czero.eqz x6, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
czero.eqz x10, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
czero.eqz x3, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
czero.eqz x26, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.eqz x16, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
czero.eqz x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
czero.eqz x8, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
czero.eqz x28, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
czero.eqz x30, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x30, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x5, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
czero.eqz x20, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
czero.eqz x26, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
czero.eqz x15, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
czero.eqz x5, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
czero.eqz x17, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x10, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
czero.eqz x1, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x20, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
czero.eqz x28, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x25, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
czero.eqz x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x11, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
czero.eqz x8, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
czero.eqz x3, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
czero.eqz x24, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x17, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
czero.eqz x15, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
czero.eqz x28, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
czero.eqz x20, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x1, 0x5555555555555555 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x31, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5555555555555555 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x8, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
czero.eqz x31, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
czero.eqz x29, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
czero.eqz x14, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x7, 0x5555555555555555 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
czero.eqz x27, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x26, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
czero.eqz x12, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
czero.eqz x14, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
czero.eqz x27, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
czero.eqz x10, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x19, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
czero.eqz x13, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x30, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
czero.eqz x1, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
czero.eqz x11, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
czero.eqz x23, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
czero.eqz x30, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
czero.eqz x13, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x10, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000ffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x13, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
czero.eqz x9, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
czero.eqz x21, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
czero.eqz x8, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x25, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.eqz x30, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x25, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
czero.eqz x15, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
czero.eqz x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
czero.eqz x2, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
czero.eqz x13, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x20, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
czero.eqz x31, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
czero.eqz x25, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
czero.eqz x9, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
czero.eqz x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x13, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
czero.eqz x29, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
czero.eqz x7, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x00000000fffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x9, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000fffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x9, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0x00000000fffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
czero.eqz x17, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
czero.eqz x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
czero.eqz x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
czero.eqz x31, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x7, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
czero.eqz x23, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
czero.eqz x30, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x27, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
czero.eqz x25, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
czero.eqz x18, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x23, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
czero.eqz x22, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x15, 0x0000000100000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
czero.eqz x29, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
czero.eqz x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
czero.eqz x3, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
czero.eqz x6, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
czero.eqz x13, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x22, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x9, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x31, 0x0000000100000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
czero.eqz x23, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
czero.eqz x6, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x17, 0x0000000100000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
czero.eqz x8, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
czero.eqz x23, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x1, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
czero.eqz x17, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x15, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
czero.eqz x26, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x29, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
czero.eqz x20, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x15, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
czero.eqz x26, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
czero.eqz x9, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x29, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
czero.eqz x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
czero.eqz x21, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000100000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
czero.eqz x8, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
czero.eqz x21, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
czero.eqz x5, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
czero.eqz x22, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000100000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
czero.eqz x9, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x15, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
czero.eqz x9, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
czero.eqz x3, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
czero.eqz x31, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x21, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
czero.eqz x15, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
czero.eqz x15, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xaf6427de8087ad79 # initialize rs1
li x0, 0x2ef09c4facc73d41 # initialize rs2
czero.eqz x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x5e80d5e7053d44ac # initialize rs1
li x1, 0x708da447deef6a4f # initialize rs2
czero.eqz x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xfc6a930b43c17a87 # initialize rs1
li x2, 0x0506dfac15a7341f # initialize rs2
czero.eqz x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf973b5fb46e143fe # initialize rs1
li x3, 0xfda992038d33ec55 # initialize rs2
czero.eqz x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3cec60a68d4654d4 # initialize rs1
li x4, 0x08b8b7c691413d03 # initialize rs2
czero.eqz x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x44f60da4d632c8fc # initialize rs1
li x5, 0x4048c865991bda0b # initialize rs2
czero.eqz x4, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x05a6e30b0b8fd574 # initialize rs1
li x6, 0x4fc12721e80e4842 # initialize rs2
czero.eqz x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f189409c3cf67b5 # initialize rs1
li x7, 0x515de7858712f90c # initialize rs2
czero.eqz x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9fd3f9619061b8c2 # initialize rs1
li x8, 0x5966cc8ac8cc0774 # initialize rs2
czero.eqz x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x94646134120bb0d7 # initialize rs1
li x9, 0x8df61aa5c067b5c7 # initialize rs2
czero.eqz x24, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xee55b252a84a6c14 # initialize rs1
li x10, 0x6fc656031e680833 # initialize rs2
czero.eqz x27, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xff80adce11fafa18 # initialize rs1
li x11, 0xbc762e46bd0ceba9 # initialize rs2
czero.eqz x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x91ba121153b7ac13 # initialize rs1
li x12, 0x430827768c4c7560 # initialize rs2
czero.eqz x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7acad5099dad7694 # initialize rs1
li x13, 0x9267baeacd5ec28d # initialize rs2
czero.eqz x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5256568c811008bf # initialize rs1
li x14, 0xa27d5b7cf3349ba6 # initialize rs2
czero.eqz x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xe83d6d84133107c8 # initialize rs1
li x15, 0xad2aa80f3babf81b # initialize rs2
czero.eqz x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x66ef9b702496d8ff # initialize rs1
li x16, 0x0e5233e61bc5a02a # initialize rs2
czero.eqz x13, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x2ccac5ff5556a6a0 # initialize rs1
li x17, 0x8b142d05c759d9c5 # initialize rs2
czero.eqz x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x896eaedbbb132015 # initialize rs1
li x18, 0xd3b78e2f5ec847c4 # initialize rs2
czero.eqz x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5964475ba6550ea4 # initialize rs1
li x19, 0xeaebc9b770369649 # initialize rs2
czero.eqz x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x7048f55858848d1d # initialize rs1
li x20, 0x3db1f138d193a10d # initialize rs2
czero.eqz x1, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf27ffb5f7be011f3 # initialize rs1
li x21, 0x7ee1eaa24766669d # initialize rs2
czero.eqz x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa0c1d385898e4c0e # initialize rs1
li x22, 0x42df744b3a8c6314 # initialize rs2
czero.eqz x15, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xa55c75fb39858edb # initialize rs1
li x23, 0x9fe86334ab020a99 # initialize rs2
czero.eqz x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x5d596d59be7d4cf0 # initialize rs1
li x24, 0x36a6063fafe3fb19 # initialize rs2
czero.eqz x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7f7abc90ed435cfc # initialize rs1
li x25, 0x59e14e7951908051 # initialize rs2
czero.eqz x24, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf936e9227e1a4cdb # initialize rs1
li x26, 0x4dfee1f100bb1b38 # initialize rs2
czero.eqz x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x3cbb86ebcbb0289a # initialize rs1
li x27, 0xaf499fbc50f7b96c # initialize rs2
czero.eqz x9, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcbd6274678271b51 # initialize rs1
li x28, 0xfb192e44114672d7 # initialize rs2
czero.eqz x2, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc64eb0a9eb003153 # initialize rs1
li x29, 0xc41300bf0a911984 # initialize rs2
czero.eqz x16, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x49e478ebd7d4a470 # initialize rs1
li x30, 0x5d8bc0405268c045 # initialize rs2
czero.eqz x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd913d7cbbba2716a # initialize rs1
li x31, 0x79fc39d95b9dcbd1 # initialize rs2
czero.eqz x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe5aa9caeac4b5123 # initialize rs1
li x20, 0x89c7ce0569c5dcd7 # initialize rs2
czero.eqz x0, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x194bcfe8bbf89718 # initialize rs1
li x6, 0xf0339e6d84558074 # initialize rs2
czero.eqz x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xceb53b9432c52e76 # initialize rs1
li x10, 0x62729fc7693f0c25 # initialize rs2
czero.eqz x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbc778a472b2d4cb2 # initialize rs1
li x30, 0x530158bae14aa9ae # initialize rs2
czero.eqz x3, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x571dedd87825b7cd # initialize rs1
li x16, 0x08143bd6ee3085d0 # initialize rs2
czero.eqz x4, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5672c0eff5bc5996 # initialize rs1
li x12, 0x8b580e05950db0e6 # initialize rs2
czero.eqz x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0ff1d54e01bf821c # initialize rs1
li x30, 0x95384a09e41fc91c # initialize rs2
czero.eqz x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x11f7897b6121beaf # initialize rs1
li x1, 0x91cedc5d6ac2a77b # initialize rs2
czero.eqz x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x16dcf7fa8d1a9981 # initialize rs1
li x24, 0x401f1c4bd17b3c7d # initialize rs2
czero.eqz x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa40cc381a992a806 # initialize rs1
li x12, 0x2fef68287af48467 # initialize rs2
czero.eqz x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc6e2711d781114e2 # initialize rs1
li x15, 0x343dee70d5afe011 # initialize rs2
czero.eqz x10, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4800f6136c6f7bc3 # initialize rs1
li x28, 0x001b5f444f143830 # initialize rs2
czero.eqz x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa3397a975563ba4f # initialize rs1
li x31, 0x6d01a1c78fb0b5c4 # initialize rs2
czero.eqz x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x79db2da1e51bcf64 # initialize rs1
li x9, 0x82b903d8b48bd769 # initialize rs2
czero.eqz x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7c250f864ea7a398 # initialize rs1
li x18, 0x81f53b3c6a58953d # initialize rs2
czero.eqz x14, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe487259872d62d48 # initialize rs1
li x29, 0xaaa79d79b310c028 # initialize rs2
czero.eqz x15, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4769db8c981c380e # initialize rs1
li x1, 0xbb5877cf6d513c56 # initialize rs2
czero.eqz x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xae55c4979bafcc68 # initialize rs1
li x27, 0x23fb775d80607dcf # initialize rs2
czero.eqz x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcbb781d29d9d26a0 # initialize rs1
li x12, 0xbdded04a211c5fe3 # initialize rs2
czero.eqz x18, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x13b5eb23699cb446 # initialize rs1
li x2, 0x849eb3170e9539f8 # initialize rs2
czero.eqz x19, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xab97a23815ab4c01 # initialize rs1
li x6, 0x330a4f8fb4afce4d # initialize rs2
czero.eqz x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5c85269568d06924 # initialize rs1
li x27, 0x3b96edbd66c07e59 # initialize rs2
czero.eqz x21, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9cf2c59c0ecc40ce # initialize rs1
li x18, 0x50958a0973acd4ab # initialize rs2
czero.eqz x22, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7bf3955bd5d6fceb # initialize rs1
li x13, 0xce6c815d3937c4bc # initialize rs2
czero.eqz x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7a45d8d96260d0eb # initialize rs1
li x5, 0x1627a1a690bedd86 # initialize rs2
czero.eqz x24, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xca6ee51bc72e43f9 # initialize rs1
li x11, 0x23c7c38841d88ad0 # initialize rs2
czero.eqz x25, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x98eef28faed833c5 # initialize rs1
li x6, 0xcca16cfb822d8ab8 # initialize rs2
czero.eqz x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x90dc345dc62d116b # initialize rs1
li x7, 0x4c621d11dcc1e1c7 # initialize rs2
czero.eqz x27, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3269851f6173f710 # initialize rs1
li x25, 0x5fd8a9a4ae5f0b68 # initialize rs2
czero.eqz x28, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc24123cb0f1ac574 # initialize rs1
li x29, 0xc97ece194a6fa18d # initialize rs2
czero.eqz x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd3506f3ff40ed793 # initialize rs1
li x13, 0xcd90063e098c7879 # initialize rs2
czero.eqz x30, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x972f3c03cd675720 # initialize rs1
li x22, 0xf8e29045ece6687e # initialize rs2
czero.eqz x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x17, 0xe8af7033b10e3e37 # initialize rs1
li x0, 0x79e0705cb5afea88 # initialize rs2
czero.eqz x0, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x15, 0x5b094a9e9024f6a5 # initialize rs1
li x1, 0x2500be8d91d4f6a5 # initialize rs2
czero.eqz x1, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x16, 0x81ec71e45ef5b68c # initialize rs1
li x2, 0x432b3f5d2dacb339 # initialize rs2
czero.eqz x2, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xc8cc3d81d2133eb6 # initialize rs1
li x3, 0x5ae14ec4b2f0c19c # initialize rs2
czero.eqz x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x61eb2dbb52ffe764 # initialize rs1
li x4, 0x97b84dd0a98323e4 # initialize rs2
czero.eqz x4, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x6306d8e4edc83c85 # initialize rs1
li x5, 0xe794e6dc741f777e # initialize rs2
czero.eqz x5, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x35a43d78dda1e422 # initialize rs1
li x6, 0x0e9ad216f864c572 # initialize rs2
czero.eqz x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x05a8a2e924de023c # initialize rs1
li x7, 0x786c52d28c216481 # initialize rs2
czero.eqz x7, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0xfddf6a539e7056bf # initialize rs1
li x8, 0xf7a9dc7768b0a17d # initialize rs2
czero.eqz x8, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0xaf7d10f2699a9d10 # initialize rs1
li x9, 0xe152ab4212425b29 # initialize rs2
czero.eqz x9, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x2, 0x863f51002e5a2665 # initialize rs1
li x10, 0xff16eb38a0984188 # initialize rs2
czero.eqz x10, x2, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0xe65c40d43596814c # initialize rs1
li x11, 0xb52fc943c574ce2d # initialize rs2
czero.eqz x11, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0xee6c7649686e8794 # initialize rs1
li x12, 0x05bff84236cfdcb3 # initialize rs2
czero.eqz x12, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x8, 0xdc9a584522f3b2dc # initialize rs1
li x13, 0xd738d0495c33bab2 # initialize rs2
czero.eqz x13, x8, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x20, 0xcb347220da7c2eab # initialize rs1
li x14, 0x1077acb108f895f7 # initialize rs2
czero.eqz x14, x20, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x21, 0xebeb7ae5679a1c7f # initialize rs1
li x15, 0x8c756e90c0f504c9 # initialize rs2
czero.eqz x15, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0x092b4dfa7395db1b # initialize rs1
li x16, 0xde4fec5889da892a # initialize rs2
czero.eqz x16, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x18, 0xb09d8e4b4f8c0a45 # initialize rs1
li x17, 0x162b4b5dbb2d462e # initialize rs2
czero.eqz x17, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0x0b8e0d4094d8bc3d # initialize rs1
li x18, 0x01d1e6652622741a # initialize rs2
czero.eqz x18, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x2eb194933aea50a3 # initialize rs1
li x19, 0x7809b76fd3db8511 # initialize rs2
czero.eqz x19, x26, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x1, 0xcabbc9e6fbbf9743 # initialize rs1
li x20, 0xdf1a2bbfed555926 # initialize rs2
czero.eqz x20, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0xd5ea9b78056bf46a # initialize rs1
li x21, 0x768504776586af0f # initialize rs2
czero.eqz x21, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x18, 0x2f428a2b8be59b11 # initialize rs1
li x22, 0xda846cfa8de33ce2 # initialize rs2
czero.eqz x22, x18, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0x55719e8ff515309a # initialize rs1
li x23, 0xd84d74d1cc263b8c # initialize rs2
czero.eqz x23, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x11, 0x0a337a3befc67303 # initialize rs1
li x24, 0x22830d39707fe622 # initialize rs2
czero.eqz x24, x11, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x28ffbe519e27fc70 # initialize rs1
li x25, 0x4241e94c7ff0d96e # initialize rs2
czero.eqz x25, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x19, 0x98de9c8a78181985 # initialize rs1
li x26, 0x063698114c0c63a0 # initialize rs2
czero.eqz x26, x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x23, 0xfd286c886aa31006 # initialize rs1
li x27, 0xab0711fff69f9976 # initialize rs2
czero.eqz x27, x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0xd69452d0ffb0080b # initialize rs1
li x28, 0xfef7e9039a5fae59 # initialize rs2
czero.eqz x28, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x14, 0x2b0f674005368060 # initialize rs1
li x29, 0xee795861153c7710 # initialize rs2
czero.eqz x29, x14, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x17, 0x409bf4fe22fc60c3 # initialize rs1
li x30, 0xe348de76b123d138 # initialize rs2
czero.eqz x30, x17, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0xc591136009d281c7 # initialize rs1
li x31, 0x33dca71b4eb2b935 # initialize rs2
czero.eqz x31, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7eb5bfe56c9efa7 # initialize rs1
li x0, 0xd9a86b0912799e84 # initialize rs2
czero.eqz x0, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa97f70a7a3e6845d # initialize rs1
li x1, 0x408f477c2d3653a3 # initialize rs2
czero.eqz x1, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7cc0b2a868e81593 # initialize rs1
li x2, 0xbdac41530d0ec26f # initialize rs2
czero.eqz x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x7c875941b8a10a60 # initialize rs1
li x3, 0x8bead6561fa514b1 # initialize rs2
czero.eqz x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xb0839e9d1e87a6c0 # initialize rs1
li x4, 0x47a638caebc5559e # initialize rs2
czero.eqz x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2966497d94d0b0f8 # initialize rs1
li x5, 0xa8c9baaf57802b4d # initialize rs2
czero.eqz x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2f53592b661f1bfb # initialize rs1
li x6, 0xe4161212ed1f3a71 # initialize rs2
czero.eqz x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xef82dd9a46a7f2c6 # initialize rs1
li x7, 0x84ddf99ec3b7e93a # initialize rs2
czero.eqz x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x63a0ac886f83f8d8 # initialize rs1
li x8, 0xe4993da72ce7d2f9 # initialize rs2
czero.eqz x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa734d70e54cead4a # initialize rs1
li x9, 0xca88fdff20be196d # initialize rs2
czero.eqz x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xe387b137bda531b1 # initialize rs1
li x10, 0xc855fe78ba66fd99 # initialize rs2
czero.eqz x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf84be0f4e3720b48 # initialize rs1
li x11, 0xe449fb8423c636d9 # initialize rs2
czero.eqz x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd3e62e251b367808 # initialize rs1
li x12, 0x5b2820b02cb14426 # initialize rs2
czero.eqz x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6500ffed4924df3a # initialize rs1
li x13, 0x416a86fed024b6a0 # initialize rs2
czero.eqz x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x32cc8f3d37e445d1 # initialize rs1
li x14, 0x5daffc4e658c40e6 # initialize rs2
czero.eqz x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8c90311752531184 # initialize rs1
li x15, 0xb3d8bfa10a373fdc # initialize rs2
czero.eqz x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc720f465f32d81d3 # initialize rs1
li x16, 0xa6bf954dcd521a4a # initialize rs2
czero.eqz x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x04e81aeb5b173684 # initialize rs1
li x17, 0x4fdf250328a3dd5b # initialize rs2
czero.eqz x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x56e1592e7eb46cd1 # initialize rs1
li x18, 0x9b3a58583acc9ae4 # initialize rs2
czero.eqz x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdc0fc3a21fc9b49b # initialize rs1
li x19, 0xd3af0fb2a442cae9 # initialize rs2
czero.eqz x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x32b1c79238261c7f # initialize rs1
li x20, 0xe662caef7853d7b9 # initialize rs2
czero.eqz x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x558cdab341518d20 # initialize rs1
li x21, 0xa017f5f24bd1668a # initialize rs2
czero.eqz x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa273e6edac613692 # initialize rs1
li x22, 0xd91b612d12ace023 # initialize rs2
czero.eqz x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4b6d96f422eb7df4 # initialize rs1
li x23, 0x4cce3c09db12e514 # initialize rs2
czero.eqz x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7b130827ddecdab9 # initialize rs1
li x24, 0x49f6574e2f733f62 # initialize rs2
czero.eqz x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x44e3d8159379aa18 # initialize rs1
li x25, 0x0d1940d4a86261a7 # initialize rs2
czero.eqz x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x4be31aacd19b65e4 # initialize rs1
li x26, 0x5654f5248bd1d3db # initialize rs2
czero.eqz x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x24c5c14b57d411b2 # initialize rs1
li x27, 0xfa8afe9d193c07a6 # initialize rs2
czero.eqz x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa31e68ddf0eaa864 # initialize rs1
li x28, 0x6939495b2758c2d5 # initialize rs2
czero.eqz x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd41ce99d1bf0c5aa # initialize rs1
li x29, 0x2c2ef9edd86779d8 # initialize rs2
czero.eqz x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x5b627dbcad1d1f5b # initialize rs1
li x30, 0x045a483adaf07592 # initialize rs2
czero.eqz x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x69a833ef9c4cdc94 # initialize rs1
li x31, 0xd674f40f321c2e03 # initialize rs2
czero.eqz x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x22, x8 # perform first operation
czero.eqz x14, x23, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x5, x21 # perform first operation
czero.eqz x24, x1, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x23, x17 # perform first operation
czero.eqz x8, x30, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x6, x22 # perform first operation
czero.eqz x6, x11, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x6, x26 # perform first operation
czero.eqz x26, x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x12, x21 # perform first operation
czero.eqz x21, x30, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x11, x9 # perform first operation
czero.eqz x27, x10, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x28, x9 # perform first operation
czero.eqz x13, x23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x14, x22 # perform first operation
czero.eqz x11, x18, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x9, x25 # perform first operation
czero.eqz x9, x14, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x7, x26 # perform first operation
czero.eqz x26, x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x18, x24 # perform first operation
czero.eqz x27, x5, x8 # perform second (triggering) operation

#.EQU SIGSIZE,4096
.EQU SIGSIZE,8192 #combined


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
