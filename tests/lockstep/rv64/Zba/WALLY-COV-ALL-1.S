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
// Tests from: WALLY-COV-add.uw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x26f7174e9c74bc95 # initialize rs1
li x22, 0x89baf5ed94704c5b # initialize rs2
add.uw x26, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfc2aef3e853e425c # initialize rs1
li x19, 0xd567a18acdf42296 # initialize rs2
add.uw x9, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xbce94951832e2ef5 # initialize rs1
li x26, 0x5a1d605fdf57ecd6 # initialize rs2
add.uw x10, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8703072a2b10b305 # initialize rs1
li x18, 0xb42a06f37a05b908 # initialize rs2
add.uw x2, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xee902bcffe4c4710 # initialize rs1
li x16, 0xaecd26f878d97797 # initialize rs2
add.uw x2, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x407bb0772ef92d05 # initialize rs1
li x19, 0x54e611c6e677efe0 # initialize rs2
add.uw x4, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x02d071cbe8017944 # initialize rs1
li x22, 0x3adb1c4c55ff1df9 # initialize rs2
add.uw x29, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1e6ed409ae5a2aa7 # initialize rs1
li x26, 0x76310f91fce3bffa # initialize rs2
add.uw x4, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x94533e8f5423b7d5 # initialize rs1
li x16, 0xf4d04553aa8d2afb # initialize rs2
add.uw x22, x8, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x28054509d3e1fbbf # initialize rs1
li x17, 0x28d376618b064141 # initialize rs2
add.uw x27, x9, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x431a2bc222653259 # initialize rs1
li x13, 0xdc5d694da1a8fd69 # initialize rs2
add.uw x17, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x055915f9f1966a16 # initialize rs1
li x12, 0x9874186faca01684 # initialize rs2
add.uw x3, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf81443a2b0278e83 # initialize rs1
li x18, 0x15d3172b4dcaca57 # initialize rs2
add.uw x7, x12, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x03641cc520be0894 # initialize rs1
li x10, 0x7c3c8138a6d9886f # initialize rs2
add.uw x29, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0c845ae043a4792d # initialize rs1
li x23, 0x803c9957ba1d495c # initialize rs2
add.uw x19, x14, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x752e8530cf6aabd7 # initialize rs1
li x22, 0x40f7fca852a167b3 # initialize rs2
add.uw x28, x15, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3cd2a4cb9b600dac # initialize rs1
li x17, 0x5eeff937fa18f587 # initialize rs2
add.uw x14, x16, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x51020095002cb9d4 # initialize rs1
li x3, 0x648a4d3eddc55ba9 # initialize rs2
add.uw x9, x17, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7a5beabf882d8890 # initialize rs1
li x25, 0xeb2aade2980c9f82 # initialize rs2
add.uw x13, x18, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb175e1968d4b1f70 # initialize rs1
li x17, 0x7168fdd736994bf1 # initialize rs2
add.uw x13, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xfb229020cd113061 # initialize rs1
li x14, 0xae70050a64b8805c # initialize rs2
add.uw x1, x20, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf6ec8085e6ec851e # initialize rs1
li x15, 0xc5dd900299c25af6 # initialize rs2
add.uw x27, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xcf7a0ff6996ab132 # initialize rs1
li x10, 0xed090684c49dd623 # initialize rs2
add.uw x31, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xac428edf2ff6a4d9 # initialize rs1
li x16, 0x5a0266990e3d36cd # initialize rs2
add.uw x31, x23, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5f4ebb36695a2e0e # initialize rs1
li x25, 0xda325d992fa6ee75 # initialize rs2
add.uw x16, x24, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x2f84ea4aa1659b4f # initialize rs1
li x17, 0xe79e32aba6f3aff6 # initialize rs2
add.uw x21, x25, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x62ea14dbdcb2c38f # initialize rs1
li x18, 0x8c881f882fb14ea6 # initialize rs2
add.uw x12, x26, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1f3606067304fe6b # initialize rs1
li x31, 0x3fe620c6ebf97925 # initialize rs2
add.uw x26, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1269a335d4618141 # initialize rs1
li x18, 0x123ea32febd66b31 # initialize rs2
add.uw x4, x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x5f283bd0f2e2fb85 # initialize rs1
li x19, 0x4337aa96d39d2d7a # initialize rs2
add.uw x24, x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe1a6582cbf8592e4 # initialize rs1
li x23, 0x4b2e0cd4493b0b77 # initialize rs2
add.uw x15, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x227ef823cd547d4c # initialize rs1
li x28, 0x3ea4d7eab072d7d5 # initialize rs2
add.uw x16, x31, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0xb3078015016e1e13 # initialize rs1
li x0, 0xbd9f761c53cf3643 # initialize rs2
add.uw x25, x26, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x7a09cf267bbbde9b # initialize rs1
li x1, 0xe475dcbec52e21c7 # initialize rs2
add.uw x3, x16, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xf1b9bb8b51403e67 # initialize rs1
li x2, 0xc25f6e37b26fe6ee # initialize rs2
add.uw x26, x3, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x2267bbe3c1a0f9dc # initialize rs1
li x3, 0x2af694e0d9dcf5c2 # initialize rs2
add.uw x28, x27, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
li x22, 0x42838929f117a01b # initialize rs1
li x4, 0x33fe06bf5112ba80 # initialize rs2
add.uw x10, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xc9d1b6112d538023 # initialize rs1
li x5, 0xb06bb9a7520135e7 # initialize rs2
add.uw x20, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x3e98e60177cd101c # initialize rs1
li x6, 0xa4f883e64bd83192 # initialize rs2
add.uw x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
li x8, 0x7359bc2bba2eec39 # initialize rs1
li x7, 0x75c136cbb3442346 # initialize rs2
add.uw x25, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x9adb43680fc7f955 # initialize rs1
li x8, 0xc67b6f7b47d45351 # initialize rs2
add.uw x17, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0x6660a37379f24c71 # initialize rs1
li x9, 0x582b5f584a71bfea # initialize rs2
add.uw x30, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x053e9294a676cbaf # initialize rs1
li x10, 0x241dccbbad849ea8 # initialize rs2
add.uw x22, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0xd5b6cffeb9db9f41 # initialize rs1
li x11, 0x45703802878bec1c # initialize rs2
add.uw x5, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x2039766e265036f9 # initialize rs1
li x12, 0xd1a82e5b9215f7b4 # initialize rs2
add.uw x16, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x153d323eedb8ee0e # initialize rs1
li x13, 0x642476cb8966e0ec # initialize rs2
add.uw x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x624b0833c4c5c3e1 # initialize rs1
li x14, 0x3ccb734e86a26946 # initialize rs2
add.uw x29, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x816ea7933f377765 # initialize rs1
li x15, 0x91a589618834c940 # initialize rs2
add.uw x2, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x2c391efe7cb10324 # initialize rs1
li x16, 0xeb3e1db5397510ae # initialize rs2
add.uw x31, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xf05aae6e1d27992f # initialize rs1
li x17, 0xfadcb5cc5a0195f6 # initialize rs2
add.uw x11, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xff74db772c2a3f36 # initialize rs1
li x18, 0x4e9345a6505117bf # initialize rs2
add.uw x12, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x96b4b0a69a6233b8 # initialize rs1
li x19, 0x45cdb0c6c963ff1d # initialize rs2
add.uw x29, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x77ff26cad860f35d # initialize rs1
li x20, 0x6b2473fc08c21ec9 # initialize rs2
add.uw x1, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xf75f6d1971bc50d4 # initialize rs1
li x21, 0x66d08bfd85486c74 # initialize rs2
add.uw x15, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0xd7e24d0794073822 # initialize rs1
li x22, 0x74b7787be60529bf # initialize rs2
add.uw x21, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0xc2a482f9dd14457a # initialize rs1
li x23, 0x3a421f519d17c097 # initialize rs2
add.uw x11, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0xb01cf6f50847976c # initialize rs1
li x24, 0x49de9f02655bf178 # initialize rs2
add.uw x7, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x60b3b622a54a37e5 # initialize rs1
li x25, 0x2b44c272005f039f # initialize rs2
add.uw x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0xe0fa5d57db5ee86e # initialize rs1
li x26, 0x5d18f600acc9bf0a # initialize rs2
add.uw x12, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x7bd1df861c298cd4 # initialize rs1
li x27, 0x370f386973c51321 # initialize rs2
add.uw x17, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0xfb71fbe322ee2043 # initialize rs1
li x28, 0xbbcb835e5a29dcd1 # initialize rs2
add.uw x7, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x28268781c7175400 # initialize rs1
li x29, 0x82bacb1c1ca3df17 # initialize rs2
add.uw x17, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x0acceb73a3e38902 # initialize rs1
li x30, 0x7102b9e0aaa73cb5 # initialize rs2
add.uw x13, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x8a2c3c43c700e330 # initialize rs1
li x31, 0xb247444e8a1c131e # initialize rs2
add.uw x25, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x6eefc829b85ccbc1 # initialize rs1
li x3, 0x5d40eb7d3cebf2ac # initialize rs2
add.uw x0, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x11fef98dcf44ba65 # initialize rs1
li x14, 0xf4b022ac9c3da0f3 # initialize rs2
add.uw x1, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0xaa35d799b2a2aba0 # initialize rs1
li x26, 0x576f0b89bc588e8a # initialize rs2
add.uw x2, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x47b1e74d7212ab57 # initialize rs1
li x10, 0x2dffe083198cbb21 # initialize rs2
add.uw x3, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xb8ce6e2a9dfdc33e # initialize rs1
li x1, 0xb4783553d7723432 # initialize rs2
add.uw x4, x29, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xd3022fc06caa3b6f # initialize rs1
li x7, 0x7f74dee1fef55578 # initialize rs2
add.uw x5, x8, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x0804483865623832 # initialize rs1
li x24, 0x413b11a3fb403a06 # initialize rs2
add.uw x6, x17, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xf37072f8e325a757 # initialize rs1
li x2, 0x615079ce4c79672b # initialize rs2
add.uw x7, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0xeb78978fb2c66d43 # initialize rs1
li x30, 0xa6a871a90dd62ee7 # initialize rs2
add.uw x8, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x99835cb182ff5d65 # initialize rs1
li x8, 0x37a5c46be7a4430a # initialize rs2
add.uw x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0x9152fcf54cc99ee1 # initialize rs1
li x18, 0xd1d75c1b6daf797b # initialize rs2
add.uw x10, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xe6ef4ee15442ed3b # initialize rs1
li x15, 0xc46837eab9f95c4f # initialize rs2
add.uw x11, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x16575adfc9e0ba76 # initialize rs1
li x12, 0x0a527d235be663fe # initialize rs2
add.uw x12, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x3d1e3623ae2a44c9 # initialize rs1
li x21, 0x317874d2f4c00779 # initialize rs2
add.uw x13, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x7d5f16e819b3bc4c # initialize rs1
li x7, 0x1abdc6086dfd2481 # initialize rs2
add.uw x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xdb54e91db1b6510f # initialize rs1
li x26, 0xc1e0cdb033fadf74 # initialize rs2
add.uw x15, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x64a64adac29cd7f5 # initialize rs1
li x18, 0x3feb2c95e80c3917 # initialize rs2
add.uw x16, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfddcccd96e7ea0fc # initialize rs1
li x19, 0xc53261744e9884b8 # initialize rs2
add.uw x17, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0xb512f1e984c3f29c # initialize rs1
li x6, 0x4ea5add7df373a71 # initialize rs2
add.uw x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0x3c174afe50e1a681 # initialize rs1
li x6, 0x496ace9fa4dc4d9d # initialize rs2
add.uw x19, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x9e6920beff17f947 # initialize rs1
li x16, 0x0806a43f643354e4 # initialize rs2
add.uw x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0xe2042b205c9a5d40 # initialize rs1
li x15, 0x4da52450ca4677bf # initialize rs2
add.uw x21, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x959fc5541f1a0858 # initialize rs1
li x27, 0xbb37c36919355bcf # initialize rs2
add.uw x22, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x81643bd8ea36f899 # initialize rs1
li x5, 0x39d4be1d472ccb3b # initialize rs2
add.uw x23, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0xe17581333b0a1e78 # initialize rs1
li x26, 0x75582512c930096b # initialize rs2
add.uw x24, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x621ae7c1de97a108 # initialize rs1
li x31, 0x2414b1a865149334 # initialize rs2
add.uw x25, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0xebc7b140060ff7b5 # initialize rs1
li x21, 0xb503c0ea54005ebe # initialize rs2
add.uw x26, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x2be79830eea1bdb2 # initialize rs1
li x22, 0xaac2482e65c27117 # initialize rs2
add.uw x27, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0xa1f10be7bfd29dac # initialize rs1
li x24, 0x6bfefbb1d0f732c5 # initialize rs2
add.uw x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x77ec87830df3d3ad # initialize rs1
li x23, 0x3e5325182af08d15 # initialize rs2
add.uw x29, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x828de030322a5d97 # initialize rs1
li x18, 0x80e0718a2b78269d # initialize rs2
add.uw x30, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x26c27fe68df43763 # initialize rs1
li x7, 0x8eca4a3be8261fbc # initialize rs2
add.uw x31, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x16, 0x0000000000000000 # initialize rs1
li x19, 0x6bffba76072671e7 # initialize rs2
add.uw x26, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x28, 0xebec11c440744e00 # initialize rs2
add.uw x17, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x1f6468bccfa503e3 # initialize rs2
add.uw x11, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0xd41474cb6b15a077 # initialize rs2
add.uw x26, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x3, 0xebc2291049291e96 # initialize rs2
add.uw x17, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x28, 0x16dc78b0d641ef23 # initialize rs2
add.uw x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x18, 0x3d9d0e8e43e8dbe1 # initialize rs2
add.uw x31, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x15, 0x05941b2cd4ae602f # initialize rs2
add.uw x1, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x17, 0x095533d39d748043 # initialize rs2
add.uw x28, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0239142b39ab99c1 # initialize rs2
add.uw x7, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x4b14e0fa9b191ca1 # initialize rs2
add.uw x1, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
li x9, 0x0c70a3fb45ca32f9 # initialize rs2
add.uw x20, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x29, 0x26d10c0b56f8e5e1 # initialize rs2
add.uw x2, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x4fcbc2b35e2b2a8d # initialize rs2
add.uw x10, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x14, 0xe33f6b6bcc3c2574 # initialize rs2
add.uw x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x16, 0x8e5645c142a8df00 # initialize rs2
add.uw x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x00058432be10ca88 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
add.uw x16, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x4355533a15391246 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
add.uw x23, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x4a98c2d246965b3a # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
add.uw x1, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x435f2f6bedf8f10c # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
add.uw x18, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0xdfcbaf2e8eb90600 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
add.uw x23, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x9, 0x6673e45c5824f4d7 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
add.uw x14, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x47ba02a8b04d671c # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
add.uw x30, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x5446801adb94f0af # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
add.uw x9, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0x3abcdad012dba85e # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
add.uw x20, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x9, 0xfc79adc970db4d39 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
add.uw x20, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x2fc60ad0a43592de # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x24, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0x40d671a4349868a0 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
add.uw x15, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x790d9bc965ac97de # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
add.uw x18, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x871b97c32ee04cac # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
add.uw x22, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x5be9704f5f19e4c9 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
add.uw x19, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x30, 0x53eda73e9913ec00 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
add.uw x5, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
add.uw x3, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
add.uw x21, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
add.uw x7, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
add.uw x10, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x25, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
add.uw x11, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
add.uw x31, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
add.uw x21, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
add.uw x14, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
add.uw x14, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
add.uw x21, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x8, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x14, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
add.uw x28, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
add.uw x13, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
add.uw x25, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x26, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
add.uw x8, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
add.uw x13, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
add.uw x21, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
add.uw x30, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x20, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
add.uw x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x12, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
add.uw x9, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x25, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
add.uw x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
add.uw x29, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
add.uw x8, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
add.uw x25, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
add.uw x1, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
add.uw x10, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x6, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
add.uw x29, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
add.uw x29, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
add.uw x31, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x19, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
add.uw x1, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
add.uw x20, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
add.uw x28, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
add.uw x20, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
add.uw x6, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x3, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
add.uw x2, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
add.uw x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
add.uw x21, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
add.uw x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
add.uw x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
add.uw x14, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
add.uw x13, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000002 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x17, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
add.uw x27, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
add.uw x27, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add.uw x1, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x22, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
add.uw x16, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
add.uw x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x29, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
add.uw x9, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
add.uw x20, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
add.uw x21, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
add.uw x19, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
add.uw x27, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
add.uw x29, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
add.uw x29, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
add.uw x16, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
add.uw x18, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
add.uw x6, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x29, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x7, 0x8000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
add.uw x17, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
add.uw x18, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
add.uw x24, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x7, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
add.uw x16, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
add.uw x30, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x13, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
add.uw x23, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
add.uw x20, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
add.uw x11, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
add.uw x18, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
add.uw x10, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
add.uw x12, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
add.uw x25, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
add.uw x29, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
add.uw x17, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
add.uw x2, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x22, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x10, 0x8000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
add.uw x3, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
add.uw x15, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
add.uw x28, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x17, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
add.uw x22, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
add.uw x11, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x11, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
add.uw x3, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
add.uw x15, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x10, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
add.uw x13, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
add.uw x2, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
add.uw x24, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
add.uw x18, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
add.uw x25, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
add.uw x6, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
add.uw x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
add.uw x7, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x18, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x22, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
add.uw x6, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
add.uw x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
add.uw x9, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
add.uw x19, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
add.uw x31, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x8, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
add.uw x14, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
add.uw x2, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x30, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
add.uw x31, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
add.uw x31, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
add.uw x22, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
add.uw x21, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
add.uw x3, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
add.uw x8, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
add.uw x16, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
add.uw x14, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x2, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
add.uw x10, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
add.uw x2, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add.uw x30, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
add.uw x2, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x6, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
add.uw x1, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x1, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
add.uw x19, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
add.uw x24, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
add.uw x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x3, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
add.uw x12, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x10, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
add.uw x12, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
add.uw x11, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
add.uw x8, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
add.uw x22, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
add.uw x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
add.uw x6, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xffffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x3, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
add.uw x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
add.uw x20, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
add.uw x28, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
add.uw x25, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x14, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
add.uw x26, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
add.uw x25, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
add.uw x1, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x16, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
add.uw x31, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x26, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
add.uw x1, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
add.uw x25, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
add.uw x5, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
add.uw x31, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
add.uw x3, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
add.uw x20, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
add.uw x11, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xfffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x27, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xfffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
add.uw x29, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
add.uw x17, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
add.uw x18, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
add.uw x11, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
add.uw x6, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
add.uw x1, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
add.uw x24, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
add.uw x30, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
add.uw x28, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
add.uw x15, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
add.uw x14, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
add.uw x20, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
add.uw x8, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
add.uw x23, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
add.uw x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x26, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
add.uw x28, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add.uw x1, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
add.uw x23, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add.uw x13, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
add.uw x26, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
add.uw x27, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
add.uw x24, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
add.uw x11, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
add.uw x6, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
add.uw x3, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
add.uw x14, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
add.uw x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
add.uw x8, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
add.uw x2, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
add.uw x24, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x26, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
add.uw x26, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
add.uw x2, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
add.uw x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
add.uw x12, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
add.uw x6, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
add.uw x13, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x17, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
add.uw x18, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x30, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
add.uw x17, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
add.uw x24, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x5, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
add.uw x8, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
add.uw x9, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
add.uw x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
add.uw x28, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
add.uw x17, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
add.uw x17, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
add.uw x29, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
add.uw x8, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
add.uw x3, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x19, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
add.uw x11, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
add.uw x3, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
add.uw x24, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
add.uw x14, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
add.uw x8, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x17, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
add.uw x27, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
add.uw x23, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
add.uw x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
add.uw x20, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
add.uw x27, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
add.uw x11, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
add.uw x24, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x19, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
add.uw x29, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
add.uw x7, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add.uw x20, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x31, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
add.uw x9, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
add.uw x22, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
add.uw x26, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
add.uw x1, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
add.uw x31, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
add.uw x25, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x3, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
add.uw x5, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
add.uw x12, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
add.uw x28, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
add.uw x7, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
add.uw x26, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000fffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
add.uw x6, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x26, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
add.uw x27, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
add.uw x22, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add.uw x27, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x11, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
add.uw x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x11, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
add.uw x22, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x27, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
add.uw x12, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x24, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
add.uw x25, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x18, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
add.uw x6, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x9, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
add.uw x14, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x11, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
add.uw x3, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
add.uw x26, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
add.uw x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
add.uw x30, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000100000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
add.uw x24, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
add.uw x20, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000100000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x21, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x1, 0x0000000100000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
add.uw x9, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
add.uw x27, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add.uw x10, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
add.uw x1, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x24, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
add.uw x28, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x28, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
add.uw x22, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x14, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
add.uw x6, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x23, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
add.uw x6, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x11, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
add.uw x21, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
add.uw x29, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
add.uw x22, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
add.uw x16, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
add.uw x20, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
add.uw x11, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
add.uw x25, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
add.uw x12, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x0000000100000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
add.uw x3, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add.uw x13, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
add.uw x12, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x3, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add.uw x13, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
add.uw x28, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x669ecd2154f0578e # initialize rs1
li x0, 0x33ca5cad20468101 # initialize rs2
add.uw x14, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x1dead69c02dc9878 # initialize rs1
li x1, 0x87f6df497848adc9 # initialize rs2
add.uw x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa2a4246fae19e646 # initialize rs1
li x2, 0x64679417b68c9bc0 # initialize rs2
add.uw x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x5450befe3e8f2edf # initialize rs1
li x3, 0xb8c96e3565756364 # initialize rs2
add.uw x19, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x502f315247cff6e6 # initialize rs1
li x4, 0x6d0e216776f16876 # initialize rs2
add.uw x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3038f3d98aed4d3a # initialize rs1
li x5, 0x8cc5005ea433630b # initialize rs2
add.uw x28, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x11fb1186dd3f81aa # initialize rs1
li x6, 0x61f05e4bc73c230b # initialize rs2
add.uw x17, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe3e68ebeeb69bbf4 # initialize rs1
li x7, 0x486705341223ad61 # initialize rs2
add.uw x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x5af5a2d10d01618d # initialize rs1
li x8, 0x2fd54fb0a85598dd # initialize rs2
add.uw x9, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5ed3c7ae03d5c1b8 # initialize rs1
li x9, 0x419a2ea8c154981d # initialize rs2
add.uw x27, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x57760245375ebb93 # initialize rs1
li x10, 0xa66fcfb86781583f # initialize rs2
add.uw x28, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0b8195603b59706d # initialize rs1
li x11, 0xf1116432dfb97ea4 # initialize rs2
add.uw x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf29561ad544c934b # initialize rs1
li x12, 0x60a1d3f2b3b2f32e # initialize rs2
add.uw x7, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x36bc943d7c8a50b5 # initialize rs1
li x13, 0x457991dfbb4e71b4 # initialize rs2
add.uw x20, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfe2643ffd9902d2f # initialize rs1
li x14, 0xbf803fab889ca983 # initialize rs2
add.uw x27, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4155a8a53a447eb5 # initialize rs1
li x15, 0x069f5732ca1b6b17 # initialize rs2
add.uw x13, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaa82f643ac903da5 # initialize rs1
li x16, 0x016437ce29fc8c38 # initialize rs2
add.uw x14, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1ededfdde12df2fb # initialize rs1
li x17, 0x87edec37d1e9df65 # initialize rs2
add.uw x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0b1c7a5417b83cff # initialize rs1
li x18, 0xaa09128458b430c6 # initialize rs2
add.uw x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9287a01d80063f44 # initialize rs1
li x19, 0xa8ad4fe4ff355280 # initialize rs2
add.uw x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd9fca2ec5c4ed1de # initialize rs1
li x20, 0xcebc0800540b3758 # initialize rs2
add.uw x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc42197214b283f3c # initialize rs1
li x21, 0x747f1db6782f97a2 # initialize rs2
add.uw x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x85200fc1408906b0 # initialize rs1
li x22, 0x28d03880ce2349b3 # initialize rs2
add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7de09eac466dd87b # initialize rs1
li x23, 0xa05c662355512566 # initialize rs2
add.uw x3, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x29a49486b2ec8d9e # initialize rs1
li x24, 0x6d50f0e3f25b2a64 # initialize rs2
add.uw x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7ff9d91ca289669b # initialize rs1
li x25, 0xb1d24a745e1e5d72 # initialize rs2
add.uw x11, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xec4af3e8b1ed2672 # initialize rs1
li x26, 0x33b8961ffafee8d2 # initialize rs2
add.uw x30, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdf53396fee89da7e # initialize rs1
li x27, 0x33a232c0c0c2e1ab # initialize rs2
add.uw x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3ce88d7699cee3ee # initialize rs1
li x28, 0x6f81a21c40302507 # initialize rs2
add.uw x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x54dbdc68dce18316 # initialize rs1
li x29, 0xf42afef2d128b64f # initialize rs2
add.uw x22, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3563f63f928afb27 # initialize rs1
li x30, 0xf38f96c826aae2d1 # initialize rs2
add.uw x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x758f3cd238711eb1 # initialize rs1
li x31, 0xa9ff3d2b7e351b97 # initialize rs2
add.uw x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x2797c2930ab48198 # initialize rs1
li x2, 0xc4ff2b2164117a36 # initialize rs2
add.uw x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd09d2e86916eaa36 # initialize rs1
li x3, 0xaf5b4fab768a30ed # initialize rs2
add.uw x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x78f8c1ab6846f655 # initialize rs1
li x7, 0xb151f676867f85c0 # initialize rs2
add.uw x2, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6466af4d25b997dd # initialize rs1
li x10, 0xccaf63372cb4df65 # initialize rs2
add.uw x3, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08b9941e96b4d021 # initialize rs1
li x12, 0x4b80bbb13f212150 # initialize rs2
add.uw x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2657a4cb2155520d # initialize rs1
li x18, 0xc429b87be4fdff9e # initialize rs2
add.uw x5, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd70b40e7b54e8b27 # initialize rs1
li x4, 0x1b5171f2319910d1 # initialize rs2
add.uw x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe451faad5c0c02b2 # initialize rs1
li x2, 0xda8aaa13e371b31e # initialize rs2
add.uw x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf4cd0d322a11ab8a # initialize rs1
li x12, 0xa26ca1213e3119e4 # initialize rs2
add.uw x8, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xde83a8c397acbe44 # initialize rs1
li x3, 0xcf7355d7a8cf84fa # initialize rs2
add.uw x9, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xee247a051e561720 # initialize rs1
li x14, 0xc894214680f24e97 # initialize rs2
add.uw x10, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6648822584b51bf1 # initialize rs1
li x20, 0x44ce3aa2bc91daae # initialize rs2
add.uw x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xbc06ab2d3204fa6f # initialize rs1
li x28, 0x21f66276379b4a61 # initialize rs2
add.uw x12, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xaa5659b272175d97 # initialize rs1
li x8, 0x5671272458018171 # initialize rs2
add.uw x13, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0f01d939dd1f3e59 # initialize rs1
li x21, 0xa57f8f1491aaad2a # initialize rs2
add.uw x14, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x404107ec95f21973 # initialize rs1
li x8, 0x2153095cc5bfe7fa # initialize rs2
add.uw x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3d28d9974fd51083 # initialize rs1
li x3, 0x62ff2702df4890f5 # initialize rs2
add.uw x16, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x01fae429ea5457c4 # initialize rs1
li x2, 0xbce3cbb312186c58 # initialize rs2
add.uw x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x12af45c411290380 # initialize rs1
li x21, 0xb4842757f977172c # initialize rs2
add.uw x18, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x56bf8ea5b99f48c0 # initialize rs1
li x8, 0x88a7f27943729cab # initialize rs2
add.uw x19, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x452ff243f8d92775 # initialize rs1
li x15, 0x3e49c6eeea4baf76 # initialize rs2
add.uw x20, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8093ffd23f0adb73 # initialize rs1
li x19, 0x45881b5f8a457ec7 # initialize rs2
add.uw x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2267fb0d0cc7fb64 # initialize rs1
li x24, 0x3e911d31039f3d9c # initialize rs2
add.uw x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x032a15c2537f3c91 # initialize rs1
li x7, 0xc9c40515dbc93c86 # initialize rs2
add.uw x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf91e40b7e8197e5d # initialize rs1
li x17, 0x121ff46b11950a2d # initialize rs2
add.uw x24, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb49fcdd45ede2de4 # initialize rs1
li x18, 0xc6ebf83732ea772a # initialize rs2
add.uw x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc6fc7661658fb682 # initialize rs1
li x12, 0x444f55a7c1c848b5 # initialize rs2
add.uw x26, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe254390583ef2c5d # initialize rs1
li x13, 0xaab0e82923bb5df2 # initialize rs2
add.uw x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xaf107f1a35bee7da # initialize rs1
li x10, 0x535087d62bbc105d # initialize rs2
add.uw x28, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0722d789041dfb94 # initialize rs1
li x10, 0xb4be3f26e62165cd # initialize rs2
add.uw x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4fd5fbe90167bb23 # initialize rs1
li x18, 0x58eadb69f2b5459f # initialize rs2
add.uw x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4e1d6fb449eac597 # initialize rs1
li x14, 0x4b6a9bd013ba7805 # initialize rs2
add.uw x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x24, 0x92b0239901d9427a # initialize rs1
li x0, 0x641353f3e38ac9a9 # initialize rs2
add.uw x0, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x38c232c5b5c9ae1b # initialize rs1
li x1, 0x1cd6b87f4eb83d7d # initialize rs2
add.uw x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x28, 0xfca81b548f9cbd3c # initialize rs1
li x2, 0x4689454226ce0b93 # initialize rs2
add.uw x2, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xc797bc5fb60589c0 # initialize rs1
li x3, 0x7e7e66a693b5e96f # initialize rs2
add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x3acec8db1d299d68 # initialize rs1
li x4, 0x37e328440aff04a4 # initialize rs2
add.uw x4, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x17d6a872b6085b27 # initialize rs1
li x5, 0xdd253988e81e3d38 # initialize rs2
add.uw x5, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xb1937b81ad4d186f # initialize rs1
li x6, 0xa0a04273dfb268ea # initialize rs2
add.uw x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0xe28b24a98da65651 # initialize rs1
li x7, 0xb53c5423774f1b7f # initialize rs2
add.uw x7, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x27, 0x034015fc8ffbe901 # initialize rs1
li x8, 0x84dba7925703d9a3 # initialize rs2
add.uw x8, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x19, 0x97965212039257fb # initialize rs1
li x9, 0xf76311343fc7f67f # initialize rs2
add.uw x9, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x12, 0x9e902ccd57342cc7 # initialize rs1
li x10, 0xca712cd70b96ace2 # initialize rs2
add.uw x10, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x15c84c1d6435d659 # initialize rs1
li x11, 0xc2da4d9d36d65d4d # initialize rs2
add.uw x11, x14, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0x700ab7ccc12a1064 # initialize rs1
li x12, 0x74bda0de930c2b46 # initialize rs2
add.uw x12, x6, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x18, 0x86a5699aaa90b717 # initialize rs1
li x13, 0x1cfdc5909bd8dece # initialize rs2
add.uw x13, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xa324e3dc690cfff2 # initialize rs1
li x14, 0x50ac722ee48dddeb # initialize rs2
add.uw x14, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x686d8334655c43ce # initialize rs1
li x15, 0x9edce859c9fd5b01 # initialize rs2
add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x23, 0x3ac1aad4a2ffc33f # initialize rs1
li x16, 0x469fb4a553408434 # initialize rs2
add.uw x16, x23, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x55e04981369407f0 # initialize rs1
li x17, 0xc7c7a8e42ba96a7f # initialize rs2
add.uw x17, x21, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x1, 0xfee2be1ecbe7409c # initialize rs1
li x18, 0x2c8ec5d5cafdd849 # initialize rs2
add.uw x18, x1, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x65fdbd69240de97b # initialize rs1
li x19, 0xe57e2cb62feea6ee # initialize rs2
add.uw x19, x9, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x18, 0x3c44c294bfb3a796 # initialize rs1
li x20, 0x3e7367cac7f1c23a # initialize rs2
add.uw x20, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0x59f4b16e97e57096 # initialize rs1
li x21, 0x42d2c58152b1ca68 # initialize rs2
add.uw x21, x30, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x31, 0x37d6e378ef088b4f # initialize rs1
li x22, 0xc4a07cec4e303f4a # initialize rs2
add.uw x22, x31, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xb733f81095300395 # initialize rs1
li x23, 0xbcd5e331f6d8b9af # initialize rs2
add.uw x23, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0x29c41cf17961a078 # initialize rs1
li x24, 0x2d406f4acde9dbd1 # initialize rs2
add.uw x24, x18, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x22, 0x1908ac1aea0a1a60 # initialize rs1
li x25, 0x02bee3c284c8fdd4 # initialize rs2
add.uw x25, x22, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x21, 0x5294696e3687fb9c # initialize rs1
li x26, 0xd49ca91f5398a635 # initialize rs2
add.uw x26, x21, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x15, 0x30098f05a21e9914 # initialize rs1
li x27, 0xd661f215b60f6e3d # initialize rs2
add.uw x27, x15, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x19, 0x2cf3b8953363b36c # initialize rs1
li x28, 0x1b27ac3520800e72 # initialize rs2
add.uw x28, x19, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x4f4280f84fe717cb # initialize rs1
li x29, 0x405d5457840a86b5 # initialize rs2
add.uw x29, x31, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0xfdbaebbe23319af5 # initialize rs1
li x30, 0x3c104e4724fb15d9 # initialize rs2
add.uw x30, x16, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x3, 0xa8e0cd3f4b233d33 # initialize rs1
li x31, 0xffe97a8a95c86654 # initialize rs2
add.uw x31, x3, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4c621df0c2039b13 # initialize rs1
li x0, 0x6c2eb0d2b4a3337c # initialize rs2
add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbb188d30009a54f4 # initialize rs1
li x1, 0x1198dbba76e26782 # initialize rs2
add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xb968bc64aeba0139 # initialize rs1
li x2, 0xd9817c12663c883e # initialize rs2
add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb91df6d6f050805a # initialize rs1
li x3, 0x9fc43bab28e482c7 # initialize rs2
add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x90de546276fe6ec7 # initialize rs1
li x4, 0xa5b8ae089e8c7b70 # initialize rs2
add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd020dc046f77c7bd # initialize rs1
li x5, 0x56af5d48ffe84a0b # initialize rs2
add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7fe568911bd3cff5 # initialize rs1
li x6, 0x080e9be2b34021b2 # initialize rs2
add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x72d2f2c2904d0a9c # initialize rs1
li x7, 0x66f133d3d638e2ab # initialize rs2
add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x334825a90e3fc859 # initialize rs1
li x8, 0x00754d3d78afa384 # initialize rs2
add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x34aaa974f49375de # initialize rs1
li x9, 0x1e83b8141004baf5 # initialize rs2
add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xe0d6802cff57bd20 # initialize rs1
li x10, 0x1ac88b17b2ebf60d # initialize rs2
add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x08935d4dc1fe5e36 # initialize rs1
li x11, 0x2f685e6bb14401cc # initialize rs2
add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x3ef298b57cd6214d # initialize rs1
li x12, 0x89d47c26d490f7fe # initialize rs2
add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x14cfb13a12bd5edd # initialize rs1
li x13, 0xed4528f486b1d878 # initialize rs2
add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8a79f0ace3f25462 # initialize rs1
li x14, 0x2f20f5c65b590d54 # initialize rs2
add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4a85c88ee12f3da5 # initialize rs1
li x15, 0xaeb70a06b1b773dc # initialize rs2
add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x89f110008b3d352b # initialize rs1
li x16, 0x2387adfc676c9f77 # initialize rs2
add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x133b3134e0f8b158 # initialize rs1
li x17, 0x91869b3c254287de # initialize rs2
add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa502e5cd9cf57054 # initialize rs1
li x18, 0x85f80658be714775 # initialize rs2
add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x04b40e7c900c3603 # initialize rs1
li x19, 0x9b7ff46867451d74 # initialize rs2
add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd69a0fbc8361af9f # initialize rs1
li x20, 0xa8754f547ab558b8 # initialize rs2
add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x14956b618049bb71 # initialize rs1
li x21, 0x606761f4f66879fd # initialize rs2
add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x53de8cba7bad5ed7 # initialize rs1
li x22, 0xd2788a408234e084 # initialize rs2
add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd9396e9dd5643d22 # initialize rs1
li x23, 0xe12e3a2afae334df # initialize rs2
add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf93332307c63da9d # initialize rs1
li x24, 0x7988abfe25867e91 # initialize rs2
add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcc8b62c2610ffea9 # initialize rs1
li x25, 0x4201ab72f9a52d6d # initialize rs2
add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x786bf54e230a52e2 # initialize rs1
li x26, 0x1f808ddcf761e6aa # initialize rs2
add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x613890fdb8403a14 # initialize rs1
li x27, 0x1b265fe2207db00b # initialize rs2
add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x7fbbf2cd9fdbc54a # initialize rs1
li x28, 0xed47cccdde46be66 # initialize rs2
add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6c564a9813c1446b # initialize rs1
li x29, 0xf334556a73678a83 # initialize rs2
add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb30abcff68177fa8 # initialize rs1
li x30, 0x0d5f767a8a01f54e # initialize rs2
add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x590cabda2f2ba064 # initialize rs1
li x31, 0x4f39bfdfa611f904 # initialize rs2
add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x15, x2 # perform first operation
add.uw x12, x13, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x20, x22 # perform first operation
add.uw x5, x14, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x30, x27 # perform first operation
add.uw x8, x24, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x12, x22 # perform first operation
add.uw x7, x23, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x2, x18 # perform first operation
add.uw x16, x31, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x22, x23 # perform first operation
add.uw x23, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x17, x2 # perform first operation
add.uw x10, x18, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x9, x18 # perform first operation
add.uw x22, x19, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x27, x3 # perform first operation
add.uw x28, x31, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x1, x21 # perform first operation
add.uw x1, x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x11, x16 # perform first operation
add.uw x16, x29, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x26, x21 # perform first operation
add.uw x28, x27, x15 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-sh2add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x9aa92a9277efb360 # initialize rs1
li x22, 0xbdad2bb7ce8178fd # initialize rs2
sh2add x21, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbbca7f93fedd2cb0 # initialize rs1
li x12, 0x5588a0a1bbf4f890 # initialize rs2
sh2add x21, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf23b331ca6b02bf5 # initialize rs1
li x7, 0x59ee8a54dfafb1c6 # initialize rs2
sh2add x12, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe667e6c1b551e292 # initialize rs1
li x16, 0x1da06c9fc6f3f9ee # initialize rs2
sh2add x30, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf59d6199b43282d8 # initialize rs1
li x17, 0x67a02482d04a6521 # initialize rs2
sh2add x22, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7a36bcc5d5981cb9 # initialize rs1
li x30, 0xabf654c584bce648 # initialize rs2
sh2add x28, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ebdeb188974e185 # initialize rs1
li x15, 0x40cfd77f4d82d216 # initialize rs2
sh2add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3b0b7156611c2f3d # initialize rs1
li x21, 0x78041c1462cb6f0f # initialize rs2
sh2add x11, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa82bc7efed66dbc3 # initialize rs1
li x13, 0x7951238371349ba3 # initialize rs2
sh2add x26, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1e1ce6cf0ee3d5a6 # initialize rs1
li x12, 0xfc35ccc9c1928d80 # initialize rs2
sh2add x24, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa9173ccef301a002 # initialize rs1
li x28, 0x67e365b5240a1cf7 # initialize rs2
sh2add x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x33f01147822ca217 # initialize rs1
li x28, 0xa711af2647d6b7e7 # initialize rs2
sh2add x24, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xdbf1cc6b969311dd # initialize rs1
li x11, 0x56fd9c8e1b69290c # initialize rs2
sh2add x30, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x08f86100e5bfeb4b # initialize rs1
li x20, 0x57fc2bd5ecc4c568 # initialize rs2
sh2add x1, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x00f603bc2826c2e2 # initialize rs1
li x31, 0x4d237489d42a801f # initialize rs2
sh2add x23, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x828f0f3637ee9cc1 # initialize rs1
li x1, 0x28018f2179afd99d # initialize rs2
sh2add x7, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x37d172bf8101e6f1 # initialize rs1
li x29, 0x53affec66be66b24 # initialize rs2
sh2add x9, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8bc188b555fea65c # initialize rs1
li x26, 0x15d68ab2b7caaef4 # initialize rs2
sh2add x10, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x313884e793ac3fe1 # initialize rs1
li x22, 0xa25e2bce3993e2fa # initialize rs2
sh2add x28, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x13b2b92278b504fc # initialize rs1
li x8, 0x24ceffe0278107f7 # initialize rs2
sh2add x29, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x562bdff3325933c7 # initialize rs1
li x5, 0xff8158216af4db03 # initialize rs2
sh2add x27, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4e50d41557741011 # initialize rs1
li x16, 0xad68b4ca3a6a71f5 # initialize rs2
sh2add x28, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xab8798d2ee2b2fa5 # initialize rs1
li x16, 0xafe84cb60188cd43 # initialize rs2
sh2add x5, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x98012d507c9bca12 # initialize rs1
li x27, 0xfa2fb8ef6dbe994a # initialize rs2
sh2add x19, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x088c398fe6ea27ea # initialize rs1
li x15, 0xef5129fb200d2b44 # initialize rs2
sh2add x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc5793d810e723cd6 # initialize rs1
li x11, 0x5cb2ff0a5ae886cd # initialize rs2
sh2add x19, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xee5faf2ce168251a # initialize rs1
li x5, 0xdcf537effa852c32 # initialize rs2
sh2add x17, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd784f6b08731bf0f # initialize rs1
li x7, 0xa9cca8a7c7a1c692 # initialize rs2
sh2add x18, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc5f99e0a1e2e7f4a # initialize rs1
li x6, 0xe0bcb1ae9e1ea079 # initialize rs2
sh2add x9, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8ed82c9e0ec6be4e # initialize rs1
li x17, 0x462ec8d3ceda46c5 # initialize rs2
sh2add x7, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xc6226ca2834a4069 # initialize rs1
li x25, 0xf1f9102e07bf35a6 # initialize rs2
sh2add x14, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2c0ff66e8b759fee # initialize rs1
li x7, 0x24f17438247f0607 # initialize rs2
sh2add x1, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x10b64ed60ba0fb0f # initialize rs1
li x0, 0x6698ec065b9defa0 # initialize rs2
sh2add x15, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x914b2956cf85c772 # initialize rs1
li x1, 0x65f79accb4287cba # initialize rs2
sh2add x24, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x74125f32168dd643 # initialize rs1
li x2, 0x67066c3237c21fe8 # initialize rs2
sh2add x13, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x6bf60344b38edf92 # initialize rs1
li x3, 0x418c913fea288972 # initialize rs2
sh2add x1, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xa35637dc99447ce7 # initialize rs1
li x4, 0xfdb12ef718076226 # initialize rs2
sh2add x6, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xb91b18917a0c834f # initialize rs1
li x5, 0xcd2835aa8d473412 # initialize rs2
sh2add x15, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0xc9007bb08d83dc39 # initialize rs1
li x6, 0xc4889c65b708a34d # initialize rs2
sh2add x20, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xb2db598bacaca3a7 # initialize rs1
li x7, 0x3ecc2c9d143e2ce0 # initialize rs2
sh2add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x009d7c00cffa1047 # initialize rs1
li x8, 0xd167a7251b1aa4e5 # initialize rs2
sh2add x23, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0x54575c948d60157c # initialize rs1
li x9, 0x7dfefce501dbed89 # initialize rs2
sh2add x16, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xc6afd5f3ff81db01 # initialize rs1
li x10, 0xc06b1dbbbaf710ed # initialize rs2
sh2add x31, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xe56b29f354677276 # initialize rs1
li x11, 0x077abd21f2a774b7 # initialize rs2
sh2add x17, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x1d90a065e32ce7ac # initialize rs1
li x12, 0x32af063108b9629f # initialize rs2
sh2add x10, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0xaf10fe68b2fde2fc # initialize rs1
li x13, 0xedb957d75fa29e55 # initialize rs2
sh2add x9, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x789fe818e5c8adc9 # initialize rs1
li x14, 0x09cdfed73ff5758a # initialize rs2
sh2add x6, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x8e93193d10a99eed # initialize rs1
li x15, 0x728ed6480668dac1 # initialize rs2
sh2add x9, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x61c24b70704aff3c # initialize rs1
li x16, 0xd5f7c9cd35462884 # initialize rs2
sh2add x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xc16defc93c00e13b # initialize rs1
li x17, 0x0633ad00ef7af97f # initialize rs2
sh2add x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x7345bd007145b1e3 # initialize rs1
li x18, 0x099a4544f6aebf6b # initialize rs2
sh2add x3, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xad2b7d9a27bb922d # initialize rs1
li x19, 0xa8819dcb5527b826 # initialize rs2
sh2add x8, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x47245cd180f88e3e # initialize rs1
li x20, 0x5a462153ca994ab0 # initialize rs2
sh2add x25, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xd4ec3c9d8c90a5da # initialize rs1
li x21, 0xf20e60930e425da4 # initialize rs2
sh2add x16, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x5ec3938e69826a96 # initialize rs1
li x22, 0x3c1a4d34943cc17d # initialize rs2
sh2add x14, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xea2647a3e4a8b9a8 # initialize rs1
li x23, 0x6b936cd74670ee30 # initialize rs2
sh2add x5, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xef89c0f7a49f8870 # initialize rs1
li x24, 0x49e3bd592cad6742 # initialize rs2
sh2add x21, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xf0d8dbda139d02b4 # initialize rs1
li x25, 0xcdf2e2791f8e06f1 # initialize rs2
sh2add x17, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0x3e521274ca58a021 # initialize rs1
li x26, 0x839dd1ae511ee1c7 # initialize rs2
sh2add x19, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0x9ba023a6d7bc9099 # initialize rs1
li x27, 0x2a4b52a303658f78 # initialize rs2
sh2add x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x16633c7dba8c9810 # initialize rs1
li x28, 0x182755ab760546c7 # initialize rs2
sh2add x1, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x03189691f8405629 # initialize rs1
li x29, 0xbaa31f4ab066a6b4 # initialize rs2
sh2add x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x52a3204addcbf81e # initialize rs1
li x30, 0x5fbd5fc4bb91f0ca # initialize rs2
sh2add x14, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x473fd5de51898fe9 # initialize rs1
li x31, 0x100042ba0b1a431d # initialize rs2
sh2add x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0xd3d72a039f4f925b # initialize rs1
li x31, 0x4d3871ab8a36b228 # initialize rs2
sh2add x0, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xc53f22295ee36331 # initialize rs1
li x7, 0x9f8c538210b1a39f # initialize rs2
sh2add x1, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x5408cf8aa034e2cc # initialize rs1
li x8, 0x7cccb065d1d47b67 # initialize rs2
sh2add x2, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0xfa08fb56206396d3 # initialize rs1
li x28, 0xc613aa0b1bf57286 # initialize rs2
sh2add x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xfd06b315ec7b776e # initialize rs1
li x1, 0x04deb379eb70e3ba # initialize rs2
sh2add x4, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x274a941612871dd7 # initialize rs1
li x12, 0xf0ae4b3b8fa5891c # initialize rs2
sh2add x5, x1, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x35dc8e1a1f9f3bf0 # initialize rs1
li x26, 0xd076696c81d0fa07 # initialize rs2
sh2add x6, x19, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xf2761c98ada3dbaa # initialize rs1
li x30, 0xb51edaba8602c861 # initialize rs2
sh2add x7, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x8644e2245af57d92 # initialize rs1
li x8, 0x69b8cf6749567e83 # initialize rs2
sh2add x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x46900f0acbc0ef3e # initialize rs1
li x24, 0x4990a099e5f0d30a # initialize rs2
sh2add x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x0866312b86726629 # initialize rs1
li x9, 0x69f543f0a4964a4d # initialize rs2
sh2add x10, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xfdf2d46a2dda4b45 # initialize rs1
li x8, 0x3d408de1e97104a3 # initialize rs2
sh2add x11, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0xf00824e874625414 # initialize rs1
li x18, 0x6546656343356214 # initialize rs2
sh2add x12, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x888d7832a7a9c5e1 # initialize rs1
li x24, 0x32a8f54950fc4f56 # initialize rs2
sh2add x13, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x2884f6fd4e313e10 # initialize rs1
li x15, 0x7e53d1d57f8bd508 # initialize rs2
sh2add x14, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0x48b928e207674d30 # initialize rs1
li x18, 0x8c42fc522e201a0a # initialize rs2
sh2add x15, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xfbb4b7dd20b9ec62 # initialize rs1
li x3, 0x3aee33ac0362f34c # initialize rs2
sh2add x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0x69ba81f1d61ad28f # initialize rs1
li x20, 0xd37efc3f7907da31 # initialize rs2
sh2add x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x85e81738f8142489 # initialize rs1
li x23, 0x40ad729e41c983f0 # initialize rs2
sh2add x18, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x8a3e5003733c8a40 # initialize rs1
li x15, 0x10b9d7d9572f5807 # initialize rs2
sh2add x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x939f8148edec54cb # initialize rs1
li x25, 0x8d84291e7ee816b3 # initialize rs2
sh2add x20, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x84c392c54b7198e8 # initialize rs1
li x5, 0xc06d924ef2ffb0e1 # initialize rs2
sh2add x21, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x269bf726fd5440da # initialize rs1
li x24, 0x4fa6540d82833ec2 # initialize rs2
sh2add x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x4269f1b9f936ae7f # initialize rs1
li x3, 0x38a325f8972598fd # initialize rs2
sh2add x23, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x20eeb93333433068 # initialize rs1
li x18, 0xfd8e643837f99a4b # initialize rs2
sh2add x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x31, 0xe58c49478c26e133 # initialize rs1
li x26, 0x189388b2c9a57745 # initialize rs2
sh2add x25, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x26f1d095306a1ae1 # initialize rs1
li x2, 0xa9ab64d05cf9029c # initialize rs2
sh2add x26, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x362e2a5957831e1a # initialize rs1
li x27, 0xf237c114012aafa1 # initialize rs2
sh2add x27, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0xd2a27ebf49fa2e87 # initialize rs1
li x10, 0x2859bd0142df7954 # initialize rs2
sh2add x28, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0x9c6e072042af4635 # initialize rs1
li x31, 0xadc719cef0c12b6c # initialize rs2
sh2add x29, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x344a9491bcafcc54 # initialize rs1
li x6, 0x2494a4299624d793 # initialize rs2
sh2add x30, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xf5dbf662dcf15824 # initialize rs1
li x13, 0x574a30ad3737edcd # initialize rs2
sh2add x31, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x23, 0x043c14c48a8aa0f0 # initialize rs2
sh2add x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
li x14, 0x5496f8e4e1084109 # initialize rs2
sh2add x29, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x5a362acf07ac3f98 # initialize rs2
sh2add x21, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x21, 0x6c932462a94ad0ba # initialize rs2
sh2add x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x20, 0x32326ca82fdd1374 # initialize rs2
sh2add x29, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0xb59971afaccbec2b # initialize rs2
sh2add x30, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0xa28cb3de57f2f62f # initialize rs2
sh2add x24, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x19, 0xfa10d163ea5747ef # initialize rs2
sh2add x20, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x19, 0xc6ec38e2af4e86e6 # initialize rs2
sh2add x7, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x525d26c01ec47297 # initialize rs2
sh2add x26, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xa9a4ecb51218f6cb # initialize rs2
sh2add x26, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x20, 0x669ec7a8a2eac4a0 # initialize rs2
sh2add x21, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0xa209864ab2dac43f # initialize rs2
sh2add x28, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x2, 0x999b4a2f82b2a5bc # initialize rs2
sh2add x28, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0xb75e0161b49ff086 # initialize rs2
sh2add x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x2, 0xa5c0f113cf923a10 # initialize rs2
sh2add x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x832f8cfea706b227 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh2add x26, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x9e3115856ddb4e26 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x5, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x8b7a34543f2bab0e # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh2add x10, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0xbc5076da2c770763 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add x25, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x1d6822345a83df93 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x88243dd30e06bbf3 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh2add x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x043da2cda1480679 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh2add x16, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0xd0503fd17ca606aa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sh2add x26, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0x1833c564880d43cf # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x28, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0x6e7c76fb4c654485 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x2f8d3b6ac4f2ac76 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x6, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x40d5ceccb654ee1f # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh2add x27, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x1b1f7018851e43ca # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh2add x5, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x414b166432d38f26 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x21, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x935e67972ebe1c67 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh2add x18, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0x9daa7fd16938a9b5 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh2add x5, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh2add x2, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x3, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sh2add x11, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh2add x7, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x6, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sh2add x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add x1, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh2add x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sh2add x29, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sh2add x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x14, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x12, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x14, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh2add x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh2add x25, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh2add x10, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh2add x3, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add x3, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh2add x17, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add x9, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sh2add x14, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh2add x26, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh2add x9, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add x6, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh2add x31, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh2add x29, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x3, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x26, 0x0000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add x23, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sh2add x7, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh2add x6, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh2add x11, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x5, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh2add x28, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add x17, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x26, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh2add x30, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh2add x19, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh2add x10, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh2add x9, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sh2add x5, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh2add x10, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh2add x2, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x5, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh2add x30, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh2add x16, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sh2add x8, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh2add x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x29, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add x14, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x30, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh2add x11, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x6, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh2add x23, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh2add x22, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sh2add x31, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh2add x14, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x27, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh2add x6, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x13, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh2add x22, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh2add x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x7, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh2add x13, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add x12, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh2add x11, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x9, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add x21, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add x9, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x6, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh2add x1, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh2add x17, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh2add x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh2add x3, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh2add x23, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x28, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sh2add x18, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x30, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x7, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh2add x10, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x8, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh2add x17, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add x15, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh2add x11, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x19, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh2add x22, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x22, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sh2add x26, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh2add x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh2add x8, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh2add x21, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh2add x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sh2add x21, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7fffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x20, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh2add x23, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh2add x17, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x25, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh2add x17, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sh2add x7, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x20, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x6, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh2add x17, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh2add x19, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sh2add x15, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh2add x3, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh2add x26, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add x31, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh2add x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x17, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add x10, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh2add x16, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh2add x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x21, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh2add x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh2add x24, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x28, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh2add x7, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x27, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh2add x3, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh2add x18, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x31, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh2add x19, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh2add x18, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh2add x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sh2add x1, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh2add x8, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sh2add x18, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x15, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh2add x17, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add x22, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh2add x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh2add x28, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add x13, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x14, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh2add x12, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add x28, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh2add x27, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh2add x18, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh2add x27, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add x28, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sh2add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add x20, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sh2add x2, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sh2add x20, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x18, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh2add x2, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add x29, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh2add x19, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add x30, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh2add x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh2add x19, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh2add x8, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh2add x10, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh2add x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh2add x13, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh2add x19, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh2add x8, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh2add x29, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh2add x12, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh2add x30, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x6, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh2add x9, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh2add x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sh2add x26, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh2add x21, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sh2add x15, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh2add x16, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh2add x13, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sh2add x21, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh2add x29, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh2add x21, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh2add x30, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh2add x17, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh2add x30, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x10, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh2add x2, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x25, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh2add x10, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh2add x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x10, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh2add x20, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add x26, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh2add x26, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x14, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh2add x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh2add x10, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh2add x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add x16, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh2add x16, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh2add x15, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5555555555555555 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x23, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh2add x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh2add x26, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh2add x9, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh2add x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh2add x5, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh2add x7, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh2add x21, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x25, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh2add x29, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh2add x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh2add x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh2add x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh2add x16, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh2add x15, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sh2add x31, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh2add x25, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh2add x12, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh2add x1, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sh2add x24, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x19, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh2add x30, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh2add x6, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x19, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh2add x2, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh2add x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh2add x9, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add x8, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh2add x26, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x17, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh2add x17, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x25, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add x10, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x24, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sh2add x27, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sh2add x7, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sh2add x12, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh2add x8, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x3, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh2add x10, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sh2add x28, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh2add x19, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x2, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sh2add x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add x19, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh2add x15, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh2add x29, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x19, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x24, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x22, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh2add x2, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh2add x6, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh2add x24, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x10, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh2add x18, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x5, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh2add x7, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add x30, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh2add x29, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add x17, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh2add x26, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add x1, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add x12, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x14, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sh2add x5, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh2add x13, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x1, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh2add x31, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh2add x1, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xda4c8d38983d15f5 # initialize rs1
li x0, 0x61f1391d14f3c8d3 # initialize rs2
sh2add x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x2c04e58318f190b6 # initialize rs1
li x1, 0xbab2abb9c3bcae0f # initialize rs2
sh2add x5, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb56f1a0032d3a157 # initialize rs1
li x2, 0x34e0f47192a7ed51 # initialize rs2
sh2add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd30b20b29775d70b # initialize rs1
li x3, 0x5e8c569ed3bc90f2 # initialize rs2
sh2add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed4e4d508b379228 # initialize rs1
li x4, 0xf1cfa03a51d0ae3c # initialize rs2
sh2add x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa56fc2727f03d3d5 # initialize rs1
li x5, 0xad9ce09933295c2a # initialize rs2
sh2add x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x611bf42e8b80f63b # initialize rs1
li x6, 0x20fb835838ce3a35 # initialize rs2
sh2add x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5160fe5046283d15 # initialize rs1
li x7, 0x0bf2c3b14a054343 # initialize rs2
sh2add x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x40f479245e25e6d7 # initialize rs1
li x8, 0x20026e1af16c7c51 # initialize rs2
sh2add x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x98135dee1285639c # initialize rs1
li x9, 0x8212cd4e6e9a79c4 # initialize rs2
sh2add x1, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd72b0fa0a169e0b3 # initialize rs1
li x10, 0x8fba4986dda1e02f # initialize rs2
sh2add x30, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x812824fea24f93ee # initialize rs1
li x11, 0xf75fc044921a153b # initialize rs2
sh2add x28, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x36ea516e55275626 # initialize rs1
li x12, 0xc1615c5b72577368 # initialize rs2
sh2add x7, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0a45e62a404b9528 # initialize rs1
li x13, 0x173ea2cd7bff05a2 # initialize rs2
sh2add x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5c3122f06c3c3ec5 # initialize rs1
li x14, 0xd3ce21468de6dde9 # initialize rs2
sh2add x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd7a40ff42b580fde # initialize rs1
li x15, 0xd6ec7cd9abfbc1c2 # initialize rs2
sh2add x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1773aece27a44529 # initialize rs1
li x16, 0x18ff3b000ab1a500 # initialize rs2
sh2add x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x16804de0afe0003b # initialize rs1
li x17, 0x72ed326352640aa0 # initialize rs2
sh2add x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7a192d2c4eb6f3ca # initialize rs1
li x18, 0x6e6745d25ef4ec5c # initialize rs2
sh2add x21, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5a0925a6d1e1e349 # initialize rs1
li x19, 0xeab5978d2527a4c9 # initialize rs2
sh2add x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe262343fdc97ccd5 # initialize rs1
li x20, 0x0fd17f443dee0bd2 # initialize rs2
sh2add x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc8eb331f29466be8 # initialize rs1
li x21, 0xf15c3937952f5cee # initialize rs2
sh2add x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7fc9fef3bc8933f7 # initialize rs1
li x22, 0x08b1fe886c6c56ce # initialize rs2
sh2add x1, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf8718d868a32be61 # initialize rs1
li x23, 0x1f67cf0a06aba61d # initialize rs2
sh2add x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9d68e81c65696752 # initialize rs1
li x24, 0x341ab83ce78f5fa8 # initialize rs2
sh2add x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x44d2c2974b1b1b91 # initialize rs1
li x25, 0xf276f22988349bf1 # initialize rs2
sh2add x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x96b0502d82d55fba # initialize rs1
li x26, 0x5ea1e40de3f11f48 # initialize rs2
sh2add x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc464ab1847db471d # initialize rs1
li x27, 0x5d59ac3ac356400b # initialize rs2
sh2add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x78300abc308e25dd # initialize rs1
li x28, 0x544889373ea3e6ca # initialize rs2
sh2add x14, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4a025fe51b0f3b47 # initialize rs1
li x29, 0xcaa78788cead9c9e # initialize rs2
sh2add x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa23e2b7350184c87 # initialize rs1
li x30, 0x714c408396f95082 # initialize rs2
sh2add x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd0f0e396b3da3a74 # initialize rs1
li x31, 0xf785a9366b48eb78 # initialize rs2
sh2add x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfcd6078b320faead # initialize rs1
li x10, 0xc7a3983b13649843 # initialize rs2
sh2add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5956e3791fb39a7e # initialize rs1
li x6, 0xe7cd97f4dfc5b1f1 # initialize rs2
sh2add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa46bc3f7dd3388d9 # initialize rs1
li x26, 0x4e37d4eb4694eb3c # initialize rs2
sh2add x2, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf68e349c9efa24df # initialize rs1
li x17, 0xbb3fa2ecdecf9c83 # initialize rs2
sh2add x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x32da1eb05457d869 # initialize rs1
li x13, 0x967823fac3f051fe # initialize rs2
sh2add x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x045be58372657126 # initialize rs1
li x23, 0xaa3fa25ef6a01fef # initialize rs2
sh2add x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb3faa7de602c84fb # initialize rs1
li x20, 0x6854d88cab849b82 # initialize rs2
sh2add x6, x6, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x495c22c85df651e6 # initialize rs1
li x11, 0x8e92e08049538bc6 # initialize rs2
sh2add x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd6035aa8ad37facd # initialize rs1
li x21, 0xc2603370f761f4b0 # initialize rs2
sh2add x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x18bcd3164777cde0 # initialize rs1
li x6, 0xe5c29ea9ce817326 # initialize rs2
sh2add x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb0ac2f0c1c00474d # initialize rs1
li x16, 0xbd7e8adcdec18193 # initialize rs2
sh2add x10, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x392753663c288f70 # initialize rs1
li x21, 0x01c806fd911c0861 # initialize rs2
sh2add x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9e44d35502015ddb # initialize rs1
li x31, 0x18afdfba99578e37 # initialize rs2
sh2add x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x91619edb61724db0 # initialize rs1
li x25, 0xcdbe1c86603badad # initialize rs2
sh2add x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd9eafc30fc432550 # initialize rs1
li x19, 0xa8ddac2b5d863345 # initialize rs2
sh2add x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8b6c0733bf37254c # initialize rs1
li x14, 0x5b0864ad64e1e04b # initialize rs2
sh2add x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xad3ff167cbfeaea9 # initialize rs1
li x29, 0xb8e8ca98e93eac89 # initialize rs2
sh2add x16, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5f1fe54fabb9cf48 # initialize rs1
li x14, 0x7eee64ac278e36d8 # initialize rs2
sh2add x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbc249d9f124e765f # initialize rs1
li x28, 0xaa0578911b50d957 # initialize rs2
sh2add x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x66fbcee33391c4da # initialize rs1
li x7, 0xa5045d174e1b7e52 # initialize rs2
sh2add x19, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x869c9e93939b352d # initialize rs1
li x11, 0x63b98b0c37840274 # initialize rs2
sh2add x20, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7fd088a4ed1083dd # initialize rs1
li x1, 0x6eda074337b9884e # initialize rs2
sh2add x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6b172e10d275ee07 # initialize rs1
li x20, 0x276a9ae5a8df624d # initialize rs2
sh2add x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc6ba72f750e152fa # initialize rs1
li x15, 0x6248e3f255660caf # initialize rs2
sh2add x23, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x699f2d0f05cc9748 # initialize rs1
li x30, 0x62ead10ad2d84e5d # initialize rs2
sh2add x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe0496a1c8ab9cce8 # initialize rs1
li x19, 0xd4327180d6626043 # initialize rs2
sh2add x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb787f721b7c55963 # initialize rs1
li x6, 0x9d8a8ca67a6d0f6c # initialize rs2
sh2add x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x39bcb90f54282334 # initialize rs1
li x22, 0xd3adb4a1cd7fdc3a # initialize rs2
sh2add x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc8ae167699eba485 # initialize rs1
li x1, 0x273ebeabb77a9eaf # initialize rs2
sh2add x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x62bc3b438e5c1718 # initialize rs1
li x26, 0xca8ddbe003320876 # initialize rs2
sh2add x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x000e8b2a45b596b6 # initialize rs1
li x10, 0x5d0e5a7834a59523 # initialize rs2
sh2add x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x303f5521bee670cd # initialize rs1
li x2, 0x49fbe00eb13bb992 # initialize rs2
sh2add x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x5, 0xf49b2c46f5b7a90d # initialize rs1
li x0, 0x259f7989e1755b56 # initialize rs2
sh2add x0, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x24, 0xb8f1e0efbf558d00 # initialize rs1
li x1, 0x2417c0d15084e438 # initialize rs2
sh2add x1, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x5d58307f7cf18fc1 # initialize rs1
li x2, 0x2d81db721845ef2a # initialize rs2
sh2add x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0xabdfb4890c71c30f # initialize rs1
li x3, 0xbb279c2f444fbf2b # initialize rs2
sh2add x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xbe3ef855b9951148 # initialize rs1
li x4, 0x2e584a391e0a75c9 # initialize rs2
sh2add x4, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x95de940e0b0579ab # initialize rs1
li x5, 0x2d5672f3a59e6131 # initialize rs2
sh2add x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x07cdaf49589fdca8 # initialize rs1
li x6, 0xf7c4307c319db301 # initialize rs2
sh2add x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x0d8527740ce9578d # initialize rs1
li x7, 0x632d704a2c4dfdcf # initialize rs2
sh2add x7, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x12, 0x0a9fc005f8bf5fcb # initialize rs1
li x8, 0x231bac71a79bd8f8 # initialize rs2
sh2add x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x13, 0x2f6c4bb70762f785 # initialize rs1
li x9, 0xf545b8e4fd502c0f # initialize rs2
sh2add x9, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x3, 0x6111512a37f5d083 # initialize rs1
li x10, 0xa1967137f7417f10 # initialize rs2
sh2add x10, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0x7b528b1da1f3068f # initialize rs1
li x11, 0xef0137e66e4cf480 # initialize rs2
sh2add x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x26, 0x516bfedc20959ab3 # initialize rs1
li x12, 0xaab3187de98cfd7e # initialize rs2
sh2add x12, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0xb574d11df60a5341 # initialize rs1
li x13, 0xdaa8df1732df85da # initialize rs2
sh2add x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0xb7118424f4ff14e3 # initialize rs1
li x14, 0xfd1df7f080639e87 # initialize rs2
sh2add x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0xfc66e4b9523f9967 # initialize rs1
li x15, 0xfbbc3b6b45f017da # initialize rs2
sh2add x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x4a5597e08b4d70e6 # initialize rs1
li x16, 0x24cae6251f366b63 # initialize rs2
sh2add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0x5a82a6874c218adf # initialize rs1
li x17, 0xeac620f6b9f9b103 # initialize rs2
sh2add x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0x16df3bfdfc42963a # initialize rs1
li x18, 0xa8b8dd03f14d5f9d # initialize rs2
sh2add x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x8a11899443b7af5a # initialize rs1
li x19, 0x62b3cb0c67588c84 # initialize rs2
sh2add x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0xaf675d998086b791 # initialize rs1
li x20, 0x9b322f767e2bc7ea # initialize rs2
sh2add x20, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xa4757cc3f4589e57 # initialize rs1
li x21, 0xb62b8e95072de1f6 # initialize rs2
sh2add x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0xbe5a637131733615 # initialize rs1
li x22, 0x5c100aec01a8f46d # initialize rs2
sh2add x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x17, 0xcfc16325db75adc5 # initialize rs1
li x23, 0x12ed539337330000 # initialize rs2
sh2add x23, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x15, 0xe10ed5c11e804f56 # initialize rs1
li x24, 0x215a4af9fd5a9ead # initialize rs2
sh2add x24, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0x299ec1355f7fca89 # initialize rs1
li x25, 0x336ac6faff7c61bb # initialize rs2
sh2add x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x10477c1a71197f92 # initialize rs1
li x26, 0x85a774817e7e0255 # initialize rs2
sh2add x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x0320738c535d7d9a # initialize rs1
li x27, 0x024c244efd7149d3 # initialize rs2
sh2add x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0xb659b4a75e977986 # initialize rs1
li x28, 0xc549cd07cde11ba6 # initialize rs2
sh2add x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x080c6eafe0fdabe7 # initialize rs1
li x29, 0xda8507bbada627fa # initialize rs2
sh2add x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x21, 0x086fab720bf478f8 # initialize rs1
li x30, 0x727cd6cbf0527aef # initialize rs2
sh2add x30, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0xc424f930e79f724d # initialize rs1
li x31, 0xb2ec0e4cdcfa7d7c # initialize rs2
sh2add x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa3816e0082832685 # initialize rs1
li x0, 0x5e56950717a836ea # initialize rs2
sh2add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x06c2431f2ce61138 # initialize rs1
li x1, 0x4f0e1115e0e6e153 # initialize rs2
sh2add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1e9bcb875c50d347 # initialize rs1
li x2, 0xcd9ed7c0d3a1741f # initialize rs2
sh2add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb7508c41bbc2fc84 # initialize rs1
li x3, 0xe7e85080fbe7308e # initialize rs2
sh2add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd16c2a36975bc075 # initialize rs1
li x4, 0x63d35f0597c9f400 # initialize rs2
sh2add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x157989b272b2c440 # initialize rs1
li x5, 0x775fb3522194831c # initialize rs2
sh2add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xccca2df7b91f9363 # initialize rs1
li x6, 0xcc8544c8748d810b # initialize rs2
sh2add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x587d46a77c020ac7 # initialize rs1
li x7, 0x2e97275f01d96494 # initialize rs2
sh2add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x605d16593d87e10a # initialize rs1
li x8, 0x2f7b35309e9b1ec4 # initialize rs2
sh2add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7d3af2ca1baed8fc # initialize rs1
li x9, 0x4abb35f34faeabfe # initialize rs2
sh2add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc81ee7a239888176 # initialize rs1
li x10, 0x9604c446c05ef756 # initialize rs2
sh2add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2d00965a7bae71a8 # initialize rs1
li x11, 0x71572d29c925282b # initialize rs2
sh2add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2b287d70fd874006 # initialize rs1
li x12, 0x5dd469fc1315b9b0 # initialize rs2
sh2add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x96eec385766dd88d # initialize rs1
li x13, 0x861547b4d3af53dd # initialize rs2
sh2add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x55b6dd61d46d6dcf # initialize rs1
li x14, 0x33786c96953c9d0a # initialize rs2
sh2add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf1194fe2b34a8bf1 # initialize rs1
li x15, 0x1a4bbc969d1f8a96 # initialize rs2
sh2add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x98909e1bbc460bf4 # initialize rs1
li x16, 0x19b912edb0195059 # initialize rs2
sh2add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3e5f728cdc242790 # initialize rs1
li x17, 0x13f3bd4723050547 # initialize rs2
sh2add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7d197622831ba4c2 # initialize rs1
li x18, 0x47ddd3f2b66ed4bf # initialize rs2
sh2add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7dd6ef4394bd5561 # initialize rs1
li x19, 0x03fba98338592408 # initialize rs2
sh2add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd218d4b386d49431 # initialize rs1
li x20, 0x18fae92faef41514 # initialize rs2
sh2add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5a89f47492bc0b82 # initialize rs1
li x21, 0x06e80b08c11d50c1 # initialize rs2
sh2add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4b5b4ec07fa7046e # initialize rs1
li x22, 0xe3f8da54c0c722f4 # initialize rs2
sh2add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4288e496bedceafe # initialize rs1
li x23, 0x2357089955768f8f # initialize rs2
sh2add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x387a399221c6434b # initialize rs1
li x24, 0x2fc4ad23f6c93d6f # initialize rs2
sh2add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf0c711eb9ba0b202 # initialize rs1
li x25, 0x41462bd0d4c49367 # initialize rs2
sh2add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x32505e7efb99b93d # initialize rs1
li x26, 0xdc2cecc3c171ef99 # initialize rs2
sh2add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4fcfa03a6077de9b # initialize rs1
li x27, 0x557eb8e74a08eedd # initialize rs2
sh2add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8c63177c1d4bd469 # initialize rs1
li x28, 0xe1c0a720c7c99b7e # initialize rs2
sh2add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf7619241f11d1e04 # initialize rs1
li x29, 0xc47aea29b2ba548d # initialize rs2
sh2add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xeff1f4b404e98789 # initialize rs1
li x30, 0x751a9665136bc614 # initialize rs2
sh2add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8a667255bfc51fd0 # initialize rs1
li x31, 0x4a84e9ab2acaadf0 # initialize rs2
sh2add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x6, x26 # perform first operation
sh2add x27, x13, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x13, x8 # perform first operation
sh2add x28, x18, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x7, x9 # perform first operation
sh2add x3, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x30, x11 # perform first operation
sh2add x30, x22, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x13, x11 # perform first operation
sh2add x31, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x8, x26 # perform first operation
sh2add x11, x31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x23, x19 # perform first operation
sh2add x16, x22, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x10, x21 # perform first operation
sh2add x18, x25, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x24, x10 # perform first operation
sh2add x30, x26, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x3, x2 # perform first operation
sh2add x3, x27, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x6, x10 # perform first operation
sh2add x10, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x28, x9 # perform first operation
sh2add x25, x29, x3 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-slli.uw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x816d0baaa90b69c5 # initialize rs1
slli.uw x27, x0, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x431d07d450b3c14a # initialize rs1
slli.uw x5, x1, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa96fa1ecf4b8cdef # initialize rs1
slli.uw x18, x2, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9a95584e70c863c9 # initialize rs1
slli.uw x2, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7fb8e05f235f5054 # initialize rs1
slli.uw x25, x4, 48 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0x9b891afdd8b1bbb0 # initialize rs1
slli.uw x27, x5, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9356bb270ff371c9 # initialize rs1
slli.uw x24, x6, 62 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3fcf6fe033d212cf # initialize rs1
slli.uw x22, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2147554f93d60a6b # initialize rs1
slli.uw x24, x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xae63fa31e0b3b2ba # initialize rs1
slli.uw x13, x9, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2b29e01cb16af802 # initialize rs1
slli.uw x27, x10, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0f0ddf62a91510d4 # initialize rs1
slli.uw x19, x11, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xeac2b318a8c44970 # initialize rs1
slli.uw x23, x12, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x42b27d806c9d8019 # initialize rs1
slli.uw x31, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe09d78292a6e47e8 # initialize rs1
slli.uw x29, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf4b0fca8d9ed2ba2 # initialize rs1
slli.uw x3, x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xedf53aff420ebb6a # initialize rs1
slli.uw x14, x16, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc249a2f5451e8dc2 # initialize rs1
slli.uw x10, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5c76db54bac94e2f # initialize rs1
slli.uw x19, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1abff99d999206e3 # initialize rs1
slli.uw x3, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x88f0cf814247b62c # initialize rs1
slli.uw x25, x20, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7f624b23015b6b1f # initialize rs1
slli.uw x29, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x39b3bdba8d332326 # initialize rs1
slli.uw x26, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xaef6153a6d0cc41d # initialize rs1
slli.uw x5, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc69a7a49192a11a4 # initialize rs1
slli.uw x20, x24, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3e887a40762c8e35 # initialize rs1
slli.uw x8, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x99d54dda480e7c14 # initialize rs1
slli.uw x9, x26, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x40be1c767dcedb86 # initialize rs1
slli.uw x14, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x836313c82165d35d # initialize rs1
slli.uw x5, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb7d6ea36314de275 # initialize rs1
slli.uw x24, x29, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x318c6ad7974789b0 # initialize rs1
slli.uw x29, x30, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x248598d8f54f961e # initialize rs1
slli.uw x2, x31, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xa9ba315d54f3be47 # initialize rs1
slli.uw x0, x18, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xdd56f4512754e6e0 # initialize rs1
slli.uw x1, x17, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xc915119b3b54dfa7 # initialize rs1
slli.uw x2, x19, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x2057c2b192d500fe # initialize rs1
slli.uw x3, x13, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xde2077ed263bd9af # initialize rs1
slli.uw x4, x6, 41 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xfe56d1aa5cda6113 # initialize rs1
slli.uw x5, x30, 36 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x594d8b48ea54cf21 # initialize rs1
slli.uw x6, x27, 36 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x6daf6fd768dfeef6 # initialize rs1
slli.uw x7, x23, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0x875e18ef3fd343e1 # initialize rs1
slli.uw x8, x1, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xfe60a0184df057bc # initialize rs1
slli.uw x9, x30, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x1a0dea7d74f4ea32 # initialize rs1
slli.uw x10, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xb7deea11c8657cc0 # initialize rs1
slli.uw x11, x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xb6b1f79d4f512f47 # initialize rs1
slli.uw x12, x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xba68dd42d644b5f1 # initialize rs1
slli.uw x13, x10, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x5e004973175b9832 # initialize rs1
slli.uw x14, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xe22cc26590e30cdd # initialize rs1
slli.uw x15, x21, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x54e738cf2846bc58 # initialize rs1
slli.uw x16, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x96a9fce3d5e33d31 # initialize rs1
slli.uw x17, x14, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x871e1c3272ea0d85 # initialize rs1
slli.uw x18, x21, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x564edf4a662f3287 # initialize rs1
slli.uw x19, x31, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x6104232ae5338e83 # initialize rs1
slli.uw x20, x17, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x31, 0xea366b98371d1e9a # initialize rs1
slli.uw x21, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x4c533f80f51c61a9 # initialize rs1
slli.uw x22, x23, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x723378396022d839 # initialize rs1
slli.uw x23, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x582d1352134ae5a8 # initialize rs1
slli.uw x24, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x32d8374d8281961e # initialize rs1
slli.uw x25, x14, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xd595dd9fd7b93b9b # initialize rs1
slli.uw x26, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xbebe186231f9353d # initialize rs1
slli.uw x27, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x82ebf26ee051e14f # initialize rs1
slli.uw x28, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x2094f344314fa376 # initialize rs1
slli.uw x29, x11, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x86875ce427729611 # initialize rs1
slli.uw x30, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0xf0cfac14db5ea9f0 # initialize rs1
slli.uw x31, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
slli.uw x27, x19, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
slli.uw x1, x18, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
slli.uw x10, x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
slli.uw x29, x31, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
slli.uw x2, x3, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
slli.uw x7, x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
slli.uw x23, x25, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
slli.uw x23, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
slli.uw x30, x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
slli.uw x8, x22, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli.uw x1, x16, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
slli.uw x31, x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
slli.uw x2, x29, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
slli.uw x8, x6, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
slli.uw x31, x30, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x31, 0x0000000100000001 # initialize rs1
slli.uw x10, x31, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4cc0fec3568bc4cf # initialize rs1
slli.uw x0, x0, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb8e837e3a1774e9a # initialize rs1
slli.uw x1, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x954ff4b1eb954a60 # initialize rs1
slli.uw x2, x2, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xee42de9f3a074215 # initialize rs1
slli.uw x3, x3, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x61e9a2799ef33de5 # initialize rs1
slli.uw x4, x4, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14ccf83ac88cf1da # initialize rs1
slli.uw x5, x5, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7ca4da5bf0bbde48 # initialize rs1
slli.uw x6, x6, 45 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc7ad1035f6023103 # initialize rs1
slli.uw x7, x7, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcfae4dc1111e5d12 # initialize rs1
slli.uw x8, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8ef4657dae05fb8b # initialize rs1
slli.uw x9, x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x01e67f8f86858cbc # initialize rs1
slli.uw x10, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3055caf3ab272d06 # initialize rs1
slli.uw x11, x11, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd01d06a343c6839a # initialize rs1
slli.uw x12, x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5dd4c0f435c9b30a # initialize rs1
slli.uw x13, x13, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbfc112cf279f423a # initialize rs1
slli.uw x14, x14, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa0bceb42630d04cb # initialize rs1
slli.uw x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba683793ae8931ab # initialize rs1
slli.uw x16, x16, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9a5cdfcd12a3790d # initialize rs1
slli.uw x17, x17, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa31d36edd5e4bd36 # initialize rs1
slli.uw x18, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf854403ac4608434 # initialize rs1
slli.uw x19, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9b37fd8a062aa342 # initialize rs1
slli.uw x20, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xdfc9e968aa5e0c45 # initialize rs1
slli.uw x21, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x800cdd06b40ae738 # initialize rs1
slli.uw x22, x22, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x049b632cca6c4859 # initialize rs1
slli.uw x23, x23, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe6df5a76576e16e9 # initialize rs1
slli.uw x24, x24, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x42fcc6842cef7c17 # initialize rs1
slli.uw x25, x25, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0d973773a94c384e # initialize rs1
slli.uw x26, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2f09da025b56cc45 # initialize rs1
slli.uw x27, x27, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x34899cd2262eb839 # initialize rs1
slli.uw x28, x28, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd7b66e58e503635f # initialize rs1
slli.uw x29, x29, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc3ec1c56b90d2037 # initialize rs1
slli.uw x30, x30, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8a9ebe2beee75698 # initialize rs1
slli.uw x31, x31, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x27, 0xe5003e5816b65527 # initialize rs1
slli.uw x21, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_uimm (Test bit = 1)
li x15, 0xbcb7fb69cf51c15e # initialize rs1
slli.uw x25, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cp_uimm (Test bit = 2)
li x22, 0x5fd7681e7acbbe26 # initialize rs1
slli.uw x11, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cp_uimm (Test bit = 3)
li x16, 0xa3547917cfcfd275 # initialize rs1
slli.uw x12, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x552ed78780c750bb # initialize rs1
slli.uw x20, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cp_uimm (Test bit = 5)
li x9, 0x10eed149ab598238 # initialize rs1
slli.uw x27, x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_uimm (Test bit = 6)
li x3, 0xd260277746317b3b # initialize rs1
slli.uw x12, x3, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_uimm (Test bit = 7)
li x9, 0xf281aa2fe49b71d7 # initialize rs1
slli.uw x17, x9, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cp_uimm (Test bit = 8)
li x15, 0x38011237cee227b3 # initialize rs1
slli.uw x1, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cp_uimm (Test bit = 9)
li x16, 0xb4770601d1ef0b8d # initialize rs1
slli.uw x11, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cp_uimm (Test bit = 10)
li x1, 0x250a05ea5919c7f0 # initialize rs1
slli.uw x20, x1, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cp_uimm (Test bit = 11)
li x26, 0x0cc658d41e7aa6e7 # initialize rs1
slli.uw x17, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cp_uimm (Test bit = 12)
li x17, 0x2c40b5c7c00ca1c6 # initialize rs1
slli.uw x30, x17, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cp_uimm (Test bit = 13)
li x31, 0x42a950556594ae30 # initialize rs1
slli.uw x13, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cp_uimm (Test bit = 14)
li x22, 0xc1dd82db089fc6e8 # initialize rs1
slli.uw x30, x22, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cp_uimm (Test bit = 15)
li x8, 0x26addb00d216dc24 # initialize rs1
slli.uw x5, x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cp_uimm (Test bit = 16)
li x22, 0x8fa59bdf77cd82fd # initialize rs1
slli.uw x3, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cp_uimm (Test bit = 17)
li x1, 0x391743b6dba5481f # initialize rs1
slli.uw x29, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cp_uimm (Test bit = 18)
li x17, 0xfebe975fe27a3d52 # initialize rs1
slli.uw x11, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cp_uimm (Test bit = 19)
li x14, 0x9817faf3f7baaf4b # initialize rs1
slli.uw x15, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cp_uimm (Test bit = 20)
li x24, 0xec5298950cb742ec # initialize rs1
slli.uw x11, x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cp_uimm (Test bit = 21)
li x25, 0xee958677770516c9 # initialize rs1
slli.uw x24, x25, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cp_uimm (Test bit = 22)
li x10, 0xbe610d0c1a954cdb # initialize rs1
slli.uw x20, x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cp_uimm (Test bit = 23)
li x11, 0xcc4cb44921fe2c33 # initialize rs1
slli.uw x18, x11, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cp_uimm (Test bit = 24)
li x9, 0xffaad60d40b1192f # initialize rs1
slli.uw x5, x9, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cp_uimm (Test bit = 25)
li x27, 0xec81bb661f2ac526 # initialize rs1
slli.uw x23, x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cp_uimm (Test bit = 26)
li x23, 0xbdce32dccb1b5dbd # initialize rs1
slli.uw x29, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x850604c928eb490b # initialize rs1
slli.uw x20, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cp_uimm (Test bit = 28)
li x26, 0x2fb430105646b9b7 # initialize rs1
slli.uw x16, x26, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xab1aff780a28d04a # initialize rs1
slli.uw x11, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cp_uimm (Test bit = 30)
li x17, 0x1728bbe32b3c55a4 # initialize rs1
slli.uw x2, x17, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cp_uimm (Test bit = 31)
li x2, 0x76a3ccfcecaf78b7 # initialize rs1
slli.uw x28, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cp_uimm (Test bit = 32)
li x20, 0x3bb1e760a2b63960 # initialize rs1
slli.uw x31, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cp_uimm (Test bit = 33)
li x19, 0x9ca73846b36593cb # initialize rs1
slli.uw x28, x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cp_uimm (Test bit = 34)
li x9, 0xcf4fc6d50b4186fb # initialize rs1
slli.uw x25, x9, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cp_uimm (Test bit = 35)
li x30, 0x09e10d34cda29263 # initialize rs1
slli.uw x3, x30, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cp_uimm (Test bit = 36)
li x24, 0xbc2a0bc85c4b8f1d # initialize rs1
slli.uw x8, x24, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cp_uimm (Test bit = 37)
li x8, 0x2f7260e9ffd78525 # initialize rs1
slli.uw x21, x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cp_uimm (Test bit = 38)
li x8, 0x11c870e6d0f164f8 # initialize rs1
slli.uw x29, x8, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cp_uimm (Test bit = 39)
li x19, 0x2ec48d8e84f4e236 # initialize rs1
slli.uw x29, x19, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cp_uimm (Test bit = 40)
li x10, 0x07aadd0b1a946a1f # initialize rs1
slli.uw x11, x10, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cp_uimm (Test bit = 41)
li x16, 0xef83f778f727e1ae # initialize rs1
slli.uw x2, x16, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cp_uimm (Test bit = 42)
li x16, 0xe5c575ab2d9886ab # initialize rs1
slli.uw x24, x16, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cp_uimm (Test bit = 43)
li x28, 0x2a05aa36f225df60 # initialize rs1
slli.uw x25, x28, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cp_uimm (Test bit = 44)
li x19, 0x4932a244d7e234c4 # initialize rs1
slli.uw x9, x19, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1248)

