///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-add.uw.S
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
