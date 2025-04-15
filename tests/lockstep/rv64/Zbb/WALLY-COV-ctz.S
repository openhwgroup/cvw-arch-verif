///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-ctz.S
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
li x0, 0xce66f6c575c8251a # initialize rs1
ctz x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x54758662fbb05d37 # initialize rs1
ctz x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xc4f49fe5647e5837 # initialize rs1
ctz x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x55c0decd0ffdb2b4 # initialize rs1
ctz x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf9f0e560c345b32d # initialize rs1
ctz x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0x87f7aafcdde21b17 # initialize rs1
ctz x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb755cca8f5fd7785 # initialize rs1
ctz x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xeb15aa2b0d600d77 # initialize rs1
ctz x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x28f6447eb5edf979 # initialize rs1
ctz x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x04dccec34413a06e # initialize rs1
ctz x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x57179282ae7fe0a1 # initialize rs1
ctz x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x88e0befaf8268eb3 # initialize rs1
ctz x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x92e6317dd3b83961 # initialize rs1
ctz x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25d3a765c22ed178 # initialize rs1
ctz x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x55a3868825ea7252 # initialize rs1
ctz x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2b26a630def2a18c # initialize rs1
ctz x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x380f33cab5284ce0 # initialize rs1
ctz x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xed52ba2132615e38 # initialize rs1
ctz x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbcfc4d7372478d62 # initialize rs1
ctz x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7aa3eb4ad2ff6dbd # initialize rs1
ctz x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xda42fe7f63d1b131 # initialize rs1
ctz x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3cf80b9b62f27f6c # initialize rs1
ctz x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x830169682c4add83 # initialize rs1
ctz x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf2d259b992171905 # initialize rs1
ctz x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x63398284c03c1490 # initialize rs1
ctz x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7e9924d47c8344cf # initialize rs1
ctz x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x01cd46b26a6c3cb2 # initialize rs1
ctz x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2ffde730adeddd1c # initialize rs1
ctz x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7c1af52e1b952d0f # initialize rs1
ctz x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe9db1f1764da21dc # initialize rs1
ctz x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0e2014532f739f8f # initialize rs1
ctz x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd008d3527857ea14 # initialize rs1
ctz x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x7d3b751dc61682f9 # initialize rs1
ctz x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0x3ce3af8e3e19bb16 # initialize rs1
ctz x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0xc8a4303e22cb27b4 # initialize rs1
ctz x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x5cb44be392f240b4 # initialize rs1
ctz x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x46cc99138f994b74 # initialize rs1
ctz x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x3af8dab03dfdad4e # initialize rs1
ctz x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x224e4d1eb0ae23bd # initialize rs1
ctz x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xbf87708fc1382bbc # initialize rs1
ctz x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x6dfa68252ae3b83f # initialize rs1
ctz x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0xdb861b2f6a4ec664 # initialize rs1
ctz x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0xbf0333dd2dbc1900 # initialize rs1
ctz x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x3b24f7137a528975 # initialize rs1
ctz x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x682b563af878c8c2 # initialize rs1
ctz x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x019b6867717c778a # initialize rs1
ctz x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x8310bab74649a952 # initialize rs1
ctz x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0x0fe395f887af5fb0 # initialize rs1
ctz x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x7b4685d9f950e9e3 # initialize rs1
ctz x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0xa542f629b3cc3dac # initialize rs1
ctz x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0x4afd69718e369bd6 # initialize rs1
ctz x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0xfa6a078d630a169c # initialize rs1
ctz x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x08c4033d3c8aef12 # initialize rs1
ctz x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6f0a995e327c2c8a # initialize rs1
ctz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x0ebda2b750026c0d # initialize rs1
ctz x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0xf8be0386c1773aec # initialize rs1
ctz x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0x2be40f02f1886a46 # initialize rs1
ctz x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xa7462c49d06cb060 # initialize rs1
ctz x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xfe026acd846ee3df # initialize rs1
ctz x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0xc354694985b58da8 # initialize rs1
ctz x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x653a7bcfb23a11a2 # initialize rs1
ctz x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x30d29a2c7f3bb77c # initialize rs1
ctz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x433dbb6d4fc0d25e # initialize rs1
ctz x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xd29de75d56a9d6ae # initialize rs1
ctz x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
ctz x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x0000000000000001 # initialize rs1
ctz x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x0000000000000002 # initialize rs1
ctz x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
ctz x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
ctz x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
ctz x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
ctz x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
ctz x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
ctz x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
ctz x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
ctz x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
ctz x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
ctz x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
ctz x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
ctz x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
ctz x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4d1e87c97a0f6660 # initialize rs1
ctz x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5ac9677d56b2d0fe # initialize rs1
ctz x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x10c642f23b231de2 # initialize rs1
ctz x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xcd680635ed090007 # initialize rs1
ctz x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8004e8c5dba74cc5 # initialize rs1
ctz x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xde62129286bffba6 # initialize rs1
ctz x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb2171a6be193d797 # initialize rs1
ctz x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf671afe3391686ca # initialize rs1
ctz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeb77082f2a7f296f # initialize rs1
ctz x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6468c47c4a7bec84 # initialize rs1
ctz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xa095b3f18ddc941b # initialize rs1
ctz x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x10a4a13a7ebf768a # initialize rs1
ctz x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x711e42a782ca9ef2 # initialize rs1
ctz x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcddc1f4b0765c19c # initialize rs1
ctz x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8411ac08bbdff019 # initialize rs1
ctz x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7926a6f42cf3ca17 # initialize rs1
ctz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x098f6f4d3cccfdad # initialize rs1
ctz x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x455faec440b354c5 # initialize rs1
ctz x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6fcc0f4b5fe49f76 # initialize rs1
ctz x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc2c7ccf16f86796d # initialize rs1
ctz x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4e144b91aa7adc0b # initialize rs1
ctz x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc2ef03049e2b0a0d # initialize rs1
ctz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xde94fb325b333111 # initialize rs1
ctz x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x659e537ba05554a5 # initialize rs1
ctz x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb449d57c4431fe10 # initialize rs1
ctz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x72c8c239f9c54ad4 # initialize rs1
ctz x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc49a93bf19335ecb # initialize rs1
ctz x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x418c49bf1acf5c89 # initialize rs1
ctz x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd9f43a127c6c350d # initialize rs1
ctz x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7ae88be1dda3fa55 # initialize rs1
ctz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd6ebb8f3a5ce3aed # initialize rs1
ctz x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x20403b66c67de5b5 # initialize rs1
ctz x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x30 # perform first operation
ctz x7, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x24, x1 # perform first operation
ctz x7, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x23 # perform first operation
ctz x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x25, x2 # perform first operation
ctz x25, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x16, x15 # perform first operation
ctz x30, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x7, x10 # perform first operation
ctz x22, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x10, x30 # perform first operation
ctz x9, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x16, x10 # perform first operation
ctz x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x3, x7 # perform first operation
ctz x21, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x24, x14 # perform first operation
ctz x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x27, x14 # perform first operation
ctz x14, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x17, x22 # perform first operation
ctz x21, x25 # perform second (triggering) operation

.EQU SIGSIZE,896


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