# Testcase cp_uimm (Test bit = 45)
li x31, 0x3f5ce97abcd215ac # initialize rs1
slli.uw x2, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cp_uimm (Test bit = 46)
li x14, 0xb53d96e84ff71e56 # initialize rs1
slli.uw x26, x14, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1264)

# Testcase cp_uimm (Test bit = 47)
li x31, 0x8e21ed2a1f638328 # initialize rs1
slli.uw x28, x31, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cp_uimm (Test bit = 48)
li x15, 0x94b2706bbbe3e9b6 # initialize rs1
slli.uw x31, x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cp_uimm (Test bit = 49)
li x2, 0xe831140fd007cb66 # initialize rs1
slli.uw x5, x2, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cp_uimm (Test bit = 50)
li x13, 0xa3f031bd4dc703e3 # initialize rs1
slli.uw x24, x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1296)

# Testcase cp_uimm (Test bit = 51)
li x1, 0x402cdb718f52c981 # initialize rs1
slli.uw x6, x1, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cp_uimm (Test bit = 52)
li x30, 0xc316150ad04c54b8 # initialize rs1
slli.uw x13, x30, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cp_uimm (Test bit = 53)
li x6, 0x92c95327d876c4b0 # initialize rs1
slli.uw x22, x6, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

# Testcase cp_uimm (Test bit = 54)
li x15, 0x1945bcf28825d8d0 # initialize rs1
slli.uw x6, x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cp_uimm (Test bit = 55)
li x19, 0x11e6222d4b32ca69 # initialize rs1
slli.uw x23, x19, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cp_uimm (Test bit = 56)
li x13, 0x5afce2fb27aa93c1 # initialize rs1
slli.uw x30, x13, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cp_uimm (Test bit = 57)
li x28, 0x215467bdf3d8a81a # initialize rs1
slli.uw x5, x28, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cp_uimm (Test bit = 58)
li x8, 0xfb5711d5c8eddedd # initialize rs1
slli.uw x25, x8, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cp_uimm (Test bit = 59)
li x9, 0xa4b92f6880a7b5c1 # initialize rs1
slli.uw x12, x9, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1368)

