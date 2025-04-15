///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-divu.S
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
li x0, 0x50a3f8c4ffc4b452 # initialize rs1
li x10, 0xebb46577184b22c6 # initialize rs2
divu x26, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x096dcc9888d1ee44 # initialize rs1
li x6, 0x76a99fd0a4cc8ae0 # initialize rs2
divu x16, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb7cf521c710cf4ae # initialize rs1
li x10, 0x36161b30715f92b1 # initialize rs2
divu x17, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x67e11029c0073d55 # initialize rs1
li x15, 0x8ad0aae8bd045314 # initialize rs2
divu x13, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8ed324b594b10170 # initialize rs1
li x11, 0xb7fb9df97a88058a # initialize rs2
divu x12, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcd0463f61c3fc0c6 # initialize rs1
li x10, 0x5f22f64db76fbf45 # initialize rs2
divu x20, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1aa4a5aece8854c5 # initialize rs1
li x25, 0x02b576177a753de3 # initialize rs2
divu x20, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x33e89df12158aa76 # initialize rs1
li x24, 0x1410e08fa114987c # initialize rs2
divu x3, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x70e2fcf7b8e42ad1 # initialize rs1
li x6, 0xbaea32c3a0fde888 # initialize rs2
divu x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x847cd6dcf2337e5c # initialize rs1
li x28, 0xa18990182e676cdf # initialize rs2
divu x14, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x37ad045b378132a8 # initialize rs1
li x20, 0x5303ff9b5efe87c5 # initialize rs2
divu x27, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf2946ff7f328c42c # initialize rs1
li x1, 0x5176864bd2a8c349 # initialize rs2
divu x7, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf20cc7d77fd0c091 # initialize rs1
li x26, 0xb2918b57f9b242e9 # initialize rs2
divu x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc0bf651ebdf83968 # initialize rs1
li x31, 0xdaefc966bef5847f # initialize rs2
divu x5, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7d8bf456ce6089d5 # initialize rs1
li x23, 0x6e8d913055103acd # initialize rs2
divu x13, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb24574ad2439fe98 # initialize rs1
li x20, 0xd5559bd2e2099387 # initialize rs2
divu x25, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xffaffed750e547ee # initialize rs1
li x20, 0x01b9f33901611ee9 # initialize rs2
divu x30, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x0ae4b0c6a5dc8c21 # initialize rs1
li x18, 0x3ef6c1290756338d # initialize rs2
divu x28, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x76de4de40b50f2bb # initialize rs1
li x29, 0xcf4539cd705b132b # initialize rs2
divu x5, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe5138690e2d4428c # initialize rs1
li x12, 0xb04f056059799d22 # initialize rs2
divu x14, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf988b2c7a7c4a491 # initialize rs1
li x19, 0x38613235c101aa21 # initialize rs2
divu x18, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x33657a4f7e3b2022 # initialize rs1
li x3, 0x8793a4cbc0ce4b14 # initialize rs2
divu x27, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x377e48d7639eed6d # initialize rs1
li x21, 0x9998b3ffaae6d7a8 # initialize rs2
divu x14, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xeec4b7b68a0f8702 # initialize rs1
li x12, 0x5b16e3fe1f699e98 # initialize rs2
divu x25, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x59242479f500389b # initialize rs1
li x20, 0xf5df2cf60df456ad # initialize rs2
divu x30, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9406757ec1296e85 # initialize rs1
li x1, 0x70e660f8daa07e0a # initialize rs2
divu x15, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x140d644b8a617282 # initialize rs1
li x31, 0xcd00146fb67d3166 # initialize rs2
divu x13, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe01a207eb476a03e # initialize rs1
li x26, 0x0257fab582bec5be # initialize rs2
divu x24, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe6c031c9a1ac63ca # initialize rs1
li x12, 0x259b279e6ef01988 # initialize rs2
divu x22, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbc4067cec2a42f12 # initialize rs1
li x9, 0x54c4f437b2646274 # initialize rs2
divu x17, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3d97fcd26d6f1b5a # initialize rs1
li x6, 0x547ab9e6ddffc6eb # initialize rs2
divu x25, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5d85e1d53c053dd7 # initialize rs1
li x9, 0xbd9a5dc160f2a64d # initialize rs2
divu x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x622171eae2fead2f # initialize rs1
li x0, 0x3dbc074b7461d6ca # initialize rs2
divu x27, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0x88ec84d9816168fc # initialize rs1
li x1, 0xf6e0a63177f9cb51 # initialize rs2
divu x30, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x5c8ee477e46809ad # initialize rs1
li x2, 0x3998fe44eb92acef # initialize rs2
divu x19, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x514336c154941a74 # initialize rs1
li x3, 0x4ecadfcbf797fce4 # initialize rs2
divu x15, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x7e95066fd31ec105 # initialize rs1
li x4, 0xddcc463beda5e7bf # initialize rs2
divu x5, x13, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x8, 0x040852bb2b63a2a2 # initialize rs1
li x5, 0x0fc73ff9d96b6016 # initialize rs2
divu x4, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x11946b127253ddb9 # initialize rs1
li x6, 0x8c4c9522d48ac21a # initialize rs2
divu x30, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x990b5295cfbc832c # initialize rs1
li x7, 0x88c01204e1a4bf60 # initialize rs2
divu x3, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x1b19b9cb13eb5fcc # initialize rs1
li x8, 0xe1f9a774747ca50b # initialize rs2
divu x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x248021ad228687a9 # initialize rs1
li x9, 0xfa947fd2742a815b # initialize rs2
divu x16, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0xeea753cb85b2ec61 # initialize rs1
li x10, 0xdb75ef0cb8079ab0 # initialize rs2
divu x21, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0xfcde33fe99ee5a6b # initialize rs1
li x11, 0x9d94749e9321a205 # initialize rs2
divu x31, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xc762412dcc39aa5b # initialize rs1
li x12, 0xc1edb9ba570e4780 # initialize rs2
divu x2, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xb25932896a0824c1 # initialize rs1
li x13, 0x88bced9fac6785e4 # initialize rs2
divu x30, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0x63612720ba5e09dd # initialize rs1
li x14, 0x61424cc547bf4d8d # initialize rs2
divu x30, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x2cfcb7b26e53857c # initialize rs1
li x15, 0xcc3ad24c289dbf3c # initialize rs2
divu x2, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x354cd8b04052f894 # initialize rs1
li x16, 0xca90437af7472d83 # initialize rs2
divu x17, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0xaabde0bfa2350c06 # initialize rs1
li x17, 0x006a76d61c27f020 # initialize rs2
divu x22, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x24, 0xf5cb1a92e03a86cc # initialize rs1
li x18, 0x98ad0b1d886e572c # initialize rs2
divu x10, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x445cdf665ec05cb1 # initialize rs1
li x19, 0xda52d58bdfefbc6b # initialize rs2
divu x21, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x2d9e13d4dd5a2dac # initialize rs1
li x20, 0xdc44ce18a4593c69 # initialize rs2
divu x6, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0x81d4d74d33dfea88 # initialize rs1
li x21, 0x2bf0ca5eee1c928b # initialize rs2
divu x6, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x9dbeaa688902a21d # initialize rs1
li x22, 0xc2ef7d12150b267f # initialize rs2
divu x14, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x96f3f155259626f3 # initialize rs1
li x23, 0xe6289f6a1978313b # initialize rs2
divu x22, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x3, 0x98cc07938b754064 # initialize rs1
li x24, 0xffb1ba5fee626fa6 # initialize rs2
divu x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0x155243075f338387 # initialize rs1
li x25, 0x40a82c33c550d743 # initialize rs2
divu x14, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0xc71e1cc48717f26b # initialize rs1
li x26, 0x9cd32ff1ba1d848a # initialize rs2
divu x8, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x16, 0xb62c405b68c50817 # initialize rs1
li x27, 0xddd65d2caf95aa35 # initialize rs2
divu x23, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x249441150d986210 # initialize rs1
li x28, 0x580c6372f8800152 # initialize rs2
divu x9, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x20, 0xc4bdbd2bb419c0d6 # initialize rs1
li x29, 0x1c91ba40df7afc91 # initialize rs2
divu x13, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x7f36396a32153a3d # initialize rs1
li x30, 0x40257bb94be557b1 # initialize rs2
divu x26, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x2, 0xb0e7742285259aaf # initialize rs1
li x31, 0x0daf98501529a33f # initialize rs2
divu x25, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x789b9b94c4ef7124 # initialize rs1
li x25, 0x10670ec1bd207c94 # initialize rs2
divu x0, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0x0821bc2f695b1e55 # initialize rs1
li x8, 0x57b0a9ac2f44b6e9 # initialize rs2
divu x1, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x2397dc5f7ffdff59 # initialize rs1
li x30, 0x46d7ef4e182ada8e # initialize rs2
divu x2, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x5, 0x2dbe179528f61cc3 # initialize rs1
li x30, 0x95f33eb36f6643d9 # initialize rs2
divu x3, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x96416f7be35258a2 # initialize rs1
li x24, 0xea9e71e2ceb3bc05 # initialize rs2
divu x4, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x15, 0x90a25b5e4650e94f # initialize rs1
li x26, 0xf51a73d1b88a9ef7 # initialize rs2
divu x5, x15, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xff60cb9696ab8ff0 # initialize rs1
li x3, 0x44d1ab11995c03e1 # initialize rs2
divu x6, x30, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xd07d9c8edf852647 # initialize rs1
li x28, 0x7f7eece9535fca32 # initialize rs2
divu x7, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0xd1c4008a0fdc8522 # initialize rs1
li x28, 0x6547719e6922ca2b # initialize rs2
divu x8, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x9bb77422dc1b5a4b # initialize rs1
li x26, 0x371ec22efe78070e # initialize rs2
divu x9, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x28, 0x336b8a8bba2dfc0c # initialize rs1
li x29, 0x98da03befc7b9156 # initialize rs2
divu x10, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0x198c1129021cb0a1 # initialize rs1
li x24, 0x5205805c9809cf53 # initialize rs2
divu x11, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0xdbdac63e0796cc48 # initialize rs1
li x14, 0xac24fa7abd63863f # initialize rs2
divu x12, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x05eccb9e4f376732 # initialize rs1
li x24, 0x5dcfeddb6f8a7df1 # initialize rs2
divu x13, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x5, 0x97f27855a38d7f88 # initialize rs1
li x9, 0x9a67c4e8a60ead61 # initialize rs2
divu x14, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xd069ba68989271f6 # initialize rs1
li x5, 0xde0c7e237ad644e3 # initialize rs2
divu x15, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x71f2709a444ace3b # initialize rs1
li x7, 0x7e0df77c19d8c983 # initialize rs2
divu x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0xd924be9e016f9445 # initialize rs1
li x24, 0x628d494bd47a82ae # initialize rs2
divu x17, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x94fc7e2602f4fb87 # initialize rs1
li x13, 0xf2aae54969c37d31 # initialize rs2
divu x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x21733cb149f87a4b # initialize rs1
li x14, 0xdbd2711556f0fc0a # initialize rs2
divu x19, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0xfe26bf9d638cbe2e # initialize rs1
li x11, 0xa02d403736f5b728 # initialize rs2
divu x20, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x9c53502942b60766 # initialize rs1
li x7, 0xd2726d1b2ab03a37 # initialize rs2
divu x21, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x1383283c3a1952b5 # initialize rs1
li x25, 0xcb1ac3d6b05c1710 # initialize rs2
divu x22, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x27a2da76a2a68569 # initialize rs1
li x20, 0xc528c5997615788c # initialize rs2
divu x23, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x5fa97d788cc0f599 # initialize rs1
li x29, 0x8e5945ab38d874fa # initialize rs2
divu x24, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x2975a9613154d1bd # initialize rs1
li x9, 0xe38b8238e537663c # initialize rs2
divu x25, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x6d308322855e8d0f # initialize rs1
li x13, 0x08b6c0b3fb7335a4 # initialize rs2
divu x26, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0x9a96f3543a3880b7 # initialize rs1
li x18, 0x954f67417726c2d6 # initialize rs2
divu x27, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x173b10b5900b65e7 # initialize rs1
li x23, 0xfd1d78e1268e095a # initialize rs2
divu x28, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x778bd709c253ce2b # initialize rs1
li x6, 0x33184191d1c47700 # initialize rs2
divu x29, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0xcc93129702ae1176 # initialize rs1
li x28, 0x71eccf8927f2e5da # initialize rs2
divu x30, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xc9fdfbd7decf5205 # initialize rs1
li x24, 0x3f40118afb9355b9 # initialize rs2
divu x31, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x22, 0xbb8de01381ef13ce # initialize rs2
divu x6, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x14, 0x565e6cbf101ede72 # initialize rs2
divu x11, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x31, 0x26f87eeac14f2b52 # initialize rs2
divu x12, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x23, 0x8000000000000000 # initialize rs1
li x25, 0x927fb7e7e3c5532c # initialize rs2
divu x9, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x22, 0x49a7ba347d53cb86 # initialize rs2
divu x18, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x26, 0x89e8999166156978 # initialize rs2
divu x29, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x30, 0x9da4fbc812c738ef # initialize rs2
divu x22, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x26, 0x1dae5a24038f9200 # initialize rs2
divu x21, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x34a67b56cef32606 # initialize rs2
divu x9, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xdbc050012218cde5 # initialize rs2
divu x9, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x95eedf2629e7cde6 # initialize rs2
divu x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x15, 0x65f9274d27b2fd6b # initialize rs2
divu x18, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x16, 0x73e7938be42d09c7 # initialize rs2
divu x23, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x3, 0xf2483052783b8cf6 # initialize rs2
divu x2, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x16, 0xac885a7dc7c227cc # initialize rs2
divu x7, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x22, 0xf5043168bba51798 # initialize rs2
divu x24, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x1ba6b01c81a28318 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
divu x13, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x4a74a98be42fbac4 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
divu x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0x80254d404364b87e # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
divu x25, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x14, 0xf05ff34ab71ef7c8 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
divu x15, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0xad80358ccaf3727b # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
divu x1, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x6, 0x2b44222971a22576 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
divu x28, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0xfdfe3062850c8ddd # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
divu x10, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x11, 0x9093290f061e189f # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
divu x13, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x3, 0x219ec0af2f429d89 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
divu x20, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x29, 0xf6394333a2dac675 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
divu x10, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7256104684d83541 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x14, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x5, 0x08674210fbb53748 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divu x1, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x9d2b2bd5be10222e # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
divu x17, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x9b12770617c11753 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
divu x18, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x90ef9657e5fd943d # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
divu x1, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0x6fd9f01be768d3aa # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
divu x12, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
divu x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
divu x1, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divu x8, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
divu x6, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x29, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divu x14, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divu x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divu x6, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
divu x16, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
divu x27, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
divu x6, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x22, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divu x6, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
divu x7, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divu x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x6, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divu x21, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x26, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
divu x19, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
divu x23, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x23, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
divu x20, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
divu x22, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x1, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
divu x19, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x19, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divu x11, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
divu x29, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divu x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divu x29, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
divu x19, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
divu x12, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x12, 0x0000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
divu x24, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
divu x24, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divu x22, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x20, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
divu x3, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x22, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divu x23, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x17, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
divu x31, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x31, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divu x2, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divu x8, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
divu x18, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x31, 0x0000000000000002 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
divu x21, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
divu x25, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divu x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divu x3, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divu x12, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
divu x2, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000002 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x31, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x10, 0x0000000000000002 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
divu x30, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
divu x30, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divu x18, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x7, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divu x20, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x12, 0x0000000000000002 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
divu x28, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x15, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divu x12, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x30, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
divu x22, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x17, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
divu x3, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
divu x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x27, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divu x3, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
divu x25, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
divu x30, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divu x26, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divu x23, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
divu x12, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x8000000000000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x14, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x16, 0x8000000000000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
divu x26, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
divu x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divu x6, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
divu x25, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
divu x10, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
divu x23, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x16, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divu x21, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x15, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divu x26, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x12, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
divu x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
divu x31, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
divu x28, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
divu x26, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
divu x15, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
divu x16, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x3, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
divu x5, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x6, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
divu x31, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x21, 0x8000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divu x18, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divu x30, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x2, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
divu x12, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x10, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
divu x3, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divu x13, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
divu x2, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
divu x17, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x12, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
divu x28, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divu x13, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divu x30, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
divu x19, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divu x5, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
divu x27, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x7fffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
divu x10, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x8, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divu x1, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
divu x5, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
divu x10, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divu x23, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x8, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
divu x30, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
divu x5, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divu x11, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x10, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
divu x14, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
divu x20, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divu x28, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
divu x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
divu x11, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
divu x20, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
divu x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
divu x31, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7ffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x27, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
divu x22, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
divu x6, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
divu x22, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
divu x26, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x31, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
divu x17, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x6, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divu x3, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divu x6, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
divu x6, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x8, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
divu x1, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divu x31, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
divu x14, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divu x30, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divu x8, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
divu x5, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
divu x22, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x9, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x6, 0xffffffffffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
divu x14, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
divu x16, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
divu x24, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x22, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
divu x6, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x21, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
divu x25, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
divu x14, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
divu x20, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x7, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divu x3, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0xfffffffffffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
divu x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divu x17, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
divu x19, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
divu x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
divu x3, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
divu x17, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
divu x16, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x13, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0xfffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
divu x13, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
divu x15, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
divu x26, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
divu x8, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x28, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
divu x7, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
divu x2, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
divu x7, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
divu x6, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
divu x19, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
divu x22, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divu x25, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
divu x25, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divu x2, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
divu x18, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
divu x27, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x25, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
divu x2, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
divu x7, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
divu x18, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
divu x22, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
divu x30, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divu x14, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
divu x24, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
divu x30, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
divu x7, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divu x10, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
divu x13, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
divu x21, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divu x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
divu x21, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
divu x28, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x6, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
divu x12, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
divu x6, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
divu x17, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
divu x27, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
divu x7, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x23, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divu x30, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divu x12, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x3, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
divu x20, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x10, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
divu x1, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x20, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
divu x3, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
divu x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divu x11, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
divu x17, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
divu x29, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
divu x22, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5555555555555555 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x29, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
divu x31, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
divu x22, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divu x15, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x20, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divu x14, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x27, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
divu x14, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x1, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
divu x10, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
divu x21, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divu x25, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x13, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divu x7, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x6, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
divu x2, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
divu x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
divu x24, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divu x26, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divu x9, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000ffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
divu x13, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x24, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x31, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
divu x5, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
divu x23, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
divu x15, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x28, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divu x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x15, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
divu x28, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
divu x30, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
divu x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divu x14, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x10, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
divu x17, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
divu x12, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
divu x2, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divu x30, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
divu x24, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
divu x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
divu x30, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x21, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
divu x1, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
divu x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
divu x21, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x9, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
divu x24, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
divu x8, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divu x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x3, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
divu x1, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divu x13, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x8, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
divu x6, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
divu x9, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
divu x24, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
divu x9, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divu x28, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
divu x12, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
divu x29, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x21, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x30, 0x0000000100000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
divu x26, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
divu x19, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
divu x21, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
divu x30, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
divu x9, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
divu x5, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
divu x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
divu x8, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
divu x12, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divu x8, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
divu x6, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
divu x5, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
divu x11, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divu x1, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
divu x22, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000100000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
divu x16, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x30, 0x0000000100000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
divu x6, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divu x5, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divu x19, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
divu x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
divu x5, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe6819d1b6c2d9338 # initialize rs1
li x0, 0xaf4ae2ff8b539df7 # initialize rs2
divu x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc275760afbd070f7 # initialize rs1
li x1, 0x2509c240f6264f4e # initialize rs2
divu x21, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x0e3a7e659cc7c108 # initialize rs1
li x2, 0xa95ca76d402c178c # initialize rs2
divu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdb2384f0cd176b3b # initialize rs1
li x3, 0xdfe2c992c79d4cc9 # initialize rs2
divu x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x003bcaf94c70636b # initialize rs1
li x4, 0x27358304c3349f10 # initialize rs2
divu x31, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1525022686010971 # initialize rs1
li x5, 0x9050be47e6c9e162 # initialize rs2
divu x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x47e9dfb4c82c4ce6 # initialize rs1
li x6, 0xb1f84b6dd641ebac # initialize rs2
divu x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x15cf6709add5d05b # initialize rs1
li x7, 0x527f3f0513188187 # initialize rs2
divu x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6bba53fe4b1be736 # initialize rs1
li x8, 0x29431d4d23598939 # initialize rs2
divu x19, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x07b3bc856aa37ace # initialize rs1
li x9, 0x054dd49c74e73e2b # initialize rs2
divu x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xfc9f81679b1f215f # initialize rs1
li x10, 0x84847fdef4595879 # initialize rs2
divu x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x60f7d63dd98327e8 # initialize rs1
li x11, 0x226035c79959344c # initialize rs2
divu x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x94a3f817bdd1de06 # initialize rs1
li x12, 0xb80448adbe5551b4 # initialize rs2
divu x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x75c48d74ab34b617 # initialize rs1
li x13, 0x60c070ecf641154d # initialize rs2
divu x3, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x494197bef6c64bb3 # initialize rs1
li x14, 0x4d79cd430679d96e # initialize rs2
divu x28, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x187a97edb5737d55 # initialize rs1
li x15, 0x57b5e2652b6c9de7 # initialize rs2
divu x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x435963a397d78dcf # initialize rs1
li x16, 0xbc3ca977806c5e60 # initialize rs2
divu x21, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4db048b2d13ea64e # initialize rs1
li x17, 0x49e994ace20d726b # initialize rs2
divu x1, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc1e9eea2e2c347d2 # initialize rs1
li x18, 0x8e51dd843c82d9e1 # initialize rs2
divu x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf5197b114548bf62 # initialize rs1
li x19, 0x86653ee5c47d314a # initialize rs2
divu x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xaa5c2775c272e21c # initialize rs1
li x20, 0x50d914d1694f5cdf # initialize rs2
divu x3, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x89ffa5cea8a5e30d # initialize rs1
li x21, 0x8d0cd66ba9d041ea # initialize rs2
divu x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x011df73e2fc28b6f # initialize rs1
li x22, 0x14216aa676f19bd2 # initialize rs2
divu x10, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe8819024a7d02076 # initialize rs1
li x23, 0x838aef33796fec6d # initialize rs2
divu x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x49be0966891b3b6b # initialize rs1
li x24, 0xc2e113cb7e908611 # initialize rs2
divu x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xcd8b736c35b7bb38 # initialize rs1
li x25, 0x1da998ce3b09c60e # initialize rs2
divu x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xcebeddf22dcc24d6 # initialize rs1
li x26, 0xd2f3daa5297c50b9 # initialize rs2
divu x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5b439ec120f07ba8 # initialize rs1
li x27, 0x30589ae1ecf1f809 # initialize rs2
divu x1, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd32e63dd5df97b05 # initialize rs1
li x28, 0x399d48529ebe423e # initialize rs2
divu x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x39c2a10e75448844 # initialize rs1
li x29, 0xc88ed50e69781fc7 # initialize rs2
divu x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xcad303c578fcc8ce # initialize rs1
li x30, 0xe1032bd50549ea47 # initialize rs2
divu x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xdbc2865026f2dd6b # initialize rs1
li x31, 0x082f29030e81bce4 # initialize rs2
divu x19, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x86fe407b7426b4f4 # initialize rs1
li x24, 0x2ae381b0e3a45436 # initialize rs2
divu x0, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xea834380fc8cea3d # initialize rs1
li x2, 0xf4d78ab6ade9b67c # initialize rs2
divu x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xcc1bbeb610b3a2d9 # initialize rs1
li x14, 0xc68de7774093429c # initialize rs2
divu x2, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbb43eec07cdc3108 # initialize rs1
li x23, 0x2c72df2ee786cb8f # initialize rs2
divu x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde8363e4676ad73b # initialize rs1
li x28, 0xd357e3c509d6bdaa # initialize rs2
divu x4, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9b550e3b88586bad # initialize rs1
li x31, 0x26116f9e9902c61b # initialize rs2
divu x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc7f32c427146fac3 # initialize rs1
li x15, 0x5ec46fafb4d14208 # initialize rs2
divu x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7db9381386aae97b # initialize rs1
li x20, 0xe1029d653957f31e # initialize rs2
divu x7, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7684ee4848b8a789 # initialize rs1
li x24, 0x355e22e16e8fd56f # initialize rs2
divu x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x02fbdfe6a0dc40ed # initialize rs1
li x5, 0xf372a7752fb5301f # initialize rs2
divu x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9263439c0b01dfd7 # initialize rs1
li x27, 0xda1934fce990512a # initialize rs2
divu x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf078d400e4a06a21 # initialize rs1
li x20, 0x04ca39f67888d31f # initialize rs2
divu x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x48c349151463ac72 # initialize rs1
li x27, 0xbd3fa2ae6a71a8d4 # initialize rs2
divu x12, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1dfd9f0010cf2485 # initialize rs1
li x14, 0x039ead9428bbe245 # initialize rs2
divu x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3d78e8301a330790 # initialize rs1
li x28, 0x8d982c037707f7c4 # initialize rs2
divu x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x06952ed9cdd1d417 # initialize rs1
li x21, 0x81b7a4da1ec822ee # initialize rs2
divu x15, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcb51e23571ae0c63 # initialize rs1
li x11, 0x0b43d6fcf9ca2576 # initialize rs2
divu x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x02aff674662daa03 # initialize rs1
li x11, 0x3cf7e7c936d9b061 # initialize rs2
divu x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbd9d2668a4e3862d # initialize rs1
li x27, 0x14dbe6bdca45258c # initialize rs2
divu x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x123abd69e46943a2 # initialize rs1
li x24, 0xf747283bc98b63d7 # initialize rs2
divu x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3f79505b121a09e7 # initialize rs1
li x5, 0x756bf81668df2638 # initialize rs2
divu x20, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7ec3f10cec70f859 # initialize rs1
li x14, 0x5cb7ce3275b45b48 # initialize rs2
divu x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x51c845b625fc5621 # initialize rs1
li x24, 0x9940f3e7518cac75 # initialize rs2
divu x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1af7606eec40e0fb # initialize rs1
li x5, 0x860c17715d163793 # initialize rs2
divu x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7d6372926c240e35 # initialize rs1
li x20, 0xb1573ba94d08d8f8 # initialize rs2
divu x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb1b545ee2d0d1fc1 # initialize rs1
li x15, 0x240e70a6f03f7787 # initialize rs2
divu x25, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdbb6a15fdb09dae2 # initialize rs1
li x28, 0x6c6114d1274f408e # initialize rs2
divu x26, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa1fea1b23463ef50 # initialize rs1
li x2, 0xed1a1114f05ff3d9 # initialize rs2
divu x27, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x33481d659c1193a2 # initialize rs1
li x28, 0xe9830117185064ef # initialize rs2
divu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x38a83b4423fdfa6d # initialize rs1
li x24, 0x72e52e09432e1891 # initialize rs2
divu x29, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6988cddeed49fc37 # initialize rs1
li x6, 0x18f0e91fc3a3c149 # initialize rs2
divu x30, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd0460a729c10ed5f # initialize rs1
li x12, 0xc27945341421c3f1 # initialize rs2
divu x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0x1a4c0b9939266bdd # initialize rs1
li x0, 0x3e7d19bbb481d221 # initialize rs2
divu x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0x85485ba93beaeb19 # initialize rs1
li x1, 0x1e8e1215177341c4 # initialize rs2
divu x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0xd6fe5accbd55d913 # initialize rs1
li x2, 0x16061aef2e747c2c # initialize rs2
divu x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0xf84e6580e0550ec7 # initialize rs1
li x3, 0x9e972e154ebb3f63 # initialize rs2
divu x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xc92e9cc48e69a819 # initialize rs1
li x4, 0x9d9bbd3b860d3e91 # initialize rs2
divu x4, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x3105bd99d1003703 # initialize rs1
li x5, 0x280c074eb42216b8 # initialize rs2
divu x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xab5eb818db823a90 # initialize rs1
li x6, 0xf57765cf74f48209 # initialize rs2
divu x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x6488def9d0306273 # initialize rs1
li x7, 0x24d57fe22a77133b # initialize rs2
divu x7, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x3a2b73b23b694e93 # initialize rs1
li x8, 0x9c3a5cce5477435a # initialize rs2
divu x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x13, 0x7fdb0cdeb2ec1933 # initialize rs1
li x9, 0xc31db3166d2fd5ca # initialize rs2
divu x9, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x29, 0x637d1c6d1778870f # initialize rs1
li x10, 0x64568f0e1da36bcf # initialize rs2
divu x10, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0x797f36ae08f865ae # initialize rs1
li x11, 0x5c76068539f7d8e4 # initialize rs2
divu x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0x4cc382b611db7909 # initialize rs1
li x12, 0x19ea9b1577440a16 # initialize rs2
divu x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0x4e992a349e686b88 # initialize rs1
li x13, 0x81583eeef74ea446 # initialize rs2
divu x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x18, 0x84f2eb79ff4fd722 # initialize rs1
li x14, 0xe3b33f7859f886e1 # initialize rs2
divu x14, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x5e4bf5aa19af1525 # initialize rs1
li x15, 0xc60ff7e1d513b59a # initialize rs2
divu x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0xceee8b0555cff583 # initialize rs1
li x16, 0xc8c05c1ff8f96623 # initialize rs2
divu x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0x95a1e8727caaa3ca # initialize rs1
li x17, 0xe891ea657dff7a7d # initialize rs2
divu x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xff2a64b72e3715ae # initialize rs1
li x18, 0x2399d10091b06646 # initialize rs2
divu x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0xacda7ed5c6f514d3 # initialize rs1
li x19, 0x518ccf023a69673c # initialize rs2
divu x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x31, 0x49ff8e621a12881d # initialize rs1
li x20, 0x6b69cd4ed374b07c # initialize rs2
divu x20, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0x78ed3371b96cee49 # initialize rs1
li x21, 0x4f0100433f9ecf4d # initialize rs2
divu x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x079ac63a6f499cbd # initialize rs1
li x22, 0x3da026bddbcf2b7b # initialize rs2
divu x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x3, 0xd64cc02757527e49 # initialize rs1
li x23, 0x8f5814564a6b94ba # initialize rs2
divu x23, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x3ac7dd71da0edca8 # initialize rs1
li x24, 0xb7f45ca865833a27 # initialize rs2
divu x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x0e613888d869f492 # initialize rs1
li x25, 0x045ff1fc74d820d5 # initialize rs2
divu x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x3, 0xaf60067a45d60886 # initialize rs1
li x26, 0x8669c72627b95044 # initialize rs2
divu x26, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x8aedd3af70e365e9 # initialize rs1
li x27, 0xf046b49fdc6d511c # initialize rs2
divu x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0x99e4f53b1b315052 # initialize rs1
li x28, 0x3b5270f3e429a145 # initialize rs2
divu x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x18, 0x7c42554af5d5ef29 # initialize rs1
li x29, 0xb6ab1831981f3360 # initialize rs2
divu x29, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0x8c289928e0f19d80 # initialize rs1
li x30, 0x1420fa7c29e88364 # initialize rs2
divu x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x26, 0xa81766d4116d37f4 # initialize rs1
li x31, 0xc6ad4cdcdc6effba # initialize rs2
divu x31, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7d39746fb327ecf7 # initialize rs1
li x0, 0xb35dff0c04195119 # initialize rs2
divu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x0fc8e034f6bd2a65 # initialize rs1
li x1, 0x0e898a761d57c996 # initialize rs2
divu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x48106fbcc3bef2b4 # initialize rs1
li x2, 0x2198a43f6f43308a # initialize rs2
divu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa83061918a01d400 # initialize rs1
li x3, 0x9089062de93d45af # initialize rs2
divu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6bed4c0282504cf1 # initialize rs1
li x4, 0xc54337fe3d952827 # initialize rs2
divu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1eaf3cfeda5b7aef # initialize rs1
li x5, 0x5801223c689d192e # initialize rs2
divu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2e63bb1a2ae576a8 # initialize rs1
li x6, 0xab1ed9d698a79846 # initialize rs2
divu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x772b51034a773368 # initialize rs1
li x7, 0x6b2aa8c3424186c4 # initialize rs2
divu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x9769e2ce5e28154c # initialize rs1
li x8, 0x7a3cdcc4c5b1306d # initialize rs2
divu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5ef5c535bbba7d0b # initialize rs1
li x9, 0x713e014600ed5753 # initialize rs2
divu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x65e5184cfa80e5a1 # initialize rs1
li x10, 0x3c0819592710c86d # initialize rs2
divu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x22c4efd0f6676dc7 # initialize rs1
li x11, 0x0264719deb05411d # initialize rs2
divu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5e3d74e7d6d4b2f6 # initialize rs1
li x12, 0x2defdc357adfd2c5 # initialize rs2
divu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcacbfbdcec047e24 # initialize rs1
li x13, 0xa5ad7b2f84068ff8 # initialize rs2
divu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb37438c203477f08 # initialize rs1
li x14, 0x8cf9213f1ff72be8 # initialize rs2
divu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8ece658df9826de2 # initialize rs1
li x15, 0x1eeedf172dfda867 # initialize rs2
divu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x08789637a3488d2d # initialize rs1
li x16, 0x577bc75671ee9491 # initialize rs2
divu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf0d166a58ada0624 # initialize rs1
li x17, 0x8d320e2e68e5ee1e # initialize rs2
divu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x74150ec7f6944e1f # initialize rs1
li x18, 0x5557d2c3a44de80c # initialize rs2
divu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcc07920cef56f3ff # initialize rs1
li x19, 0xc0dd75ae802e8971 # initialize rs2
divu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5e28789325ee15f2 # initialize rs1
li x20, 0x1241d5f3d03b1a8d # initialize rs2
divu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x679c580dc0e2e8d4 # initialize rs1
li x21, 0x4ff44704907aca27 # initialize rs2
divu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3506ebd28a0e8915 # initialize rs1
li x22, 0x848c3f33d306d40e # initialize rs2
divu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1476e8e05458fc2a # initialize rs1
li x23, 0x6423ab7f53791523 # initialize rs2
divu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x403c564b7109d997 # initialize rs1
li x24, 0xd529102f0d5724aa # initialize rs2
divu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc4ae453709d86af9 # initialize rs1
li x25, 0x88deff5615265f39 # initialize rs2
divu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1e5db77287e3219e # initialize rs1
li x26, 0xbad459f933b4c925 # initialize rs2
divu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1f8f05f2106f852e # initialize rs1
li x27, 0x05641bfd737b5608 # initialize rs2
divu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x45835b85e5913232 # initialize rs1
li x28, 0x4e18a26c56c249ed # initialize rs2
divu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2506584b7c4527b0 # initialize rs1
li x29, 0x032b68d17ec6352e # initialize rs2
divu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xfbb21fda8fb862c3 # initialize rs1
li x30, 0xba040f930eacb81a # initialize rs2
divu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x2a7564e273621f1d # initialize rs1
li x31, 0x74b9c7bd9477c687 # initialize rs2
divu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x20, x28 # perform first operation
divu x7, x9, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x2, x13 # perform first operation
divu x1, x27, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x18, x5 # perform first operation
divu x26, x24, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x19, x25 # perform first operation
divu x25, x14, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x27, x2 # perform first operation
divu x21, x5, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x2, x18 # perform first operation
divu x18, x24, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x12, x30 # perform first operation
divu x8, x2, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x21, x14 # perform first operation
divu x10, x30, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x16, x1 # perform first operation
divu x18, x23, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x29, x11 # perform first operation
divu x29, x24, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x29, x22 # perform first operation
divu x22, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x31 # perform first operation
divu x27, x26, x9 # perform second (triggering) operation

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
