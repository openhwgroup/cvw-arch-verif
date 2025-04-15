///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-srlw.S
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
li x0, 0x2a315f3a6b21c83b # initialize rs1
li x5, 0x6f6b9fa3ef4b3622 # initialize rs2
srlw x1, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x92e3cfb4b4c713c7 # initialize rs1
li x18, 0xf15e85891269cf73 # initialize rs2
srlw x3, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x13a6939832b485be # initialize rs1
li x28, 0x9357ddab700344e5 # initialize rs2
srlw x8, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x714ad6e54f37815c # initialize rs1
li x23, 0xd8ca00c5a3d7e514 # initialize rs2
srlw x8, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe839946fa0fa250b # initialize rs1
li x1, 0x03e8823c2393bcb6 # initialize rs2
srlw x28, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x82592fc681294d4e # initialize rs1
li x12, 0x275c4492d80d2fa0 # initialize rs2
srlw x1, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaf53e62207e4b4b4 # initialize rs1
li x31, 0x0b1ba1544d319201 # initialize rs2
srlw x12, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x717a91f94c2795a0 # initialize rs1
li x27, 0x90cc52e0b2fbbe06 # initialize rs2
srlw x4, x7, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7431c900b33235c4 # initialize rs1
li x24, 0xfe2f995bcb98915a # initialize rs2
srlw x3, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x80cfae31e7025ec4 # initialize rs1
li x15, 0xb09ed15404c75b3c # initialize rs2
srlw x4, x9, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd7e8835a4f65310c # initialize rs1
li x26, 0x3cb9b34cc0b30254 # initialize rs2
srlw x13, x10, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xff0f46c6bd5fed26 # initialize rs1
li x14, 0xb060fc6e7575fe14 # initialize rs2
srlw x1, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xff0e33fc8c0f0334 # initialize rs1
li x13, 0xb4a7af88a5551ccc # initialize rs2
srlw x9, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfe959d8f884ea832 # initialize rs1
li x25, 0x834c98d00b727743 # initialize rs2
srlw x17, x13, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4616822cfc6c5e02 # initialize rs1
li x16, 0xbf5cb8e1ae14e83d # initialize rs2
srlw x23, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf61beaeaa8d8293b # initialize rs1
li x21, 0xa2d7346f65ff05e6 # initialize rs2
srlw x30, x15, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6114c4d9cedc0a7c # initialize rs1
li x26, 0x675a027f4b7fb179 # initialize rs2
srlw x9, x16, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1704d9f79627f553 # initialize rs1
li x20, 0x084f82ea701e4637 # initialize rs2
srlw x24, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x59ad9507c351d09c # initialize rs1
li x25, 0x3df76a3d28cf1de4 # initialize rs2
srlw x29, x18, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe03938b6088f7cc9 # initialize rs1
li x10, 0x6f4ff8eebb9c8be8 # initialize rs2
srlw x20, x19, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x839e9a3f7aac5f1d # initialize rs1
li x24, 0x7be0f680922abeaa # initialize rs2
srlw x17, x20, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe8bb1d3888043e2c # initialize rs1
li x1, 0xe21f5fe233d2b5bc # initialize rs2
srlw x25, x21, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x102511255f4b2fd6 # initialize rs1
li x6, 0x1098263b1666b0d8 # initialize rs2
srlw x4, x22, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xca230f7f71158491 # initialize rs1
li x30, 0x94721d90252daa71 # initialize rs2
srlw x21, x23, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfc152b4011aeaeae # initialize rs1
li x22, 0x24f6d9f5da46b6a0 # initialize rs2
srlw x1, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3098efc47d93cd23 # initialize rs1
li x29, 0xbded20d955b0b94f # initialize rs2
srlw x10, x25, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x080cde0d2f924ca1 # initialize rs1
li x30, 0x810d1bf6cce0d4df # initialize rs2
srlw x7, x26, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe636d99d31b5472a # initialize rs1
li x9, 0x1ebd2aeb7d5a2820 # initialize rs2
srlw x1, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x30780291b3dc2d89 # initialize rs1
li x29, 0xb3258ab37880be7a # initialize rs2
srlw x3, x28, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9ee6cac6af6353d0 # initialize rs1
li x15, 0x44b290b30e0e5c77 # initialize rs2
srlw x14, x29, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x552c35adbb1268ef # initialize rs1
li x16, 0xfd5ad50b3778e936 # initialize rs2
srlw x25, x30, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf8a2cea37b4b46b8 # initialize rs1
li x1, 0x849fb949a0a043f3 # initialize rs2
srlw x9, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xf52f1c64640368e0 # initialize rs1
li x0, 0x08e306c630094c81 # initialize rs2
srlw x10, x24, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x42ee75d16b8e017d # initialize rs1
li x1, 0x4632d2bdf85a877a # initialize rs2
srlw x11, x28, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0xd4f42e7604cdaf22 # initialize rs1
li x2, 0xb88d22225b263e11 # initialize rs2
srlw x22, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x268ac05ce0565e3f # initialize rs1
li x3, 0x550225cb646b91ea # initialize rs2
srlw x30, x17, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
li x13, 0xe3730f630be953b7 # initialize rs1
li x4, 0x6db45f97a132388b # initialize rs2
srlw x8, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xf966cc4a7f5540a9 # initialize rs1
li x5, 0x080fbdf2397fd979 # initialize rs2
srlw x25, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xe01bcd90960afa93 # initialize rs1
li x6, 0x5575575e3a959f20 # initialize rs2
srlw x26, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x7096127f05b4cf12 # initialize rs1
li x7, 0x67beacfdfe7b2af7 # initialize rs2
srlw x5, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0xdba6f722c3032295 # initialize rs1
li x8, 0x3bf6e400e9175382 # initialize rs2
srlw x5, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x056024ec017332ce # initialize rs1
li x9, 0x6e116ed46f3a51f4 # initialize rs2
srlw x15, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0xf6d153b8d3307e3b # initialize rs1
li x10, 0xc0e8653f60774cf9 # initialize rs2
srlw x19, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xd76c79e8aec5fc8c # initialize rs1
li x11, 0x9cac22a5f257ee07 # initialize rs2
srlw x31, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x42ad85c2e5d7b0b0 # initialize rs1
li x12, 0xaf5fafd65c5f1ecd # initialize rs2
srlw x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0xe2a3218d9985219d # initialize rs1
li x13, 0xe717de35388535b4 # initialize rs2
srlw x26, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x40a3f7f1d43f79a6 # initialize rs1
li x14, 0x8471f48af4ef18ab # initialize rs2
srlw x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x64442b7c1c5d3df4 # initialize rs1
li x15, 0x800a9433d4191524 # initialize rs2
srlw x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x7b8d66dd89f453f3 # initialize rs1
li x16, 0xc5ea4d780e36f788 # initialize rs2
srlw x10, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xf8799851e665fb51 # initialize rs1
li x17, 0x2ba6a6d2716bd92c # initialize rs2
srlw x10, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x74274c6f5027dd1f # initialize rs1
li x18, 0x80457ce41788c1ef # initialize rs2
srlw x25, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x6, 0xd3bf6eba180b6494 # initialize rs1
li x19, 0xbc080026146a94ad # initialize rs2
srlw x10, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x83152a6a98016ae9 # initialize rs1
li x20, 0x128e2941f3a99a73 # initialize rs2
srlw x2, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0xf3fb82d2445af9a5 # initialize rs1
li x21, 0x72ef027b2b9140d2 # initialize rs2
srlw x7, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0x4196ad17566a671f # initialize rs1
li x22, 0x4c63e5aeb3de97c4 # initialize rs2
srlw x24, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0x599853ddba4e1f34 # initialize rs1
li x23, 0x2bc422e6a72f11e2 # initialize rs2
srlw x9, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x207d7b5014b42477 # initialize rs1
li x24, 0xa4443f994fcd39ed # initialize rs2
srlw x11, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x493dbd6bb4162ac6 # initialize rs1
li x25, 0x647fcc877c62e3e5 # initialize rs2
srlw x20, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x648bdb7f2ed8accb # initialize rs1
li x26, 0x9ffc3cfbe94a8f89 # initialize rs2
srlw x25, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x90dc73fb475c9841 # initialize rs1
li x27, 0xea7effce858aa2f4 # initialize rs2
srlw x18, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0xa4b5e726bf984edc # initialize rs1
li x28, 0xbace33e1891af08a # initialize rs2
srlw x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x9731349cabfcdb3a # initialize rs1
li x29, 0xfb5c49dcf961d21e # initialize rs2
srlw x17, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x8b1228ffca0c7ca0 # initialize rs1
li x30, 0x5dc6e0ae60b27f3d # initialize rs2
srlw x1, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0x6ecf1e63626e69b3 # initialize rs1
li x31, 0x42bfba12dc12676b # initialize rs2
srlw x25, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x84d2fb720d2797a9 # initialize rs1
li x16, 0xf71938dc8c9f7888 # initialize rs2
srlw x0, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x8abd3f704cd686b4 # initialize rs1
li x1, 0x23edd5efae75e930 # initialize rs2
srlw x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xdd541116c2a4ff88 # initialize rs1
li x1, 0x3f0567177b9f635a # initialize rs2
srlw x2, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0xf34ab0dce0c63661 # initialize rs1
li x2, 0x1a290cefe6c1990a # initialize rs2
srlw x3, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xab26a04287a3bbfb # initialize rs1
li x2, 0x608a308a79220493 # initialize rs2
srlw x4, x10, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xcd00f8530e96cf0a # initialize rs1
li x23, 0x1bf4eda1d468c68b # initialize rs2
srlw x5, x3, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x654f3b1df3a2287b # initialize rs1
li x27, 0xc401ec4c1e6c3618 # initialize rs2
srlw x6, x23, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xc47dd659f9705d5b # initialize rs1
li x30, 0x45137d91d42e887c # initialize rs2
srlw x7, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0xbde70951b254f4f3 # initialize rs1
li x24, 0x6a0989735e8f04f2 # initialize rs2
srlw x8, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x7902a77f5be75c59 # initialize rs1
li x29, 0xeb756fd467821cf4 # initialize rs2
srlw x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0x07e97e6ba831188e # initialize rs1
li x27, 0xa8db631a3781a118 # initialize rs2
srlw x10, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x3d0a50426bf8dffd # initialize rs1
li x6, 0x0a7d946340009663 # initialize rs2
srlw x11, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x78f136fa6c802eec # initialize rs1
li x19, 0x8cb1863ea5cb9688 # initialize rs2
srlw x12, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x53ddc66995a13595 # initialize rs1
li x7, 0x6490088f2615d22f # initialize rs2
srlw x13, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0x1c65c03aaf731788 # initialize rs1
li x11, 0x770959cf5eecbc75 # initialize rs2
srlw x14, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x386cbfeaa19a485b # initialize rs1
li x26, 0x0fb0f6f143c444cb # initialize rs2
srlw x15, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x10120d5b1cce26e8 # initialize rs1
li x21, 0x67cdd6705ae64317 # initialize rs2
srlw x16, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x86ec72320d0aec75 # initialize rs1
li x7, 0x8beb7ad77c558039 # initialize rs2
srlw x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0x9d063eaf59da0ce8 # initialize rs1
li x20, 0x3b9017eba991248d # initialize rs2
srlw x18, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xb1f35ab9421f79f9 # initialize rs1
li x14, 0x7587788801b16f30 # initialize rs2
srlw x19, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x19d285112c16212b # initialize rs1
li x3, 0x4e12d8f17edcb89f # initialize rs2
srlw x20, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xf0187fb1827447c8 # initialize rs1
li x10, 0x4399b75471d6347f # initialize rs2
srlw x21, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xcdefb957a6d5590d # initialize rs1
li x16, 0xddec061265c72c62 # initialize rs2
srlw x22, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x86825cdad3324605 # initialize rs1
li x17, 0x85ad41521199af94 # initialize rs2
srlw x23, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0x84893c8e6388a739 # initialize rs1
li x11, 0xe9360f53ffe18c75 # initialize rs2
srlw x24, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x37b61690e637847b # initialize rs1
li x18, 0x6c340f9c3bb6f941 # initialize rs2
srlw x25, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0x8dfa51c2e81b3c39 # initialize rs1
li x14, 0xc786806276868d6c # initialize rs2
srlw x26, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0xfd4ff817d57603fe # initialize rs1
li x23, 0x2ecdfbaa58b10032 # initialize rs2
srlw x27, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x14c02f0229842f6f # initialize rs1
li x16, 0x16758370a3ef25c2 # initialize rs2
srlw x28, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x3b0451a13ccfbe7a # initialize rs1
li x9, 0xbc4098abf7ad0b97 # initialize rs2
srlw x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x4deaaf9ec32e92c5 # initialize rs1
li x24, 0x3ae798c04113f0c3 # initialize rs2
srlw x30, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xb5eb5635dc02c949 # initialize rs1
li x3, 0x44baf3304f54ec26 # initialize rs2
srlw x31, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x0000000000000000 # initialize rs1
li x15, 0xc4cf7f8dbf551ddf # initialize rs2
srlw x27, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rs1
li x3, 0x598989074a546b82 # initialize rs2
srlw x18, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x8, 0xb680e3e7c54f8636 # initialize rs2
srlw x23, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x20, 0x8000000000000000 # initialize rs1
li x26, 0xa294389b07d15955 # initialize rs2
srlw x27, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0x8000000000000001 # initialize rs1
li x29, 0xca5757a53c933330 # initialize rs2
srlw x16, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x23, 0x6eb60f9c0e188b6a # initialize rs2
srlw x20, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x24, 0x60ea61d787a67733 # initialize rs2
srlw x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x18, 0x04419e30c5eb28d1 # initialize rs2
srlw x30, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x6, 0xaa034f47c14e8cab # initialize rs2
srlw x24, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x55c1acaeac67fab2 # initialize rs2
srlw x25, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xbc8fc32028f9c076 # initialize rs2
srlw x12, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x30, 0x8ed92f180dceb219 # initialize rs2
srlw x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x11, 0x2a1c832b326bb643 # initialize rs2
srlw x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x29, 0xf89c396bb703edec # initialize rs2
srlw x26, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x3, 0xdbad58a7b355e7db # initialize rs2
srlw x8, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x9, 0xa1b45feebf956df2 # initialize rs2
srlw x22, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x607475853b05d767 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
srlw x14, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0xca307028e7ab78be # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
srlw x12, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x56c45d867da62f71 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
srlw x17, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x93e130ea33b1eaec # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
srlw x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x15, 0x821c81c5e571d494 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srlw x5, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0x6da66cf7c21f8058 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
srlw x27, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xa82ad1683ae74e3b # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
srlw x14, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x25, 0x40853abe8e6f708d # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
srlw x15, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x5c8859fed4128fb2 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
srlw x7, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xbd7db3b962ce2c69 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
srlw x18, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x2ce7ef0f7bdb42df # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x25, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x908d2dd4f9a5cb31 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
srlw x12, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x28384889bffd35fd # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
srlw x17, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0xc55532b99736ad98 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
srlw x21, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xa1b6460c6cefa148 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
srlw x10, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0x26dcd96f74cf241f # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
srlw x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
srlw x23, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
srlw x12, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x6, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
srlw x16, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x29, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
srlw x7, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x5, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srlw x24, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
srlw x7, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
srlw x14, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
srlw x29, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
srlw x5, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
srlw x15, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x1, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x20, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
srlw x11, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
srlw x1, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
srlw x7, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x22, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
srlw x30, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
srlw x24, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
srlw x20, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
srlw x21, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
srlw x14, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x1, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
srlw x28, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srlw x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
srlw x6, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
srlw x13, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
srlw x7, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
srlw x30, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
srlw x13, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x30, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x7, 0x0000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
srlw x11, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
srlw x5, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
srlw x25, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
srlw x14, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x24, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
srlw x25, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
srlw x15, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
srlw x30, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
srlw x29, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
srlw x11, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
srlw x10, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
srlw x14, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
srlw x8, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
srlw x29, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
srlw x13, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
srlw x17, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000002 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x11, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x30, 0x0000000000000002 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srlw x3, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
srlw x26, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
srlw x9, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
srlw x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x1, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
srlw x27, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
srlw x11, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
srlw x3, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
srlw x31, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
srlw x15, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
srlw x13, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
srlw x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
srlw x9, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
srlw x6, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
srlw x7, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
srlw x5, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x24, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x25, 0x8000000000000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
srlw x9, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
srlw x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
srlw x8, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x8000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
srlw x14, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x18, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
srlw x15, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
srlw x8, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
srlw x14, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
srlw x19, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x19, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
srlw x21, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
srlw x15, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
srlw x11, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
srlw x23, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
srlw x7, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
srlw x29, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
srlw x18, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x14, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x24, 0x8000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
srlw x26, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
srlw x29, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
srlw x31, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x31, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
srlw x16, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
srlw x16, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x19, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
srlw x8, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
srlw x11, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
srlw x17, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
srlw x31, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
srlw x6, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
srlw x29, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
srlw x1, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
srlw x22, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
srlw x18, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0x7fffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
srlw x19, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x7fffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x19, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srlw x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
srlw x27, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
srlw x17, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
srlw x13, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
srlw x17, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x11, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
srlw x23, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x16, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
srlw x10, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
srlw x8, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
srlw x1, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
srlw x3, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
srlw x21, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
srlw x30, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
srlw x30, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
srlw x3, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
srlw x7, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7ffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x1, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
srlw x18, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
srlw x16, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
srlw x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
srlw x23, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x9, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
srlw x14, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x15, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
srlw x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x30, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
srlw x29, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
srlw x16, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
srlw x5, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
srlw x13, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
srlw x22, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
srlw x26, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
srlw x7, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
srlw x26, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0xffffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
srlw x14, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xffffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x12, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
srlw x12, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
srlw x7, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
srlw x3, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
srlw x30, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
srlw x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
srlw x6, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
srlw x25, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x11, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
srlw x3, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
srlw x28, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
srlw x28, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
srlw x14, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
srlw x11, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
srlw x11, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
srlw x12, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
srlw x19, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x21, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x23, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srlw x30, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
srlw x8, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srlw x2, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
srlw x31, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x18, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
srlw x27, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
srlw x8, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
srlw x16, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
srlw x20, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
srlw x9, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
srlw x11, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
srlw x25, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
srlw x17, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
srlw x25, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
srlw x7, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
srlw x18, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x21, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
srlw x8, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
srlw x25, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
srlw x3, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
srlw x12, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
srlw x22, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
srlw x22, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
srlw x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
srlw x2, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
srlw x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
srlw x6, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
srlw x26, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
srlw x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
srlw x30, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
srlw x13, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
srlw x2, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x21, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
srlw x23, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
srlw x3, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srlw x16, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
srlw x23, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
srlw x27, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x19, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
srlw x21, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
srlw x1, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x3, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
srlw x11, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x8, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
srlw x27, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
srlw x13, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
srlw x1, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
srlw x21, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x28, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
srlw x21, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
srlw x28, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5555555555555555 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
srlw x28, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x5555555555555555 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x27, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
srlw x10, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
srlw x31, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
srlw x5, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x6, 0x5555555555555555 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
srlw x31, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x6, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
srlw x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x1, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
srlw x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
srlw x26, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
srlw x20, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
srlw x8, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x6, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
srlw x28, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
srlw x22, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
srlw x27, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
srlw x28, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x16, 0x00000000ffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
srlw x5, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x22, 0x00000000ffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
srlw x5, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x21, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x27, 0x00000000ffffffff # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
srlw x10, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
srlw x6, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
srlw x5, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
srlw x12, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x17, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
srlw x25, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srlw x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
srlw x8, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
srlw x5, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
srlw x28, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
srlw x28, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
srlw x2, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
srlw x27, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
srlw x16, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
srlw x10, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
srlw x6, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x18, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
srlw x10, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
srlw x17, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
srlw x19, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x2, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
srlw x7, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x18, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
srlw x7, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x8, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
srlw x10, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x14, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
srlw x17, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x10, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
srlw x8, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x30, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
srlw x20, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
srlw x7, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
srlw x20, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
srlw x20, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
srlw x25, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
srlw x3, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
srlw x15, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x30, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
srlw x24, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
srlw x5, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
srlw x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
srlw x30, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
srlw x20, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
srlw x7, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x26, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
srlw x2, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
srlw x22, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
srlw x7, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
srlw x11, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
srlw x25, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
srlw x1, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srlw x14, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
srlw x16, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
srlw x7, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
srlw x12, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x0000000100000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srlw x10, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
srlw x22, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
srlw x16, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x21, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
srlw x6, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x11, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
srlw x27, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5904ea9780c4cfb4 # initialize rs1
li x0, 0xccdce24f1fd99827 # initialize rs2
srlw x30, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xcf88e045a9b5cc81 # initialize rs1
li x1, 0xb462a9c2c180e1dc # initialize rs2
srlw x5, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x529d23df2eee230e # initialize rs1
li x2, 0xa8c6151d97f20718 # initialize rs2
srlw x25, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd75265a6af5b5e64 # initialize rs1
li x3, 0x4fdabd9929ca532d # initialize rs2
srlw x30, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe0f8c39717d08952 # initialize rs1
li x4, 0x01c37b9a3d3bfabb # initialize rs2
srlw x25, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcada35ccd44b4b1d # initialize rs1
li x5, 0x8f337dedd4dae330 # initialize rs2
srlw x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc180fb5ebc730852 # initialize rs1
li x6, 0x6467e880ad6e8528 # initialize rs2
srlw x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9c0dbe4143bd709 # initialize rs1
li x7, 0xfa971ad091967c5a # initialize rs2
srlw x27, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbff9982e0b9c13dd # initialize rs1
li x8, 0x4dc6e0db7f65d11e # initialize rs2
srlw x23, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x79c7493fc93fea16 # initialize rs1
li x9, 0x352eaf393ea1c617 # initialize rs2
srlw x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x35511f2e5953b3f3 # initialize rs1
li x10, 0x2b51edb6a09d16d4 # initialize rs2
srlw x14, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0dd9a0b54743aa62 # initialize rs1
li x11, 0x1b7abb8f69e039e3 # initialize rs2
srlw x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc197a4e61bca5323 # initialize rs1
li x12, 0x2996b62b25b6ee21 # initialize rs2
srlw x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x38c67ce204411a09 # initialize rs1
li x13, 0x7a9018aa2fda874a # initialize rs2
srlw x19, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc435a05cec574e6b # initialize rs1
li x14, 0x33252e4d357b4beb # initialize rs2
srlw x8, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xda5a9267f1ef13aa # initialize rs1
li x15, 0xe94e329f11fcc635 # initialize rs2
srlw x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf1ed09193259511f # initialize rs1
li x16, 0x94b9f437f8625f95 # initialize rs2
srlw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x0b849e0c8477e87b # initialize rs1
li x17, 0xcbfdd2aa582dd261 # initialize rs2
srlw x18, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1dbab02117d84e9a # initialize rs1
li x18, 0x43413d81edc9f0c2 # initialize rs2
srlw x7, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd5e954c9db96b3c9 # initialize rs1
li x19, 0xc5092edb29f2f432 # initialize rs2
srlw x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4621ad02275c70e5 # initialize rs1
li x20, 0x39741b4a71eb85db # initialize rs2
srlw x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xa9db3e10e3941acc # initialize rs1
li x21, 0x5e718d18bd306850 # initialize rs2
srlw x10, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x68b117286919d4c9 # initialize rs1
li x22, 0x4b4627b9ae88f6ea # initialize rs2
srlw x13, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd95be04d15fb48cd # initialize rs1
li x23, 0x06f0112074925ddf # initialize rs2
srlw x28, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x84ba309aa1c4f3d8 # initialize rs1
li x24, 0x57126a26b8af84f1 # initialize rs2
srlw x29, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xae4d5b109b81e1ec # initialize rs1
li x25, 0xddde11ac618789b1 # initialize rs2
srlw x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9e4b72cefcea186f # initialize rs1
li x26, 0xeab94f0ba3c4a452 # initialize rs2
srlw x13, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf63d5f3bc2643b1c # initialize rs1
li x27, 0x9f77fcd70f9a787e # initialize rs2
srlw x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x4d38b7d7b71add4e # initialize rs1
li x28, 0x5bae79e951639102 # initialize rs2
srlw x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf1c225c51928ac44 # initialize rs1
li x29, 0xdf5228baa3430256 # initialize rs2
srlw x21, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x205d15f887f3c8cc # initialize rs1
li x30, 0x837f4969de421000 # initialize rs2
srlw x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x378b64df5dbb375d # initialize rs1
li x31, 0xf27bafe96dadb104 # initialize rs2
srlw x14, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1825e3316d93942f # initialize rs1
li x3, 0x5201bebb4697b259 # initialize rs2
srlw x0, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcba6447c8068fc0f # initialize rs1
li x15, 0xd588fcc1ff41c293 # initialize rs2
srlw x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x45de8317527dcdf9 # initialize rs1
li x25, 0x82e3eb03396c7417 # initialize rs2
srlw x2, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x976c778ee48b14fb # initialize rs1
li x26, 0xb150dfe1c00538ab # initialize rs2
srlw x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6d1479e22fc00841 # initialize rs1
li x7, 0x1234ae660d81bac7 # initialize rs2
srlw x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2439816af935fd16 # initialize rs1
li x2, 0x6c3f2a17349a3950 # initialize rs2
srlw x5, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x77edcaf73e42401b # initialize rs1
li x27, 0x97a464f607c2a0fd # initialize rs2
srlw x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6e5cb44eb05edc61 # initialize rs1
li x17, 0x2cac99771dc533f2 # initialize rs2
srlw x7, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x12353b51251c7589 # initialize rs1
li x21, 0xde3ca62f7cb318a1 # initialize rs2
srlw x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xfadbc9e73be66537 # initialize rs1
li x22, 0x7f957fda6f8a0f7d # initialize rs2
srlw x9, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd5134db34d9c5ee2 # initialize rs1
li x6, 0x65e720642f37d6c7 # initialize rs2
srlw x10, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x11ebc99d96ce9087 # initialize rs1
li x26, 0xe3ab10a455b7e4c1 # initialize rs2
srlw x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7f73b1d6cd89d89a # initialize rs1
li x26, 0xc3a685e4df946195 # initialize rs2
srlw x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x89b6c8c9e5f22914 # initialize rs1
li x9, 0x0ddeb92f2e445388 # initialize rs2
srlw x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x93e94a2de6a81584 # initialize rs1
li x17, 0xdd22d208de147ec1 # initialize rs2
srlw x14, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6b36e2485d459021 # initialize rs1
li x13, 0x7dd2912bf5fb7944 # initialize rs2
srlw x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x85b4cfed0be7b031 # initialize rs1
li x26, 0x527be3ef026d5aff # initialize rs2
srlw x16, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbf95bf2e2f5ec856 # initialize rs1
li x2, 0x0674717fa83f1114 # initialize rs2
srlw x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x42e14060be0f0440 # initialize rs1
li x7, 0xc4a9fbef04a4b7d3 # initialize rs2
srlw x18, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1dcc17fe78c0eec2 # initialize rs1
li x5, 0xa4cc5605195f0668 # initialize rs2
srlw x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x45bc173df244af83 # initialize rs1
li x1, 0x0d3a4a18bd89d160 # initialize rs2
srlw x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x338705b0d7c24a87 # initialize rs1
li x12, 0x5acc15c81d0b9146 # initialize rs2
srlw x21, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd4d978501b6cede0 # initialize rs1
li x1, 0x805c9ae2b6d16c94 # initialize rs2
srlw x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x81484fbadc8b90d4 # initialize rs1
li x7, 0xa0a3678ec185c162 # initialize rs2
srlw x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe19c8f4a993c5316 # initialize rs1
li x18, 0xd203263b8620e6f5 # initialize rs2
srlw x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe6a3ad1102870981 # initialize rs1
li x1, 0x241002e4914940eb # initialize rs2
srlw x25, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7d950c288019e31c # initialize rs1
li x22, 0x2bb8bb660fd2181b # initialize rs2
srlw x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x88bfe374be8438e0 # initialize rs1
li x6, 0x60671d3e3ab2cfc5 # initialize rs2
srlw x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4e099c4ef1e69293 # initialize rs1
li x5, 0x14599178c5a6d590 # initialize rs2
srlw x28, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x54d304e629f1eb1b # initialize rs1
li x25, 0x3ab231af3fbf65ee # initialize rs2
srlw x29, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6db65081b648956d # initialize rs1
li x7, 0xb060cd29140e6734 # initialize rs2
srlw x30, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd972cb838ff7c43b # initialize rs1
li x10, 0x387aabebe33e7469 # initialize rs2
srlw x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x00fa992d9dde1670 # initialize rs1
li x0, 0x92a8d3696a4fbe7c # initialize rs2
srlw x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0xca1375a5cd0aff33 # initialize rs1
li x1, 0x48141a136c52d3aa # initialize rs2
srlw x1, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0xb9deaec97667645d # initialize rs1
li x2, 0x18b8aaa4e30bdb85 # initialize rs2
srlw x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x2, 0xd01c2cedc76ea953 # initialize rs1
li x3, 0x403926cd94decd2e # initialize rs2
srlw x3, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xfb8e633026a134c3 # initialize rs1
li x4, 0x59fbf42b9ee861d3 # initialize rs2
srlw x4, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x52f6b23818e89c94 # initialize rs1
li x5, 0x420054e80c34614b # initialize rs2
srlw x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x7894cd9047ef3d16 # initialize rs1
li x6, 0x860a032bd83faf26 # initialize rs2
srlw x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x08a3be7627064f68 # initialize rs1
li x7, 0xc3d8c82192deff65 # initialize rs2
srlw x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x2, 0xecbdf4598831f89a # initialize rs1
li x8, 0xcadc2529e5b71ea2 # initialize rs2
srlw x8, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x20, 0x8bde9d0c65b18de3 # initialize rs1
li x9, 0x01aa8fc1a92847b6 # initialize rs2
srlw x9, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x3, 0x66038512fda35226 # initialize rs1
li x10, 0x83e3e888fd3db378 # initialize rs2
srlw x10, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0x0cc21df3244587a9 # initialize rs1
li x11, 0x0e5d873d7ea8ea99 # initialize rs2
srlw x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x25, 0x59637905eed36feb # initialize rs1
li x12, 0x0917e3e4e15c7654 # initialize rs2
srlw x12, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0x695d067ec9fc69e9 # initialize rs1
li x13, 0xdb67904a6eee4f2c # initialize rs2
srlw x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x43b646eaea0e1053 # initialize rs1
li x14, 0x172c8e92afc2faca # initialize rs2
srlw x14, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0x156920ef2188260b # initialize rs1
li x15, 0xd9404924f6b8902e # initialize rs2
srlw x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x5, 0xf68beaaa0ebb1100 # initialize rs1
li x16, 0x48831a8677e79a78 # initialize rs2
srlw x16, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0x0a248d8968d63214 # initialize rs1
li x17, 0x4b42f594214876a3 # initialize rs2
srlw x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0xf107c2ad6d2a03f8 # initialize rs1
li x18, 0x33bfdd379c0b3f84 # initialize rs2
srlw x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x7, 0x711c85a8ee81ad51 # initialize rs1
li x19, 0x00788108f0787135 # initialize rs2
srlw x19, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0x1d726adb1be1cae0 # initialize rs1
li x20, 0x6ac40c9535c2e5e3 # initialize rs2
srlw x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x14, 0x3b61095781f5586d # initialize rs1
li x21, 0x568f58addbe49d93 # initialize rs2
srlw x21, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x2, 0x31a18424313d00b5 # initialize rs1
li x22, 0x221c3b583730b63c # initialize rs2
srlw x22, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0x561125d8a312d885 # initialize rs1
li x23, 0x3dccb7b0985d124c # initialize rs2
srlw x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0xd0861ee4865cf4ab # initialize rs1
li x24, 0x5e826c7d780a9b87 # initialize rs2
srlw x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0x9273cdea8199eb3f # initialize rs1
li x25, 0x402d7d9168ea1333 # initialize rs2
srlw x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x23, 0x79ed73cd0b558620 # initialize rs1
li x26, 0x41b83b0f359742b4 # initialize rs2
srlw x26, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0x1f2f40b3e5404cc4 # initialize rs1
li x27, 0x060310af60a3da49 # initialize rs2
srlw x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0xd252e0aa83a0d15c # initialize rs1
li x28, 0xb198c1f3fa7f4101 # initialize rs2
srlw x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x8, 0x46fc94e91444c594 # initialize rs1
li x29, 0xfde86cc562e91bc7 # initialize rs2
srlw x29, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x29, 0x7e60ec55e0581135 # initialize rs1
li x30, 0xadb905b28ec1d748 # initialize rs2
srlw x30, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x3b8364ea398f7148 # initialize rs1
li x31, 0xbe46b7e53a44461d # initialize rs2
srlw x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7bf5c2dc9f4af0e0 # initialize rs1
li x0, 0x35ef5ba70c62b2f0 # initialize rs2
srlw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe79708ce8b617c42 # initialize rs1
li x1, 0x1aea3b587ea43b68 # initialize rs2
srlw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x602a199a4ea67e02 # initialize rs1
li x2, 0xa864e32943b30797 # initialize rs2
srlw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x2fd03432fc58006a # initialize rs1
li x3, 0xec04acfe38c20af7 # initialize rs2
srlw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8fdb0ff56e4dfcfc # initialize rs1
li x4, 0x6af18d09a750d7be # initialize rs2
srlw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2cdbfa6e5d6c041f # initialize rs1
li x5, 0x9df5a5d0d0db401f # initialize rs2
srlw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x41dd228389d58cec # initialize rs1
li x6, 0xfd9339a2c986533c # initialize rs2
srlw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5fefa3d4b66f53ef # initialize rs1
li x7, 0x448a04febf8268c2 # initialize rs2
srlw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xeee4061194c9dbca # initialize rs1
li x8, 0xf7f4ec55cc481263 # initialize rs2
srlw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf22eb517f3738681 # initialize rs1
li x9, 0xf9b82c288504612e # initialize rs2
srlw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf2571022029e928c # initialize rs1
li x10, 0x4345bf452b7110f0 # initialize rs2
srlw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe2c659926d686212 # initialize rs1
li x11, 0xc5ba01d1b4060fb9 # initialize rs2
srlw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1effe67664255674 # initialize rs1
li x12, 0x89b2838c072a401e # initialize rs2
srlw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa0c099ba3e0283da # initialize rs1
li x13, 0x4a05ae1eda51e822 # initialize rs2
srlw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc61d871a8ddbcdae # initialize rs1
li x14, 0x06ed4b8d5a507c7b # initialize rs2
srlw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x315e23db3eea29e7 # initialize rs1
li x15, 0x56b6a7f0396e0f6b # initialize rs2
srlw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xafab494d9cdd425c # initialize rs1
li x16, 0x3215a6ce8accabc5 # initialize rs2
srlw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x095525d8ca9d6a60 # initialize rs1
li x17, 0x018453796695421e # initialize rs2
srlw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x59b968b6e7d244f8 # initialize rs1
li x18, 0x8dffd563552c5467 # initialize rs2
srlw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x168633e547d497a3 # initialize rs1
li x19, 0xb47fdf46694a6ee1 # initialize rs2
srlw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb8256a22d4ff012f # initialize rs1
li x20, 0xea3dfb8ff5822093 # initialize rs2
srlw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc602ad8093a67d16 # initialize rs1
li x21, 0xb237ccf36578aa7f # initialize rs2
srlw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7d8a2a75da7a8f1b # initialize rs1
li x22, 0x115692dbde3aad80 # initialize rs2
srlw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x83e506ab23edc65a # initialize rs1
li x23, 0xc2711dcc3602c229 # initialize rs2
srlw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x60d14d5508986bc3 # initialize rs1
li x24, 0x633fdef46d8d39a8 # initialize rs2
srlw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfd25b85aedc53953 # initialize rs1
li x25, 0x7d9ece51aa3b89d7 # initialize rs2
srlw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb0c2f76e5956be5a # initialize rs1
li x26, 0x49e572de1494a180 # initialize rs2
srlw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xedeeb909803d3ece # initialize rs1
li x27, 0x5b425ffcb2d017f9 # initialize rs2
srlw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x418ede6075c61282 # initialize rs1
li x28, 0x49b2bf1bcf5904d4 # initialize rs2
srlw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x71da0ecb8be68299 # initialize rs1
li x29, 0xdf45ec5dd95119c4 # initialize rs2
srlw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9f3846deb10bd3e5 # initialize rs1
li x30, 0xf46dbd7815be2e1a # initialize rs2
srlw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x49b996c164a6aa9b # initialize rs1
li x31, 0x12e3ca0e2f26c114 # initialize rs2
srlw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x3 # perform first operation
srlw x25, x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x22, x20 # perform first operation
srlw x17, x26, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x30, x2 # perform first operation
srlw x17, x11, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x3, x18 # perform first operation
srlw x18, x19, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x9, x24 # perform first operation
srlw x16, x18, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x5, x18 # perform first operation
srlw x18, x16, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x22, x26 # perform first operation
srlw x25, x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x29, x16 # perform first operation
srlw x1, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x19, x1 # perform first operation
srlw x20, x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x10, x1 # perform first operation
srlw x10, x30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x22, x17 # perform first operation
srlw x17, x28, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x28, x30 # perform first operation
srlw x29, x1, x6 # perform second (triggering) operation

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