# Testcase cp_uimm (Test bit = 60)
li x17, 0x73ee37beb4c3e852 # initialize rs1
slli.uw x15, x17, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cp_uimm (Test bit = 61)
li x26, 0x0e88b4cc53ff2c36 # initialize rs1
slli.uw x13, x26, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cp_uimm (Test bit = 62)
li x6, 0xa89f874bcd7d2dc6 # initialize rs1
slli.uw x25, x6, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1392)

# Testcase cp_uimm (Test bit = 63)
li x9, 0xba1ae07c822f0a2d # initialize rs1
slli.uw x13, x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x6, x11 # perform first operation
slli.uw x9, x1, 47 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x6, x24 # perform first operation
slli.uw x14, x8, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x16, x19 # perform first operation
slli.uw x2, x24, 36 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x11, x12 # perform first operation
slli.uw x13, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x24, x2 # perform first operation
slli.uw x24, x5, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x1, x29 # perform first operation
slli.uw x3, x5, 44 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x14, x1 # perform first operation
slli.uw x12, x19, 46 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x13, x31 # perform first operation
slli.uw x19, x10, 55 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x27, x31 # perform first operation
slli.uw x9, x5, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x9 # perform first operation
slli.uw x10, x5, 32 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x31, x10 # perform first operation
slli.uw x10, x21, 34 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x29, x15 # perform first operation
slli.uw x16, x6, 21 # perform second (triggering) operation

#.EQU SIGSIZE,1408


// ******************
// Tests from: WALLY-COV-sh3add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x135b5fc5f7752fef # initialize rs1
li x11, 0x35c03e863b621176 # initialize rs2
sh3add x21, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5a337ec508a5d547 # initialize rs1
li x14, 0x2e26f037582f4bf8 # initialize rs2
sh3add x3, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfc738c0072e82421 # initialize rs1
li x6, 0xd6431cf5a1328371 # initialize rs2
sh3add x13, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8dc01aabb4974a6d # initialize rs1
li x5, 0x7d35fb52d4374874 # initialize rs2
sh3add x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0dd6437787feb183 # initialize rs1
li x21, 0x933d3f2c2038502a # initialize rs2
sh3add x27, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfbed1117ac7c918c # initialize rs1
li x25, 0xf501134d1232e7bd # initialize rs2
sh3add x27, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x81ed13c2348de2c9 # initialize rs1
li x4, 0xa821a752cd091a85 # initialize rs2
sh3add x26, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5ad39029f4841c44 # initialize rs1
li x12, 0x090046abe7977bbb # initialize rs2
sh3add x25, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x37145ce32d79d32b # initialize rs1
li x14, 0x4707f50924c78ac9 # initialize rs2
sh3add x22, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6f8ecd727951ecb4 # initialize rs1
li x30, 0x6f61e4a9dc9f4628 # initialize rs2
sh3add x24, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc59d9b133190ad61 # initialize rs1
li x16, 0x2ff7b6d7ff1ab9fb # initialize rs2
sh3add x24, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x624fb3477feb93eb # initialize rs1
li x15, 0x907903e636ad5bee # initialize rs2
sh3add x21, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x972da780350625b1 # initialize rs1
li x20, 0xf4cdd52ceb6a8ea1 # initialize rs2
sh3add x17, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x63e777100892ed3e # initialize rs1
li x6, 0xa51a766b596a46d7 # initialize rs2
sh3add x9, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5c8990023d54f9d1 # initialize rs1
li x9, 0x8a419df83f593c47 # initialize rs2
sh3add x26, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x3e353a7cbef3c940 # initialize rs1
li x25, 0x9a7cc38f640056e7 # initialize rs2
sh3add x30, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4344f00f7b0eff70 # initialize rs1
li x24, 0x3134f734bb936931 # initialize rs2
sh3add x26, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x229047c6619255b8 # initialize rs1
li x27, 0x06bb9c540451f025 # initialize rs2
sh3add x5, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xccf21ff7a7124e26 # initialize rs1
li x9, 0xc6173fa70c715189 # initialize rs2
sh3add x27, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb609061d1e3cd37e # initialize rs1
li x15, 0x3706647dc2688bb1 # initialize rs2
sh3add x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9816ff102bbcff94 # initialize rs1
li x5, 0x04b34f43a6a27c7e # initialize rs2
sh3add x24, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x77d143369878b17e # initialize rs1
li x19, 0x0cae77101773ebf9 # initialize rs2
sh3add x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9ae65938b2bfe67f # initialize rs1
li x14, 0x5a40ef18d97109a0 # initialize rs2
sh3add x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x39933d5ed018fe8c # initialize rs1
li x12, 0xc59cce5578822b8f # initialize rs2
sh3add x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4a587e01bac5645d # initialize rs1
li x5, 0x7653b1f6568c7e1b # initialize rs2
sh3add x14, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7f5baa9f653b3540 # initialize rs1
li x18, 0xab58f5381e8b22a8 # initialize rs2
sh3add x21, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x48a62eb89ef31348 # initialize rs1
li x1, 0x7e40b4d842b5f032 # initialize rs2
sh3add x31, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcc32647b12af6f1b # initialize rs1
li x3, 0x3d537fcf6e87229f # initialize rs2
sh3add x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0df363d777403809 # initialize rs1
li x29, 0xf2e0a98634e1e666 # initialize rs2
sh3add x10, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x59512d351608ceae # initialize rs1
li x12, 0x72d769e8ca70ca43 # initialize rs2
sh3add x17, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x39dd4626cec737bb # initialize rs1
li x12, 0xdc1ac7764a9dfe4c # initialize rs2
sh3add x2, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5af503b1106e9332 # initialize rs1
li x22, 0x6c1307ce902e5e4e # initialize rs2
sh3add x12, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0x60be3a7ac165c006 # initialize rs1
li x0, 0xfd2fe619c3f96922 # initialize rs2
sh3add x17, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0xb4ce9cc1ffe2ca28 # initialize rs1
li x1, 0x6c85f09b5d7af442 # initialize rs2
sh3add x31, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x5cb80bd3611243fa # initialize rs1
li x2, 0x76544c6480959a57 # initialize rs2
sh3add x24, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x2e631aafc24958c0 # initialize rs1
li x3, 0x35a96a15171aefac # initialize rs2
sh3add x20, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x3fe82a59e7560535 # initialize rs1
li x4, 0x18e5c909d932f4af # initialize rs2
sh3add x26, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x11, 0xd98c58b35548a9aa # initialize rs1
li x5, 0x4f924858490d4ed3 # initialize rs2
sh3add x24, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x4add03f87d871ecc # initialize rs1
li x6, 0xe51cc1ef1883eadb # initialize rs2
sh3add x4, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xef37e1badc457014 # initialize rs1
li x7, 0x599041c69fadf411 # initialize rs2
sh3add x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0x78867cbf8e138436 # initialize rs1
li x8, 0x1c6ef8cc0d7fd392 # initialize rs2
sh3add x28, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x855e9f1418e784a1 # initialize rs1
li x9, 0x61b84abc4ac66787 # initialize rs2
sh3add x2, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0x98ee37f5d6e46c5e # initialize rs1
li x10, 0x7ca8748f58488bcf # initialize rs2
sh3add x16, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xe5b0fe89c53ecb48 # initialize rs1
li x11, 0xe1665afa5fd94df2 # initialize rs2
sh3add x15, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x6c4d70d4729ce9f3 # initialize rs1
li x12, 0xc95bdfc383186026 # initialize rs2
sh3add x5, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x499875d6af8abc2f # initialize rs1
li x13, 0x7f831d3278cda5d2 # initialize rs2
sh3add x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x76d60b777e9f9282 # initialize rs1
li x14, 0x7304d7828f407c7c # initialize rs2
sh3add x16, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0xca4a73258ac7d31f # initialize rs1
li x15, 0x2b921ef1deff0be7 # initialize rs2
sh3add x7, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x1e3717c1e7651ba3 # initialize rs1
li x16, 0x8aa8d653434deb3d # initialize rs2
sh3add x18, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x47344c7c836fe02e # initialize rs1
li x17, 0x2f5dae874cb4b846 # initialize rs2
sh3add x25, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xf28984f0008b5796 # initialize rs1
li x18, 0x0db3ec12da2283fd # initialize rs2
sh3add x14, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0xfa9e36e6970c4f5e # initialize rs1
li x19, 0x0cc262c1b33a87ec # initialize rs2
sh3add x22, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xc14cad934bfb1cb5 # initialize rs1
li x20, 0x3c81f951a871e629 # initialize rs2
sh3add x19, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0xf0cb6f4adbd52e1f # initialize rs1
li x21, 0xa64050777a584752 # initialize rs2
sh3add x10, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xef1a1543fe89aa61 # initialize rs1
li x22, 0xc2f1e624d6af3ea2 # initialize rs2
sh3add x10, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xf6fa91b550d0a0e8 # initialize rs1
li x23, 0x0d361d1f1ca4c6c2 # initialize rs2
sh3add x6, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x0a30be280a7dfa4e # initialize rs1
li x24, 0xe48da07807caaf3c # initialize rs2
sh3add x12, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x020aca6837ffde52 # initialize rs1
li x25, 0x77296c8bfa47e778 # initialize rs2
sh3add x27, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xe29f7e8d513e1955 # initialize rs1
li x26, 0x526d6fec519a6088 # initialize rs2
sh3add x9, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0x4ee6c25d70119df3 # initialize rs1
li x27, 0x08ced1c3283f87be # initialize rs2
sh3add x18, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xb5dfaf1a11cd8d64 # initialize rs1
li x28, 0xfb2a528badfcddfc # initialize rs2
sh3add x16, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0xbdbf2a5b208939ea # initialize rs1
li x29, 0xaa45b2e6ff3c3fbe # initialize rs2
sh3add x1, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0x104842010a16a73c # initialize rs1
li x30, 0x3789be30a85130bd # initialize rs2
sh3add x3, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0xfd70b5a6acb1072d # initialize rs1
li x31, 0x27d1aebe2b8d0c80 # initialize rs2
sh3add x7, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0xc217db7bd6d608be # initialize rs1
li x28, 0x20a261924bc5ab54 # initialize rs2
sh3add x0, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0xa7a03b1073192db4 # initialize rs1
li x1, 0xb96dc57419cf3eb1 # initialize rs2
sh3add x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xff25c833a105580b # initialize rs1
li x21, 0x962645172f888524 # initialize rs2
sh3add x2, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x03e53d85e9e9cd62 # initialize rs1
li x17, 0x592b2996f4151530 # initialize rs2
sh3add x3, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x4e2379b3c84d8eaa # initialize rs1
li x15, 0xb4c12ed01e63ff1a # initialize rs2
sh3add x4, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x55e66ccb8a8ba9fb # initialize rs1
li x16, 0x55a2d415d5886621 # initialize rs2
sh3add x5, x27, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x3fb3aa0de368089d # initialize rs1
li x21, 0x41034219103a00e2 # initialize rs2
sh3add x6, x10, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x67499910528f7a4a # initialize rs1
li x17, 0x198c5cef849dd04f # initialize rs2
sh3add x7, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xb530306d94c5c815 # initialize rs1
li x7, 0x1750aaf8c5839f1c # initialize rs2
sh3add x8, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0xd5d9c4a6e8f21c68 # initialize rs1
li x18, 0x443714a1814aca0c # initialize rs2
sh3add x9, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0xf5744b6b0859a3c0 # initialize rs1
li x14, 0xc0e0c1ed1cc198f2 # initialize rs2
sh3add x10, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x9e2e23e6e8a28877 # initialize rs1
li x23, 0xee932876c8ccecfc # initialize rs2
sh3add x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x7d77ce24c486420a # initialize rs1
li x14, 0x7049446de5111740 # initialize rs2
sh3add x12, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x7ebf80278c104201 # initialize rs1
li x10, 0x63d5ca6f94f2b1b7 # initialize rs2
sh3add x13, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x4b3b375d471c3625 # initialize rs1
li x25, 0x5e470c92c72bf927 # initialize rs2
sh3add x14, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xda4fb7afdf9c1cbd # initialize rs1
li x5, 0x1084c0ed123c36b7 # initialize rs2
sh3add x15, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xe129e8e9ed4b6dbf # initialize rs1
li x21, 0x4faf20fc8ab95c19 # initialize rs2
sh3add x16, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x9d2b20b6d1a0b54d # initialize rs1
li x7, 0x0741c7e45a8ee3e9 # initialize rs2
sh3add x17, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xc8f43c3b35eacd85 # initialize rs1
li x14, 0xb1e2c124518b8c75 # initialize rs2
sh3add x18, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0xfbbe01a887e1fafb # initialize rs1
li x14, 0x6469cd1570ed9e61 # initialize rs2
sh3add x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xd5325eb7ffd4241f # initialize rs1
li x18, 0xf86d76d18acaee93 # initialize rs2
sh3add x20, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xa44998f6eee9474d # initialize rs1
li x29, 0x4b58634b7908efdb # initialize rs2
sh3add x21, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0xd8ebeceb45966b77 # initialize rs1
li x30, 0x45ae4d87cc7bdc77 # initialize rs2
sh3add x22, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x527cd47c6c003f17 # initialize rs1
li x10, 0xf83d1714df464999 # initialize rs2
sh3add x23, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xa14ccbcff9414135 # initialize rs1
li x2, 0xa7d7ff26532e91eb # initialize rs2
sh3add x24, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x2d2f9b015eb4ca12 # initialize rs1
li x10, 0x3d918eb2f6c55220 # initialize rs2
sh3add x25, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x6f27a3567b2072c1 # initialize rs1
li x6, 0xd8d71ca9553d0400 # initialize rs2
sh3add x26, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0x1558e504b5a8d7aa # initialize rs1
li x19, 0x9b1ec3ec30eaf5c5 # initialize rs2
sh3add x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xdbfea040da9152e2 # initialize rs1
li x22, 0xbb4f1c2286374865 # initialize rs2
sh3add x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x18b0ab473d5bff94 # initialize rs1
li x29, 0x3a33d4f5377998a2 # initialize rs2
sh3add x29, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x541de6b6288be173 # initialize rs1
li x14, 0x9af1f3154a85cd35 # initialize rs2
sh3add x30, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xe0a8e44e428e0919 # initialize rs1
li x27, 0x9fa603c54d1c6408 # initialize rs2
sh3add x31, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x7, 0xf04a39ae99bbecaa # initialize rs2
sh3add x3, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x24, 0xdc541861027bf27d # initialize rs2
sh3add x27, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x28, 0x65c03cb6ed4f3103 # initialize rs2
sh3add x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x8, 0xaf1f385eea9bad37 # initialize rs2
sh3add x11, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
li x8, 0x746aef9e3a75e619 # initialize rs2
sh3add x25, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x3, 0x4bc80a96a7e4ce73 # initialize rs2
sh3add x20, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x21, 0x89ced43e7e56e914 # initialize rs2
sh3add x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x20, 0x45dc63be950b9a6f # initialize rs2
sh3add x30, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
li x14, 0x6107778aa677e13c # initialize rs2
sh3add x15, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x73ff7379727d1126 # initialize rs2
sh3add x17, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xb21313fd296dd6be # initialize rs2
sh3add x5, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x24, 0xbb50c26e5eda0962 # initialize rs2
sh3add x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x20, 0x6f9a6359e09c4067 # initialize rs2
sh3add x2, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0xc2522b1635942eaf # initialize rs2
sh3add x27, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x25, 0x0e436bc27a4fac6d # initialize rs2
sh3add x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x3, 0x2e22bc161499f3b2 # initialize rs2
sh3add x13, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x2f98d30dc1a3ed8c # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh3add x24, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xbf45d88b8d3b5539 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x31, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x5a4f1273eb87d491 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add x25, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xaf816c9a468aa2a5 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh3add x28, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x33ccd71399fe6c41 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh3add x24, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x6, 0xcca4fe9ae2a393bf # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh3add x5, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xcc00212dea4b8a57 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x14, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x264d42510686de84 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sh3add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x30, 0x7db26b61c7ef083d # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh3add x23, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0x76c242b0ac3aa37c # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x22, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xb7fa1e94ba000039 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x16, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x5144afe3a588a3c4 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add x8, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x7ff1e796227131c9 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh3add x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xb5dc137c7f60db6a # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh3add x24, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x9e79094380654c5b # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh3add x19, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x801f11c0c62f0257 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh3add x30, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh3add x6, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sh3add x2, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh3add x25, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x9, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh3add x20, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh3add x30, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh3add x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh3add x26, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x0000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh3add x31, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh3add x26, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh3add x27, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x14, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh3add x3, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh3add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh3add x7, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh3add x20, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh3add x8, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add x16, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh3add x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x19, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh3add x26, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh3add x31, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh3add x22, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x30, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x27, 0x0000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh3add x12, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x29, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add x3, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x24, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh3add x27, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh3add x29, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x17, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh3add x13, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x11, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh3add x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add x6, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x15, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh3add x30, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x29, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sh3add x10, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000002 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh3add x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh3add x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh3add x23, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x22, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add x27, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh3add x2, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x25, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x22, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh3add x16, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x22, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh3add x11, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh3add x27, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh3add x30, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh3add x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh3add x26, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x16, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh3add x5, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh3add x15, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh3add x5, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
sh3add x12, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh3add x28, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sh3add x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x23, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh3add x24, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x23, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add x19, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh3add x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sh3add x29, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh3add x24, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x6, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x15, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh3add x24, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh3add x9, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh3add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh3add x24, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add x1, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh3add x5, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh3add x6, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x2, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add x19, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x24, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x7, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh3add x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh3add x29, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sh3add x5, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh3add x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh3add x8, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh3add x25, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sh3add x19, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh3add x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
sh3add x2, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sh3add x11, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7fffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x14, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sh3add x10, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sh3add x11, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh3add x31, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add x28, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh3add x6, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh3add x2, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sh3add x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add x30, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh3add x31, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh3add x13, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh3add x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh3add x31, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sh3add x7, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh3add x30, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x16, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh3add x27, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh3add x26, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add x21, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x31, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh3add x7, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x25, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sh3add x20, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add x24, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh3add x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x14, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add x22, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh3add x9, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh3add x3, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh3add x27, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh3add x18, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh3add x28, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh3add x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x12, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sh3add x18, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh3add x2, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sh3add x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x16, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
sh3add x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sh3add x2, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x15, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
sh3add x9, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sh3add x22, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh3add x1, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add x8, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh3add x30, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x23, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add x25, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh3add x21, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh3add x18, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x18, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x9, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x23, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sh3add x22, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh3add x5, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh3add x17, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh3add x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sh3add x12, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add x13, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh3add x10, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh3add x14, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh3add x13, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sh3add x30, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh3add x5, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add x9, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh3add x2, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sh3add x23, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x7, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add x2, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sh3add x1, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sh3add x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sh3add x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh3add x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh3add x26, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add x27, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh3add x13, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh3add x19, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh3add x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sh3add x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh3add x26, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh3add x30, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh3add x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh3add x23, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh3add x8, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh3add x19, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh3add x6, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x5, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh3add x19, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh3add x1, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh3add x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x18, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh3add x24, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh3add x30, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh3add x26, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh3add x18, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh3add x26, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x8, 0x5555555555555555 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5555555555555555 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x26, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh3add x22, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh3add x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sh3add x13, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x13, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh3add x26, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x18, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh3add x3, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh3add x29, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh3add x27, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x7, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh3add x10, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh3add x22, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh3add x13, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x5, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh3add x10, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh3add x19, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x00000000ffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x19, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh3add x14, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x30, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add x24, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh3add x23, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add x28, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh3add x3, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh3add x15, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh3add x19, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sh3add x13, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh3add x30, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh3add x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh3add x9, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add x27, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x3, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sh3add x15, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh3add x16, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh3add x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x16, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh3add x2, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x9, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh3add x27, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh3add x7, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh3add x20, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh3add x22, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh3add x19, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh3add x12, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh3add x22, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh3add x21, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh3add x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh3add x24, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000100000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x21, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0x0000000100000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
sh3add x12, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sh3add x11, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh3add x28, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sh3add x27, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x27, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh3add x16, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x15, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh3add x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x1, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh3add x6, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh3add x13, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x18, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh3add x11, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh3add x25, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh3add x29, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh3add x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh3add x17, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x27, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x20, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh3add x13, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x18, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh3add x15, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x9, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add x28, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add x15, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc07969e780db6fd3 # initialize rs1
li x0, 0xee5875f5c927eb6a # initialize rs2
sh3add x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x33068c937676e365 # initialize rs1
li x1, 0xb8c6908b87fc655c # initialize rs2
sh3add x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x32f45158ba6ff6ac # initialize rs1
li x2, 0x8303ff91758e491c # initialize rs2
sh3add x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x25613a8a3ab78581 # initialize rs1
li x3, 0xc93275c07cab46cf # initialize rs2
sh3add x19, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7622098bec6578ce # initialize rs1
li x4, 0x91c2e61deb5b1a9a # initialize rs2
sh3add x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6fa18aa0641b6fd1 # initialize rs1
li x5, 0xca5c3850261dd12a # initialize rs2
sh3add x23, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbd3efb0ff384c907 # initialize rs1
li x6, 0x795b3c3fdcf89d24 # initialize rs2
sh3add x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x342cd9222e2237c5 # initialize rs1
li x7, 0xf81c7073391c9598 # initialize rs2
sh3add x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x21de351a5f5be61d # initialize rs1
li x8, 0xa3417579929c0827 # initialize rs2
sh3add x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9007f5cf7f19218b # initialize rs1
li x9, 0xeada1e6cee043262 # initialize rs2
sh3add x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7b6a26c158114422 # initialize rs1
li x10, 0x1957edb84f36dfab # initialize rs2
sh3add x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1f79086510b9fb38 # initialize rs1
li x11, 0xa4b0dc4665c09bcb # initialize rs2
sh3add x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xeb16980a8fd4ab20 # initialize rs1
li x12, 0x0bf6bf8080441e08 # initialize rs2
sh3add x15, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2ad68de18e006aed # initialize rs1
li x13, 0x243f11585e9966f4 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1c4ddb761a4b69c6 # initialize rs1
li x14, 0xc262fa50ce202bc8 # initialize rs2
sh3add x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc40fb6c71804e88b # initialize rs1
li x15, 0xe0ba9ca378193a3d # initialize rs2
sh3add x11, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6b58b649d72800c5 # initialize rs1
li x16, 0x3b0bba998b3f9e93 # initialize rs2
sh3add x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1edb9ca9350ff304 # initialize rs1
li x17, 0x596057a10af24e40 # initialize rs2
sh3add x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7274690cbcac70c2 # initialize rs1
li x18, 0x764f102600d2290d # initialize rs2
sh3add x15, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xac28e94d2e7b0bbb # initialize rs1
li x19, 0xc1f8882a414a1f7e # initialize rs2
sh3add x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf123dcd4360b8857 # initialize rs1
li x20, 0x22a664823920dada # initialize rs2
sh3add x3, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7fa406e63439c412 # initialize rs1
li x21, 0x20b03e47106724f5 # initialize rs2
sh3add x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe050d84830a81d53 # initialize rs1
li x22, 0x7d32525738cdc7a5 # initialize rs2
sh3add x15, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xeb4d866468b3643f # initialize rs1
li x23, 0xbafd2c2c1a2fefb2 # initialize rs2
sh3add x20, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x21b3d831c7e6419e # initialize rs1
li x24, 0x57dbba3019b2e523 # initialize rs2
sh3add x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1d2f2deb8f23a4b8 # initialize rs1
li x25, 0xab343e2de3ee1a3c # initialize rs2
sh3add x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7f5494306c3b618f # initialize rs1
li x26, 0x6a9c1facfcad8d54 # initialize rs2
sh3add x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb880017712a40831 # initialize rs1
li x27, 0xcc67941e496bda6b # initialize rs2
sh3add x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x30f0871f0fbc6706 # initialize rs1
li x28, 0x82f30bc21bfd0a8c # initialize rs2
sh3add x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xabc1ef01092f1730 # initialize rs1
li x29, 0x8cc4dc2cb23d1167 # initialize rs2
sh3add x26, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa8cc32b9969dee5f # initialize rs1
li x30, 0xf78e19d456cd31cc # initialize rs2
sh3add x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x0f24971711eace7b # initialize rs1
li x31, 0xb5bc0ef83d5bde49 # initialize rs2
sh3add x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb3c48a7e4963165d # initialize rs1
li x10, 0x83a2677aa7044ac7 # initialize rs2
sh3add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7beee038d6471e9b # initialize rs1
li x28, 0x571dcd2c544e7f68 # initialize rs2
sh3add x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x59ab302b3178a571 # initialize rs1
li x14, 0x0e841a47d6ee6894 # initialize rs2
sh3add x2, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x98ed5c96a351e37e # initialize rs1
li x20, 0xbac187c4c7a29b98 # initialize rs2
sh3add x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe537d246d1fd6cfd # initialize rs1
li x19, 0x0ee125e966f447fc # initialize rs2
sh3add x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe1e7e37c717ce0a8 # initialize rs1
li x28, 0xeb1457c946b324bd # initialize rs2
sh3add x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe927a3c4e7e50f7c # initialize rs1
li x4, 0xcda5bc4b8b54b148 # initialize rs2
sh3add x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xac8872c089ffb1bb # initialize rs1
li x12, 0x1431f0eb502882c3 # initialize rs2
sh3add x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7ac739eba6021d1b # initialize rs1
li x10, 0x947b67148a78e4bb # initialize rs2
sh3add x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf6a4c591680d97b5 # initialize rs1
li x10, 0xda62d7ebb8f60022 # initialize rs2
sh3add x9, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc99370eab323d59e # initialize rs1
li x8, 0xe64ccd562322ef9f # initialize rs2
sh3add x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc4e65c4f65bdacd4 # initialize rs1
li x7, 0xe10d0f3298bacb89 # initialize rs2
sh3add x11, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfe55717a9593f524 # initialize rs1
li x8, 0xb6689d9bdff50849 # initialize rs2
sh3add x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0d1c9afb6baf07b8 # initialize rs1
li x21, 0x56920ea7e2dc2bd9 # initialize rs2
sh3add x13, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x29fb9d09f0bbf512 # initialize rs1
li x27, 0xd8d5f0d96bce1053 # initialize rs2
sh3add x14, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7c7ad7d4bc3db685 # initialize rs1
li x3, 0x2932759bb34ff8cc # initialize rs2
sh3add x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x35614a801630b127 # initialize rs1
li x13, 0x7f043bbb15654fc4 # initialize rs2
sh3add x16, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9809709cd3c49cfb # initialize rs1
li x24, 0x57cefe7601d9bcc2 # initialize rs2
sh3add x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xffe46a79f2c330b5 # initialize rs1
li x25, 0xd069f667d2442647 # initialize rs2
sh3add x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x51dbf6a0063cf6ea # initialize rs1
li x16, 0x42a8e347917457dd # initialize rs2
sh3add x19, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x86e799927e6517b5 # initialize rs1
li x18, 0x3e6bb25cbfb36a29 # initialize rs2
sh3add x20, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x656203c339c2fb64 # initialize rs1
li x13, 0x8a66e8e9ea40b920 # initialize rs2
sh3add x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x82f10ab925d7e639 # initialize rs1
li x24, 0x9108019368fe0ab6 # initialize rs2
sh3add x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2f758cf309f0dfe5 # initialize rs1
li x25, 0xe95f3a6f2cc30063 # initialize rs2
sh3add x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xfec092cb8a31139b # initialize rs1
li x26, 0xbb7c1c8b452902a9 # initialize rs2
sh3add x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8baf7c3f7a9eb83b # initialize rs1
li x10, 0x920431db17e1f412 # initialize rs2
sh3add x25, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x46b392f2901c989a # initialize rs1
li x11, 0x90bf23e6a5867cbe # initialize rs2
sh3add x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1dc34b79a3d93185 # initialize rs1
li x23, 0x666221b9d5a48612 # initialize rs2
sh3add x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa1a513afd470fade # initialize rs1
li x27, 0x9920199221f0aa7e # initialize rs2
sh3add x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6f42ae1838e04e86 # initialize rs1
li x2, 0xeb5784ae104d341a # initialize rs2
sh3add x29, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4ed6c98e9b0cf8c5 # initialize rs1
li x25, 0x6cc4473eb3dd40ce # initialize rs2
sh3add x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x820e6669ab838eeb # initialize rs1
li x5, 0x4893c7919c461ce6 # initialize rs2
sh3add x31, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x15, 0xd2da956d5c387f1e # initialize rs1
li x0, 0x4f908353c11b7a46 # initialize rs2
sh3add x0, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x15, 0x941df8daf7a0b3a4 # initialize rs1
li x1, 0x7d5a6f5b49318a9a # initialize rs2
sh3add x1, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x21533ce9de9e62f3 # initialize rs1
li x2, 0x14d27371ca2969e3 # initialize rs2
sh3add x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x475057c6ff5c15b8 # initialize rs1
li x3, 0x38c9ef7be06eea42 # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x379c4c0cb36b907c # initialize rs1
li x4, 0x3da950939bd3c233 # initialize rs2
sh3add x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x7d53e15b07e1cfca # initialize rs1
li x5, 0x779fd344dcf6ff57 # initialize rs2
sh3add x5, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x27c313d801716379 # initialize rs1
li x6, 0x69391f8ee342f2f9 # initialize rs2
sh3add x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xb62f0428eaf03169 # initialize rs1
li x7, 0x28330ae322c6c38d # initialize rs2
sh3add x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0xcf99f7e52b9bef3d # initialize rs1
li x8, 0x4e4cff8633c524df # initialize rs2
sh3add x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x17, 0x8ba7b107372e7fb4 # initialize rs1
li x9, 0xc7155c4c676ef26a # initialize rs2
sh3add x9, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0xbdea7ff132343d7c # initialize rs1
li x10, 0x22d98035109dbe14 # initialize rs2
sh3add x10, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0xcde495df282c3b2a # initialize rs1
li x11, 0xef3ec1b6c68f8b08 # initialize rs2
sh3add x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x10, 0xaaba27157aedf250 # initialize rs1
li x12, 0x54ab51d1b9e585eb # initialize rs2
sh3add x12, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x2c49dd5d25b828c3 # initialize rs1
li x13, 0xaf42a81b90170988 # initialize rs2
sh3add x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x2, 0xaa2926c7743f2e6f # initialize rs1
li x14, 0xc8ad1e99cb7d5727 # initialize rs2
sh3add x14, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x20e6fac88cf59147 # initialize rs1
li x15, 0xea2fa287e679f441 # initialize rs2
sh3add x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x478a18b0f42399d8 # initialize rs1
li x16, 0x49f983c7c0814979 # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0xbc5e798ccc50e29e # initialize rs1
li x17, 0x5dc1cb5063acc956 # initialize rs2
sh3add x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x27, 0xabc9d4bff9d975a3 # initialize rs1
li x18, 0xd6540194c49833c9 # initialize rs2
sh3add x18, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0xaac3d7880469ab17 # initialize rs1
li x19, 0xc88c6552bf954cf5 # initialize rs2
sh3add x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x9, 0x896af7adeca78574 # initialize rs1
li x20, 0xe6ec4ebd51aeb224 # initialize rs2
sh3add x20, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x19, 0x117c29f7c7b7ec18 # initialize rs1
li x21, 0xdd6597a25fa1d331 # initialize rs2
sh3add x21, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x1, 0x57f96cf06aae806e # initialize rs1
li x22, 0x5d19a20324b7b191 # initialize rs2
sh3add x22, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x74b694a0873406c8 # initialize rs1
li x23, 0x28787850b9cde513 # initialize rs2
sh3add x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0xb0b5b2ce9a0bd0d2 # initialize rs1
li x24, 0xe7c5756e062c5382 # initialize rs2
sh3add x24, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0x663086e20ad10e0e # initialize rs1
li x25, 0xfb377f9965220acf # initialize rs2
sh3add x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xa1d0181b974dd418 # initialize rs1
li x26, 0x49f5c39dbcb0ddc9 # initialize rs2
sh3add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xf6af70baaad22bce # initialize rs1
li x27, 0x6e830e1274d2d22b # initialize rs2
sh3add x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x2, 0xb4db33aad7b0cde2 # initialize rs1
li x28, 0x2f9de484e3b6911e # initialize rs2
sh3add x28, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x19, 0xaccc42d94fe4283b # initialize rs1
li x29, 0xef190c15f3824063 # initialize rs2
sh3add x29, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x7, 0xf986858cec2aafb3 # initialize rs1
li x30, 0x50357ccd59f2afa6 # initialize rs2
sh3add x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0x29f92ec3ca8875ce # initialize rs1
li x31, 0xc48a959cbc9c9c37 # initialize rs2
sh3add x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x92591c867610efe8 # initialize rs1
li x0, 0x6ff1786fbcb9a276 # initialize rs2
sh3add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xeb82e38ffab511a0 # initialize rs1
li x1, 0xac231aae75e02388 # initialize rs2
sh3add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0b7d867f0ee2b9aa # initialize rs1
li x2, 0xe0e215eb8f7ff07a # initialize rs2
sh3add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xca14b8e0209221c0 # initialize rs1
li x3, 0x6ef853af73ae14fe # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x983a89238b34de74 # initialize rs1
li x4, 0xac7995e72a863454 # initialize rs2
sh3add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xabdf5c0c4d551224 # initialize rs1
li x5, 0x2276edf9169e86a4 # initialize rs2
sh3add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x91de58f2616d366f # initialize rs1
li x6, 0x919ab7e5aa304868 # initialize rs2
sh3add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d10a59d641456ce # initialize rs1
li x7, 0x90dc033cf5813594 # initialize rs2
sh3add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3078eb6264f846e0 # initialize rs1
li x8, 0x62f1ddc5e0d78281 # initialize rs2
sh3add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa96e2e9f083d5748 # initialize rs1
li x9, 0x490431ce81f32ac3 # initialize rs2
sh3add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc44dfeda9f6c1df0 # initialize rs1
li x10, 0x6be29b7886b0b907 # initialize rs2
sh3add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d6c219dbce6f4a2 # initialize rs1
li x11, 0x316a5b369b0edc6e # initialize rs2
sh3add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xad2052581403f402 # initialize rs1
li x12, 0x427a40e393c6489e # initialize rs2
sh3add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x40ad3e8aad7f4af8 # initialize rs1
li x13, 0x575b9387261be985 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x18f8b0d21bd3b0aa # initialize rs1
li x14, 0x55df485a3a6b35de # initialize rs2
sh3add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5c31d4d321b191f8 # initialize rs1
li x15, 0xf075706bfd372890 # initialize rs2
sh3add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x40594bed6b3211e4 # initialize rs1
li x16, 0x565b4839ad0a4a46 # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xec9b20cae628a382 # initialize rs1
li x17, 0xac83088c20f9d654 # initialize rs2
sh3add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x40abae1cad3cc391 # initialize rs1
li x18, 0xfb3767a60793415b # initialize rs2
sh3add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x386969f3eb0c2221 # initialize rs1
li x19, 0x377ecbae60be0b76 # initialize rs2
sh3add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6fb0e9816bde2e8a # initialize rs1
li x20, 0xdabee6f8e87d1ee7 # initialize rs2
sh3add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xecc32b2ff7609dbd # initialize rs1
li x21, 0xb0c3058c56eab7b1 # initialize rs2
sh3add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x341ccd707fbcb5b6 # initialize rs1
li x22, 0x74874b828556cf52 # initialize rs2
sh3add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd10bf767852cb40e # initialize rs1
li x23, 0xde021c21ddbc3fd0 # initialize rs2
sh3add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1a743859c3f7344b # initialize rs1
li x24, 0x32817b9f145a7829 # initialize rs2
sh3add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc1bc73d63d32de58 # initialize rs1
li x25, 0xc54a4df085e6d49e # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x58cab999ddf41102 # initialize rs1
li x26, 0x6c427f3fc13cc4ed # initialize rs2
sh3add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x44f5902e2c4fea8c # initialize rs1
li x27, 0x7436b9fd582ccadf # initialize rs2
sh3add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe8099292b2c84eb7 # initialize rs1
li x28, 0x79b6e1be16be852c # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7dc07d500e5a6b4c # initialize rs1
li x29, 0x6eaa183a67f1791c # initialize rs2
sh3add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2fc6a7f60084dbaf # initialize rs1
li x30, 0x93f551d573b15150 # initialize rs2
sh3add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5213cf0d4ed1b751 # initialize rs1
li x31, 0x7561f215aa2dafb5 # initialize rs2
sh3add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x9, x29 # perform first operation
sh3add x24, x5, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x12, x17 # perform first operation
sh3add x30, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x11, x15 # perform first operation
sh3add x10, x22, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x23, x21 # perform first operation
sh3add x23, x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x28, x19 # perform first operation
sh3add x30, x15, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x5 # perform first operation
sh3add x24, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x15, x5 # perform first operation
sh3add x14, x22, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x14, x12 # perform first operation
sh3add x10, x21, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x24, x25 # perform first operation
sh3add x20, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x8, x1 # perform first operation
sh3add x8, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x14, x2 # perform first operation
sh3add x2, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x15, x27 # perform first operation
sh3add x26, x29, x10 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-sh1add.uw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd552d443a38a001b # initialize rs1
li x28, 0x32ef9ea453c10fb4 # initialize rs2
sh1add.uw x13, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x65664672ed31e786 # initialize rs1
li x14, 0xb44151d3eaadac5f # initialize rs2
sh1add.uw x2, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8361055cedc5733e # initialize rs1
li x5, 0xaab75526539adb90 # initialize rs2
sh1add.uw x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa297737fa72d666e # initialize rs1
li x26, 0x58564a6a4bf31328 # initialize rs2
sh1add.uw x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e8c1e302639a5fb # initialize rs1
li x3, 0x9cbee01039307815 # initialize rs2
sh1add.uw x28, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x748ed7ca7f226f8e # initialize rs1
li x12, 0xd46b49a9ea66ca96 # initialize rs2
sh1add.uw x31, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4b3e470a07466f66 # initialize rs1
li x18, 0x7b4718d97cb21f8a # initialize rs2
sh1add.uw x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x6b10c47287336db8 # initialize rs1
li x14, 0xd8c7eba49c727b82 # initialize rs2
sh1add.uw x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8d2560bdaacd37ef # initialize rs1
li x13, 0x107f054bfbd09184 # initialize rs2
sh1add.uw x7, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe8eb7f1d951b44ed # initialize rs1
li x24, 0xcd45ff14ddc68167 # initialize rs2
sh1add.uw x11, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x49079d3e8efc590b # initialize rs1
li x27, 0x8605e002734ed2d9 # initialize rs2
sh1add.uw x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb211fcb1ea3cf8f1 # initialize rs1
li x3, 0x63f84b39ef1809b1 # initialize rs2
sh1add.uw x22, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf73aba219443bf39 # initialize rs1
li x3, 0xb9020e12f28b5629 # initialize rs2
sh1add.uw x7, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5eca8335df0c1cf9 # initialize rs1
li x31, 0x7e1c7a873a06d54c # initialize rs2
sh1add.uw x24, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xac05258b423c43ac # initialize rs1
li x6, 0x4e45c57135e126af # initialize rs2
sh1add.uw x2, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x838f9027419e5759 # initialize rs1
li x11, 0x6c6cf06ebfd74c2c # initialize rs2
sh1add.uw x19, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb481b5945f164e46 # initialize rs1
li x28, 0x27d1ffb7bd9bb2ff # initialize rs2
sh1add.uw x2, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x339533da73bc40b2 # initialize rs1
li x7, 0x8571938ed03d9419 # initialize rs2
sh1add.uw x25, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x31a7bb0ed2aabed8 # initialize rs1
li x6, 0xccbfd8eb6899f18e # initialize rs2
sh1add.uw x22, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf2e6bbabfa8eb6f5 # initialize rs1
li x30, 0x7c117b7607bcc46c # initialize rs2
sh1add.uw x17, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x70ad7a749f8e9577 # initialize rs1
li x12, 0xae90a3ad02dd6ed8 # initialize rs2
sh1add.uw x25, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4508e855889ff1b2 # initialize rs1
li x6, 0x25aed0ea1e3d8e6d # initialize rs2
sh1add.uw x30, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5bf918c519156261 # initialize rs1
li x5, 0x11bda1c48459e8b1 # initialize rs2
sh1add.uw x15, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb217538337675504 # initialize rs1
li x22, 0x81cf6dd67707a47d # initialize rs2
sh1add.uw x1, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf691a65df8919175 # initialize rs1
li x25, 0x9e564e0dc882244f # initialize rs2
sh1add.uw x18, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xde6077afb5462465 # initialize rs1
li x23, 0x6d8859298d04ecab # initialize rs2
sh1add.uw x31, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x92276db0961973e3 # initialize rs1
li x23, 0x81c4c07ff86f6c25 # initialize rs2
sh1add.uw x1, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa9bb72ae61f3393f # initialize rs1
li x1, 0x81f438f41a29971b # initialize rs2
sh1add.uw x12, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x59b3d30e1e5b681a # initialize rs1
li x27, 0x4ab904a12f2205f9 # initialize rs2
sh1add.uw x6, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x357ca6f1bf17ce71 # initialize rs1
li x22, 0x70c11049e596f0f2 # initialize rs2
sh1add.uw x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x82ef9dbb6d671c37 # initialize rs1
li x12, 0xd27f5a9911a2c611 # initialize rs2
sh1add.uw x23, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7169be8a12308850 # initialize rs1
li x17, 0xfa68e20a3cfde4fa # initialize rs2
sh1add.uw x23, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x3ac1d384777dc518 # initialize rs1
li x0, 0x4435909ee43fdeae # initialize rs2
sh1add.uw x11, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xeb0a4a03f815d4b6 # initialize rs1
li x1, 0x19a31f9c64db462c # initialize rs2
sh1add.uw x24, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x4b624d96ccb15c54 # initialize rs1
li x2, 0xef6ce86e2b5eb999 # initialize rs2
sh1add.uw x29, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x19955d5d2d0946a6 # initialize rs1
li x3, 0xe279e59a0a11df0d # initialize rs2
sh1add.uw x2, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x2ce25bc867abd08b # initialize rs1
li x4, 0xf98bcedebef359e6 # initialize rs2
sh1add.uw x12, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xafb0a4af663c6882 # initialize rs1
li x5, 0xaf0e8f635d284b39 # initialize rs2
sh1add.uw x28, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x8dd0dbfdef59c8fb # initialize rs1
li x6, 0x5b991687590907ca # initialize rs2
sh1add.uw x14, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x0d9a1c5c09272a30 # initialize rs1
li x7, 0xdad3cb72123e82dd # initialize rs2
sh1add.uw x21, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x94386696f3423ac9 # initialize rs1
li x8, 0x43a5c70a32610f32 # initialize rs2
sh1add.uw x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xfc73400e12aebc97 # initialize rs1
li x9, 0x72f5ae61a567dcdf # initialize rs2
sh1add.uw x5, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xfbc8ce48a08b7590 # initialize rs1
li x10, 0x78577a3a3f3d8cd9 # initialize rs2
sh1add.uw x5, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x200fcb5b21ea38e4 # initialize rs1
li x11, 0xce818c1a13621930 # initialize rs2
sh1add.uw x14, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xebb56a11b22e6131 # initialize rs1
li x12, 0x07325a166c0f8443 # initialize rs2
sh1add.uw x24, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xf039f80f35618db2 # initialize rs1
li x13, 0x387f57861db4384d # initialize rs2
sh1add.uw x20, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x24a50d72a4a53749 # initialize rs1
li x14, 0x11ee4dfa361b37b8 # initialize rs2
sh1add.uw x9, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x40fb7a6620544e65 # initialize rs1
li x15, 0x48dc7e5c71b52d92 # initialize rs2
sh1add.uw x1, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xd1c37af93faa9e84 # initialize rs1
li x16, 0xd040e87e4f67d963 # initialize rs2
sh1add.uw x11, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x6d6ac9d459dc33f2 # initialize rs1
li x17, 0x9b6a41a0e8f734fb # initialize rs2
sh1add.uw x12, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xe91587b5599f5d63 # initialize rs1
li x18, 0x439840e59111efe8 # initialize rs2
sh1add.uw x25, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x30332abdea8b6a3b # initialize rs1
li x19, 0x075e19d3e347c08d # initialize rs2
sh1add.uw x11, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xd632c169321668c2 # initialize rs1
li x20, 0x3ae5d4214796da0f # initialize rs2
sh1add.uw x29, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xc83881beae9068e4 # initialize rs1
li x21, 0x0b54433402c04010 # initialize rs2
sh1add.uw x30, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0xd44f4c4cdf0fb704 # initialize rs1
li x22, 0x8de1180120977e5c # initialize rs2
sh1add.uw x20, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xe8f793c5ad2885d2 # initialize rs1
li x23, 0x5caf0885877645cc # initialize rs2
sh1add.uw x26, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x02f6f3ec5656a01b # initialize rs1
li x24, 0x5dc26ab9344c4577 # initialize rs2
sh1add.uw x25, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x9eed6adccb316656 # initialize rs1
li x25, 0xc4a0b8ab4896eab6 # initialize rs2
sh1add.uw x10, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0xf8e60cf0a0f4e454 # initialize rs1
li x26, 0x1633290a2bb36e30 # initialize rs2
sh1add.uw x1, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0xb1e71694a5c2f4d2 # initialize rs1
li x27, 0x8ec8ab536e9bef37 # initialize rs2
sh1add.uw x13, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x0c3884f337d50dd4 # initialize rs1
li x28, 0x3015b5b6bf602022 # initialize rs2
sh1add.uw x10, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0xfd886a60cee6296d # initialize rs1
li x29, 0xd0085251d8616535 # initialize rs2
sh1add.uw x24, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x027b9ce7537362fb # initialize rs1
li x30, 0x353a094d398d78ec # initialize rs2
sh1add.uw x18, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x18, 0x328a4d553c6dbf90 # initialize rs1
li x31, 0x23fbdf956c20a5a7 # initialize rs2
sh1add.uw x26, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0xbb867ebea5a2ee08 # initialize rs1
li x14, 0xae0152a3203d4827 # initialize rs2
sh1add.uw x0, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x329b6dc1e0b50a9c # initialize rs1
li x27, 0xc32ceb4b7191c1c6 # initialize rs2
sh1add.uw x1, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x633f5d27b973cfd0 # initialize rs1
li x23, 0xce01cf9ee0405dc7 # initialize rs2
sh1add.uw x2, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x77689243ee428a5a # initialize rs1
li x26, 0x677e557ced8fc622 # initialize rs2
sh1add.uw x3, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x6325d74ef16240ab # initialize rs1
li x20, 0x23199292dda02cf7 # initialize rs2
sh1add.uw x4, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x79d321f40e2aa53d # initialize rs1
li x18, 0xb1fb5d2e20d3b112 # initialize rs2
sh1add.uw x5, x13, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x599814cf17c6aa49 # initialize rs1
li x23, 0x31cbda16ff9669e6 # initialize rs2
sh1add.uw x6, x4, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xdd6c3190f9a9d17d # initialize rs1
li x17, 0x185622bf5236776f # initialize rs2
sh1add.uw x7, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5453f70b86eb9c1b # initialize rs1
li x20, 0x07be891c2f09ff00 # initialize rs2
sh1add.uw x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0x2e882c76c8967424 # initialize rs1
li x16, 0x71a19c8b52178b33 # initialize rs2
sh1add.uw x9, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x4636718b27ac5a1a # initialize rs1
li x21, 0xc338fc7f5a1c5a64 # initialize rs2
sh1add.uw x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x400c4105e9004e5b # initialize rs1
li x2, 0xbfd79ab0b9dd0d5a # initialize rs2
sh1add.uw x11, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xd3697a07029147c3 # initialize rs1
li x15, 0xe496002261df0114 # initialize rs2
sh1add.uw x12, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0x38118bde56bd58f3 # initialize rs1
li x12, 0x80661ae5182a6b56 # initialize rs2
sh1add.uw x13, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xccbbe546a2a9c947 # initialize rs1
li x8, 0x812d1c07e4e01dfd # initialize rs2
sh1add.uw x14, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0x9549fb24bf108adf # initialize rs1
li x6, 0x85bbc62f91bc3f46 # initialize rs2
sh1add.uw x15, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x34388da8815f26e5 # initialize rs1
li x21, 0x65ac30b468d69579 # initialize rs2
sh1add.uw x16, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x864206abf6260566 # initialize rs1
li x28, 0xe3f88acf4e23e1f6 # initialize rs2
sh1add.uw x17, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xf72ac93a23e13e5f # initialize rs1
li x23, 0x3db6dc35247b6803 # initialize rs2
sh1add.uw x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x474280c41d32b7e1 # initialize rs1
li x24, 0x262099736a20adb3 # initialize rs2
sh1add.uw x19, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0xced47843e2ac3338 # initialize rs1
li x30, 0x832606f19d025e79 # initialize rs2
sh1add.uw x20, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x65de4a699ac1c827 # initialize rs1
li x7, 0x876e1d3420c12f1e # initialize rs2
sh1add.uw x21, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0xe091a70ab2932587 # initialize rs1
li x21, 0xd89e306417695c11 # initialize rs2
sh1add.uw x22, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xa72d164bce31b47b # initialize rs1
li x30, 0x70b3acdb24ffa0e3 # initialize rs2
sh1add.uw x23, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x57882a6618dedf11 # initialize rs1
li x13, 0x03d8d02ed8c4c23d # initialize rs2
sh1add.uw x24, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0x0ace9d113fbd77f8 # initialize rs1
li x13, 0xee18373f0c9bbe4d # initialize rs2
sh1add.uw x25, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x27, 0xa119e524adc76f44 # initialize rs1
li x24, 0x451c14b3c5d6ab27 # initialize rs2
sh1add.uw x26, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x61b2c6abe8693526 # initialize rs1
li x26, 0x8dcb5993857f0f4a # initialize rs2
sh1add.uw x27, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0x918c24cc61f1876e # initialize rs1
li x1, 0x91d93d7e3624720b # initialize rs2
sh1add.uw x28, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xa371a85ad29b637b # initialize rs1
li x28, 0x06a3212c58598639 # initialize rs2
sh1add.uw x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x3a628138875c631b # initialize rs1
li x18, 0xd3a9cae20b004e98 # initialize rs2
sh1add.uw x30, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xbb5b0e3db8ab2db9 # initialize rs1
li x6, 0xab125b00589e94b5 # initialize rs2
sh1add.uw x31, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
li x25, 0x87221aeaadbf73c8 # initialize rs2
sh1add.uw x22, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0xbd02064a78569207 # initialize rs2
sh1add.uw x11, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x20, 0xcefceacab4868fcd # initialize rs2
sh1add.uw x3, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x10, 0xc9c247ef2e138d7f # initialize rs2
sh1add.uw x7, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x29, 0xeb854508e3867ca4 # initialize rs2
sh1add.uw x8, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x23, 0x5de22d7efca52568 # initialize rs2
sh1add.uw x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0xefc717c61212d2ef # initialize rs2
sh1add.uw x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x8, 0x42fc903abbd011c5 # initialize rs2
sh1add.uw x30, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x23, 0xe5c16b9df849307d # initialize rs2
sh1add.uw x7, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x349f5af6fe8a2efe # initialize rs2
sh1add.uw x27, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x6f4315a4846ad443 # initialize rs2
sh1add.uw x1, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0xfe4a77c65133d92c # initialize rs2
sh1add.uw x30, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x19, 0x8095d58f48fb7a7c # initialize rs2
sh1add.uw x16, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0xa0b0504fdaf89ba8 # initialize rs2
sh1add.uw x19, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x12f537a04964965d # initialize rs2
sh1add.uw x31, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x29, 0xeeb4b0909a25b5ea # initialize rs2
sh1add.uw x14, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0xcee0a32dc562096a # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x75710df48ab2397e # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh1add.uw x11, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x1e89346dd824291a # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x0991b11200348e4c # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh1add.uw x18, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x1d4a1bbb55ebb58c # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh1add.uw x13, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0xcc87d33cab88ccb8 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xd09497c80eebb954 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x26, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x24989d921190ac75 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add.uw x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0x6904dad81aa34d16 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh1add.uw x23, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xaace786a605fd0b7 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x31, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x78b9e538f3bb8a72 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x6, 0xf0f99e4c2f3f4589 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add.uw x26, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x3c23a70e7c2f37c4 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh1add.uw x8, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x5bb6b62ded8a9f72 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh1add.uw x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x5a37b9cd248f6836 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh1add.uw x15, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0x6c73b307a7007795 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh1add.uw x5, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add.uw x28, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
sh1add.uw x2, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add.uw x5, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x14, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh1add.uw x12, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sh1add.uw x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x25, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sh1add.uw x5, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh1add.uw x26, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x18, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x5, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh1add.uw x18, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sh1add.uw x16, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh1add.uw x29, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x19, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh1add.uw x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x9, 0x0000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh1add.uw x30, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh1add.uw x26, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add.uw x25, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add.uw x31, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x13, 0x0000000000000001 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add.uw x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh1add.uw x7, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh1add.uw x25, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh1add.uw x21, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh1add.uw x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x2, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x18, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add.uw x8, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add.uw x24, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh1add.uw x7, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x31, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x6, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x15, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh1add.uw x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh1add.uw x17, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh1add.uw x15, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x10, 0x0000000000000002 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add.uw x24, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh1add.uw x27, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x18, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x20, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add.uw x3, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000002 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x27, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000002 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x14, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh1add.uw x21, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh1add.uw x30, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add.uw x15, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh1add.uw x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh1add.uw x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x30, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x7, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sh1add.uw x18, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh1add.uw x2, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh1add.uw x19, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x16, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh1add.uw x30, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add.uw x24, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x14, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh1add.uw x24, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh1add.uw x22, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x22, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x18, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh1add.uw x13, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh1add.uw x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh1add.uw x1, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x17, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add.uw x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sh1add.uw x18, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sh1add.uw x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x2, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add.uw x2, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh1add.uw x8, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh1add.uw x7, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sh1add.uw x21, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
sh1add.uw x21, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh1add.uw x15, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x12, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh1add.uw x13, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh1add.uw x28, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x22, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh1add.uw x16, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh1add.uw x24, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x22, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh1add.uw x13, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add.uw x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x28, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x24, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh1add.uw x30, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sh1add.uw x7, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sh1add.uw x16, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh1add.uw x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh1add.uw x8, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sh1add.uw x15, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add.uw x21, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh1add.uw x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh1add.uw x28, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add.uw x30, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x5, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh1add.uw x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh1add.uw x27, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x22, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x7ffffffffffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh1add.uw x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh1add.uw x11, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add.uw x16, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add.uw x20, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh1add.uw x29, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x17, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh1add.uw x16, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh1add.uw x8, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x9, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh1add.uw x5, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh1add.uw x25, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add.uw x24, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh1add.uw x23, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x3, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x1, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x6, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh1add.uw x27, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh1add.uw x21, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x8, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh1add.uw x9, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x17, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh1add.uw x28, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh1add.uw x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sh1add.uw x13, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x24, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x9, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh1add.uw x31, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh1add.uw x18, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x7, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add.uw x8, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0xfffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x5, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh1add.uw x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sh1add.uw x1, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh1add.uw x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x14, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sh1add.uw x24, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x13, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh1add.uw x21, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sh1add.uw x26, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh1add.uw x29, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh1add.uw x21, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sh1add.uw x7, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh1add.uw x28, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh1add.uw x8, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh1add.uw x14, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x15, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x24, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh1add.uw x7, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh1add.uw x13, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh1add.uw x25, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add.uw x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh1add.uw x9, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add.uw x27, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh1add.uw x3, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add.uw x28, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x16, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh1add.uw x12, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh1add.uw x27, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x3, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh1add.uw x19, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add.uw x2, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add.uw x31, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x14, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x16, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add.uw x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add.uw x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x15, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sh1add.uw x16, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add.uw x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh1add.uw x18, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh1add.uw x16, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x24, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh1add.uw x13, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x5, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x18, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x28, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh1add.uw x31, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh1add.uw x3, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x10, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add.uw x19, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x18, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add.uw x7, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh1add.uw x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh1add.uw x17, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x20, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add.uw x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh1add.uw x30, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add.uw x19, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh1add.uw x3, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x20, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh1add.uw x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh1add.uw x12, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x00000000ffffffff # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x11, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x31, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh1add.uw x10, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add.uw x5, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh1add.uw x10, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh1add.uw x28, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh1add.uw x11, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x21, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh1add.uw x25, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x20, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh1add.uw x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add.uw x12, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh1add.uw x12, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh1add.uw x5, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x12, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh1add.uw x20, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh1add.uw x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000fffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x6, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x20, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh1add.uw x3, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add.uw x25, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sh1add.uw x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh1add.uw x6, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh1add.uw x31, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sh1add.uw x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh1add.uw x1, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sh1add.uw x27, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x28, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add.uw x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh1add.uw x31, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x25, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x22, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add.uw x9, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh1add.uw x19, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0x0000000100000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh1add.uw x31, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x8, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x17, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add.uw x10, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh1add.uw x27, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sh1add.uw x21, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x13, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh1add.uw x21, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh1add.uw x20, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x5, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh1add.uw x18, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh1add.uw x5, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x19, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x18, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh1add.uw x26, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh1add.uw x13, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh1add.uw x19, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x8, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh1add.uw x12, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x371ff949a02b694a # initialize rs1
li x0, 0xf32ca67dfab8c8b5 # initialize rs2
sh1add.uw x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x74a6ed29aea76d88 # initialize rs1
li x1, 0xeeb429a3b3593958 # initialize rs2
sh1add.uw x31, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x3b1e43f54f866c36 # initialize rs1
li x2, 0xddb887d945fbf897 # initialize rs2
sh1add.uw x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1932af7b39d9925b # initialize rs1
li x3, 0x160d3d72f7ce0f59 # initialize rs2
sh1add.uw x21, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd57f5d1bf8d0b004 # initialize rs1
li x4, 0x595bc520c0be427a # initialize rs2
sh1add.uw x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9fb0fe67afa2cd50 # initialize rs1
li x5, 0x75db5cc3eb335b39 # initialize rs2
sh1add.uw x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x019504bbcfbd1693 # initialize rs1
li x6, 0xb82e07e5af243390 # initialize rs2
sh1add.uw x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe6b4110fd3d24226 # initialize rs1
li x7, 0xac29af13a6683151 # initialize rs2
sh1add.uw x10, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc6fb3ba98f05260e # initialize rs1
li x8, 0xf428f1adc5f62593 # initialize rs2
sh1add.uw x16, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5621fef60aecf886 # initialize rs1
li x9, 0x34751db8d2701656 # initialize rs2
sh1add.uw x11, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe072dcc5301504b1 # initialize rs1
li x10, 0xe3fca5cf4ce7cacc # initialize rs2
sh1add.uw x19, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x01ade17e36bbaa25 # initialize rs1
li x11, 0xee5da51dfc6ca4d8 # initialize rs2
sh1add.uw x17, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7079f08279c63f09 # initialize rs1
li x12, 0x7103cce4decc0983 # initialize rs2
sh1add.uw x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9c2fe543e6610164 # initialize rs1
li x13, 0x2f8b82b0da3bdf4f # initialize rs2
sh1add.uw x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xad4d82eeeaf681b9 # initialize rs1
li x14, 0x71377b8bdc40096e # initialize rs2
sh1add.uw x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x213e0e18d03d770f # initialize rs1
li x15, 0x8003b67952632ae3 # initialize rs2
sh1add.uw x30, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf278127f0e2626df # initialize rs1
li x16, 0xe05725ab11c8fb74 # initialize rs2
sh1add.uw x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf8c9dd247dd01656 # initialize rs1
li x17, 0x4cc6a3b072bbb880 # initialize rs2
sh1add.uw x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4b836f8a4123814e # initialize rs1
li x18, 0x94ee008facbebf52 # initialize rs2
sh1add.uw x1, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9b9deb301c9ffc72 # initialize rs1
li x19, 0x019d738921fa0f72 # initialize rs2
sh1add.uw x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x28b1f4797882793c # initialize rs1
li x20, 0x0751a8529c24fc52 # initialize rs2
sh1add.uw x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x306bb4a103b38a1f # initialize rs1
li x21, 0x55be859d59d92d36 # initialize rs2
sh1add.uw x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x26c32abbca5eecc8 # initialize rs1
li x22, 0x11e3b645e554eb0d # initialize rs2
sh1add.uw x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xb5a7bb9f14b7cebf # initialize rs1
li x23, 0xcc66884595b75afb # initialize rs2
sh1add.uw x6, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe8b8591d494870d3 # initialize rs1
li x24, 0xb2437be86d05b7ca # initialize rs2
sh1add.uw x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4aaa805d9ffcf023 # initialize rs1
li x25, 0xee1b3b1f5e811a57 # initialize rs2
sh1add.uw x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa92ec5cbc551a532 # initialize rs1
li x26, 0xa3a2d75d55d1be05 # initialize rs2
sh1add.uw x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9068150a0e27d1c1 # initialize rs1
li x27, 0x44b47ce1b90258d2 # initialize rs2
sh1add.uw x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x08e1e3803546f88b # initialize rs1
li x28, 0xdf3e32f090752549 # initialize rs2
sh1add.uw x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xfb80fadb27a187a2 # initialize rs1
li x29, 0xc5bb45049b57f049 # initialize rs2
sh1add.uw x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3981e54d4e5a36f7 # initialize rs1
li x30, 0xbc4eff18509e86b2 # initialize rs2
sh1add.uw x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa4304bdfe542bddc # initialize rs1
li x31, 0xf70cac06d5289de4 # initialize rs2
sh1add.uw x22, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xabd8092ac8376b43 # initialize rs1
li x21, 0xc25c211c72d64c7e # initialize rs2
sh1add.uw x0, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1d3f698693ea3bae # initialize rs1
li x28, 0x4ab84c02aea88966 # initialize rs2
sh1add.uw x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf009e5e5e065aab1 # initialize rs1
li x31, 0x6565e5472444768f # initialize rs2
sh1add.uw x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb1f695b9f35ceed6 # initialize rs1
li x17, 0x208e95c7da47dcff # initialize rs2
sh1add.uw x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe4e3bcda0ce355ff # initialize rs1
li x30, 0xd79bd048b77d3be5 # initialize rs2
sh1add.uw x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8258c2ff9e869efb # initialize rs1
li x11, 0xe73c9c4fd13dc5ca # initialize rs2
sh1add.uw x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82f1c386640e40dc # initialize rs1
li x27, 0x8f12dcb6723e268d # initialize rs2
sh1add.uw x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc23dd71a069148ca # initialize rs1
li x24, 0x6ac732581a789b13 # initialize rs2
sh1add.uw x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeabd191ea8ecf95f # initialize rs1
li x24, 0x50d85debfdadc38e # initialize rs2
sh1add.uw x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa29c1e44dd086b66 # initialize rs1
li x6, 0x42d44bb8e27b9f7c # initialize rs2
sh1add.uw x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfc4dc09ec8a715af # initialize rs1
li x9, 0x5d4f9f881e662554 # initialize rs2
sh1add.uw x10, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdc9cd7c1127a0af1 # initialize rs1
li x10, 0x04a6890feb28ff46 # initialize rs2
sh1add.uw x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xad292d18b57d6c33 # initialize rs1
li x2, 0x1c80b7799ddcd781 # initialize rs2
sh1add.uw x12, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdcebe826fe739685 # initialize rs1
li x22, 0xadf4f7a00c9d9f99 # initialize rs2
sh1add.uw x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x445d2ea789be9e81 # initialize rs1
li x7, 0x292836c6aa08d4d7 # initialize rs2
sh1add.uw x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2c5653b41822c180 # initialize rs1
li x8, 0x527aa1ae9dcbfded # initialize rs2
sh1add.uw x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8542d341dc1f9c19 # initialize rs1
li x24, 0x9336b4f98bf25cde # initialize rs2
sh1add.uw x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xcd7cecb076426119 # initialize rs1
li x16, 0x6538be21f269a649 # initialize rs2
sh1add.uw x17, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8302d8b0c4390829 # initialize rs1
li x28, 0x96c414c2b637f238 # initialize rs2
sh1add.uw x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd72b947ebb326276 # initialize rs1
li x29, 0xfe5e843d1cd320d2 # initialize rs2
sh1add.uw x19, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8c737104387b1f09 # initialize rs1
li x29, 0xfcaca84bbb1f1d61 # initialize rs2
sh1add.uw x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb7f9edeb2230c371 # initialize rs1
li x10, 0x04e8c73fb4882bce # initialize rs2
sh1add.uw x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xdd5b6f8fa3404ea3 # initialize rs1
li x31, 0x98cf3586cf9e550b # initialize rs2
sh1add.uw x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5357e252e00ddfaa # initialize rs1
li x29, 0x95cf064f77db58fd # initialize rs2
sh1add.uw x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0cf8c42b82435b17 # initialize rs1
li x6, 0xf9281482bd6cc1c6 # initialize rs2
sh1add.uw x24, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8f9f5c572fbae103 # initialize rs1
li x13, 0xc70193d8e8ed5ecb # initialize rs2
sh1add.uw x25, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8c7bb41155117f12 # initialize rs1
li x20, 0xeef2b21e9935c651 # initialize rs2
sh1add.uw x26, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7ee7880060f1a6c5 # initialize rs1
li x28, 0x16f122cd1d497e05 # initialize rs2
sh1add.uw x27, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x75b715e1975b39ed # initialize rs1
li x26, 0xa031511d11199067 # initialize rs2
sh1add.uw x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x48899a73fa40afe5 # initialize rs1
li x16, 0x838d3d64e91a5099 # initialize rs2
sh1add.uw x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd25a34792cf49e22 # initialize rs1
li x8, 0x9e9014e936b0a753 # initialize rs2
sh1add.uw x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8fef1ee8a432e62c # initialize rs1
li x3, 0x80fa6cce67e33a5e # initialize rs2
sh1add.uw x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x2, 0x3606043c50e546e8 # initialize rs1
li x0, 0x6b5d838133ae0953 # initialize rs2
sh1add.uw x0, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0xd98c58ff38932e1f # initialize rs1
li x1, 0xe4d18f91443d5ccb # initialize rs2
sh1add.uw x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0xc291d21cd81292bb # initialize rs1
li x2, 0x1e4d69b987b2172d # initialize rs2
sh1add.uw x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0x71c122fae8de2d3b # initialize rs1
li x3, 0x12a563c401529bbf # initialize rs2
sh1add.uw x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xd896f8ad0a85c40a # initialize rs1
li x4, 0xa8ced75ecc798062 # initialize rs2
sh1add.uw x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xd4d7789797d6aa4b # initialize rs1
li x5, 0xc1f2a5f5c166fe87 # initialize rs2
sh1add.uw x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xb95ac2239304b04b # initialize rs1
li x6, 0x52e50b1417fcc96d # initialize rs2
sh1add.uw x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x2a82302db079201f # initialize rs1
li x7, 0x3b64e433e30c6290 # initialize rs2
sh1add.uw x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xb29ab558c00cf77d # initialize rs1
li x8, 0xe828fc25a6965679 # initialize rs2
sh1add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0x68cc9419ddb0ffee # initialize rs1
li x9, 0xaea45405f4139a20 # initialize rs2
sh1add.uw x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x20, 0xcd136ad0c6003dc7 # initialize rs1
li x10, 0x557cb0d94503b986 # initialize rs2
sh1add.uw x10, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0xee83223c2368144d # initialize rs1
li x11, 0xde4ad6b7eaac0728 # initialize rs2
sh1add.uw x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xac1ab6da32718add # initialize rs1
li x12, 0xeaddfb7f2d59f27d # initialize rs2
sh1add.uw x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x6, 0x7df6adcb29552bc5 # initialize rs1
li x13, 0x103948895eb962f3 # initialize rs2
sh1add.uw x13, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0x32ee05fdf04b1db9 # initialize rs1
li x14, 0x7127e000fbcfb588 # initialize rs2
sh1add.uw x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xd7511003a3c62520 # initialize rs1
li x15, 0xb41fa1bc8791eccd # initialize rs2
sh1add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x12, 0xa1b46d27f4d385ee # initialize rs1
li x16, 0x3c21ad6571a3e589 # initialize rs2
sh1add.uw x16, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0xe53d2334738b3f17 # initialize rs1
li x17, 0x5ce469b42ae1ff77 # initialize rs2
sh1add.uw x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0x3cd8e8d71f38db4a # initialize rs1
li x18, 0x0400b6fd5375de28 # initialize rs2
sh1add.uw x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0xa9ab70f5f2a8a3aa # initialize rs1
li x19, 0x711ebe1ffc2d83a3 # initialize rs2
sh1add.uw x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x11, 0x5e00777b20c2d99b # initialize rs1
li x20, 0xb6057ae5a81b3b79 # initialize rs2
sh1add.uw x20, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x24, 0x7b464916844623be # initialize rs1
li x21, 0x2d6a27a34b561400 # initialize rs2
sh1add.uw x21, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0x65f0b60129b20d7e # initialize rs1
li x22, 0xd5b6a18d0f675a07 # initialize rs2
sh1add.uw x22, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x1b1d460acfc7bff0 # initialize rs1
li x23, 0x4430c693187e6239 # initialize rs2
sh1add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x11, 0xf8ea0b9d23300246 # initialize rs1
li x24, 0x359a3b0a3c2b89ad # initialize rs2
sh1add.uw x24, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x7f15be3c95d6e52b # initialize rs1
li x25, 0x68c4bb17f54696a5 # initialize rs2
sh1add.uw x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x19, 0x7a93b0b64f53c6a5 # initialize rs1
li x26, 0x3f755cd6557a00ef # initialize rs2
sh1add.uw x26, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x17, 0xd4525c596be64b7b # initialize rs1
li x27, 0x7e7937ace912be94 # initialize rs2
sh1add.uw x27, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x12, 0xb4e0ff494c10a623 # initialize rs1
li x28, 0xc0253b61a7c56d2d # initialize rs2
sh1add.uw x28, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa32e99773dc602ee # initialize rs1
li x29, 0xc7ac82ccd3dec6c2 # initialize rs2
sh1add.uw x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0x65faddca1712d147 # initialize rs1
li x30, 0xd55f8d2f59e959b5 # initialize rs2
sh1add.uw x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x21, 0x16966ece59b854d3 # initialize rs1
li x31, 0xbbd61825249fdfd4 # initialize rs2
sh1add.uw x31, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x797ee97361e788d4 # initialize rs1
li x0, 0x60a7e6da99ebaee0 # initialize rs2
sh1add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5ccc275b7919ff79 # initialize rs1
li x1, 0x630bbd1f87b0b837 # initialize rs2
sh1add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8f6ad40666e4e2c7 # initialize rs1
li x2, 0xcc84f68654cfb93b # initialize rs2
sh1add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x52551f6ff6b18cea # initialize rs1
li x3, 0x830f9e09cf154ea0 # initialize rs2
sh1add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1036f445f66369f # initialize rs1
li x4, 0x6bb19d73bb39f6e8 # initialize rs2
sh1add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbc075496da49e83d # initialize rs1
li x5, 0xc50efaa7e8fe9d0d # initialize rs2
sh1add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x487ee7812f61a422 # initialize rs1
li x6, 0x0747fde9ccca5d03 # initialize rs2
sh1add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f7cb31bd7e31780 # initialize rs1
li x7, 0xa30c97a23c9c3001 # initialize rs2
sh1add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfd17181352a81e91 # initialize rs1
li x8, 0xf0e3274c77c7eeb1 # initialize rs2
sh1add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x63169b4a59eb6aa4 # initialize rs1
li x9, 0x7a87fa0bcced7d15 # initialize rs2
sh1add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x84bf5cca764e2937 # initialize rs1
li x10, 0xc4ba0025246e507c # initialize rs2
sh1add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x52a225d35d9a00d3 # initialize rs1
li x11, 0x62537a0a11bbd04d # initialize rs2
sh1add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb96e435f26aa69e4 # initialize rs1
li x12, 0x1b8558d6d679c4f4 # initialize rs2
sh1add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x86e1e77f3a3e4f73 # initialize rs1
li x13, 0x06e0261ce7ccd14a # initialize rs2
sh1add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x1be339caecdeab77 # initialize rs1
li x14, 0x3bd90882ba1a3f4e # initialize rs2
sh1add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb729312697e2c4a7 # initialize rs1
li x15, 0x8f5ee914987a6f2e # initialize rs2
sh1add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd692075b488ac651 # initialize rs1
li x16, 0x6841370b17c4097a # initialize rs2
sh1add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa3e7df16135135de # initialize rs1
li x17, 0xada70f79ee393e26 # initialize rs2
sh1add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x38bad8932140f3b9 # initialize rs1
li x18, 0x6dcd6d1f6f3a08fb # initialize rs2
sh1add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x95a2d4d95656a113 # initialize rs1
li x19, 0x15eb65224a6b3eb8 # initialize rs2
sh1add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2b2dbdca60e55ca2 # initialize rs1
li x20, 0x6699b162fc7e5aaf # initialize rs2
sh1add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x8e06eec908f54ba6 # initialize rs1
li x21, 0x8194ab28c05cef42 # initialize rs2
sh1add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc7016600760b84a4 # initialize rs1
li x22, 0x98f09bab300b369c # initialize rs2
sh1add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0af5e2f233c12b78 # initialize rs1
li x23, 0x1f584160691e781a # initialize rs2
sh1add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbf821307e6917143 # initialize rs1
li x24, 0x97a16a5fb80c2bda # initialize rs2
sh1add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb5dfab125bdf8d48 # initialize rs1
li x25, 0x459a5b0b76713f87 # initialize rs2
sh1add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8c8e3d79da5893a1 # initialize rs1
li x26, 0xca76ccdf00115029 # initialize rs2
sh1add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2518751b952eff16 # initialize rs1
li x27, 0xac8bbd91cc5886b9 # initialize rs2
sh1add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x53d34fb1ba7cca96 # initialize rs1
li x28, 0x8deaacea52d4da72 # initialize rs2
sh1add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc18ef752b29347c9 # initialize rs1
li x29, 0xb01442eaabb4dc14 # initialize rs2
sh1add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0941bb44e58cce77 # initialize rs1
li x30, 0xdf7adc7fb1aee486 # initialize rs2
sh1add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x77b70d6fcca99dcf # initialize rs1
li x31, 0x06f867ddf265e79c # initialize rs2
sh1add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x18, x27 # perform first operation
sh1add.uw x20, x7, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x28, x14 # perform first operation
sh1add.uw x13, x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x9, x13 # perform first operation
sh1add.uw x31, x19, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x13 # perform first operation
sh1add.uw x20, x20, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x27, x7 # perform first operation
sh1add.uw x9, x20, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x28, x18 # perform first operation
sh1add.uw x18, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x15 # perform first operation
sh1add.uw x18, x20, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x7, x31 # perform first operation
sh1add.uw x2, x23, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x18, x10 # perform first operation
sh1add.uw x29, x8, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x1, x12 # perform first operation
sh1add.uw x1, x22, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x5, x24 # perform first operation
sh1add.uw x24, x10, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x13, x7 # perform first operation
sh1add.uw x10, x18, x23 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-sh3add.uw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x40c23f8cc02c6bcf # initialize rs1
li x14, 0xf6225db6ed99ef08 # initialize rs2
sh3add.uw x9, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8ad418ad516fe799 # initialize rs1
li x17, 0x9e5fb53e164baba3 # initialize rs2
sh3add.uw x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2f32eecbd79b7b20 # initialize rs1
li x24, 0x69f4896d1f76c2ef # initialize rs2
sh3add.uw x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa19e95a494a2f9e1 # initialize rs1
li x12, 0x485f8eaa8c6ff439 # initialize rs2
sh3add.uw x21, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x267db1cb04454913 # initialize rs1
li x28, 0xd9558a0fa032420b # initialize rs2
sh3add.uw x19, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x522785b0f2407b76 # initialize rs1
li x2, 0x1bad021b4eba09a9 # initialize rs2
sh3add.uw x24, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3b2f180543055554 # initialize rs1
li x31, 0x7e5b8ce9b7a7a2c1 # initialize rs2
sh3add.uw x23, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x014ae445d9f63990 # initialize rs1
li x31, 0x7324b0aa63678308 # initialize rs2
sh3add.uw x17, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdc8420ba0070b5d0 # initialize rs1
li x13, 0xf67797aeb88f3fd5 # initialize rs2
sh3add.uw x16, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x84f337b92071bd47 # initialize rs1
li x8, 0xa18f9b76c629882e # initialize rs2
sh3add.uw x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2d2ca63c263fd90a # initialize rs1
li x7, 0x24676882f087bfae # initialize rs2
sh3add.uw x13, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xeb011c43f1f56f01 # initialize rs1
li x25, 0x68e130c292684089 # initialize rs2
sh3add.uw x20, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x10edb4651cfb7e47 # initialize rs1
li x30, 0x7b0d90e947ba441e # initialize rs2
sh3add.uw x18, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9a3e580b26838799 # initialize rs1
li x22, 0x8967bbd0102b61cc # initialize rs2
sh3add.uw x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9225474cdd839703 # initialize rs1
li x30, 0xf7638122d2fca021 # initialize rs2
sh3add.uw x13, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf12cd3aff4759310 # initialize rs1
li x1, 0x14dabeb7c5b35ab6 # initialize rs2
sh3add.uw x6, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x2bb237c8bdc53d1a # initialize rs1
li x7, 0xd7f211d2062acd57 # initialize rs2
sh3add.uw x17, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe16815b534ee18e5 # initialize rs1
li x11, 0x01c2f4796d95cf8d # initialize rs2
sh3add.uw x19, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6d8e813d112d8cea # initialize rs1
li x5, 0x75830a8f63513f5a # initialize rs2
sh3add.uw x31, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x907173f053a14ff2 # initialize rs1
li x28, 0xf1717393871eb92a # initialize rs2
sh3add.uw x20, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7dd3cb8ecbc22aa9 # initialize rs1
li x12, 0x960ce8449725154b # initialize rs2
sh3add.uw x9, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7b26fe60c4ed79c8 # initialize rs1
li x31, 0x985f531f7b2df079 # initialize rs2
sh3add.uw x3, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa476e439fc3f247e # initialize rs1
li x18, 0x36f6dec7c713d8a3 # initialize rs2
sh3add.uw x28, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbe5f1849f19079f3 # initialize rs1
li x19, 0x3974b71bc0dcaf0b # initialize rs2
sh3add.uw x22, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xea219bae27da0971 # initialize rs1
li x12, 0xe5974bd6e5157b84 # initialize rs2
sh3add.uw x9, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0fe0b81b4a5bcc8f # initialize rs1
li x23, 0xb4f0132de75b8757 # initialize rs2
sh3add.uw x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x55f747e574f603d0 # initialize rs1
li x29, 0x18f1e5e9c5156844 # initialize rs2
sh3add.uw x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x99f15384e0b7c5ca # initialize rs1
li x3, 0xa5cbd0ae95ee2c49 # initialize rs2
sh3add.uw x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x58d407aad9f6296f # initialize rs1
li x3, 0x0538049ae2778660 # initialize rs2
sh3add.uw x21, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdd024b96da304466 # initialize rs1
li x7, 0x8e3c2e153ba3804a # initialize rs2
sh3add.uw x9, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x39ef5404619fe331 # initialize rs1
li x10, 0x8df8ac4f4954104b # initialize rs2
sh3add.uw x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8ed33604ea4229fe # initialize rs1
li x13, 0xe9f11e4947261158 # initialize rs2
sh3add.uw x1, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0x117ec7dd97eaf3c1 # initialize rs1
li x0, 0xd688b77f88cc2d1a # initialize rs2
sh3add.uw x23, x31, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x3d14bce0442f5cf9 # initialize rs1
li x1, 0x56edc31189cb72dd # initialize rs2
sh3add.uw x16, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xe3862e3cbe615645 # initialize rs1
li x2, 0xb5aec0f4f200684a # initialize rs2
sh3add.uw x11, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xaf1c2438cade1809 # initialize rs1
li x3, 0x7ee8e68dee19783e # initialize rs2
sh3add.uw x26, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xcd23d1b4beed602e # initialize rs1
li x4, 0xe1e1a6c8ef7c82ef # initialize rs2
sh3add.uw x17, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xefdc16394a3c7025 # initialize rs1
li x5, 0x2b92dcdfbc830255 # initialize rs2
sh3add.uw x14, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xba1ca12c8fb1daa8 # initialize rs1
li x6, 0x3417e4abcfe4e567 # initialize rs2
sh3add.uw x30, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x22bc0a42a22c918a # initialize rs1
li x7, 0x9073c1f1cd4b246c # initialize rs2
sh3add.uw x22, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x1fe712e83d817a2a # initialize rs1
li x8, 0xbeb184af683d537e # initialize rs2
sh3add.uw x6, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0xec8bec6b186fef7a # initialize rs1
li x9, 0x612e7ab1af0b0a6d # initialize rs2
sh3add.uw x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xec2395b695de4609 # initialize rs1
li x10, 0xcdfc4e5cd42fe50b # initialize rs2
sh3add.uw x30, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0x87833ddebbff6775 # initialize rs1
li x11, 0xb9992ae32543224f # initialize rs2
sh3add.uw x14, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x5a3f7f5c05d40b03 # initialize rs1
li x12, 0x814357c856033a52 # initialize rs2
sh3add.uw x10, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x4c271b4bf3c45047 # initialize rs1
li x13, 0xf32e755206716887 # initialize rs2
sh3add.uw x11, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xddb8641623c7bed3 # initialize rs1
li x14, 0xfa952974fd7e0aba # initialize rs2
sh3add.uw x5, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0xead6c29a49afd4a3 # initialize rs1
li x15, 0x11585a34bbc8d6c8 # initialize rs2
sh3add.uw x14, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xd4123a85230a1514 # initialize rs1
li x16, 0x72b82243bbfdd3e0 # initialize rs2
sh3add.uw x3, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xee93a290f5a80f63 # initialize rs1
li x17, 0xbbd0e8356f61774c # initialize rs2
sh3add.uw x12, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0xeef18a461b88d235 # initialize rs1
li x18, 0x5d5bc16a9ed6cbd6 # initialize rs2
sh3add.uw x28, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x4f1464fd87d6abe8 # initialize rs1
li x19, 0x47d8c7e141b9f81d # initialize rs2
sh3add.uw x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0xb580b1243f70d7db # initialize rs1
li x20, 0x3f006da4e4cb2ec3 # initialize rs2
sh3add.uw x12, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0xe69de568933dc64d # initialize rs1
li x21, 0xd1939544393a0d0f # initialize rs2
sh3add.uw x9, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0xba80b67d08c5cb84 # initialize rs1
li x22, 0xee5cf70f6b179c00 # initialize rs2
sh3add.uw x7, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0xb087ad5ec380b62a # initialize rs1
li x23, 0xc448f0424a93e78a # initialize rs2
sh3add.uw x25, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x89ba2d20ce8940cd # initialize rs1
li x24, 0x601cc6c9f9b9feb2 # initialize rs2
sh3add.uw x8, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xa607d81ad1e6be5c # initialize rs1
li x25, 0x8dcf2339a98b8d2a # initialize rs2
sh3add.uw x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x86b0b7a399dc7b17 # initialize rs1
li x26, 0x97308ce9ff0508c7 # initialize rs2
sh3add.uw x3, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x6f7d4621b292d20d # initialize rs1
li x27, 0xe775f8357a06076d # initialize rs2
sh3add.uw x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x33f7d65fccba77fd # initialize rs1
li x28, 0x6f066eb0bcf18569 # initialize rs2
sh3add.uw x13, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x3c37baf05b4a220c # initialize rs1
li x29, 0xb6b71ded6d0a3757 # initialize rs2
sh3add.uw x26, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x6ed6ff60eeec18d0 # initialize rs1
li x30, 0x6fc24c1c4b172ca6 # initialize rs2
sh3add.uw x15, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x7e26da2890b8236e # initialize rs1
li x31, 0xbcf4b9f7e222eddf # initialize rs2
sh3add.uw x28, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x26e3c597fe248457 # initialize rs1
li x11, 0xd0651a667cecd548 # initialize rs2
sh3add.uw x0, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x11, 0xa4ce4c63718f0edd # initialize rs1
li x10, 0x31f94981e79509db # initialize rs2
sh3add.uw x1, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x14, 0xa2023364e6ee3425 # initialize rs1
li x19, 0xdbe02bdb0a60dda8 # initialize rs2
sh3add.uw x2, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x26b4c5e21f7671f2 # initialize rs1
li x11, 0x6980e177dfd85973 # initialize rs2
sh3add.uw x3, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xcbcef8cf8cdb85a7 # initialize rs1
li x6, 0x49be0785f6ed568b # initialize rs2
sh3add.uw x4, x1, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x1bfd8405e9c46f79 # initialize rs1
li x9, 0x6e2f6fc65266083f # initialize rs2
sh3add.uw x5, x7, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xeb57f66768d94199 # initialize rs1
li x23, 0x4225e3a1c459df6d # initialize rs2
sh3add.uw x6, x28, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x36c569baeb6d5581 # initialize rs1
li x17, 0xeca962de8cb65c90 # initialize rs2
sh3add.uw x7, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x43e917620e86de2b # initialize rs1
li x13, 0x3c921dd638a2d32c # initialize rs2
sh3add.uw x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xf902c4aaf2e5c696 # initialize rs1
li x29, 0x0f06f396b79bd5f4 # initialize rs2
sh3add.uw x9, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x4cd723acbaef511b # initialize rs1
li x15, 0xce4123733c8fb5f9 # initialize rs2
sh3add.uw x10, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x7444013756499ba1 # initialize rs1
li x26, 0x8ae2631b7c4e5c0f # initialize rs2
sh3add.uw x11, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x275c107e633fba2a # initialize rs1
li x20, 0x39948a936a9a0d91 # initialize rs2
sh3add.uw x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x06c8a037d1fa8728 # initialize rs1
li x3, 0xbfe6a9d09e6aa16d # initialize rs2
sh3add.uw x13, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x4f6e70e291ebcd08 # initialize rs1
li x28, 0x531b5e395d259af8 # initialize rs2
sh3add.uw x14, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x0fdf0a6cfb4fa0c8 # initialize rs1
li x19, 0xb9140e99b4901213 # initialize rs2
sh3add.uw x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x5ce37839a462ac4a # initialize rs1
li x14, 0xbf58b02fd9ee9276 # initialize rs2
sh3add.uw x16, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xda8420738256fe5d # initialize rs1
li x20, 0xe75a0b82eaf53758 # initialize rs2
sh3add.uw x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x717b2365d84e0d52 # initialize rs1
li x26, 0xb81198e72a5f3cdf # initialize rs2
sh3add.uw x18, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0xf8a8ef70fb3e2d71 # initialize rs1
li x19, 0x53118e0e030e516b # initialize rs2
sh3add.uw x19, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0xe85f09322a402fe4 # initialize rs1
li x16, 0xa56b8b92f1c75995 # initialize rs2
sh3add.uw x20, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x27b6e0c27a641ac3 # initialize rs1
li x2, 0x898c8fb871bf687f # initialize rs2
sh3add.uw x21, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xe6940afe50bdd5e4 # initialize rs1
li x27, 0xd76152cd2c7cd0a4 # initialize rs2
sh3add.uw x22, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x03a6347e312a669f # initialize rs1
li x23, 0x9002b9fea4ee4cc3 # initialize rs2
sh3add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0xbf92e808a7a581ce # initialize rs1
li x11, 0xe18d9c522256eb95 # initialize rs2
sh3add.uw x24, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x5aa2c9d49bf7c0b7 # initialize rs1
li x19, 0xb5704a4f9462feb0 # initialize rs2
sh3add.uw x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x019adbea73f3eb7d # initialize rs1
li x3, 0xc537fe8aa9751fa1 # initialize rs2
sh3add.uw x26, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x2425465a01d02df0 # initialize rs1
li x21, 0x0ad1eab8b9a323b6 # initialize rs2
sh3add.uw x27, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x291d60a9a530677d # initialize rs1
li x16, 0x8fb52aa22a13cfce # initialize rs2
sh3add.uw x28, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0xae5841068713c946 # initialize rs1
li x19, 0x75888f7fcb4ed207 # initialize rs2
sh3add.uw x29, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x8ec308b49b501543 # initialize rs1
li x14, 0x1c381995cd1b9676 # initialize rs2
sh3add.uw x30, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0xdd79123094c39cf5 # initialize rs1
li x22, 0x6a3e28e5d1acd1ae # initialize rs2
sh3add.uw x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x9, 0x32b07ae6467bb31f # initialize rs2
sh3add.uw x23, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x28, 0xb191df5411fbda81 # initialize rs2
sh3add.uw x8, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x0000000000000002 # initialize rs1
li x23, 0xb8e481973b7b8026 # initialize rs2
sh3add.uw x13, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x2, 0x17b8462ba29d70d2 # initialize rs2
sh3add.uw x6, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x29, 0xaa16101e5c36050b # initialize rs2
sh3add.uw x12, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0xfc2c1365a3d9946a # initialize rs2
sh3add.uw x13, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5505b714a0385b3e # initialize rs2
sh3add.uw x12, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x2, 0x707c4324ee5040d0 # initialize rs2
sh3add.uw x5, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x12, 0x36e36d37b8510fa5 # initialize rs2
sh3add.uw x23, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xa44aa00b9ae52cfe # initialize rs2
sh3add.uw x29, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8cb02c98c3438a5f # initialize rs2
sh3add.uw x21, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x22, 0x27fd1761818424f5 # initialize rs2
sh3add.uw x19, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x21, 0xe6fd38f8711b250d # initialize rs2
sh3add.uw x28, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x28, 0xf5e9f997eeada283 # initialize rs2
sh3add.uw x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x14, 0x62f4701f19fadb3c # initialize rs2
sh3add.uw x24, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x30, 0x7f2f2521208c3d30 # initialize rs2
sh3add.uw x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xc2a2ef76ea2eb189 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh3add.uw x20, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x49c04f7b4208614e # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh3add.uw x2, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0xd26705801139b287 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh3add.uw x9, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x2, 0x52bdf87c252b140c # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh3add.uw x28, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x51b9510c153e1bbb # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh3add.uw x17, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x25a592704781fe13 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh3add.uw x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0xb84555d7be29cf36 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x8, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0xdcef08b8dec2535c # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh3add.uw x2, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x015ceaec4615d682 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x9, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0xdb04cb4ef930b334 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x29, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xa848acf2cfa1cb73 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x28, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x46ce45d7ba9b5374 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh3add.uw x8, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xfa879b903f61cc43 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh3add.uw x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x446c4b46b336e41f # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh3add.uw x5, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x29, 0x244f70952a762795 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add.uw x13, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0x3708a116792a360b # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sh3add.uw x3, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh3add.uw x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh3add.uw x17, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh3add.uw x3, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh3add.uw x10, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x22, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh3add.uw x5, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh3add.uw x28, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x15, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add.uw x12, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh3add.uw x2, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh3add.uw x22, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sh3add.uw x19, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x25, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add.uw x15, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x13, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sh3add.uw x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add.uw x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh3add.uw x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add.uw x2, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x10, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sh3add.uw x13, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x26, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh3add.uw x8, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh3add.uw x25, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x9, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x30, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x6, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add.uw x27, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh3add.uw x10, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add.uw x24, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x22, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh3add.uw x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x31, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add.uw x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh3add.uw x20, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh3add.uw x31, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sh3add.uw x31, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0x0000000000000002 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add.uw x9, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh3add.uw x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x24, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sh3add.uw x26, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x17, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000002 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x5, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh3add.uw x25, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add.uw x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh3add.uw x29, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x15, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add.uw x28, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh3add.uw x18, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add.uw x26, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x13, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh3add.uw x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh3add.uw x10, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sh3add.uw x25, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh3add.uw x23, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x28, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh3add.uw x18, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh3add.uw x7, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x10, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x30, 0x8000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh3add.uw x29, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh3add.uw x9, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh3add.uw x3, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x13, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add.uw x8, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x29, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sh3add.uw x10, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add.uw x6, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh3add.uw x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh3add.uw x16, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh3add.uw x3, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh3add.uw x30, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x19, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x19, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x8000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x11, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh3add.uw x24, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add.uw x23, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
sh3add.uw x31, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh3add.uw x24, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x19, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh3add.uw x30, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh3add.uw x18, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x21, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x19, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh3add.uw x1, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh3add.uw x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x18, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x1, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x5, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x15, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add.uw x12, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x27, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh3add.uw x26, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh3add.uw x30, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh3add.uw x26, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x21, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sh3add.uw x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh3add.uw x31, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sh3add.uw x18, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh3add.uw x13, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x2, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add.uw x11, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh3add.uw x12, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x22, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add.uw x14, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add.uw x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh3add.uw x9, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add.uw x21, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh3add.uw x20, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x17, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh3add.uw x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add.uw x18, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh3add.uw x13, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh3add.uw x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add.uw x25, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh3add.uw x27, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add.uw x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh3add.uw x21, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x18, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x11, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x11, 0xffffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh3add.uw x5, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x8, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sh3add.uw x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x25, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sh3add.uw x24, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh3add.uw x22, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh3add.uw x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x25, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add.uw x24, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh3add.uw x7, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh3add.uw x28, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh3add.uw x26, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh3add.uw x19, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x3, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh3add.uw x26, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh3add.uw x6, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x7, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x2, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh3add.uw x27, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh3add.uw x17, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh3add.uw x12, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add.uw x27, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh3add.uw x2, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh3add.uw x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh3add.uw x6, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh3add.uw x14, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x23, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sh3add.uw x23, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh3add.uw x5, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x31, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add.uw x24, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x1, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x29, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sh3add.uw x10, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
sh3add.uw x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x19, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh3add.uw x9, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh3add.uw x6, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh3add.uw x21, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x26, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add.uw x9, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sh3add.uw x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh3add.uw x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x7, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh3add.uw x31, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh3add.uw x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x23, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x21, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add.uw x13, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh3add.uw x7, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh3add.uw x26, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add.uw x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh3add.uw x10, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh3add.uw x23, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh3add.uw x24, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x27, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add.uw x29, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add.uw x15, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh3add.uw x16, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh3add.uw x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x9, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh3add.uw x15, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh3add.uw x3, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5555555555555555 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x6, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x12, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh3add.uw x22, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sh3add.uw x7, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh3add.uw x30, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh3add.uw x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh3add.uw x28, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x26, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh3add.uw x2, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh3add.uw x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh3add.uw x17, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add.uw x21, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x24, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh3add.uw x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh3add.uw x5, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x9, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sh3add.uw x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x6, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x16, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add.uw x14, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add.uw x26, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh3add.uw x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x15, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add.uw x19, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh3add.uw x29, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sh3add.uw x26, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sh3add.uw x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add.uw x3, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x29, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh3add.uw x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh3add.uw x3, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh3add.uw x20, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x17, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x7, 0x00000000fffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh3add.uw x10, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x25, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh3add.uw x30, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh3add.uw x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x27, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x9, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh3add.uw x18, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x31, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sh3add.uw x18, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add.uw x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add.uw x5, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh3add.uw x18, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x9, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sh3add.uw x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh3add.uw x31, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x17, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x26, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x12, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x10, 0x0000000100000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh3add.uw x2, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh3add.uw x30, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add.uw x24, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add.uw x30, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x23, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh3add.uw x6, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sh3add.uw x15, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh3add.uw x12, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh3add.uw x25, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh3add.uw x5, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add.uw x24, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh3add.uw x26, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh3add.uw x12, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh3add.uw x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh3add.uw x1, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add.uw x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add.uw x20, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x0000000100000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh3add.uw x28, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh3add.uw x6, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh3add.uw x22, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh3add.uw x18, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh3add.uw x20, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc75e2ed017c94195 # initialize rs1
li x0, 0xa68bf317d86a9be9 # initialize rs2
sh3add.uw x15, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8c70324688a0360b # initialize rs1
li x1, 0xef9b3ebb2703df2f # initialize rs2
sh3add.uw x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xec73f5a262a7c900 # initialize rs1
li x2, 0xa7e0056e11b3640e # initialize rs2
sh3add.uw x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x14af26af2a9425cb # initialize rs1
li x3, 0xaa48d75105a3170a # initialize rs2
sh3add.uw x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5b7d8768e55fca5b # initialize rs1
li x4, 0x57cc03782d661945 # initialize rs2
sh3add.uw x5, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x0c5b3e3a2814044b # initialize rs1
li x5, 0xe36bf91c242a1435 # initialize rs2
sh3add.uw x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x611c9bcc91a60ea8 # initialize rs1
li x6, 0x4e4b1c219c72b67c # initialize rs2
sh3add.uw x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe020786951f31e4d # initialize rs1
li x7, 0xaa69daadd722c593 # initialize rs2
sh3add.uw x9, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1715a97139417190 # initialize rs1
li x8, 0xe184d618abf4a248 # initialize rs2
sh3add.uw x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x117f878e44b9f803 # initialize rs1
li x9, 0x2aa45621c2baf6ab # initialize rs2
sh3add.uw x28, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcc432971b8d89df9 # initialize rs1
li x10, 0xec1e41d33855b970 # initialize rs2
sh3add.uw x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x976bffbd5bca56fe # initialize rs1
li x11, 0x92ec1e70b44f06b7 # initialize rs2
sh3add.uw x21, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2caf01a37617808d # initialize rs1
li x12, 0xdbeb91bb7c2d6f31 # initialize rs2
sh3add.uw x2, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8934de100f752827 # initialize rs1
li x13, 0xbd0096d9ad349f03 # initialize rs2
sh3add.uw x30, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x67bed49fc42a1149 # initialize rs1
li x14, 0xbd2a6c74cec37e12 # initialize rs2
sh3add.uw x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd3c1f54185aaf00e # initialize rs1
li x15, 0x3c1759dd9b5f07ac # initialize rs2
sh3add.uw x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe830809434e56c54 # initialize rs1
li x16, 0xe477821c8771ff0d # initialize rs2
sh3add.uw x10, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xb8f66c17526d076f # initialize rs1
li x17, 0xd3dcd8bbd64469bf # initialize rs2
sh3add.uw x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd43e643265d0fe27 # initialize rs1
li x18, 0x8ced7c70a06d490e # initialize rs2
sh3add.uw x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd02c79f2c743fb03 # initialize rs1
li x19, 0x3a624140ea0f2d5a # initialize rs2
sh3add.uw x31, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x62a51afd267c8e0e # initialize rs1
li x20, 0x4b0b9a2c11e4fb86 # initialize rs2
sh3add.uw x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4d7f562937c2ad1a # initialize rs1
li x21, 0x59cb9dd2934e50af # initialize rs2
sh3add.uw x10, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa024de49be65848b # initialize rs1
li x22, 0xfc962a72e7f7e48b # initialize rs2
sh3add.uw x10, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x845a608b2b9d2b8c # initialize rs1
li x23, 0xb43931087b623fc4 # initialize rs2
sh3add.uw x20, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x368b732bb091eba3 # initialize rs1
li x24, 0x74396fa6d67c42a0 # initialize rs2
sh3add.uw x13, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4b5b66bd184ac0a0 # initialize rs1
li x25, 0x059530d6a8bf240b # initialize rs2
sh3add.uw x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa20d057b7703e9a0 # initialize rs1
li x26, 0xfde59b1af2744d1c # initialize rs2
sh3add.uw x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1f160f404b737810 # initialize rs1
li x27, 0x02c70870893d11d4 # initialize rs2
sh3add.uw x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x465e4ad4aedac7a7 # initialize rs1
li x28, 0x46449992317408ac # initialize rs2
sh3add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa404787433f69e52 # initialize rs1
li x29, 0xc5c9df3e24e45ad1 # initialize rs2
sh3add.uw x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x82137d418123de26 # initialize rs1
li x30, 0x87d24b3606e93ab8 # initialize rs2
sh3add.uw x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6c539ee82496252d # initialize rs1
li x31, 0x4315aeb041af60ac # initialize rs2
sh3add.uw x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x739464640627155b # initialize rs1
li x25, 0x9bfc4ebd22c21219 # initialize rs2
sh3add.uw x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc17d12dbe3cff8d0 # initialize rs1
li x18, 0xdfe6d0f263991a97 # initialize rs2
sh3add.uw x1, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfd639dd3db635dad # initialize rs1
li x16, 0x2e20429e17623e63 # initialize rs2
sh3add.uw x2, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x83c6a3f954d808b8 # initialize rs1
li x6, 0x842b630325990810 # initialize rs2
sh3add.uw x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x85b56b1d0f04e118 # initialize rs1
li x17, 0xa7585b78eb213075 # initialize rs2
sh3add.uw x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0592e1a707860338 # initialize rs1
li x7, 0x0eaea8b07965210c # initialize rs2
sh3add.uw x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5d7399a6eaab00db # initialize rs1
li x12, 0xe248b0c01e8377a8 # initialize rs2
sh3add.uw x6, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa7c4c3be8572ce5 # initialize rs1
li x23, 0xf6e43a08b2ccbf63 # initialize rs2
sh3add.uw x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6cdc85d0e2c4732d # initialize rs1
li x14, 0x8074309fce205cfc # initialize rs2
sh3add.uw x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc32f5c4908dfc5ee # initialize rs1
li x6, 0x44e16ad9df9a5305 # initialize rs2
sh3add.uw x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1884e7ffcf41a708 # initialize rs1
li x2, 0xd267405447737907 # initialize rs2
sh3add.uw x10, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x19b767e828bfae98 # initialize rs1
li x21, 0xcd0704ad547781db # initialize rs2
sh3add.uw x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5b783eec2496c158 # initialize rs1
li x9, 0x3c29b0924314a5cf # initialize rs2
sh3add.uw x12, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x612d136e10d9998f # initialize rs1
li x25, 0xd38ede973a78bb08 # initialize rs2
sh3add.uw x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeb618d21524135e7 # initialize rs1
li x2, 0xf9b2de9b17555a1d # initialize rs2
sh3add.uw x14, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xaf72be8954e4be1b # initialize rs1
li x27, 0xf13bdfc6b1838e5c # initialize rs2
sh3add.uw x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x30bbaac03611e546 # initialize rs1
li x11, 0x8d41efb59338cfa7 # initialize rs2
sh3add.uw x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5ff386a814c953e5 # initialize rs1
li x11, 0x215a7549d9cad98b # initialize rs2
sh3add.uw x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdbbcbf2fdaa7db07 # initialize rs1
li x22, 0x3be4e50f2ebfe17f # initialize rs2
sh3add.uw x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x12963f153dd508c9 # initialize rs1
li x18, 0x1375c104a4bc58a0 # initialize rs2
sh3add.uw x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbc8a91a4d891d89a # initialize rs1
li x27, 0x56c3288b2e17e774 # initialize rs2
sh3add.uw x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb58eff68ce2eab9e # initialize rs1
li x5, 0x82b65fe705a7d168 # initialize rs2
sh3add.uw x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x100903e344bd7f44 # initialize rs1
li x7, 0xc00c59c2dca4646b # initialize rs2
sh3add.uw x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5f3a00c6dec565a0 # initialize rs1
li x6, 0x5efaea44e906d21a # initialize rs2
sh3add.uw x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5b9db01fff119d57 # initialize rs1
li x3, 0x7c70264a42d8da81 # initialize rs2
sh3add.uw x24, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9d236b77750e2847 # initialize rs1
li x17, 0xbf7c5e4c1cb26e24 # initialize rs2
sh3add.uw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe99832514e5abc6e # initialize rs1
li x6, 0x66581d04cb900276 # initialize rs2
sh3add.uw x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcd5899672f9381ff # initialize rs1
li x3, 0x0aadf5c413140804 # initialize rs2
sh3add.uw x27, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeb6b5c0737b1f06f # initialize rs1
li x13, 0xdba4a0b87c4f86f7 # initialize rs2
sh3add.uw x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe88de2bbee711192 # initialize rs1
li x26, 0xe6002c4d49c1947f # initialize rs2
sh3add.uw x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x33a06e681d9b826c # initialize rs1
li x31, 0x6cf3ee3ce8015c34 # initialize rs2
sh3add.uw x30, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfca7e0ed0b5e2d95 # initialize rs1
li x10, 0x80436f5b2229dd2e # initialize rs2
sh3add.uw x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x631aa2c1da96073b # initialize rs1
li x0, 0x8b8043c0acd8eeaf # initialize rs2
sh3add.uw x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x14, 0xc8ce9592ad222bd9 # initialize rs1
li x1, 0x6d98d23d67404d8a # initialize rs2
sh3add.uw x1, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x0a6228d2a97b2e46 # initialize rs1
li x2, 0x37737b2d0b938736 # initialize rs2
sh3add.uw x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x37ccf0f90c58ceb7 # initialize rs1
li x3, 0x0b1b66f30b54d2fb # initialize rs2
sh3add.uw x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x2104b87c919f810a # initialize rs1
li x4, 0x89cd0440243cb44e # initialize rs2
sh3add.uw x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x175d1f46b7ecad4d # initialize rs1
li x5, 0xb888f391a6a486a2 # initialize rs2
sh3add.uw x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x4, 0x6fe18a77a6bda6e4 # initialize rs1
li x6, 0x67b44eb5d4aa6578 # initialize rs2
sh3add.uw x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xbb5669edfa20b6f5 # initialize rs1
li x7, 0xd66e4ddccd2b6399 # initialize rs2
sh3add.uw x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x10, 0x1d19272151b80846 # initialize rs1
li x8, 0x96741be4140a952b # initialize rs2
sh3add.uw x8, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0x9cd74af24bd0ddd8 # initialize rs1
li x9, 0xb93df4a6a2653720 # initialize rs2
sh3add.uw x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x31, 0x52b6aa435dcdd282 # initialize rs1
li x10, 0xa4cf507cb59e97e5 # initialize rs2
sh3add.uw x10, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x8, 0x6136b4e0a4f32bef # initialize rs1
li x11, 0x7dd478b0714ed8e2 # initialize rs2
sh3add.uw x11, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0xd0192794e3af652e # initialize rs1
li x12, 0x5598e5cca9d1293c # initialize rs2
sh3add.uw x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x29, 0x9c1bebbdebcf95d9 # initialize rs1
li x13, 0x8aa6f777e541590c # initialize rs2
sh3add.uw x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x963a5522e154f7fd # initialize rs1
li x14, 0xe608c929868277dd # initialize rs2
sh3add.uw x14, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x5b46d2ad466f14c3 # initialize rs1
li x15, 0x6dec1548a9f5a381 # initialize rs2
sh3add.uw x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x26, 0xc4580b844c7a6fdb # initialize rs1
li x16, 0x0cd32e9020b88bfd # initialize rs2
sh3add.uw x16, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x48e8e2e50331fd90 # initialize rs1
li x17, 0xcefd5831e1555dad # initialize rs2
sh3add.uw x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0x555be5ab8b46142c # initialize rs1
li x18, 0x3932ed10a327aeee # initialize rs2
sh3add.uw x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x5, 0x35f96a5e12b578d8 # initialize rs1
li x19, 0x5ee3f9d636356751 # initialize rs2
sh3add.uw x19, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xda9ad56366a1b948 # initialize rs1
li x20, 0xb140e68e41483fb6 # initialize rs2
sh3add.uw x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x10, 0x75fb86ecce4fcc2f # initialize rs1
li x21, 0xb6f2ace9aa804d0d # initialize rs2
sh3add.uw x21, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x7, 0x555304b9ba823e3e # initialize rs1
li x22, 0x37c6f629199ba5c7 # initialize rs2
sh3add.uw x22, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x31, 0xe04dedb962cd0aa9 # initialize rs1
li x23, 0x88395dbc5fe7cdfb # initialize rs2
sh3add.uw x23, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc8dcbf1fd01669a0 # initialize rs1
li x24, 0xfee11667ee87f16d # initialize rs2
sh3add.uw x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x95fa5a5a9c4e2097 # initialize rs1
li x25, 0x8fd0466e8a5447d2 # initialize rs2
sh3add.uw x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x30, 0xedc305319167ba59 # initialize rs1
li x26, 0x9772901b4f26e844 # initialize rs2
sh3add.uw x26, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0x7531d4dfed5e1741 # initialize rs1
li x27, 0xc8383f0546e42a92 # initialize rs2
sh3add.uw x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0x82747ba731de8d17 # initialize rs1
li x28, 0x6c165bef5b455b5e # initialize rs2
sh3add.uw x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0x154924d81b9166e0 # initialize rs1
li x29, 0x22ca3a1dd9b991d1 # initialize rs2
sh3add.uw x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x779d69b1a423c150 # initialize rs1
li x30, 0x9f50ddbd001b3739 # initialize rs2
sh3add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0x94ee4f73437723fa # initialize rs1
li x31, 0xfe08a48c82d01fa2 # initialize rs2
sh3add.uw x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8eee701797e19844 # initialize rs1
li x0, 0x1b63ede9dac83638 # initialize rs2
sh3add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc9d58a4c3c29f565 # initialize rs1
li x1, 0x99240e370e151ce5 # initialize rs2
sh3add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x701570199f889cfd # initialize rs1
li x2, 0xb2677d46d8b1d531 # initialize rs2
sh3add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3adf39d95e5e019f # initialize rs1
li x3, 0x58020de2d8f7fc7b # initialize rs2
sh3add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58f6641233cc0691 # initialize rs1
li x4, 0x8503a8a2a72afa7e # initialize rs2
sh3add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7b1a0b915dbf851c # initialize rs1
li x5, 0x9f52d4e8e8d56fff # initialize rs2
sh3add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xafa9ddfe18dd4a78 # initialize rs1
li x6, 0x3c47ba9afb0f6f91 # initialize rs2
sh3add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcb57659eb3d5be86 # initialize rs1
li x7, 0xa81d412f153cd373 # initialize rs2
sh3add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0a36dc80e5fc50b3 # initialize rs1
li x8, 0x32e1fc5a26fb1c21 # initialize rs2
sh3add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xedd80e8528fb899b # initialize rs1
li x9, 0x8900604addb1ebdb # initialize rs2
sh3add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xfd40c592859ce88e # initialize rs1
li x10, 0x6c58c7a5711a341e # initialize rs2
sh3add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb60ca65a7c8ef460 # initialize rs1
li x11, 0x422215d5e0891547 # initialize rs2
sh3add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2cd00165e1a98e27 # initialize rs1
li x12, 0x2f99e17384fb651f # initialize rs2
sh3add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3959f81f79c00132 # initialize rs1
li x13, 0xc88c9aba4a2abbbf # initialize rs2
sh3add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa6a694e58b2918c4 # initialize rs1
li x14, 0x5e60868ef7d85b7e # initialize rs2
sh3add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x344fe537af7c6ec0 # initialize rs1
li x15, 0x710871a906b20c4b # initialize rs2
sh3add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8a4616e787361cd9 # initialize rs1
li x16, 0x6f15abbd81b4a6b7 # initialize rs2
sh3add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7c16af85b57f3390 # initialize rs1
li x17, 0x4c22e89c6597c517 # initialize rs2
sh3add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd1c0ff59966d7541 # initialize rs1
li x18, 0x43f528d26412b203 # initialize rs2
sh3add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6324eda769026d19 # initialize rs1
li x19, 0xdac447a254ad242c # initialize rs2
sh3add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x699b3b99a1799285 # initialize rs1
li x20, 0xb7f27d873ef3bf06 # initialize rs2
sh3add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x28951214296a125b # initialize rs1
li x21, 0x905d0b4760b09859 # initialize rs2
sh3add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdaca2ee3ffc959e9 # initialize rs1
li x22, 0xd2f520edf863042c # initialize rs2
sh3add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc3e6d9560df68f2b # initialize rs1
li x23, 0x9c8686ac325e7d63 # initialize rs2
sh3add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xac8fc1d19da23bfa # initialize rs1
li x24, 0xd63ebae530e40bde # initialize rs2
sh3add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfc666fe732e2ead7 # initialize rs1
li x25, 0xcd44ec070bd3dded # initialize rs2
sh3add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6c3d61692f477326 # initialize rs1
li x26, 0xe9aeee30a870e827 # initialize rs2
sh3add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca4025ed8102d088 # initialize rs1
li x27, 0xd4c76b28884ee5ea # initialize rs2
sh3add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x989d2bb22216571e # initialize rs1
li x28, 0x3d28d4aeccc73ff2 # initialize rs2
sh3add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x614d618c7c9ca858 # initialize rs1
li x29, 0xe579ead1248f4f34 # initialize rs2
sh3add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcf883bd9f101f513 # initialize rs1
li x30, 0xe736a3a19851332a # initialize rs2
sh3add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe382bb0e4db7207e # initialize rs1
li x31, 0x8e77ff289aac0b34 # initialize rs2
sh3add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x9 # perform first operation
sh3add.uw x5, x13, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x5, x23 # perform first operation
sh3add.uw x18, x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x9, x11 # perform first operation
sh3add.uw x7, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x19 # perform first operation
sh3add.uw x7, x7, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x25, x18 # perform first operation
sh3add.uw x23, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x5, x14 # perform first operation
sh3add.uw x14, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x19, x1 # perform first operation
sh3add.uw x21, x7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x25, x11 # perform first operation
sh3add.uw x20, x8, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x23, x1 # perform first operation
sh3add.uw x25, x24, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x19, x25 # perform first operation
sh3add.uw x19, x28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x28, x16 # perform first operation
sh3add.uw x16, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x21, x29 # perform first operation
sh3add.uw x19, x10, x8 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-sh1add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd71bfc02099fb693 # initialize rs1
li x22, 0x28a5aa24e2973040 # initialize rs2
sh1add x26, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc2d8cd2ab4a7c1b8 # initialize rs1
li x23, 0x5ba3eac2cd5a9174 # initialize rs2
sh1add x24, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0ca278b96d2c897c # initialize rs1
li x28, 0x0fc10d3fd7f7a440 # initialize rs2
sh1add x3, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1534346b30c83e38 # initialize rs1
li x28, 0x94be9d32dd22e94e # initialize rs2
sh1add x12, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7bb84941eff801d8 # initialize rs1
li x26, 0x78a3d49c39e07076 # initialize rs2
sh1add x29, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf3951f294cf7a182 # initialize rs1
li x22, 0x772f6dc7bd2cff69 # initialize rs2
sh1add x19, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9afc320c7234b5d0 # initialize rs1
li x21, 0x757637c303c0c525 # initialize rs2
sh1add x4, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e73a75963ea080e # initialize rs1
li x29, 0x85c38630076d861c # initialize rs2
sh1add x4, x7, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfdf7402f73b16dc1 # initialize rs1
li x16, 0xc9f92d8252da52bc # initialize rs2
sh1add x31, x8, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd5cd3b4a63940ad4 # initialize rs1
li x16, 0x075df9f5c65b7b98 # initialize rs2
sh1add x28, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xccd37eba209ebba3 # initialize rs1
li x13, 0x00ef480ff71161ec # initialize rs2
sh1add x26, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe2240e0bf1cccd1f # initialize rs1
li x6, 0x5dc9b3db9639a106 # initialize rs2
sh1add x10, x11, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x935db0f215bde1eb # initialize rs1
li x1, 0x416ca965020c0f0a # initialize rs2
sh1add x13, x12, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc4b7575e6cf0228d # initialize rs1
li x23, 0x294bfb675e232059 # initialize rs2
sh1add x15, x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x99eb2925a94942f5 # initialize rs1
li x17, 0xfe37a58e7082f450 # initialize rs2
sh1add x24, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x71bafbb389cfe710 # initialize rs1
li x14, 0x8243868d7bb6c945 # initialize rs2
sh1add x4, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xae862df821b95a31 # initialize rs1
li x8, 0x6c4046eafad04920 # initialize rs2
sh1add x24, x16, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa4a29271c39d435d # initialize rs1
li x26, 0x0f4f3470383f81b2 # initialize rs2
sh1add x3, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7240db4034830be5 # initialize rs1
li x15, 0x0daaf019f4b215a0 # initialize rs2
sh1add x7, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xfb3b2e884952d288 # initialize rs1
li x3, 0xe47065ed9607a6c0 # initialize rs2
sh1add x17, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbedd00953981e70c # initialize rs1
li x8, 0x7b2ad0ff6d13003f # initialize rs2
sh1add x10, x20, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0e75e8372c6b2668 # initialize rs1
li x31, 0xf3150abf1c7b79bf # initialize rs2
sh1add x16, x21, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x90615a0c4996a1f6 # initialize rs1
li x19, 0x50647ef0fd2581dd # initialize rs2
sh1add x3, x22, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x117d904bae11258a # initialize rs1
li x10, 0x6955874c16fb2fe6 # initialize rs2
sh1add x8, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb139fa5b885ee99e # initialize rs1
li x15, 0xea893a5690622db0 # initialize rs2
sh1add x12, x24, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd61a8b8720939bbd # initialize rs1
li x3, 0xa819e3b846b784cd # initialize rs2
sh1add x14, x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x63a8bef7005c8b22 # initialize rs1
li x22, 0xa70a3c0779208166 # initialize rs2
sh1add x4, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x415dfed2f1c2d662 # initialize rs1
li x17, 0x9ca44426b9fb7036 # initialize rs2
sh1add x14, x27, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x86245bc87c843eae # initialize rs1
li x15, 0x5ccc4562aae9adc9 # initialize rs2
sh1add x8, x28, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x032309bc8e0c5c18 # initialize rs1
li x17, 0xd3fc66609a466693 # initialize rs2
sh1add x19, x29, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb6f5b05d84919271 # initialize rs1
li x26, 0x4585f73f282b36b4 # initialize rs2
sh1add x27, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbea51dbad620734e # initialize rs1
li x1, 0xb1620f3063b86cdf # initialize rs2
sh1add x28, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x54a45d4bd7029f4c # initialize rs1
li x0, 0xf7534762bc7ca721 # initialize rs2
sh1add x18, x2, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0xa3a3d82751f2d536 # initialize rs1
li x1, 0x933f4a51e9778d3e # initialize rs2
sh1add x30, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x78086d0f1c083854 # initialize rs1
li x2, 0x22eb595c8aa34dbe # initialize rs2
sh1add x3, x16, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0x22c39918b6a4dde2 # initialize rs1
li x3, 0xaf118da32a3a2c67 # initialize rs2
sh1add x15, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x008c4b762cbb63da # initialize rs1
li x4, 0x5e66a55ee7ddbf0a # initialize rs2
sh1add x24, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x4428f83b3d73406b # initialize rs1
li x5, 0x98ae284c1597d551 # initialize rs2
sh1add x3, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0xae31c52478296042 # initialize rs1
li x6, 0x2f959047c79e4fd2 # initialize rs2
sh1add x10, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x03b158707415da5c # initialize rs1
li x7, 0x5e788a937a97afc7 # initialize rs2
sh1add x3, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x18fa2e3cbb97de5e # initialize rs1
li x8, 0xe79e0e7f5b6c37f1 # initialize rs2
sh1add x15, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xa807f4338582011a # initialize rs1
li x9, 0x7ed66da8179f1cd5 # initialize rs2
sh1add x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x1856baea5c1b1dcf # initialize rs1
li x10, 0x4257aaad8c1902eb # initialize rs2
sh1add x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x9bfd6586a25cce90 # initialize rs1
li x11, 0x9de1402ad205d071 # initialize rs2
sh1add x22, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xfd48a3160fc0d2a0 # initialize rs1
li x12, 0x6361468bc89762d8 # initialize rs2
sh1add x22, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x9cf2c7b4ec6a4c04 # initialize rs1
li x13, 0x362db7f8793eba34 # initialize rs2
sh1add x18, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x24ca935feb160d34 # initialize rs1
li x14, 0x659f4df067da877f # initialize rs2
sh1add x31, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x8115e9a4efeb9111 # initialize rs1
li x15, 0x2c2919817c7f7135 # initialize rs2
sh1add x17, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x28c8ec935fb7e160 # initialize rs1
li x16, 0xe2a2a1de7b86172a # initialize rs2
sh1add x24, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x762494dd132f0abe # initialize rs1
li x17, 0x44566630369a2e75 # initialize rs2
sh1add x1, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xd1615d8cab6ed8f0 # initialize rs1
li x18, 0x71fcaca0931014ee # initialize rs2
sh1add x19, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x45041ef42d066fc2 # initialize rs1
li x19, 0xe50f3739350c8800 # initialize rs2
sh1add x24, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x8d3b9a8d3c86ecf5 # initialize rs1
li x20, 0xc59ae044a8e27737 # initialize rs2
sh1add x12, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0xf52be44c923b845f # initialize rs1
li x21, 0x4e314c2fd13d9860 # initialize rs2
sh1add x19, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0xbde18f1df296756b # initialize rs1
li x22, 0x83adb5c28983d48b # initialize rs2
sh1add x20, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0xb0dc28e2ce9ba8b4 # initialize rs1
li x23, 0xf779632a1e722c1a # initialize rs2
sh1add x15, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x27419cea27c54473 # initialize rs1
li x24, 0x3eaa66582db47364 # initialize rs2
sh1add x31, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0xcd321c74762fb090 # initialize rs1
li x25, 0x22bd2c446d921ab5 # initialize rs2
sh1add x16, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0xf35d5bf9c5235468 # initialize rs1
li x26, 0x69db31c9c48eab03 # initialize rs2
sh1add x14, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x6cdd6696e1b6a28e # initialize rs1
li x27, 0xe41bb2af2b19c211 # initialize rs2
sh1add x10, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x21ce27606d7c84d5 # initialize rs1
li x28, 0xa6144067b38a88f1 # initialize rs2
sh1add x18, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x92c88dc7140e9b64 # initialize rs1
li x29, 0xeaa9f297b764ce06 # initialize rs2
sh1add x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x95287c2ecb098acb # initialize rs1
li x30, 0x2c6d67bb9c141bd1 # initialize rs2
sh1add x20, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x936ce32d8166cf1d # initialize rs1
li x31, 0x6f75a21a9b8048c5 # initialize rs2
sh1add x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0xf85fcda6e7a215c6 # initialize rs1
li x2, 0xe265bbfa3a0b2376 # initialize rs2
sh1add x0, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x522576c33ef3fcf6 # initialize rs1
li x5, 0xd6564578c44b17de # initialize rs2
sh1add x1, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x42696b3e7449f722 # initialize rs1
li x9, 0xced12727132e03f4 # initialize rs2
sh1add x2, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0xd540acf5d52dde1f # initialize rs1
li x24, 0x8f6fb213d1ebb95f # initialize rs2
sh1add x3, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x7495c06fab192d17 # initialize rs1
li x6, 0x1b306dc3a5deeff4 # initialize rs2
sh1add x4, x14, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x6263f5f64af8da94 # initialize rs1
li x16, 0x1e641fd4967fd1e9 # initialize rs2
sh1add x5, x20, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x41955d4c3685b96e # initialize rs1
li x25, 0x83edf3496168540c # initialize rs2
sh1add x6, x9, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xfaf30a17206f1f24 # initialize rs1
li x20, 0x93b695c5ee7276da # initialize rs2
sh1add x7, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xebbf453a8d36b172 # initialize rs1
li x20, 0x68c93399270c7fb6 # initialize rs2
sh1add x8, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xede09385a3f004b9 # initialize rs1
li x22, 0xb009de81ec4e3aa1 # initialize rs2
sh1add x9, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0xf2739f1ff4c833eb # initialize rs1
li x16, 0xbc63db3a4ed074c6 # initialize rs2
sh1add x10, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x5c1aa2ddd779cad5 # initialize rs1
li x29, 0xb03e1632b9235b47 # initialize rs2
sh1add x11, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0xfa6e6569e793a86c # initialize rs1
li x21, 0x5c80632fd7004d6b # initialize rs2
sh1add x12, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xaa097ae74dbd2384 # initialize rs1
li x22, 0xf31eb46f323b4513 # initialize rs2
sh1add x13, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x34a9a934043196a2 # initialize rs1
li x2, 0x4ddee871a3cbfe1c # initialize rs2
sh1add x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0x62b6737a1a79d30f # initialize rs1
li x6, 0x51ccdde2e0daf383 # initialize rs2
sh1add x15, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x1a86013f83c02c53 # initialize rs1
li x27, 0xed8f3f946b4ff467 # initialize rs2
sh1add x16, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x5fe6b8afc411430a # initialize rs1
li x23, 0x52e5b6a902deb5bc # initialize rs2
sh1add x17, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0x36e84fdbcaf2396b # initialize rs1
li x20, 0x9fa00fa7a8c9efef # initialize rs2
sh1add x18, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x41f5a6e7f0aa1996 # initialize rs1
li x26, 0x560b92830f425d25 # initialize rs2
sh1add x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xb19403e318698c39 # initialize rs1
li x5, 0x599d16d8142656a4 # initialize rs2
sh1add x20, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xf0af45a2d05f64f4 # initialize rs1
li x11, 0xbc48f1c585b756f0 # initialize rs2
sh1add x21, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x299ed7bf81194f4a # initialize rs1
li x29, 0xd8cc0334d401b0f6 # initialize rs2
sh1add x22, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x3c249438ef6a0da9 # initialize rs1
li x26, 0x0403bca18ba20ad4 # initialize rs2
sh1add x23, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x8, 0xc4f0f255157333c2 # initialize rs1
li x24, 0x1640c9f444e2b8d0 # initialize rs2
sh1add x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x677f864bc83165f5 # initialize rs1
li x8, 0x7e9df944faf75764 # initialize rs2
sh1add x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x425b9c28d816239f # initialize rs1
li x24, 0xa5d4870a715ab4ab # initialize rs2
sh1add x26, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x7c28e7bdc59431a5 # initialize rs1
li x23, 0x9e6068abd942c85d # initialize rs2
sh1add x27, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe4a0cffb58c15064 # initialize rs1
li x23, 0xbff253205de10d3d # initialize rs2
sh1add x28, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x777fe5faac0e923b # initialize rs1
li x29, 0x24f79254d2a67f00 # initialize rs2
sh1add x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf91c399d106c5bec # initialize rs1
li x2, 0x04fc069f126d6cfa # initialize rs2
sh1add x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0x0c04f0d634ede72e # initialize rs1
li x22, 0x90dcf94556d09a10 # initialize rs2
sh1add x31, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0000000000000000 # initialize rs1
li x3, 0x78118a3e39cb9200 # initialize rs2
sh1add x23, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x15, 0x956bd2278a9bda31 # initialize rs2
sh1add x26, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x26, 0xba02f330d637d983 # initialize rs2
sh1add x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x48682352666c03c5 # initialize rs2
sh1add x14, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0xf02adb392c24b061 # initialize rs2
sh1add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x17, 0xe73af9ff05177ef5 # initialize rs2
sh1add x21, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x9, 0xa6e7bcbf82f8c118 # initialize rs2
sh1add x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x10, 0xc02ebba425c38bd8 # initialize rs2
sh1add x25, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x9, 0xc9761443a3675c75 # initialize rs2
sh1add x27, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x4190d8ba0c018593 # initialize rs2
sh1add x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xdb8f76743438e057 # initialize rs2
sh1add x23, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x28, 0x108cae47bd73901b # initialize rs2
sh1add x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x28, 0x9448489452ea663e # initialize rs2
sh1add x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x5628977726359239 # initialize rs2
sh1add x8, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
li x3, 0x980a29190083585b # initialize rs2
sh1add x1, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x3, 0x6801caf013c48409 # initialize rs2
sh1add x14, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xc3ae3de133232ee3 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add x27, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x72f0a0bc895ac361 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh1add x11, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xebee386817d31251 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sh1add x31, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xfb26e9aaecdb3ba5 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh1add x2, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xad73fa1d050ee9f6 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh1add x22, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x9c83f9f67b80ac7a # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh1add x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x3ba06f276d0a1f25 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh1add x15, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0x3135bf68369b220d # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add x6, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0x6de7f8be0e41e1c1 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh1add x28, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x31, 0x52087ba38b46e0e1 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh1add x8, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x4a83b8e023289954 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x470d436b54ff4c8c # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh1add x6, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xdf319e1dbf43cda7 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sh1add x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xba71a8bd3ebca484 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add x11, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x1b3df3abf6ff9bfc # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh1add x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0x29895e81f61c0721 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh1add x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add x14, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add x18, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sh1add x31, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh1add x6, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add x20, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
sh1add x31, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh1add x8, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add x1, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add x22, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x13, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x14, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh1add x16, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh1add x22, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add x5, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x16, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x2, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add x17, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh1add x9, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sh1add x27, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sh1add x30, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh1add x31, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh1add x17, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh1add x21, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh1add x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add x13, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh1add x28, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add x27, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x5, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add x25, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x21, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh1add x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh1add x7, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add x20, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh1add x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh1add x20, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sh1add x2, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh1add x26, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh1add x13, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh1add x30, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add x26, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x28, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000002 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh1add x8, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add x7, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh1add x12, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x28, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sh1add x25, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x15, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh1add x22, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sh1add x7, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sh1add x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh1add x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sh1add x3, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x26, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh1add x29, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh1add x29, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh1add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh1add x16, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh1add x22, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x9, 0x8000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh1add x8, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sh1add x28, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh1add x29, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh1add x6, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh1add x22, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x18, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh1add x31, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh1add x17, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh1add x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x29, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sh1add x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh1add x2, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh1add x24, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh1add x23, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh1add x21, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sh1add x14, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x6, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh1add x9, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x2, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh1add x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh1add x8, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x25, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh1add x2, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sh1add x11, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x12, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add x2, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh1add x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sh1add x2, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add x11, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
sh1add x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh1add x15, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x7fffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sh1add x19, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x5, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh1add x5, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x12, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add x26, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh1add x1, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh1add x26, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
sh1add x2, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add x1, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh1add x18, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh1add x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh1add x19, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh1add x1, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add x24, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh1add x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh1add x10, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sh1add x24, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x8, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x29, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sh1add x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh1add x24, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh1add x8, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sh1add x6, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh1add x11, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x22, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh1add x26, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh1add x14, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh1add x16, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh1add x10, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh1add x5, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh1add x29, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh1add x31, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x20, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x26, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x21, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh1add x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh1add x17, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sh1add x3, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x14, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add x26, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sh1add x15, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x11, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh1add x20, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh1add x12, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x21, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh1add x8, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add x2, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh1add x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add x22, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh1add x28, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x16, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh1add x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x9, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh1add x5, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh1add x18, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh1add x6, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh1add x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x8, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sh1add x16, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh1add x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh1add x28, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh1add x16, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh1add x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add x26, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh1add x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x5, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x10, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh1add x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add x31, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sh1add x6, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sh1add x19, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh1add x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh1add x18, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add x18, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add x3, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh1add x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x28, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sh1add x21, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh1add x24, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh1add x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh1add x26, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add x5, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh1add x22, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh1add x22, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh1add x15, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x11, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x10, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x13, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh1add x15, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x30, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add x12, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sh1add x24, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh1add x3, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x23, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh1add x8, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sh1add x30, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh1add x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5555555555555555 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sh1add x7, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh1add x9, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh1add x5, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh1add x2, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh1add x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x22, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh1add x15, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x9, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh1add x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sh1add x25, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x14, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh1add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh1add x2, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh1add x30, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sh1add x31, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sh1add x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh1add x11, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh1add x25, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x30, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sh1add x1, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh1add x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sh1add x15, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh1add x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh1add x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh1add x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add x15, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh1add x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x16, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sh1add x15, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sh1add x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh1add x6, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add x15, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh1add x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh1add x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000fffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x27, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add x23, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add x9, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add x6, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x3, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add x16, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sh1add x24, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh1add x24, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x21, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sh1add x14, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh1add x22, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add x19, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh1add x19, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sh1add x5, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sh1add x7, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sh1add x12, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x8, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh1add x1, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh1add x12, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh1add x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh1add x29, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh1add x23, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x16, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add x18, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x23, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add x24, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x2, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add x1, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sh1add x6, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh1add x30, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sh1add x29, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sh1add x7, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sh1add x16, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh1add x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x16, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x30, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh1add x9, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh1add x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh1add x8, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x14, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh1add x1, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh1add x10, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe005d64f5e20dd3e # initialize rs1
li x0, 0xbc3137f65d7e5258 # initialize rs2
sh1add x26, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc809dd76b516477f # initialize rs1
li x1, 0x6254c0db3728cc6d # initialize rs2
sh1add x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x77a48ce43df5f937 # initialize rs1
li x2, 0x64ff07ba7f912392 # initialize rs2
sh1add x11, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2093d5329f1980fd # initialize rs1
li x3, 0xc2edbb6111b11760 # initialize rs2
sh1add x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed55efa35b357e74 # initialize rs1
li x4, 0xaf5d7c806794d8cf # initialize rs2
sh1add x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe458a00d5b9ccfc9 # initialize rs1
li x5, 0x173cdd23b8bc09d2 # initialize rs2
sh1add x19, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4fa83337bfb8fd0d # initialize rs1
li x6, 0x98e83a1e00b5f84a # initialize rs2
sh1add x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbd3e4a8f5e62ba13 # initialize rs1
li x7, 0x23eb6807254015da # initialize rs2
sh1add x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x670e4bd11978ed68 # initialize rs1
li x8, 0x91d8d92a18119eaa # initialize rs2
sh1add x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe55a981c786bc982 # initialize rs1
li x9, 0x4101f04bc0831dfd # initialize rs2
sh1add x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf2abc3968c88ad84 # initialize rs1
li x10, 0xda51fdc4308e8594 # initialize rs2
sh1add x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xff9fcc35d8fda197 # initialize rs1
li x11, 0xd9684f82ff0b1705 # initialize rs2
sh1add x18, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xe5d4fef22c2d5e49 # initialize rs1
li x12, 0xe8897ddc81d87b71 # initialize rs2
sh1add x20, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbfb62b6bc51c9ee0 # initialize rs1
li x13, 0x580f07b75d5db564 # initialize rs2
sh1add x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2b0ee363ac6d9250 # initialize rs1
li x14, 0xe2314dcf3db55782 # initialize rs2
sh1add x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0aa9d029ac8c8510 # initialize rs1
li x15, 0x2ca933b23feda821 # initialize rs2
sh1add x5, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc24a643020dd782d # initialize rs1
li x16, 0xcfb7bd2bc50bdf72 # initialize rs2
sh1add x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1dc757c418791717 # initialize rs1
li x17, 0xb8e51ac246a13a58 # initialize rs2
sh1add x16, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x042d2b45a040779f # initialize rs1
li x18, 0xe577d039fa066825 # initialize rs2
sh1add x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x47ff76131e270012 # initialize rs1
li x19, 0x6f35ae255f44fe83 # initialize rs2
sh1add x8, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x85d2c974a0d35e9d # initialize rs1
li x20, 0xe9cce5aeab1af9b4 # initialize rs2
sh1add x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x2a8855e83f876bac # initialize rs1
li x21, 0x3dce23a7ed28d554 # initialize rs2
sh1add x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x109b4321b4af9f6f # initialize rs1
li x22, 0xe2380f7b30d53efa # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x86e41d8cc444b1c0 # initialize rs1
li x23, 0xb2d874f578c4b480 # initialize rs2
sh1add x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6d48f3d356db2a10 # initialize rs1
li x24, 0xabd103a3d0ddf2a0 # initialize rs2
sh1add x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6d7177fa79631e9c # initialize rs1
li x25, 0xa67ae7be2ced6f8f # initialize rs2
sh1add x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc2c10176e38575a4 # initialize rs1
li x26, 0xb0d1c57af5e9c0f8 # initialize rs2
sh1add x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2b845aef357e8f4a # initialize rs1
li x27, 0xd60274f97da1c688 # initialize rs2
sh1add x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0b636997d5a6f1b7 # initialize rs1
li x28, 0x2bb3854a97f4ebb1 # initialize rs2
sh1add x22, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x06f93dac988df2fa # initialize rs1
li x29, 0x29ce5eed76e68092 # initialize rs2
sh1add x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf2d1404f4f74311b # initialize rs1
li x30, 0xb6a2196f3ae8a5ff # initialize rs2
sh1add x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaf5e72fec2c4d345 # initialize rs1
li x31, 0x5baea409266a18ba # initialize rs2
sh1add x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x597489d96f8410fc # initialize rs1
li x29, 0x89797206d0e9ec3b # initialize rs2
sh1add x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x15c0fbb7e2600999 # initialize rs1
li x6, 0x6f95a045b4543ce9 # initialize rs2
sh1add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6cc1adf3afc82383 # initialize rs1
li x13, 0x89278c3cdb730ab8 # initialize rs2
sh1add x2, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x237c845e7c5223dc # initialize rs1
li x11, 0xde571c81eda2fe14 # initialize rs2
sh1add x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb6b090e7a15f62a4 # initialize rs1
li x29, 0x31d87c40ade0a8dc # initialize rs2
sh1add x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xca95c23c2c38515d # initialize rs1
li x29, 0x2c07ccedbffd2f03 # initialize rs2
sh1add x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x916fe7fec45fb53e # initialize rs1
li x30, 0xb04c33f6ce23ba86 # initialize rs2
sh1add x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x77e98c42f9284a0a # initialize rs1
li x1, 0x0453b620c58c7353 # initialize rs2
sh1add x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x271841dcb8848f99 # initialize rs1
li x10, 0xd417b62ed9d809c7 # initialize rs2
sh1add x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc5f057cb8d65301a # initialize rs1
li x12, 0xd1397c4929bec9c7 # initialize rs2
sh1add x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc8dce400accc39d9 # initialize rs1
li x21, 0x664293b893cf2bf1 # initialize rs2
sh1add x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe2c47fc2ad3b37ac # initialize rs1
li x22, 0x386a45d5a7bba75e # initialize rs2
sh1add x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x68c1ab2145d7d710 # initialize rs1
li x26, 0xb163ee65f7ce6d6a # initialize rs2
sh1add x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7912bb6223809d08 # initialize rs1
li x7, 0x1cf2326a444f5173 # initialize rs2
sh1add x13, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xfe640386b95cabd0 # initialize rs1
li x20, 0x95985b3a7512aeec # initialize rs2
sh1add x14, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x86300df982138606 # initialize rs1
li x20, 0x198a8d51fba22d3a # initialize rs2
sh1add x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8c349bf7c01e5fe6 # initialize rs1
li x15, 0x8f5522221b2986c4 # initialize rs2
sh1add x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x45e1cc2a985bb12d # initialize rs1
li x10, 0x551d8f00285516ce # initialize rs2
sh1add x17, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbf7123607a5ce129 # initialize rs1
li x3, 0x7313ac650b0b11ce # initialize rs2
sh1add x18, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbdb24cc28bef1e37 # initialize rs1
li x22, 0xa84db784e2103dfa # initialize rs2
sh1add x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x90ad193c8d81d3db # initialize rs1
li x20, 0x5d2a7b447ee1988d # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd8d31601f7f30eff # initialize rs1
li x2, 0xa3b27a5867504e06 # initialize rs2
sh1add x21, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd36083b984d93d87 # initialize rs1
li x19, 0x508c96ff82a633d6 # initialize rs2
sh1add x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfc75ac5af3e9123e # initialize rs1
li x3, 0x7fc4394aa2cc3ab8 # initialize rs2
sh1add x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe6bf72442cdfef4c # initialize rs1
li x22, 0x50edbac5287ee1bb # initialize rs2
sh1add x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x555778154a4fba9b # initialize rs1
li x12, 0xa022f8a1f67ab40c # initialize rs2
sh1add x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x57f6282b78b81a6a # initialize rs1
li x26, 0xc1c50759a0693813 # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3a956e196f5772d # initialize rs1
li x25, 0x330ca4ce69800930 # initialize rs2
sh1add x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5e8c24fbbb1e1253 # initialize rs1
li x21, 0xbb93481bdcf9f267 # initialize rs2
sh1add x28, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5c63aeb659e6f1ec # initialize rs1
li x31, 0xfb95674fcaf0875a # initialize rs2
sh1add x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1b4f6ff54d62347a # initialize rs1
li x21, 0xcbdc4f05d60136cb # initialize rs2
sh1add x30, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd5e12c5f75102e3a # initialize rs1
li x1, 0x15e4497bd353f9e1 # initialize rs2
sh1add x31, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0x404b05736f640fe6 # initialize rs1
li x0, 0xa8574ceb6a3baff4 # initialize rs2
sh1add x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x3, 0x8d6adc46ef7a5883 # initialize rs1
li x1, 0x0d646af8a171dbc5 # initialize rs2
sh1add x1, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x23, 0xf575e39c70b90d91 # initialize rs1
li x2, 0x29f37293b142b0d0 # initialize rs2
sh1add x2, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0x766bc682da5acf43 # initialize rs1
li x3, 0xc6f8ddacdf2c9627 # initialize rs2
sh1add x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x5e8d77eba3827e79 # initialize rs1
li x4, 0xf9d5e9e4cf72ecbd # initialize rs2
sh1add x4, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x8, 0x18f83b9751710713 # initialize rs1
li x5, 0x65ee9455f9663c7c # initialize rs2
sh1add x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x64c6a65eaa533cd7 # initialize rs1
li x6, 0x83d860574f8958cb # initialize rs2
sh1add x6, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xd310baa656cddc69 # initialize rs1
li x7, 0xd3ff732dfa2ef67c # initialize rs2
sh1add x7, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x27, 0x048f5c66d4e95c4f # initialize rs1
li x8, 0x5aaa676358448cea # initialize rs2
sh1add x8, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0xa9c922e69d01b400 # initialize rs1
li x9, 0xbbad819e8cad53ac # initialize rs2
sh1add x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x6, 0xa4abd08e61533abe # initialize rs1
li x10, 0x6b5b40cba77f3310 # initialize rs2
sh1add x10, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0x8480cfdabbcd6ee9 # initialize rs1
li x11, 0xfcd5260f68159a5c # initialize rs2
sh1add x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x21, 0x37c038ce36158140 # initialize rs1
li x12, 0x17d00a56b19b69d6 # initialize rs2
sh1add x12, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xf84a215a46e60f5b # initialize rs1
li x13, 0x549b62b27011d83f # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x13, 0x2db593bd74e93c5a # initialize rs1
li x14, 0xe792e7bba6579ad1 # initialize rs2
sh1add x14, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0xaefff9026e955906 # initialize rs1
li x15, 0xee4da42684eb6aee # initialize rs2
sh1add x15, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x0a54a8de431be68e # initialize rs1
li x16, 0x7518283fcaaeee7f # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0x8dcee2d7aba28d5a # initialize rs1
li x17, 0x33703314f722f3ac # initialize rs2
sh1add x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x26, 0x9ae2357ba8a5f252 # initialize rs1
li x18, 0xec253ef3a208ccd1 # initialize rs2
sh1add x18, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x02b7f214a7943f93 # initialize rs1
li x19, 0xb773c2933aefcd91 # initialize rs2
sh1add x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x11, 0xf1a31e8e3ae304f9 # initialize rs1
li x20, 0x0b10946c5f2a763d # initialize rs2
sh1add x20, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x738f8a48f409cf60 # initialize rs1
li x21, 0xcb3bbfeff364a803 # initialize rs2
sh1add x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0xcd5ffbaae63480e7 # initialize rs1
li x22, 0x5783cf694bce5a88 # initialize rs2
sh1add x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xb056477bd7ff88ba # initialize rs1
li x23, 0xc1e93b8f5002d198 # initialize rs2
sh1add x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0xb219a4444bdb9123 # initialize rs1
li x24, 0x019d047c0ec1544e # initialize rs2
sh1add x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x524854dd1fd7d853 # initialize rs1
li x25, 0x184ee5b570729095 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0x79e7ffa8b3ccf90a # initialize rs1
li x26, 0x8da76e7e86ed6a84 # initialize rs2
sh1add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xc5b4b3cd922a7b79 # initialize rs1
li x27, 0xc70966cc14749ec7 # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x12, 0x6b2e05136598c9a5 # initialize rs1
li x28, 0x2187a4877c9d1452 # initialize rs2
sh1add x28, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0x7e99e881f2b6b47a # initialize rs1
li x29, 0xd03b2bbfc7594e8b # initialize rs2
sh1add x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x0ac19d324adda91d # initialize rs1
li x30, 0xbe701e40d67fc834 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0x8b1aecea6c160cba # initialize rs1
li x31, 0x9c544b458aa37d5f # initialize rs2
sh1add x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x644507c4e1cef3eb # initialize rs1
li x0, 0x4017639d24d92381 # initialize rs2
sh1add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9bc35f4c5831f307 # initialize rs1
li x1, 0x4e639835fa5cb326 # initialize rs2
sh1add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa03ae80024681fd5 # initialize rs1
li x2, 0x55e01a696dd439f9 # initialize rs2
sh1add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x607942ab25068e3a # initialize rs1
li x3, 0x3f45e5081adbb541 # initialize rs2
sh1add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x38d2567b834f8035 # initialize rs1
li x4, 0x3d9e0a10b996da22 # initialize rs2
sh1add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc119c269b5ef6027 # initialize rs1
li x5, 0xc50ed2c5bf02f83c # initialize rs2
sh1add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a23d2d1d8c85ef4 # initialize rs1
li x6, 0x7ff75a65dc29482e # initialize rs2
sh1add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb340b32f75898888 # initialize rs1
li x7, 0x7c443538a841f5fb # initialize rs2
sh1add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc835de077f86f140 # initialize rs1
li x8, 0x9015c1a99bc779be # initialize rs2
sh1add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x306e981643fe09fd # initialize rs1
li x9, 0xf78ffcd5e3ed64af # initialize rs2
sh1add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x8eab26f58eeae01a # initialize rs1
li x10, 0x0e46bb1f467829a0 # initialize rs2
sh1add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x8eb418ba7af8e706 # initialize rs1
li x11, 0xe2e1616c11f78819 # initialize rs2
sh1add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x788a5d148dcbcb53 # initialize rs1
li x12, 0xc16a9757857345e4 # initialize rs2
sh1add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x39271cf206753d1d # initialize rs1
li x13, 0x06b45a53a08506fb # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xafe93602a773b0d7 # initialize rs1
li x14, 0x7b367c8e6ec4e886 # initialize rs2
sh1add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3712b34f17d193eb # initialize rs1
li x15, 0xa932c59425ecda92 # initialize rs2
sh1add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x13b6f0d802feb6ef # initialize rs1
li x16, 0xa2ca4e6447ebfce3 # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbe2037624cefb209 # initialize rs1
li x17, 0x3edae16e1054a546 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa990cf8b1a082990 # initialize rs1
li x18, 0x9e0ac5ed4dc111b6 # initialize rs2
sh1add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x79a347455fb3b9a1 # initialize rs1
li x19, 0x3d0629a5f753a273 # initialize rs2
sh1add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe144a45972cd9851 # initialize rs1
li x20, 0x7dd6c0484a3567b2 # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x74ab7e87717e0b2b # initialize rs1
li x21, 0xcab3652bd72e623c # initialize rs2
sh1add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfbc34152673f04dc # initialize rs1
li x22, 0x1e2ae606b83ed554 # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x25bf8e2858635ea7 # initialize rs1
li x23, 0xcc06b53163b3ae2c # initialize rs2
sh1add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2926826b1b89e3ce # initialize rs1
li x24, 0x64b3890936967c30 # initialize rs2
sh1add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe7eaa5fa108c04fa # initialize rs1
li x25, 0xd23b76022e6bb8b2 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2e97ef5714e53fa0 # initialize rs1
li x26, 0xb8e01349d71e47bf # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x09a4eb9c26bd635c # initialize rs1
li x27, 0xf5ec12687d85f52e # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x96e44d384f63891f # initialize rs1
li x28, 0xb018365e39630e8c # initialize rs2
sh1add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x07d8fc2554450f70 # initialize rs1
li x29, 0xd6a90e0a17c6b4ff # initialize rs2
sh1add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9978a9475422e0eb # initialize rs1
li x30, 0x543835ace4e2ecf9 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb3464d376b39fe46 # initialize rs1
li x31, 0x7d97ade87523a984 # initialize rs2
sh1add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x12 # perform first operation
sh1add x1, x5, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x7, x1 # perform first operation
sh1add x13, x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x29, x26 # perform first operation
sh1add x12, x18, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x28, x3 # perform first operation
sh1add x18, x18, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x24, x9 # perform first operation
sh1add x24, x1, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x11, x9 # perform first operation
sh1add x17, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x6, x19 # perform first operation
sh1add x25, x15, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x2, x17 # perform first operation
sh1add x31, x20, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x28, x1 # perform first operation
sh1add x19, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x18, x1 # perform first operation
sh1add x18, x17, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x6, x8 # perform first operation
sh1add x8, x22, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x6, x19 # perform first operation
sh1add x20, x26, x3 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-sh2add.uw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xb9bafc7c0a26c60b # initialize rs1
li x9, 0x971f5e60f5bd7fb7 # initialize rs2
sh2add.uw x23, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6d68a19753103618 # initialize rs1
li x30, 0x3551d720da1cbd60 # initialize rs2
sh2add.uw x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xeb4cf06972474661 # initialize rs1
li x5, 0x0d78c67d56a5b22f # initialize rs2
sh2add.uw x19, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65c393caf162e2c0 # initialize rs1
li x16, 0x6f5ce7dab61c3c24 # initialize rs2
sh2add.uw x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb8c5d7d04e7bc790 # initialize rs1
li x16, 0x29249b6ce0eaf772 # initialize rs2
sh2add.uw x11, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6f610bb62082e91d # initialize rs1
li x8, 0x6c9b53f95a807222 # initialize rs2
sh2add.uw x16, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f78e94619f59a48 # initialize rs1
li x26, 0x31360c596f1f8fee # initialize rs2
sh2add.uw x30, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc86da6ea431a745f # initialize rs1
li x24, 0x1aa2968449809077 # initialize rs2
sh2add.uw x12, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2a5a222d91b22847 # initialize rs1
li x2, 0xb22dbefcbc79c01f # initialize rs2
sh2add.uw x18, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x37e4643c759f5f63 # initialize rs1
li x30, 0x079f629e97619c24 # initialize rs2
sh2add.uw x12, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb15cb25b860be62f # initialize rs1
li x28, 0x56b4e75876fcfabc # initialize rs2
sh2add.uw x19, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7228fa2138c371f2 # initialize rs1
li x28, 0x43dcceaa4a86cca5 # initialize rs2
sh2add.uw x6, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xda938afcfa70c5f9 # initialize rs1
li x18, 0x496ab88906e8902c # initialize rs2
sh2add.uw x3, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xcdd7566d058f9a85 # initialize rs1
li x15, 0x917731b797970c86 # initialize rs2
sh2add.uw x21, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xcdeae669d0584c37 # initialize rs1
li x18, 0x3169f6271c45a9ee # initialize rs2
sh2add.uw x27, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe716aa098091038b # initialize rs1
li x23, 0x41cf1c0e9fff273e # initialize rs2
sh2add.uw x1, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc97e2d718f2e139e # initialize rs1
li x10, 0x542069b1b3a9cdad # initialize rs2
sh2add.uw x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8689904e3aaaf6e1 # initialize rs1
li x2, 0x56a57fea80153428 # initialize rs2
sh2add.uw x19, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb77dec9ee897bd97 # initialize rs1
li x31, 0x072f9572990609cc # initialize rs2
sh2add.uw x29, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2a94a320e25c0720 # initialize rs1
li x25, 0x0ea796ee84c8f180 # initialize rs2
sh2add.uw x26, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xed97fe127c52226f # initialize rs1
li x5, 0x023664f700087562 # initialize rs2
sh2add.uw x26, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xeceed7facf004a98 # initialize rs1
li x15, 0xa3088b84de9ac199 # initialize rs2
sh2add.uw x24, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x81f04217cdd62760 # initialize rs1
li x23, 0xbad59a926a9b8962 # initialize rs2
sh2add.uw x24, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1062a86368d4c042 # initialize rs1
li x30, 0xcda07c73bd545378 # initialize rs2
sh2add.uw x26, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbaeec9b44ab45af6 # initialize rs1
li x26, 0xd7737a6f441b7c5f # initialize rs2
sh2add.uw x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x061e4c8211eff225 # initialize rs1
li x18, 0xa72d34314be63266 # initialize rs2
sh2add.uw x20, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x13e8b9742f05c479 # initialize rs1
li x14, 0x0a304edb7f2d8eb0 # initialize rs2
sh2add.uw x10, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x219738073d2c7d33 # initialize rs1
li x7, 0xabf5fdc307a543ad # initialize rs2
sh2add.uw x10, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc84c38de9febb654 # initialize rs1
li x13, 0x52f2fbeb97f1e268 # initialize rs2
sh2add.uw x1, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe08d40ba48c6f833 # initialize rs1
li x12, 0x98c7f5bbb0f04210 # initialize rs2
sh2add.uw x2, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6f2106d99edaebd5 # initialize rs1
li x19, 0xef9dc256d65232f5 # initialize rs2
sh2add.uw x12, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x29b1dfd28d7b3176 # initialize rs1
li x18, 0xdb938951ae104ee2 # initialize rs2
sh2add.uw x7, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x430101f5c6c807c9 # initialize rs1
li x0, 0x3d9f416c29c0f9ec # initialize rs2
sh2add.uw x20, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0x14d3567287c69d0c # initialize rs1
li x1, 0x5863d70a80154795 # initialize rs2
sh2add.uw x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x37ecd566d3c8efce # initialize rs1
li x2, 0x12b58cf394f357a7 # initialize rs2
sh2add.uw x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x4d88508fbfabbb94 # initialize rs1
li x3, 0x854f6846315b5516 # initialize rs2
sh2add.uw x22, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xb2fad4c53aa1cd75 # initialize rs1
li x4, 0xd3398c49ad52102a # initialize rs2
sh2add.uw x22, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xd2315c9455e38a15 # initialize rs1
li x5, 0x31fec0cf9577b2d9 # initialize rs2
sh2add.uw x20, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xc83f98408dc89c6b # initialize rs1
li x6, 0x79120f79eed11fbd # initialize rs2
sh2add.uw x3, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0x7954ab35dc4d1311 # initialize rs1
li x7, 0x762d809bedcb8733 # initialize rs2
sh2add.uw x27, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xb2b2c6e8ed3f1cb1 # initialize rs1
li x8, 0x9e17ad1197bf7e85 # initialize rs2
sh2add.uw x24, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xd732ea973a98bb21 # initialize rs1
li x9, 0x68f3d54a0c80d627 # initialize rs2
sh2add.uw x3, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x394e29e247bd1a4c # initialize rs1
li x10, 0x73660bcb01461c6d # initialize rs2
sh2add.uw x28, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0xf9626d3a208a42c1 # initialize rs1
li x11, 0x9a804356ecc14420 # initialize rs2
sh2add.uw x6, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xe2a203458cb338c0 # initialize rs1
li x12, 0x7440074ae84ed4b4 # initialize rs2
sh2add.uw x13, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x5a2dad0dee893705 # initialize rs1
li x13, 0x832b7d3066db386d # initialize rs2
sh2add.uw x7, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x2fe3fd3d5f9659b5 # initialize rs1
li x14, 0x95e1de36c6c34437 # initialize rs2
sh2add.uw x1, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x53acebab971f7142 # initialize rs1
li x15, 0xd44df536a873aae9 # initialize rs2
sh2add.uw x3, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0xe1692f0f3f0b8146 # initialize rs1
li x16, 0x4f4383b24eecba59 # initialize rs2
sh2add.uw x29, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x51f004ead67b4596 # initialize rs1
li x17, 0x44296d2511a45ace # initialize rs2
sh2add.uw x8, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x944ed4cfae6af088 # initialize rs1
li x18, 0x4c740e31f48c3b02 # initialize rs2
sh2add.uw x23, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0x5315bf2978f4a40d # initialize rs1
li x19, 0x577efb3a7f041cdc # initialize rs2
sh2add.uw x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xa497889a71c0e7c0 # initialize rs1
li x20, 0xafb7fa3bcc4abbea # initialize rs2
sh2add.uw x7, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xeddc704cbce2ecbc # initialize rs1
li x21, 0xeda9e221eb74cd02 # initialize rs2
sh2add.uw x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x134409ca93a9ad47 # initialize rs1
li x22, 0x996c175ad1b1992e # initialize rs2
sh2add.uw x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0x8181bfe6493f87d9 # initialize rs1
li x23, 0x962e606c6f071c85 # initialize rs2
sh2add.uw x3, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0xc7807b4c329830b1 # initialize rs1
li x24, 0xc580d94bf2b0f069 # initialize rs2
sh2add.uw x10, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x53c7bd3d71509292 # initialize rs1
li x25, 0xf644386aed6fcc05 # initialize rs2
sh2add.uw x1, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x6222d733457c5878 # initialize rs1
li x26, 0x13a8797687184480 # initialize rs2
sh2add.uw x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0xbf8a8261b42ddbdb # initialize rs1
li x27, 0xa430950283a1b488 # initialize rs2
sh2add.uw x16, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x7d72eb8340f6c910 # initialize rs1
li x28, 0xcafc4ab5bc2c14aa # initialize rs2
sh2add.uw x22, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x432584c9f50d4ae9 # initialize rs1
li x29, 0x36a554e2ce70ebd2 # initialize rs2
sh2add.uw x20, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x6658dc400f1f7ecb # initialize rs1
li x30, 0xcf0fc00d4ef8ed5e # initialize rs2
sh2add.uw x26, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x51d379a49481e39a # initialize rs1
li x31, 0xb81927437fa4b0ad # initialize rs2
sh2add.uw x12, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x0e87510b7e4e9e91 # initialize rs1
li x11, 0x62f42a3c47bb84ff # initialize rs2
sh2add.uw x0, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xa6e1dd9bdbfc31f0 # initialize rs1
li x5, 0x3cddd68bdddcd679 # initialize rs2
sh2add.uw x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0x0ecd297f16270c65 # initialize rs1
li x10, 0xc00808b72bb07718 # initialize rs2
sh2add.uw x2, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x5e2fc6c949e569d0 # initialize rs1
li x29, 0xa8d4e29a37fc0dfb # initialize rs2
sh2add.uw x3, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xcb454cac577ae682 # initialize rs1
li x8, 0x679a88e58a3f903c # initialize rs2
sh2add.uw x4, x23, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x9c8bfb13e474e68b # initialize rs1
li x22, 0xb9c0fd559211de40 # initialize rs2
sh2add.uw x5, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x683737c69c022064 # initialize rs1
li x8, 0x3dc5e3c4393f3fe2 # initialize rs2
sh2add.uw x6, x22, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x78db28b13d64f6a7 # initialize rs1
li x4, 0x7680ab49b4b37982 # initialize rs2
sh2add.uw x7, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x193f669fc75b87cc # initialize rs1
li x16, 0xa638ea682276ae3a # initialize rs2
sh2add.uw x8, x7, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0x19a6438231990cda # initialize rs1
li x2, 0x6657ca408dd38d18 # initialize rs2
sh2add.uw x9, x19, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xdcc03d7637147caf # initialize rs1
li x22, 0x40b46eacf9427363 # initialize rs2
sh2add.uw x10, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0xfb3118c28c6747e6 # initialize rs1
li x22, 0x2ad93e2c4ecb3139 # initialize rs2
sh2add.uw x11, x3, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xdcf10cba9e939865 # initialize rs1
li x11, 0x4947a1d9827d6140 # initialize rs2
sh2add.uw x12, x8, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x5667503f9a533f40 # initialize rs1
li x16, 0x1231aef81eb45afa # initialize rs2
sh2add.uw x13, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0x02932cdf4db53eee # initialize rs1
li x23, 0xc774197338a6150b # initialize rs2
sh2add.uw x14, x22, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x6f67650553dd5096 # initialize rs1
li x10, 0x9313d529a4cd0271 # initialize rs2
sh2add.uw x15, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x29c05abdd446e87d # initialize rs1
li x13, 0x52941cd16a80a603 # initialize rs2
sh2add.uw x16, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x3be4435d3d9b5209 # initialize rs1
li x8, 0xa6d2eaa9204480cf # initialize rs2
sh2add.uw x17, x11, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x6a007bc352b65526 # initialize rs1
li x9, 0xd56d8692ee708daf # initialize rs2
sh2add.uw x18, x17, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x8190d8bcc75ba629 # initialize rs1
li x18, 0x02eeb568c326e7f8 # initialize rs2
sh2add.uw x19, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x8eee8411450f6f49 # initialize rs1
li x4, 0x2ff76912afb72455 # initialize rs2
sh2add.uw x20, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x2693f2ee2e942272 # initialize rs1
li x22, 0x69354ec29af48eef # initialize rs2
sh2add.uw x21, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x2248e3b243831871 # initialize rs1
li x19, 0x68ac89fb4bdebf23 # initialize rs2
sh2add.uw x22, x21, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x16bd89c349fdbee3 # initialize rs1
li x24, 0x5e4b3679c53a08da # initialize rs2
sh2add.uw x23, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x420f9a0702afbe8d # initialize rs1
li x15, 0xd35e82d72382ce2a # initialize rs2
sh2add.uw x24, x29, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x529be31b92409894 # initialize rs1
li x10, 0x7ae26fbf63d4ae54 # initialize rs2
sh2add.uw x25, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0xb0f9ef7228920503 # initialize rs1
li x14, 0xc5ec5d0fb93c0520 # initialize rs2
sh2add.uw x26, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x616975477e1675d7 # initialize rs1
li x20, 0xfb0e93ba5af609e4 # initialize rs2
sh2add.uw x27, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0x1c3c6e0ad41245b5 # initialize rs1
li x9, 0x3fb781139baba434 # initialize rs2
sh2add.uw x28, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x1b2882d678c73ce5 # initialize rs1
li x20, 0x14a1016f4b017d9b # initialize rs2
sh2add.uw x29, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xd1b9971ceb7b886e # initialize rs1
li x4, 0xe4e3090391d31246 # initialize rs2
sh2add.uw x30, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0xf1237bba73e03be3 # initialize rs1
li x14, 0x79663f0aa24f2f22 # initialize rs2
sh2add.uw x31, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x15, 0x5377664bb36efdc9 # initialize rs2
sh2add.uw x31, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x24, 0x69595009ed281282 # initialize rs2
sh2add.uw x16, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x28, 0x053134d0ec71d35e # initialize rs2
sh2add.uw x2, x30, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x12b9f26e27bebed2 # initialize rs2
sh2add.uw x2, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0x1558a98636a473e7 # initialize rs2
sh2add.uw x18, x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x15, 0xec9ee93fae359d69 # initialize rs2
sh2add.uw x14, x8, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0x81cd7c259dc250af # initialize rs2
sh2add.uw x29, x24, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x15, 0xf867b8e8a667a64d # initialize rs2
sh2add.uw x29, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x13, 0x4f50ee9e2d3ee846 # initialize rs2
sh2add.uw x15, x6, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xb5a7060bbf77c0a9 # initialize rs2
sh2add.uw x19, x18, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x05385dbb559b7380 # initialize rs2
sh2add.uw x17, x29, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x5555555555555555 # initialize rs1
li x16, 0x31de8d6840ca7a19 # initialize rs2
sh2add.uw x25, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x28, 0x143ee0c3387d1e55 # initialize rs2
sh2add.uw x3, x12, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0x00000000fffffffe # initialize rs1
li x31, 0x3d195868b178844a # initialize rs2
sh2add.uw x16, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x31, 0x3989305a82b27cdd # initialize rs2
sh2add.uw x29, x17, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x29, 0x78591ed1691c3880 # initialize rs2
sh2add.uw x1, x19, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0xddc3c2653ca8f934 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh2add.uw x22, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0x28f5b1df2ebaac68 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh2add.uw x14, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x7b6be843c8d296c0 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh2add.uw x12, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0x4d479f70c8d82ef6 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh2add.uw x18, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0x6e9b1052f98f4d0b # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x3, x17, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x92b367c99d0095ca # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add.uw x6, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x20a16a9abc4749ca # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x26, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x24d746625418d15a # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add.uw x18, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0x0ff1b7b60616eeb6 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add.uw x30, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x46487a7e6e7424fd # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x20, x30, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xcd956eece1be99f9 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x15, x2, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x36ea5f9bd8f28d01 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x24, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x30e17b840f6db895 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sh2add.uw x17, x29, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x668c311992e11302 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x4, x28, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0xc98608ec6831bec8 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sh2add.uw x23, x22, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0xe2af9d0200fdc576 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh2add.uw x21, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add.uw x19, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh2add.uw x11, x8, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh2add.uw x26, x31, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh2add.uw x19, x2, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x9, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh2add.uw x6, x23, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sh2add.uw x22, x14, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x10, x11, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x21, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x2, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sh2add.uw x25, x2, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh2add.uw x29, x31, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh2add.uw x16, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x20, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh2add.uw x24, x20, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh2add.uw x29, x1, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh2add.uw x11, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x4, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh2add.uw x22, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add.uw x9, x24, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x23, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x30, x23, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x16, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh2add.uw x8, x16, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add.uw x23, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x28, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh2add.uw x14, x25, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sh2add.uw x23, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x6, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x8, x23, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh2add.uw x31, x1, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
sh2add.uw x23, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x1, 0x0000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x8, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x18, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x14, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add.uw x13, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh2add.uw x4, x26, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh2add.uw x1, x14, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh2add.uw x2, x21, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh2add.uw x6, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sh2add.uw x25, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh2add.uw x7, x11, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x16, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x12, x30, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x9, x14, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x18, x19, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000002 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x23, x27, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x22, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh2add.uw x11, x22, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh2add.uw x24, x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x4, 0x0000000000000002 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add.uw x27, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh2add.uw x1, x12, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x30, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x15, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x9, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sh2add.uw x27, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh2add.uw x15, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh2add.uw x18, x29, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x27, x12, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh2add.uw x31, x3, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x28, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x8000000000000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x6, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add.uw x4, x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add.uw x7, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add.uw x2, x29, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add.uw x14, x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add.uw x26, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh2add.uw x21, x9, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add.uw x29, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x27, 0x8000000000000001 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
sh2add.uw x20, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x8, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sh2add.uw x20, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh2add.uw x20, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x4, 0x8000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x24, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh2add.uw x21, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh2add.uw x4, x3, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x21, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x4, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add.uw x10, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh2add.uw x18, x16, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x4, 0x8000000000000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh2add.uw x17, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add.uw x20, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh2add.uw x6, x3, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x11, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh2add.uw x30, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x25, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x25, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x4, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add.uw x24, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh2add.uw x23, x2, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add.uw x25, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x29, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x28, x18, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x1, x22, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x7fffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x31, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x29, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x7fffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sh2add.uw x22, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh2add.uw x11, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh2add.uw x24, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sh2add.uw x27, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x16, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh2add.uw x23, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh2add.uw x18, x21, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add.uw x15, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh2add.uw x7, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sh2add.uw x4, x1, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sh2add.uw x19, x29, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh2add.uw x19, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x4, x29, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sh2add.uw x10, x30, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add.uw x17, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x6, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sh2add.uw x3, x17, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sh2add.uw x1, x2, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sh2add.uw x15, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add.uw x25, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x20, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
sh2add.uw x16, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh2add.uw x30, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x4, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh2add.uw x6, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh2add.uw x7, x6, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x26, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh2add.uw x19, x26, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh2add.uw x3, x18, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x1, x17, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh2add.uw x12, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh2add.uw x23, x13, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x7, x3, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x14, 0xffffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh2add.uw x18, x14, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh2add.uw x20, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh2add.uw x23, x28, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x18, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh2add.uw x29, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x24, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add.uw x9, x24, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sh2add.uw x28, x23, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add.uw x17, x15, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh2add.uw x8, x10, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh2add.uw x10, x29, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh2add.uw x6, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x4, x23, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
sh2add.uw x28, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh2add.uw x24, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x26, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x4, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh2add.uw x19, x9, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sh2add.uw x8, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh2add.uw x26, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x26, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh2add.uw x30, x26, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh2add.uw x9, x12, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sh2add.uw x1, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add.uw x10, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh2add.uw x9, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh2add.uw x31, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add.uw x12, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh2add.uw x10, x23, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x8, x27, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh2add.uw x21, x1, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh2add.uw x12, x14, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x29, x16, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x21, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh2add.uw x26, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x8, x7, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sh2add.uw x9, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add.uw x15, x3, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh2add.uw x1, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh2add.uw x8, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add.uw x30, x15, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x10, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x29, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh2add.uw x17, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x10, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh2add.uw x1, x28, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add.uw x24, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x17, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x29, x26, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh2add.uw x26, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh2add.uw x29, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh2add.uw x20, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh2add.uw x10, x17, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sh2add.uw x16, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x8, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh2add.uw x16, x8, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh2add.uw x17, x27, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh2add.uw x21, x16, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x4, x7, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh2add.uw x25, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x21, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add.uw x7, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh2add.uw x3, x13, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x30, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x3, x23, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh2add.uw x20, x8, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh2add.uw x10, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh2add.uw x20, x25, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x13, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
sh2add.uw x2, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sh2add.uw x25, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh2add.uw x19, x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh2add.uw x18, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh2add.uw x31, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x31, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh2add.uw x26, x31, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh2add.uw x10, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x27, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh2add.uw x10, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sh2add.uw x16, x30, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x4, 0x00000000ffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x2, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000ffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x24, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add.uw x19, x22, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh2add.uw x24, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x30, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x8, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh2add.uw x26, x8, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sh2add.uw x18, x10, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh2add.uw x14, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh2add.uw x9, x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh2add.uw x28, x2, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x26, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
sh2add.uw x13, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add.uw x3, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x17, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x24, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh2add.uw x16, x18, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x00000000fffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x30, x18, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x8, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh2add.uw x23, x17, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh2add.uw x31, x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x3, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x24, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add.uw x20, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x29, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sh2add.uw x8, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x4, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x21, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add.uw x6, x21, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add.uw x12, x15, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh2add.uw x21, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add.uw x17, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x10, x8, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add.uw x4, x22, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh2add.uw x27, x3, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x11, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x25, x26, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x31, 0x0000000100000000 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
sh2add.uw x20, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x3, 0x0000000100000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh2add.uw x22, x3, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sh2add.uw x26, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x4, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh2add.uw x9, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh2add.uw x25, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add.uw x4, x21, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x30, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh2add.uw x31, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sh2add.uw x15, x24, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x2, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh2add.uw x12, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh2add.uw x13, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add.uw x20, x29, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x15, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add.uw x16, x25, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh2add.uw x29, x14, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x26, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x1, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sh2add.uw x13, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh2add.uw x19, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x31, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh2add.uw x13, x1, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sh2add.uw x6, x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5107c549d327a541 # initialize rs1
li x0, 0x0d4ad006c1fdf949 # initialize rs2
sh2add.uw x9, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc2c04d642c1f1114 # initialize rs1
li x1, 0x05fad7e59f5a56f6 # initialize rs2
sh2add.uw x27, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7097d0adad21c557 # initialize rs1
li x2, 0x12bbacfed2643e7b # initialize rs2
sh2add.uw x29, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd1914ee437a871cc # initialize rs1
li x3, 0xee2034192ce532ac # initialize rs2
sh2add.uw x13, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x836794696a472698 # initialize rs1
li x4, 0x6aa2d67c5242118a # initialize rs2
sh2add.uw x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x85fe1be79f1ae476 # initialize rs1
li x5, 0x39da85af9b518318 # initialize rs2
sh2add.uw x12, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1017edc6339d230e # initialize rs1
li x6, 0xace03f90d0dcd69b # initialize rs2
sh2add.uw x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x96a8863526c6fc4a # initialize rs1
li x7, 0xc628326c687fecda # initialize rs2
sh2add.uw x27, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x393e1deabf4537d0 # initialize rs1
li x8, 0xe0c707e012d04bc0 # initialize rs2
sh2add.uw x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x0b94be0a44685c26 # initialize rs1
li x9, 0x86a5f3abd7311c81 # initialize rs2
sh2add.uw x12, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x37ac788424d2a34c # initialize rs1
li x10, 0x260b1fa1358352a9 # initialize rs2
sh2add.uw x16, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8dd3b1b1a88625fe # initialize rs1
li x11, 0x16464abeaf7d9640 # initialize rs2
sh2add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x34eba4a5b099cb51 # initialize rs1
li x12, 0x938ce9c91158cae8 # initialize rs2
sh2add.uw x21, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3444d7841ae50009 # initialize rs1
li x13, 0xfba82dd5489880b3 # initialize rs2
sh2add.uw x1, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x03f7b445e17bf237 # initialize rs1
li x14, 0x96aa1c4343416ccc # initialize rs2
sh2add.uw x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x94b773f58fc6a3e2 # initialize rs1
li x15, 0x7f7f131ff55ec762 # initialize rs2
sh2add.uw x31, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb0f8b403b010191d # initialize rs1
li x16, 0x4f795f49991c2d33 # initialize rs2
sh2add.uw x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x074536fe71effa86 # initialize rs1
li x17, 0x9ec3f7f2247aed04 # initialize rs2
sh2add.uw x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6a2b29b801cce89c # initialize rs1
li x18, 0x5718932f414add7b # initialize rs2
sh2add.uw x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x79f4388f01ed74d2 # initialize rs1
li x19, 0x9510c5e7dde04215 # initialize rs2
sh2add.uw x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xcfc6ef9e92c41f89 # initialize rs1
li x20, 0x4eaab99b0693963d # initialize rs2
sh2add.uw x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc4e32ee2acc91b50 # initialize rs1
li x21, 0x31c33a66f3553fdc # initialize rs2
sh2add.uw x7, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x96ad6725b43667a2 # initialize rs1
li x22, 0x1d53e44407b983b4 # initialize rs2
sh2add.uw x26, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x4e6789f7f433a0c4 # initialize rs1
li x23, 0x4fa9e1321fb478dd # initialize rs2
sh2add.uw x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4b469559a6893fbb # initialize rs1
li x24, 0x75885ea4a15ade00 # initialize rs2
sh2add.uw x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xdea2b92649786e87 # initialize rs1
li x25, 0x4fff17d885308362 # initialize rs2
sh2add.uw x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9e2f1a1b5c0cd746 # initialize rs1
li x26, 0x747abcd3f27d57eb # initialize rs2
sh2add.uw x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x631577990efcb15b # initialize rs1
li x27, 0x65247c62247f1950 # initialize rs2
sh2add.uw x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xca5d2c400e292409 # initialize rs1
li x28, 0x0c7387374cab154c # initialize rs2
sh2add.uw x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x29b7b4db7eadd8eb # initialize rs1
li x29, 0xf35d644004c166c0 # initialize rs2
sh2add.uw x19, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xefc8bde4e6e06ae2 # initialize rs1
li x30, 0x1b7add3e42836695 # initialize rs2
sh2add.uw x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x913a4cb2a89d5720 # initialize rs1
li x31, 0x822fa567fbffd6af # initialize rs2
sh2add.uw x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe50569437c112a55 # initialize rs1
li x14, 0x72e557a7aa4240b6 # initialize rs2
sh2add.uw x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7f1a9d0718ab57ee # initialize rs1
li x30, 0xe6322e75ce5c7975 # initialize rs2
sh2add.uw x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xcdfd74174bd84fec # initialize rs1
li x18, 0x395150725cd1e619 # initialize rs2
sh2add.uw x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbfa5f2008413befa # initialize rs1
li x26, 0x9f59c6efdbe47cc4 # initialize rs2
sh2add.uw x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xea4669afe36eba79 # initialize rs1
li x29, 0x5f2cac9c6a0ff6da # initialize rs2
sh2add.uw x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd92580f83a3fb8d # initialize rs1
li x7, 0x024b16197c4b5111 # initialize rs2
sh2add.uw x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd9ce4b5d7c9f9f28 # initialize rs1
li x4, 0x43fe794fb182f4d8 # initialize rs2
sh2add.uw x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3557cc9063d2bcda # initialize rs1
li x26, 0xc5391f53159f4010 # initialize rs2
sh2add.uw x7, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x51464a9f6172ec77 # initialize rs1
li x29, 0x6f7655dca5a5ff9d # initialize rs2
sh2add.uw x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc1f4914d906d8e59 # initialize rs1
li x9, 0x3189d066f6477e34 # initialize rs2
sh2add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc8e7051e99d85467 # initialize rs1
li x12, 0x4278280b957e62b1 # initialize rs2
sh2add.uw x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd81cae7825727f0b # initialize rs1
li x12, 0xb3688c16acc537ed # initialize rs2
sh2add.uw x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd81d6ef1b9355381 # initialize rs1
li x1, 0x1c1a38c5844e8fea # initialize rs2
sh2add.uw x12, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe594e4bc324b6b4e # initialize rs1
li x20, 0x4162e56d5518a1b6 # initialize rs2
sh2add.uw x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaf615073e087163d # initialize rs1
li x26, 0xc3579b9b28b9a200 # initialize rs2
sh2add.uw x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc6857dbcf967a098 # initialize rs1
li x25, 0xef4817b936799f80 # initialize rs2
sh2add.uw x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9c12eeb25c140b6f # initialize rs1
li x31, 0xc5c574f8e8aa47e6 # initialize rs2
sh2add.uw x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0fc74aef6da49044 # initialize rs1
li x21, 0xc0cd6dd8f1240495 # initialize rs2
sh2add.uw x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd957988275fc2d52 # initialize rs1
li x27, 0x4836814ebd1b7405 # initialize rs2
sh2add.uw x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xdc577218af1bbf33 # initialize rs1
li x6, 0x7d881381e5bb0782 # initialize rs2
sh2add.uw x19, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa41766d943e33ae4 # initialize rs1
li x1, 0x589e0c6cc464f18d # initialize rs2
sh2add.uw x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9fb857164f2d29b0 # initialize rs1
li x21, 0xd770a2a990c3c512 # initialize rs2
sh2add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3f481600c873e296 # initialize rs1
li x10, 0xd058b869c25e0be2 # initialize rs2
sh2add.uw x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbf3e605c7ddc7b57 # initialize rs1
li x21, 0xa0316e9fdbeb442e # initialize rs2
sh2add.uw x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0086785f2970ff39 # initialize rs1
li x27, 0x2be0f523a751dbe0 # initialize rs2
sh2add.uw x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0097ee77ae247309 # initialize rs1
li x8, 0xd060d66b15aca16b # initialize rs2
sh2add.uw x25, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x47b75f69783e37b8 # initialize rs1
li x30, 0x0f4e12043655dc0a # initialize rs2
sh2add.uw x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb2008d94d5300d1f # initialize rs1
li x6, 0x954429ec68d837c2 # initialize rs2
sh2add.uw x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb3014ba6a3cf644c # initialize rs1
li x8, 0x949fcf3e23e34a4d # initialize rs2
sh2add.uw x28, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x715ce784a93be52b # initialize rs1
li x1, 0x28da1b01cd72555a # initialize rs2
sh2add.uw x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xab38a9365b01e859 # initialize rs1
li x25, 0xd8782bb276945051 # initialize rs2
sh2add.uw x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4addb46ba095759d # initialize rs1
li x13, 0x26647827e5e3c4ee # initialize rs2
sh2add.uw x31, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x58f80ca39dec2b40 # initialize rs1
li x0, 0xfbf88062dbbfd641 # initialize rs2
sh2add.uw x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x62fbf4583259e2db # initialize rs1
li x1, 0x6f4566d59bd063d1 # initialize rs2
sh2add.uw x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0x6660b37d92bff6e9 # initialize rs1
li x2, 0x619f7c5a1f5f36b0 # initialize rs2
sh2add.uw x2, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0xcc4a398641e2d1c4 # initialize rs1
li x3, 0xf0f28b34f9842b4b # initialize rs2
sh2add.uw x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x9a440ee245e3adf1 # initialize rs1
li x4, 0x9f9b85c181625618 # initialize rs2
sh2add.uw x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xad9dc18de328a4d9 # initialize rs1
li x5, 0x25e9d5feebc7936d # initialize rs2
sh2add.uw x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x817728a6c6d18ddc # initialize rs1
li x6, 0x06d7f6217e23d46f # initialize rs2
sh2add.uw x6, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x955c1c037b9aae58 # initialize rs1
li x7, 0x38d94d71d59876da # initialize rs2
sh2add.uw x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x7, 0xf018b9de11e36a84 # initialize rs1
li x8, 0xce29ab0fc94d463b # initialize rs2
sh2add.uw x8, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0x98e490da0d99f7f3 # initialize rs1
li x9, 0x91b3616c8ab93519 # initialize rs2
sh2add.uw x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x5, 0xe9ccd23a065b53b4 # initialize rs1
li x10, 0xca768c9133df6237 # initialize rs2
sh2add.uw x10, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x19, 0x3902d3511c36fcd2 # initialize rs1
li x11, 0x80bf27464ab04465 # initialize rs2
sh2add.uw x11, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0xdcc341f0281c4c78 # initialize rs1
li x12, 0xc367a466cb82d447 # initialize rs2
sh2add.uw x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0x6af6837c0a8046ec # initialize rs1
li x13, 0xa91935c328b5dc30 # initialize rs2
sh2add.uw x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xd22064371465fcf8 # initialize rs1
li x14, 0x2cc81d39a3b840ce # initialize rs2
sh2add.uw x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0x5547b66967717032 # initialize rs1
li x15, 0xa7b10cc4f301b15f # initialize rs2
sh2add.uw x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0xbab4d8890e2dd929 # initialize rs1
li x16, 0x4e383925e718fd99 # initialize rs2
sh2add.uw x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x3, 0x2fd5e2bc2906a030 # initialize rs1
li x17, 0x7614802ccc786615 # initialize rs2
sh2add.uw x17, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x28, 0x60f56cce940fafc7 # initialize rs1
li x18, 0x6836dca182e7e84d # initialize rs2
sh2add.uw x18, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5b530fb12e2c35c0 # initialize rs1
li x19, 0x374a1351510ccc37 # initialize rs2
sh2add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x12, 0x4249b736566d8cf5 # initialize rs1
li x20, 0x8e298106297cdd67 # initialize rs2
sh2add.uw x20, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0xecee25b6ed7c535a # initialize rs1
li x21, 0xcc5ff3bc980acf4c # initialize rs2
sh2add.uw x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0x172950fcdf916041 # initialize rs1
li x22, 0x247d9113214bfc03 # initialize rs2
sh2add.uw x22, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x9d10d8d1ff362e15 # initialize rs1
li x23, 0xd7b26b9631c9e214 # initialize rs2
sh2add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x338078b3ba4d467a # initialize rs1
li x24, 0xc7c5082ee6ddf42f # initialize rs2
sh2add.uw x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0xb2924ae71ea627be # initialize rs1
li x25, 0xe2cc13f3b24b6ef1 # initialize rs2
sh2add.uw x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x6, 0x3114309e740e84ea # initialize rs1
li x26, 0x4265ef2d243f60de # initialize rs2
sh2add.uw x26, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x24, 0x61ae6223d7c0c939 # initialize rs1
li x27, 0xeb05970cc3837ae4 # initialize rs2
sh2add.uw x27, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x8e6f70c0bf565d27 # initialize rs1
li x28, 0x851998b854724e21 # initialize rs2
sh2add.uw x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0xff9162c5f038bd90 # initialize rs1
li x29, 0xa6991cd1bad572a3 # initialize rs2
sh2add.uw x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x22, 0xe289dca62074d388 # initialize rs1
li x30, 0x042be4ae6d5dc056 # initialize rs2
sh2add.uw x30, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0xdf2a1f54c5dc4ed7 # initialize rs1
li x31, 0x5d6f8cc75f765972 # initialize rs2
sh2add.uw x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x2937e13750f624a4 # initialize rs1
li x0, 0xf915487f2579ba8e # initialize rs2
sh2add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xea11e08c0f2257ea # initialize rs1
li x1, 0x7cb5a0ffba294bb1 # initialize rs2
sh2add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x5428c18c77a803b6 # initialize rs1
li x2, 0x3500d70b1c088696 # initialize rs2
sh2add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x410375d9700f7ba8 # initialize rs1
li x3, 0x13c2cfa036dd4d3b # initialize rs2
sh2add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x70f8edeb1302700d # initialize rs1
li x4, 0xcd3f033f5cbe17cf # initialize rs2
sh2add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xad2c76ce5695e342 # initialize rs1
li x5, 0x2633f360d9d23dfe # initialize rs2
sh2add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed89fdeaa14dc4fe # initialize rs1
li x6, 0xa31cad1b735ff268 # initialize rs2
sh2add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb6fb9ade50ecc1b3 # initialize rs1
li x7, 0x27681ea31b84cfc3 # initialize rs2
sh2add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xea6be0facbcb9458 # initialize rs1
li x8, 0x4797a88e5d11e1f3 # initialize rs2
sh2add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1d92dfc2073368c2 # initialize rs1
li x9, 0x5b2d5902511b9e78 # initialize rs2
sh2add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbf4bd8c4d8f4fad6 # initialize rs1
li x10, 0x9f240f7e8fc53feb # initialize rs2
sh2add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x819e0802ff984e9e # initialize rs1
li x11, 0xb4e4f7ff8a24c369 # initialize rs2
sh2add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x15f72e4d98d8a28f # initialize rs1
li x12, 0x3cf7073c50747449 # initialize rs2
sh2add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe3f50bfe392473fb # initialize rs1
li x13, 0xfd1f0a344a664589 # initialize rs2
sh2add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x511ebd0365958722 # initialize rs1
li x14, 0x888a84b4718f81c1 # initialize rs2
sh2add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf5de9f70d2488e0e # initialize rs1
li x15, 0x0388fa56312d1987 # initialize rs2
sh2add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2add0da47d1c815f # initialize rs1
li x16, 0x78bd8afd561c3595 # initialize rs2
sh2add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8ce34d7e4c01bdb2 # initialize rs1
li x17, 0xe0dc4e1fa09b9a8b # initialize rs2
sh2add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x678aa2fc91b1a7de # initialize rs1
li x18, 0x67c3bb5750984c39 # initialize rs2
sh2add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0828862d7c7e88ab # initialize rs1
li x19, 0x66553381d1a86aec # initialize rs2
sh2add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2718596bf2c45632 # initialize rs1
li x20, 0xf14a05c9367b8eaa # initialize rs2
sh2add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa9547861e8e4d169 # initialize rs1
li x21, 0xd81c18804d85111c # initialize rs2
sh2add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0b4f4ad517386669 # initialize rs1
li x22, 0x3f1160729dd33387 # initialize rs2
sh2add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1dc8348359e9da4a # initialize rs1
li x23, 0x84cd340044ecf857 # initialize rs2
sh2add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb39cd68d1bae5248 # initialize rs1
li x24, 0x6981608bcf6d450f # initialize rs2
sh2add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xed461c2a7902bac8 # initialize rs1
li x25, 0xc58f54ad3245cfa1 # initialize rs2
sh2add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x38be5a819d7c15a7 # initialize rs1
li x26, 0xd4005fa58b646908 # initialize rs2
sh2add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5c948c17990062a0 # initialize rs1
li x27, 0x84433e66a690b662 # initialize rs2
sh2add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd942eaed72bc6f79 # initialize rs1
li x28, 0xb7e7b51a1eeb5c46 # initialize rs2
sh2add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd80ffac1161421f4 # initialize rs1
li x29, 0x3cf40f359a52719c # initialize rs2
sh2add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc7bb3b08a5c4d50d # initialize rs1
li x30, 0xb3bf5d3b94a0e7bc # initialize rs2
sh2add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd0b421a5910d2b4d # initialize rs1
li x31, 0x519351392abab09d # initialize rs2
sh2add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x19, x3 # perform first operation
sh2add.uw x31, x5, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x5 # perform first operation
sh2add.uw x24, x10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x19, x10 # perform first operation
sh2add.uw x29, x26, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x16, x25 # perform first operation
sh2add.uw x25, x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x24, x17 # perform first operation
sh2add.uw x17, x24, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x24, x19 # perform first operation
sh2add.uw x24, x10, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x11, x6 # perform first operation
sh2add.uw x25, x9, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x12, x22 # perform first operation
sh2add.uw x30, x11, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x9, x19 # perform first operation
sh2add.uw x5, x26, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x9, x20 # perform first operation
sh2add.uw x9, x26, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x7, x16 # perform first operation
sh2add.uw x16, x13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x24, x3 # perform first operation
sh2add.uw x10, x16, x7 # perform second (triggering) operation

#.EQU SIGSIZE,4096
.EQU SIGSIZE,30080 #combined


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
